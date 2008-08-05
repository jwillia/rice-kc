/*
 * Copyright 2005-2007 The Kuali Foundation.
 *
 *
 * Licensed under the Educational Community License, Version 1.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.opensource.org/licenses/ecl1.php
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package edu.iu.uis.eden.docsearch.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.ojb.broker.PersistenceBroker;
import org.apache.ojb.broker.accesslayer.LookupException;
import org.kuali.rice.kew.util.KEWConstants;
import org.springmodules.orm.ojb.OjbFactoryUtils;
import org.springmodules.orm.ojb.support.PersistenceBrokerDaoSupport;

import edu.iu.uis.eden.KEWServiceLocator;
import edu.iu.uis.eden.docsearch.DocSearchCriteriaVO;
import edu.iu.uis.eden.docsearch.DocumentSearchGenerator;
import edu.iu.uis.eden.doctype.DocumentSecurityService;
import edu.iu.uis.eden.exception.EdenUserNotFoundException;
import edu.iu.uis.eden.user.WorkflowUser;
import edu.iu.uis.eden.util.PerformanceLogger;
import edu.iu.uis.eden.util.Utilities;

public class DocumentSearchDAOOjbImpl extends PersistenceBrokerDaoSupport implements DocumentSearchDAO {

    public static final org.apache.log4j.Logger LOG = org.apache.log4j.Logger.getLogger(DocumentSearchDAOOjbImpl.class);

    private static final int DEFAULT_FETCH_MORE_ITERATION_LIMIT = 10;

    public List getListBoundedByCritera(DocumentSearchGenerator documentSearchGenerator, DocSearchCriteriaVO criteria, WorkflowUser user) throws EdenUserNotFoundException {
        return getList(documentSearchGenerator, criteria, criteria.getThreshold(), user);
    }

    public List getList(DocumentSearchGenerator documentSearchGenerator, DocSearchCriteriaVO criteria, WorkflowUser user) throws EdenUserNotFoundException {
        return getList(documentSearchGenerator, criteria, Integer.valueOf(getSearchResultCap(documentSearchGenerator)), user);
    }

    private List getList(DocumentSearchGenerator documentSearchGenerator, DocSearchCriteriaVO criteria, Integer searchResultCap, WorkflowUser user) throws EdenUserNotFoundException {
        LOG.debug("start getList");
        DocumentSecurityService documentSecurityService = KEWServiceLocator.getDocumentSecurityService();
        List docList = new ArrayList();
        PersistenceBroker broker = null;
        Connection conn = null;
        Statement statement = null;
        Statement searchAttributeStatement = null;
        ResultSet rs = null;
        try {
            broker = getPersistenceBroker(false);
            conn = broker.serviceConnectionManager().getConnection();
            statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            criteria.setThreshold(searchResultCap);
            if (searchResultCap != null) {
                int fetchLimit = getFetchMoreIterationLimit() * searchResultCap.intValue();
                criteria.setFetchLimit(Integer.valueOf(fetchLimit));
                statement.setFetchSize(searchResultCap.intValue() + 1);
                statement.setMaxRows(fetchLimit + 1);
            } else {
                criteria.setFetchLimit(null);
            }
            PerformanceLogger perfLog = new PerformanceLogger();
            String sql = documentSearchGenerator.generateSearchSql(criteria);
            perfLog.log("Time to generate search sql from documentSearchGenerator class: " + documentSearchGenerator.getClass().getName(), true);
            LOG.info("Executing document search with statement max rows: " + statement.getMaxRows());
            LOG.info("Executing document search with statement fetch size: " + statement.getFetchSize());
            perfLog = new PerformanceLogger();
            rs = statement.executeQuery(sql);
            perfLog.log("Time to execute doc search database query.", true);
            // TODO delyea - look at refactoring
            searchAttributeStatement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            docList = documentSearchGenerator.processResultSet(searchAttributeStatement, rs, criteria, user);
        } catch (SQLException sqle) {
            String errorMsg = "SQLException: " + sqle.getMessage();
            LOG.error("getList() " + errorMsg, sqle);
            throw new RuntimeException(errorMsg, sqle);
        } catch (LookupException le) {
            String errorMsg = "LookupException: " + le.getMessage();
            LOG.error("getList() " + errorMsg, le);
            throw new RuntimeException(errorMsg, le);
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    LOG.warn("Could not close result set.");
                }
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    LOG.warn("Could not close statement.");
                }
            }
            if (searchAttributeStatement != null) {
                try {
                    searchAttributeStatement.close();
                } catch (SQLException e) {
                    LOG.warn("Could not close search attribute statement.");
                }
            }
            if (broker != null) {
                try {
                    OjbFactoryUtils.releasePersistenceBroker(broker, this.getPersistenceBrokerTemplate().getPbKey());
                } catch (Exception e) {
                    LOG.error("Failed closing connection: " + e.getMessage(), e);
                }
            }
        }

        LOG.info("end getlist");
        return docList;
    }
    
    private int getSearchResultCap(DocumentSearchGenerator docSearchGenerator) {
        int resultCap = docSearchGenerator.getDocumentSearchResultSetLimit();
        String resultCapValue = Utilities.getApplicationConstant(KEWConstants.DOC_SEARCH_RESULT_CAP_KEY);
        if (!StringUtils.isBlank(resultCapValue)) {
            try {
                Integer maxResultCap = Integer.parseInt(resultCapValue);
                if (resultCap > maxResultCap) {
                    LOG.warn("Document Search Generator (" + docSearchGenerator.getClass().getName() + ") gives result set cap of " + resultCap + " which is greater than app constant " + KEWConstants.DOC_SEARCH_RESULT_CAP_KEY + " value of " + maxResultCap);
                    resultCap = maxResultCap;
                } else if (maxResultCap <= 0) {
                    LOG.warn(KEWConstants.DOC_SEARCH_RESULT_CAP_KEY + " was less than or equal to zero.  Please use a positive integer.");
                }
            } catch (NumberFormatException e) {
                LOG.warn(KEWConstants.DOC_SEARCH_RESULT_CAP_KEY + " is not a valid number.  Value was " + resultCapValue);
            }
        }
        return resultCap;
    }

    // TODO delyea: use searchable attribute count here?
    private int getFetchMoreIterationLimit() {
        int fetchMoreLimit = DEFAULT_FETCH_MORE_ITERATION_LIMIT;
        String fetchMoreLimitValue = Utilities.getApplicationConstant(KEWConstants.DOC_SEARCH_FETCH_MORE_ITERATION_LIMIT_KEY);
        if (!StringUtils.isBlank(fetchMoreLimitValue)) {
            try {
                fetchMoreLimit = Integer.parseInt(fetchMoreLimitValue);
                if (fetchMoreLimit < 0) {
                    LOG.warn(KEWConstants.DOC_SEARCH_FETCH_MORE_ITERATION_LIMIT_KEY + " was less than zero.  Please use a value greater than or equal to zero.");
                    fetchMoreLimit = DEFAULT_FETCH_MORE_ITERATION_LIMIT;
                }
            } catch (NumberFormatException e) {
                LOG.warn(KEWConstants.DOC_SEARCH_FETCH_MORE_ITERATION_LIMIT_KEY + " is not a valid number.  Value was " + fetchMoreLimitValue);
            }
        }
        return fetchMoreLimit;
    }

    //
    //    protected Platform getPlatform() {
    //    	return (Platform)GlobalResourceLoader.getService(KEWServiceLocator.DB_PLATFORM);
    //    }
}