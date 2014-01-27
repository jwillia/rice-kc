--
-- Copyright 2005-2014 The Kuali Foundation
--
-- Licensed under the Educational Community License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
-- http://www.opensource.org/licenses/ecl2.php
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

INSERT INTO KRIM_ROLE_T (ACTV_IND,KIM_TYP_ID,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR, DESC_TXT)
  VALUES ('Y','1','AUTH_SVC_TEST1','ea9ed94a-7e6b-102c-97b6-ed716fdaf540','r1','RoleOne',1, 'Role 1 Description')
/
INSERT INTO KRIM_ROLE_MBR_T (MBR_ID,MBR_TYP_CD,OBJ_ID,ROLE_ID,ROLE_MBR_ID,VER_NBR)
  VALUES ('p1','P','7e2ced96-7e6c-102c-97b6-ed716fdaf540','r1','r1p1',1)
/
INSERT INTO KRIM_ROLE_MBR_T (MBR_ID,MBR_TYP_CD,OBJ_ID,ROLE_ID,ROLE_MBR_ID,VER_NBR)
  VALUES ('entity123pId','P','88EBA5DF-F5B8-4089-8F5F-E9BAD615BF61','r1','r1entity123pId',1)
/

INSERT INTO KRIM_ROLE_MBR_T (MBR_ID,MBR_TYP_CD,OBJ_ID,ROLE_ID,ROLE_MBR_ID,VER_NBR)
  VALUES ('entity123pId','P','FEF9B38A-E396-4D67-93A3-372D4C55DEA4','1','1entity123pId',1)
/

-- Create role "r2" with members "p3", "g1", "r1"

INSERT INTO KRIM_ROLE_T (ACTV_IND,KIM_TYP_ID,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR, DESC_TXT)
  VALUES ('Y','1','AUTH_SVC_TEST2','6afda2ba-7e71-102c-97b6-ed716fdaf540','r2','RoleTwo',1, 'Role 2 Description')
/
INSERT INTO KRIM_ROLE_MBR_T (MBR_ID,MBR_TYP_CD,OBJ_ID,ROLE_ID,ROLE_MBR_ID,VER_NBR)
  VALUES ('p3','P','b6a044fc-7e6c-102c-97b6-ed716fdaf540','r2','r2p3',1)
/
INSERT INTO KRIM_ROLE_MBR_T (MBR_ID,MBR_TYP_CD,OBJ_ID,ROLE_ID,ROLE_MBR_ID,VER_NBR)
  VALUES ('g1','G','d922e502-7e6c-102c-97b6-ed716fdaf540','r2','r2g1',1)
/
INSERT INTO KRIM_ROLE_MBR_T (MBR_ID,MBR_TYP_CD,OBJ_ID,ROLE_ID,ROLE_MBR_ID,VER_NBR)
  VALUES ('r1','R','d9ab94d8-7e6c-102c-97b6-ed716fdaf540','r2','r2r1',1)
/

-- Create role "r3" with member "p5"

INSERT INTO KRIM_ROLE_T (ACTV_IND,KIM_TYP_ID,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR, DESC_TXT)
  VALUES ('Y','1','AUTH_SVC_TEST2','6afda2ba-7e71-102c-97b6-ed716fdaf541','r3','RoleThree',1, 'Role 3 Description')
/
INSERT INTO KRIM_ROLE_MBR_T (MBR_ID,MBR_TYP_CD,OBJ_ID,ROLE_ID,ROLE_MBR_ID,VER_NBR)
  VALUES ('p5','P','b6a044fc-7e6c-102c-97b6-ed716fdaf541','r3','r3p5',1)
/

-- Create role "r4" with members "p10", "g5"

INSERT INTO KRIM_ROLE_T (ACTV_IND,KIM_TYP_ID,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR, DESC_TXT)
  VALUES ('Y','1','AUTH_SVC_TEST2','6afda2ba-7e71-102c-97b6-ed716fdaf542','r4','RoleFour',1, 'Role 4 Description')
/
INSERT INTO KRIM_ROLE_MBR_T (MBR_ID,MBR_TYP_CD,OBJ_ID,ROLE_ID,ROLE_MBR_ID,VER_NBR)
  VALUES ('p10','P','b6a044fc-7e6c-102c-97b6-ed716fdaf542','r4','r4p10',1)
