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
package org.kuali.rice.kew.server;

import javax.xml.namespace.QName;

import org.kuali.rice.core.resourceloader.GlobalResourceLoader;
import org.kuali.rice.kew.service.WorkflowUtility;
import org.kuali.rice.kew.util.KEWWebServiceConstants;

public class WorkflowUtilitySoapTest extends WorkflowUtilityTest {

    private WorkflowUtility utility;

    protected WorkflowUtility getWorkflowUtility() {
    	if (utility == null) {
    		utility = (WorkflowUtility) GlobalResourceLoader.getResourceLoader().getService(new QName("KEW", KEWWebServiceConstants.WorkflowUtility.WEB_SERVICE_NAME));
//    		utility = (WorkflowUtility) GlobalResourceLoader.getResourceLoader().getService(new QName(KEWWebServiceConstants.MODULE_TARGET_NAMESPACE, KEWWebServiceConstants.WorkflowUtility.WEB_SERVICE_NAME));
    	}
    	return utility; 
    }
}
