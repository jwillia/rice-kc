/*
 * Copyright 2005-2006 The Kuali Foundation.
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
package org.kuali.rice.ksb.messaging.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.RequestProcessor;
import org.kuali.rice.kim.util.KimCache;

/**
 * A RequestProcessor implementation for Struts which handles determining whether or not access
 * should be allowed to the requested KSB page.
 *
 * @author Kuali Rice Team (kuali-rice@googlegroups.com)
 */
public class KSBStrutsRequestProcessor extends RequestProcessor {
	
	/**
	 * This overridden method ...
	 * 
	 * @see org.apache.struts.action.RequestProcessor#processPreprocess(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected boolean processPreprocess(HttpServletRequest request,
			HttpServletResponse response) {
		KimCache.init();
		return super.processPreprocess(request, response);
	}
}