/
INSERT INTO KRIM_ROLE_MBR_T (MBR_ID,MBR_TYP_CD,OBJ_ID,ROLE_ID,ROLE_MBR_ID,VER_NBR)
  VALUES ('g5','G','d922e502-7e6c-102c-97b6-ed716fdaf542','r4','r4g5',1)
/

-- Create role "r5" with members "p6", "g6", "r3"

INSERT INTO KRIM_ROLE_T (ACTV_IND,KIM_TYP_ID,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR, DESC_TXT)
  VALUES ('Y','1','AUTH_SVC_TEST2','6afda2ba-7e71-102c-97b6-ed716fdaf543','r5','RoleFive',1, 'Role 5 Description')
/
INSERT INTO KRIM_ROLE_MBR_T (MBR_ID,MBR_TYP_CD,OBJ_ID,ROLE_ID,ROLE_MBR_ID,VER_NBR)
  VALUES ('p6','P','b6a044fc-7e6c-102c-97b6-ed716fdaf543','r5','r5p6',1)
/
INSERT INTO KRIM_ROLE_MBR_T (MBR_ID,MBR_TYP_CD,OBJ_ID,ROLE_ID,ROLE_MBR_ID,VER_NBR)
  VALUES ('g6','G','d922e502-7e6c-102c-97b6-ed716fdaf543','r5','r5g6',1)
/
INSERT INTO KRIM_ROLE_MBR_T (MBR_ID,MBR_TYP_CD,OBJ_ID,ROLE_ID,ROLE_MBR_ID,VER_NBR)
  VALUES ('r3','R','d9ab94d8-7e6c-102c-97b6-ed716fdaf543','r5','r5r3',1)
/

-- Create role "r6" with members "p9", "r4"

INSERT INTO KRIM_ROLE_T (ACTV_IND,KIM_TYP_ID,NMSPC_CD,OBJ_ID,ROLE_ID,ROLE_NM,VER_NBR, DESC_TXT)
  VALUES ('Y','1','AUTH_SVC_TEST2','6afda2ba-7e71-102c-97b6-ed716fdaf544','r6','RoleSix',1, 'Role 6 Description')
/
INSERT INTO KRIM_ROLE_MBR_T (MBR_ID,MBR_TYP_CD,OBJ_ID,ROLE_ID,ROLE_MBR_ID,VER_NBR)
  VALUES ('p9','P','b6a044fc-7e6c-102c-97b6-ed716fdaf544','r6','r6p9',1)
/
INSERT INTO KRIM_ROLE_MBR_T (MBR_ID,MBR_TYP_CD,OBJ_ID,ROLE_ID,ROLE_MBR_ID,VER_NBR)
  VALUES ('r4','R','d9ab94d8-7e6c-102c-97b6-ed716fdaf544','r6','r6r4',1)
/

-- Create delegation "d1" with members "p7", "r4"

INSERT INTO KRIM_DLGN_T (DLGN_ID,VER_NBR,OBJ_ID,ROLE_ID,ACTV_IND,KIM_TYP_ID,DLGN_TYP_CD)
  VALUES ('d1',1,'6afda2ba-7e71-102c-97b6-ed716fdaf545','r5','Y','1','P')
/
INSERT INTO KRIM_DLGN_MBR_T (DLGN_MBR_ID,VER_NBR,OBJ_ID,DLGN_ID,MBR_ID,MBR_TYP_CD,ROLE_MBR_ID)
  VALUES ('d1p7',1,'b6a044fc-7e6c-102c-97b6-ed716fdaf545','d1','p7','P','r5p6')
/
INSERT INTO KRIM_DLGN_MBR_T (DLGN_MBR_ID,VER_NBR,OBJ_ID,DLGN_ID,MBR_ID,MBR_TYP_CD,ROLE_MBR_ID)
  VALUES ('d1r4',1,'d9ab94d8-7e6c-102c-97b6-ed716fdaf545','d1','r4','R','r5r3')
/

-- Create delegation "d2" with member "g7"

INSERT INTO KRIM_DLGN_T (DLGN_ID,VER_NBR,OBJ_ID,ROLE_ID,ACTV_IND,KIM_TYP_ID,DLGN_TYP_CD)
  VALUES ('d2',1,'6afda2ba-7e71-102c-97b6-ed716fdaf546','r5','Y','1','S')
/
INSERT INTO KRIM_DLGN_MBR_T (DLGN_MBR_ID,VER_NBR,OBJ_ID,DLGN_ID,MBR_ID,MBR_TYP_CD,ROLE_MBR_ID)
  VALUES ('d2g7',1,'d922e502-7e6c-102c-97b6-ed716fdaf546','d2','g7','G','r5g6')
