/*
Script pour ajouter les structures d'objet au POC Mobile

/!\ Passer le mode admin ON/OFF après le script
*/

/*
select * from MAXINTOBJECT where intobjectname like 'POC%';
select * from MAXINTOBJDETAIL where intobjectname like 'POC%';
select intobjectname, objectname, name, INTOBJFLDTYPE, changeby, CHANGEDATE, 'MAXINTOBJCOLSSEQ.NEXTVAL' from MAXINTOBJCOLS where intobjectname like 'POC%';
select * from maxsequence where tbname like 'MAXINT%' order by 1;
*/

Delete MAXINTOBJECT where INTOBJECTNAME = 'POC_WO';
Insert into MAXINTOBJECT (INTOBJECTNAME,DESCRIPTION,SELFREFERENCING,USERDEFINED,CHANGEBY,CHANGEDATE,MAXINTOBJECTID,LANGCODE,HASLD,DEFCLASS,PROCCLASS,QUERYONLY,CONFIGURABLE,FLATSUPPORTED,USEWITH,ALIASCONFLICT,APP,AUTHAPP) 
values ('POC_WO','POC - Interventions','0','1','MAXADMIN',to_date('13/07/2017 15:45:25','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJECTSEQ.nextval,'FR','0',null,'psdi.iface.mic.StatefulMicSetIn','0','1','0','INTEGRATION','0',null,null);

Delete MAXINTOBJDETAIL where INTOBJECTNAME = 'POC_WO';
Insert into MAXINTOBJDETAIL (INTOBJECTNAME,OBJECTNAME,RELATION,OBJECTORDER,PROCESSORDER,USERDEFINED,CHANGEBY,CHANGEDATE,MAXINTOBJDETAILID,OBJECTID,PARENTOBJID,HIERARCHYPATH,DESCRIPTION,ALTKEY,EXCLUDEPARENTKEY,DELETEONCREATE,PROPAGATEEVENT,INVOKEEXECUTE) 
values ('POC_WO','WORKORDER',null,'1','1','1','MAXADMIN',to_date('13/07/2017 15:51:02','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJDETAILSEQ.nextval,'1',null,'WORKORDER',null,null,'0','0','0','0');

Delete MAXINTOBJCOLS where INTOBJECTNAME = 'POC_WO';
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','TASKID','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','TLOAMLICENSENUM','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','VENDOR','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','VERIFICATION','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WHOMISCHANGEFOR','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOACCEPTSCHARGES','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOCLASS','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOEQ1','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOEQ10','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOEQ11','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOEQ12','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOEQ13','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOEQ14','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOEQ2','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOEQ3','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOEQ4','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOEQ5','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOEQ6','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOEQ7','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOEQ8','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOEQ9','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOGROUP','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOISSWAP','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOJO1','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOJO2','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOJO3','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOJO4','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOJO5','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOJO6','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOJO7','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOJO8','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOJP1','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOJP2','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOJP3','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOJP4','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOJP5','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOL1','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOL2','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOL3','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOL4','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOLABLNK','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOLO1','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOLO10','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOLO2','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOLO3','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOLO4','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOLO5','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOLO6','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOLO7','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOLO8','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOLO9','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOPRIORITY','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WORKLOCATION','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WORKORDERID','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WORKPACKMTLSTATUS','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WORKTYPE','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WORTS1','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WORTS2','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WORTS3','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WORTS4','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WORTS5','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);
Insert into MAXINTOBJCOLS (INTOBJECTNAME,OBJECTNAME,NAME,INTOBJFLDTYPE,CHANGEBY,CHANGEDATE,MAXINTOBJCOLSID) values ('POC_WO','WORKORDER','WOSEQUENCE','EXCLUDE','MAXADMIN',to_date('13/07/2017 15:51:06','DD/MM/YYYY HH24:MI:SS'),MAXINTOBJCOLSSEQ.NEXTVAL);

commit;
