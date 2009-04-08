/*
 * Copyright 2007 The Kuali Foundation
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
package org.kuali.rice.kew.doctype.bo;

import org.kuali.rice.kns.bo.ExternalizableBusinessObject;

/**
 * This is a description of what this class does - Garey don't forget to fill this in.
 *
 * @author Kuali Rice Team (kuali-rice@googlegroups.com)
 *
 */
public interface DocumentTypeEBO extends ExternalizableBusinessObject{

	public Long getDocTypeParentId();

	public String getDescription();

	/**
	 * This method gets the help definition url from this object and resolves any
	 * potential variables that may be in use
	 */
	public String getHelpDefinitionUrl();

	public String getLabel();

	public String getName();

	public Long getDocumentTypeId();

	/**
	 * Returns the service namespace for this DocumentType which can be specified on the document type itself,
	 * inherited from the parent, or defaults to the configured service namespace of the application.
	 *
	 * chb:12Nov2008: seems like the accessor should return the field and the auxiliary method "getActualFoo" should
	 * be the one to do more elaborate checking
	 */
	public String getServiceNamespace();

	/**
	 * In order to make this object Inactivateable. Not sure if I
	 * should remove the getActive method.
	 *
	 * @see org.kuali.rice.kns.bo.Inactivateable#isActive()
	 */
	public boolean isActive();

	public Long getRouteHeaderId();

}