/

-- create permissions

INSERT INTO KRIM_PERM_T (ACTV_IND,NMSPC_CD,OBJ_ID,PERM_ID,NM,PERM_TMPL_ID,VER_NBR)
  VALUES ('Y','KR-NS','96394208-7e6d-102c-97b6-ed716fdaf540','p1','perm1','1',1)
/
INSERT INTO KRIM_PERM_T (ACTV_IND,NMSPC_CD,OBJ_ID,PERM_ID,NM,PERM_TMPL_ID,VER_NBR)
  VALUES ('Y','KR-NS','6c42db88-7e6f-102c-97b6-ed716fdaf540','p2','perm2','1',1)
/
INSERT INTO KRIM_PERM_T (ACTV_IND,NMSPC_CD,OBJ_ID,PERM_ID,NM,PERM_TMPL_ID,VER_NBR)
  VALUES ('Y','KR-NS','6cb942b4-7e6f-102c-97b6-ed716fdaf540','p3','perm3','1',1)
/

-- create permission templates
-- INSERT INTO KRIM_PERM_TMPL_T (PERM_TMPL_ID, OBJ_ID, VER_NBR, NMSPC_CD, NM, DESC_TXT, KIM_TYP_ID, ACTV_IND)
--   VALUES('1', '0D4CC939-73EA-4294-A9CE-2A867AEED8B9', 1, 'KR-NS', 'Edit Document', 'Document Editing Permission Template', '8', 'Y')
-- /

-- assign permissions to roles
--     p1 -> r1
--     p2 -> r1
--     p3 -> r2

--     p1 -> r3
--     p2 -> r4
--     p3 -> r5
--     p1 -> r6

INSERT INTO KRIM_ROLE_PERM_T (ACTV_IND,OBJ_ID,PERM_ID,ROLE_ID,ROLE_PERM_ID,VER_NBR)
  VALUES ('Y','fa02d546-7e6e-102c-97b6-ed716fdaf540','p1','r1','r1p1',1)
/
INSERT INTO KRIM_ROLE_PERM_T (ACTV_IND,OBJ_ID,PERM_ID,ROLE_ID,ROLE_PERM_ID,VER_NBR)
  VALUES ('Y','4102a53e-7e6f-102c-97b6-ed716fdaf540','p2','r1','r1p2',1)
/
INSERT INTO KRIM_ROLE_PERM_T (ACTV_IND,OBJ_ID,PERM_ID,ROLE_ID,ROLE_PERM_ID,VER_NBR)
  VALUES ('Y','415e3cb4-7e6f-102c-97b6-ed716fdaf540','p3','r2','r2p3',1)
/
INSERT INTO KRIM_ROLE_PERM_T (ACTV_IND,OBJ_ID,PERM_ID,ROLE_ID,ROLE_PERM_ID,VER_NBR)
  VALUES ('Y','fa02d546-7e6e-102c-97b6-ed716fdaf541','p1','r3','r3p1',1)
/
INSERT INTO KRIM_ROLE_PERM_T (ACTV_IND,OBJ_ID,PERM_ID,ROLE_ID,ROLE_PERM_ID,VER_NBR)
  VALUES ('Y','4102a53e-7e6f-102c-97b6-ed716fdaf541','p2','r4','r4p2',1)
/
INSERT INTO KRIM_ROLE_PERM_T (ACTV_IND,OBJ_ID,PERM_ID,ROLE_ID,ROLE_PERM_ID,VER_NBR)
  VALUES ('Y','415e3cb4-7e6f-102c-97b6-ed716fdaf541','p3','r5','r5p3',1)
/
INSERT INTO KRIM_ROLE_PERM_T (ACTV_IND,OBJ_ID,PERM_ID,ROLE_ID,ROLE_PERM_ID,VER_NBR)
  VALUES ('Y','fa02d546-7e6e-102c-97b6-ed716fdaf542','p1','r6','r6p1',1)
/
INSERT INTO krim_perm_t(PERM_ID, OBJ_ID, VER_NBR, PERM_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND)
  VALUES('307', '638DD46953F9BCD5E0404F8189D86240', 1, '1', 'KR-IDM', 'Modify Entity', 'Users who can modify entity records in Kuali Identity Management.', 'Y')
/
INSERT INTO krim_role_perm_t(ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND)
  VALUES('850', '70086A2DF17C62E4E0404F8189D863CD', 1, '63', '307', 'Y')
/

-- create some entities for the UIDocumentServiceImplTest

INSERT INTO KRIM_ENTITY_T (ACTV_IND,ENTITY_ID,OBJ_ID,VER_NBR)
  VALUES ('Y','entity123eId','31ba4224-7ea3-102c-97b6-ed716fdaf540',1)
/
INSERT INTO KRIM_ENTITY_ENT_TYP_T (ACTV_IND,ENTITY_ID,ENT_TYP_CD,OBJ_ID,VER_NBR)
  VALUES ('Y','entity123eId','PERSON','a8d21c86-7eaf-102c-97b6-ed716fdaf540',1)
/
INSERT INTO KRIM_ENTITY_EXT_ID_T (ENTITY_EXT_ID_ID, ENTITY_ID, EXT_ID_TYP_CD, EXT_ID, OBJ_ID)
  VALUES ('entity123extId', 'entity123eId', 'SSN', '555-55-5555', '31ba4238-7ea3-102c-97b6-ed716fdaf540')
/
INSERT INTO KRIM_ENTITY_ADDR_T (ENTITY_ADDR_ID, OBJ_ID, ENTITY_ID, ENT_TYP_CD, ADDR_TYP_CD, ADDR_LINE_1, CITY,
	STATE_PVC_CD, POSTAL_CD, POSTAL_CNTRY_CD, DFLT_IND)
  VALUES ('entity123addrId', '31ba4238-7ea3-102c-97b6-ed716fdaf540', 'entity123eId', 'PERSON', 'HM', '123 Easy Street', 'Bloomington', 'IN', '47403', 'US', 'Y')
/
INSERT INTO KRIM_ENTITY_PHONE_T (ENTITY_PHONE_ID, OBJ_ID, ENTITY_ID, ENT_TYP_CD, PHONE_TYP_CD, PHONE_NBR, POSTAL_CNTRY_CD, DFLT_IND)
  VALUES ('entity123phoneId', '31ba424c-7ea3-102c-97b6-ed716fdaf540', 'entity123eId', 'PERSON', 'WRK', '555=555-5555', 'US', 'Y')
/
INSERT INTO KRIM_ENTITY_EMAIL_T (ACTV_IND,DFLT_IND,EMAIL_ADDR,EMAIL_TYP_CD,ENTITY_EMAIL_ID,ENTITY_ID,ENT_TYP_CD,OBJ_ID,VER_NBR)
  VALUES ('Y','Y','entity123@localhost','WRK','entity123emailId','entity123eId','PERSON','39e42c30-7ea3-102c-97b6-ed716fdaf540',1)
/
INSERT INTO KRIM_ENTITY_NM_T (ACTV_IND,DFLT_IND,ENTITY_ID,ENTITY_NM_ID,FIRST_NM,LAST_NM,NM_TYP_CD,OBJ_ID,VER_NBR)
  VALUES ('Y','Y','entity123eId','entity123nameId','Entity','123','PRFR','39e42c4e-7ea3-102c-97b6-ed716fdaf540',1)
/
INSERT INTO KRIM_ENTITY_AFLTN_T(ENTITY_AFLTN_ID, OBJ_ID, VER_NBR, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND)
  VALUES('entity123afltnId', '39e42c62-7ea3-102c-97b6-ed716fdaf540', 1, 'entity123eId', 'STAFF', 'IN', 'Y', 'Y')
/
INSERT INTO KRIM_ENTITY_EMP_INFO_T(ENTITY_EMP_ID, OBJ_ID, VER_NBR, ENTITY_ID, ENTITY_AFLTN_ID, EMP_STAT_CD, EMP_TYP_CD, BASE_SLRY_AMT, PRMRY_IND, ACTV_IND, PRMRY_DEPT_CD, EMP_ID, EMP_REC_ID)
  VALUES('entity123empInfoId', '39e42c6c-7ea3-102c-97b6-ed716fdaf540', 1, 'entity123eId', 'entity123afltnId', 'A', 'N', 50000, 'Y', 'Y', 'IN-ENGT', '0000000001', NULL)
/
INSERT INTO KRIM_PRNCPL_T (ACTV_IND,ENTITY_ID,OBJ_ID,PRNCPL_ID,PRNCPL_NM,VER_NBR)
  VALUES ('Y','entity123eId','31ba4210-7ea3-102c-97b6-ed716fdaf540','entity123pId','entity123',1)
/

INSERT INTO KRIM_ENTITY_T (ACTV_IND,ENTITY_ID,OBJ_ID,VER_NBR)
  VALUES ('Y','entity124eId','7C93D6EA-9473-4D4B-B485-AAAFAB703A7B',1)
/
INSERT INTO KRIM_ENTITY_ENT_TYP_T (ACTV_IND,ENTITY_ID,ENT_TYP_CD,OBJ_ID,VER_NBR)
  VALUES ('Y','entity124eId','PERSON','76D464BF-3702-4F7D-AFDC-2296D7ACD963',1)
/
INSERT INTO KRIM_ENTITY_EXT_ID_T (ENTITY_EXT_ID_ID, ENTITY_ID, EXT_ID_TYP_CD, EXT_ID, OBJ_ID)
  VALUES ('entity124extId', 'entity124eId', 'RFID', '1234567', '3FD7129D-73FC-495A-882A-B608C355F22E')
/
INSERT INTO KRIM_ENTITY_ADDR_T (ENTITY_ADDR_ID, OBJ_ID, ENTITY_ID, ENT_TYP_CD, ADDR_TYP_CD, ADDR_LINE_1, CITY,
	STATE_PVC_CD, POSTAL_CD, POSTAL_CNTRY_CD, DFLT_IND)
  VALUES ('entity124addrId', '98536C34-B6D0-47AD-A00B-F95D5B8AA6C4', 'entity124eId', 'PERSON', 'HM', '124 Easy Street', 'Bloomington', 'IN', '47403', 'US', 'Y')
/
INSERT INTO KRIM_ENTITY_PHONE_T (ENTITY_PHONE_ID, OBJ_ID, ENTITY_ID, ENT_TYP_CD, PHONE_TYP_CD, PHONE_NBR, POSTAL_CNTRY_CD, DFLT_IND)
  VALUES ('entity124phoneId', '8C1047D3-FB57-4539-BF16-78B3D5FEFB4F', 'entity124eId', 'PERSON', 'WRK', '555=555-5555', 'US', 'Y')
/
INSERT INTO KRIM_ENTITY_EMAIL_T (ACTV_IND,DFLT_IND,EMAIL_ADDR,EMAIL_TYP_CD,ENTITY_EMAIL_ID,ENTITY_ID,ENT_TYP_CD,OBJ_ID,VER_NBR)
  VALUES ('Y','Y','entity124@localhost','WRK','entity124emailId','entity124eId','PERSON','442BD7D0-006F-48CB-AF9C-1292059C1ACD',1)
/
INSERT INTO KRIM_ENTITY_NM_T (ACTV_IND,DFLT_IND,ENTITY_ID,ENTITY_NM_ID,FIRST_NM,LAST_NM,NM_TYP_CD,OBJ_ID,VER_NBR)
  VALUES ('Y','Y','entity124eId','entity124nameId','Entity','124','PRFR','DCDB7CAB-73ED-4EA2-9832-BCDC0650E854',1)
/
INSERT INTO KRIM_ENTITY_AFLTN_T(ENTITY_AFLTN_ID, OBJ_ID, VER_NBR, ENTITY_ID, AFLTN_TYP_CD, CAMPUS_CD, DFLT_IND, ACTV_IND)
  VALUES('entity124afltnId', '86DD6DA9-8511-4F76-9DB6-52A71C03B009', 1, 'entity124eId', 'STAFF', 'IN', 'Y', 'Y')
/
INSERT INTO KRIM_ENTITY_EMP_INFO_T(ENTITY_EMP_ID, OBJ_ID, VER_NBR, ENTITY_ID, ENTITY_AFLTN_ID, EMP_STAT_CD, EMP_TYP_CD, BASE_SLRY_AMT, PRMRY_IND, ACTV_IND, PRMRY_DEPT_CD, EMP_ID, EMP_REC_ID)
  VALUES('entity124empInfoId', 'C8E356C9-7F0F-48DD-9E25-88296368F486', 1, 'entity124eId', 'entity124afltnId', 'A', 'N', 50000, 'Y', 'Y', 'IN-ENGT', '0000000001', NULL)
/
INSERT INTO KRIM_PRNCPL_T (ACTV_IND,ENTITY_ID,OBJ_ID,PRNCPL_ID,PRNCPL_NM,VER_NBR)
  VALUES ('Y','entity124eId','43939AC1-23D3-4027-9A04-6E448EFDB633','entity124pId','entity124',1)
/
