inherited MainData: TMainData
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 360
  Top = 332
  Height = 484
  Width = 746
  inherited Session: TfdcOracleSession
    DesignConnection = True
    LogonUsername = 'tula_270_4'
    LogonPassword = ''
    LogonDatabase = ''
    ThreadSafe = True
  end
  inherited StartScript: TOracleScript
    Lines.Strings = (
      'alter session set NLS_DATE_FORMAT = '#39'%s'#39';'
      ''
      '--alter session disable PARALLEL QUERY;'
      '--alter session set USE_STORED_OUTLINES = OPERATION;'
      '--alter session set HASH_JOIN_ENABLED = TRUE;'
      ''
      'alter session set CURRENT_SCHEMA = %s;'
      ''
      '--alter session set OPTIMIZER_MODE = RULE;')
    Left = 32
    Top = 64
  end
  object dsObjectTypeAll: TfdcQuery
    Session = Session
    AutoCommit = False
    AutoRollback = False
    ReadOnly = False
    SQL.Strings = (
      'select /*+ RULE_ */  *'
      '  from fdc_Object_Type_Lst_All')
    SourceServerObject = 'FDC_OBJECT_TYPE_LST_ALL'
    Left = 119
    Top = 16
  end
  object dsObjectIs: TfdcQuery
    Session = Session
    AutoCommit = False
    AutoRollback = False
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  :Result ::= fdc_Object_Is(:ID,:TYPESYSNAME);'
      'end;')
    SourceServerObject = 'FDC_OBJECT_IS'
    Left = 206
    Top = 16
    ParamData = <
      item
        DataType = ftFloat
        Name = 'Result'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'TYPESYSNAME'
        ParamType = ptUnknown
      end>
  end
  object dsObject: TfdcQuery
    Session = Session
    AutoCommit = False
    AutoRollback = False
    ReadOnly = False
    SQL.Strings = (
      'select id'
      '      ,name'
      '      ,shortname'
      '      ,object_type_id'
      '      ,state_id'
      '      ,accesslevel'
      '      ,sysname'
      '      ,descript'
      '      ,owner_object_id'
      '      ,typename'
      '      ,fdc_replace_typesysname(typesysname) typesysname'
      '      ,objectkindlist'
      '      ,ext_source'
      '      ,ext_typesysname'
      '      ,ext_id'
      '  from fdc_Object_Lst'
      ' where ID = :ID')
    SourceServerObject = 'FDC_OBJECT_LST'
    Left = 294
    Top = 16
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
  object dsObjectFree: TfdcQuery
    Session = Session
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  fdc_Object_Free(:ID);'
      'end;')
    SourceServerObject = 'FDC_OBJECT_FREE'
    Left = 119
    Top = 64
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
  object dsCheckVersion: TfdcQuery
    Session = Session
    AutoCommit = False
    AutoRollback = False
    ReadOnly = True
    SQL.Strings = (
      'begin'
      '  :Result ::= fdc_Check_Version('
      '    :CHKVERSION,'
      '    :CHKBUILDNUM,'
      '    :CURRENTVERSION,'
      '    :VERSIONMIGRATE);'
      'end;')
    SourceServerObject = 'FDC_CHECK_VERSION'
    Left = 206
    Top = 64
    ParamData = <
      item
        DataType = ftFloat
        Name = 'Result'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CHKVERSION'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'CHKBUILDNUM'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CURRENTVERSION'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'VERSIONMIGRATE'
        ParamType = ptUnknown
      end>
  end
  object dsGetUser: TfdcQuery
    Session = Session
    AutoCommit = False
    AutoRollback = False
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  :Result ::= fdc_User_Get(:LOGIN);'
      'end;')
    SourceServerObject = 'FDC_USER_GET'
    Left = 294
    Top = 64
    ParamData = <
      item
        DataType = ftFloat
        Name = 'Result'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'LOGIN'
        ParamType = ptUnknown
      end>
  end
  object dsUserIsAdminData: TfdcQuery
    Session = Session
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  :Result ::= fdc_User_Is_AdminData('
      '    :USER_ID,'
      '    :DORAISE);'
      'end;')
    SourceServerObject = 'FDC_USER_IS_ADMINDATA'
    Left = 575
    Top = 256
    ParamData = <
      item
        DataType = ftFloat
        Name = 'Result'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'USER_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'DORAISE'
        ParamType = ptUnknown
      end>
  end
  object dsUserIsAdminTask: TfdcQuery
    Session = Session
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  :Result ::= fdc_User_Is_AdminTask('
      '    :USER_ID,'
      '    :DORAISE);'
      'end;')
    SourceServerObject = 'FDC_USER_IS_ADMINTASK'
    Left = 575
    Top = 352
    ParamData = <
      item
        DataType = ftFloat
        Name = 'Result'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'USER_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'DORAISE'
        ParamType = ptUnknown
      end>
  end
  object dsUserIsSchemaOwner: TfdcQuery
    Session = Session
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  :Result ::= fdc_User_Is_Schema_Owner;'
      'end;')
    SourceServerObject = 'FDC_USER_IS_SCHEMA_OWNER'
    Left = 575
    Top = 304
    ParamData = <
      item
        DataType = ftFloat
        Name = 'Result'
        ParamType = ptUnknown
      end>
  end
  object dsEvent: TfdcQuery
    Session = Session
    AutoCommit = False
    AutoRollback = False
    ReadOnly = False
    SQL.Strings = (
      'select *'
      '  from fdc_Event_Lst'
      ' where ID = :ID'
      '')
    SourceServerObject = 'FDC_EVENT_LST'
    Left = 382
    Top = 16
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
  object dsObjectGrantUpdate: TfdcQuery
    Session = Session
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  fdc_Object_Grant_Upd('
      '    :ID,'
      '    :Grantee_ID,'
      '    :AccessLevel,'
      '    :DoNotCheck, '
      '    :AdminNotGrant, '
      '    :NoReduction);'
      'end;')
    SourceServerObject = 'FDC_OBJECT_GRANT_UPD'
    Left = 118
    Top = 184
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'Grantee_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'AccessLevel'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'DoNotCheck'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'AdminNotGrant'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'NoReduction'
        ParamType = ptUnknown
      end>
  end
  object dsObjectAccessLevelUpdate: TfdcQuery
    Session = Session
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  fdc_Object_Upd_Access_Level('
      '    :ID,'
      '    :AccessLevel);'
      'end;'
      '')
    SourceServerObject = 'FDC_OBJECT_UPD_ACCESS_LEVEL'
    Left = 118
    Top = 136
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'AccessLevel'
        ParamType = ptUnknown
      end>
  end
  object dsUserInGroupAdd: TfdcQuery
    Session = Session
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  fdc_User_In_Group_Add('
      '    :USER_ID,'
      '    :USER_GROUP_ID,'
      '    :DORAISEDUPVAL);'
      'end;')
    SourceServerObject = 'FDC_USER_IN_GROUP_ADD'
    Left = 272
    Top = 136
    ParamData = <
      item
        DataType = ftFloat
        Name = 'USER_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'USER_GROUP_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'DORAISEDUPVAL'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object dsUserInGroupDel: TfdcQuery
    Session = Session
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  fdc_User_In_Group_Del('
      '    :USER_ID,'
      '    :USER_GROUP_ID);'
      'end;')
    SourceServerObject = 'FDC_USER_IN_GROUP_DEL'
    Left = 272
    Top = 184
    ParamData = <
      item
        DataType = ftFloat
        Name = 'USER_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'USER_GROUP_ID'
        ParamType = ptUnknown
      end>
  end
  object dsTaskSysComponentAdd: TfdcQuery
    Session = Session
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  fdc_Task_SysComponent_Add('
      '    :TASK_ID,'
      '    :SYSCOMPONENT_ID);'
      'end;')
    SourceServerObject = 'FDC_TASK_SYSCOMPONENT_ADD'
    Left = 272
    Top = 248
    ParamData = <
      item
        DataType = ftFloat
        Name = 'TASK_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'SYSCOMPONENT_ID'
        ParamType = ptUnknown
      end>
  end
  object dsTaskSysComponentDel: TfdcQuery
    Session = Session
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  fdc_Task_SysComponent_Del('
      '    :TASK_ID,'
      '    :SYSCOMPONENT_ID);'
      'end;'
      '')
    SourceServerObject = 'FDC_TASK_SYSCOMPONENT_DEL'
    Left = 272
    Top = 296
    ParamData = <
      item
        DataType = ftFloat
        Name = 'TASK_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'SYSCOMPONENT_ID'
        ParamType = ptUnknown
      end>
  end
  object dsUserGroupTaskAdd: TfdcQuery
    Session = Session
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  fdc_User_Group_Task_Add('
      '    :USER_GROUP_ID,'
      '    :TASK_ID,'
      '    :DORAISEDUPVAL);'
      'end;')
    SourceServerObject = 'FDC_USER_GROUP_TASK_ADD'
    Left = 120
    Top = 248
    ParamData = <
      item
        DataType = ftFloat
        Name = 'USER_GROUP_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'TASK_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'DORAISEDUPVAL'
        ParamType = ptUnknown
        Value = '0'
      end>
  end
  object dsUserGroupTaskDel: TfdcQuery
    Session = Session
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  fdc_User_Group_Task_Del('
      '    :USER_GROUP_ID,'
      '    :TASK_ID);'
      'end;')
    SourceServerObject = 'FDC_USER_GROUP_TASK_DEL'
    Left = 120
    Top = 296
    ParamData = <
      item
        DataType = ftFloat
        Name = 'USER_GROUP_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'TASK_ID'
        ParamType = ptUnknown
      end>
  end
  object dsUserGrantForExec: TfdcQuery
    Session = Session
    AutoCommit = False
    AutoRollback = False
    ReadOnly = False
    SQL.Strings = (
      'select *'
      '  from fdc_User_Grant_Lst_For_Exec'
      ' where LOGIN = upper(:Login)')
    SourceServerObject = 'FDC_USER_GRANT_LST_FOR_EXEC'
    Left = 384
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'Login'
        ParamType = ptUnknown
      end>
    object dsUserGrantForExecOBJECT_NAME: TStringField
      FieldName = 'OBJECT_NAME'
      Size = 30
    end
    object dsUserGrantForExecOBJECT_TYPE: TStringField
      FieldName = 'OBJECT_TYPE'
      Size = 18
    end
    object dsUserGrantForExecLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 1500
    end
    object dsUserGrantForExecALLOWGRANTOPTION: TIntegerField
      FieldName = 'ALLOWGRANTOPTION'
    end
    object dsUserGrantForExecGRANTED: TFloatField
      FieldName = 'GRANTED'
    end
    object dsUserGrantForExecTOGRANT: TFloatField
      FieldName = 'TOGRANT'
    end
    object dsUserGrantForExecCMD: TStringField
      FieldName = 'CMD'
      Size = 4000
    end
  end
  object dsReGrant: TfdcQuery
    Session = Session
    ReadOnly = False
    Left = 384
    Top = 136
  end
  object qryLobQuery: TOracleQuery
    SQL.Strings = (
      'select Body'
      '  from fdc_File'
      'where ID = :ID'
      '  for update')
    Session = Session
    Variables.Data = {0300000001000000030000003A4944040000000000000000000000}
    Left = 34
    Top = 119
  end
  object dsCollectionObjectAdd: TfdcQuery
    Session = Session
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  fdc_Collection_Object_Add('
      '    :COLLECTION_ID,'
      '    :OBJECT_ID,'
      '    :ROLENAME,'
      '    :DESCRIPT);'
      'end;')
    SourceServerObject = 'FDC_COLLECTION_OBJECT_ADD'
    Left = 416
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COLLECTION_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBJECT_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ROLENAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPT'
        ParamType = ptUnknown
      end>
  end
  object dsCollectionObjectDel: TfdcQuery
    Session = Session
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  fdc_Collection_Object_Del(:ID);  '
      'end;'
      '')
    SourceServerObject = 'FDC_COLLECTION_OBJECT_DEL'
    Left = 416
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
  object dsCollectionMerge: TfdcQuery
    Session = Session
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  fdc_Collection_Merge('
      '    :ID,'
      '    :SRC_ID,'
      '    :RoleName);'
      'end;')
    SourceServerObject = 'FDC_COLLECTION_MERGE'
    Left = 416
    Top = 352
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'SRC_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RoleName'
        ParamType = ptUnknown
      end>
  end
  object dsCheckTask: TfdcQuery
    Session = Session
    AutoCommit = False
    AutoRollback = False
    ReadOnly = False
    SQL.Strings = (
      '   begin'
      '  -- Call the procedure'
      '  fdc_check_user_in_task(taskname => :taskname);'
      'end;'
      '')
    SourceServerObject = 'FDC_EVENT_LST'
    Left = 462
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'taskname'
        ParamType = ptUnknown
      end>
  end
  object QueryList: TQueryList
    Session = Session
    Left = 568
    Top = 32
    object sqlSetKind: TsqlOp
      SQL.Strings = (
        'begin'
        '  fdc_object_add_kind_bysysname(pObjectId => :id,'
        '                           pKindSysName => :sysname);'
        'end;')
    end
    object sqlvaluebool: TsqlOp
      SQL.Strings = (
        'begin'
        '  :result := fdc_valuebool_sys_get(pSysName => :name);'
        'end;')
    end
    object sqlvaluestring: TsqlOp
      SQL.Strings = (
        'begin'
        '  :result := fdc_valuestring_sys_get(pSysName => :name);'
        'end;')
    end
    object sqlvaluenumber: TsqlOp
      SQL.Strings = (
        'begin'
        '  :result := fdc_valuenumber_sys_get(pSysName => :name);'
        'end;')
    end
    object sqlvaluedatetime: TsqlOp
      SQL.Strings = (
        'begin'
        '  :result := fdc_valuedatetime_sys_get(pSysName => :name);'
        'end;')
    end
    object sqlGetProps: TsqlOp
      SQL.Strings = (
        'select /*+ FIRST_ROWS */'
        ' t.SECTION_NAME, t.PROP_NAME, t.SPROP_VALUE'
        '  from fdc_registry_lst t'
        ' where Upper(t.Section_Name) like Upper(NVL(:s, '#39'%'#39'))'
        '   and Upper(t.Prop_Name) like Upper(NVL(:n, '#39'%'#39'))')
    end
    object sqlSetSchema: TsqlOp
      SQL.Strings = (
        'begin'
        '  execute immediate '#39'alter session set CURRENT_SCHEMA = '#39'||:p;'
        'end;')
    end
    object sqlOrgProps: TsqlOp
      SQL.Strings = (
        'select /*+ FIRST_ROWS */'
        ' t.SECTION_NAME, t.PROP_NAME, t.PROP_VALUE'
        '  from fdc_registry_lst t'
        ' where Upper(t.Section_Name) like Upper(NVL(:s, '#39'%'#39'))'
        '   and Upper(t.Prop_Name) like Upper(NVL(:n, '#39'%'#39'))')
    end
    object sqlSetAccDate: TsqlOp
      SQL.Strings = (
        'begin'
        '  -- Call the procedure'
        '  p_accounting_engine.setdate(pdate => :pdate);'
        'end;')
    end
    object sqlGetServerDate: TsqlOp
      SQL.Strings = (
        'begin'
        '  select sysdate '
        '   into :Result'
        '  from dual;'
        'end;')
    end
    object sqlGetCurrentUserName: TsqlOp
      SQL.Strings = (
        'BEGIN'
        '  SELECT l.LastName ||'
        '      CASE'
        '        WHEN l.FirstName IS NULL THEN'
        '          '#39#39
        '        ELSE'
        '          '#39' '#39' || upper( substr ( l.FirstName, 1, 1 ) ) || '#39'.'#39' ||'
        '          CASE'
        '            WHEN l.MiddleName IS NULL THEN'
        '              '#39#39
        '            ELSE'
        '              upper( substr ( l.MiddleName, 1, 1 ) ) || '#39'.'#39
        '          END'
        '      END'
        '      INTO :result'
        '    FROM fdc_user_current_lst l;'
        'END;')
    end
    object sqlGetObjectId: TsqlOp
      SQL.Strings = (
        'begin'
        '  :result := fdc_object_get_bysysname(:TypeName, :SysName);'
        'end;')
    end
    object sqlGetIPAddress: TsqlOp
      SQL.Strings = (
        'begin'
        '  :result := SYS_CONTEXT('#39'USERENV'#39', '#39'IP_ADDRESS'#39');'
        'end;')
    end
    object sqlSetMacAddress: TsqlOp
      SQL.Strings = (
        'begin'
        '  p_params.SetMACAddress(pMACAddress => :pMACAddress);'
        'end;')
    end
    object sqlGetUserExpDate: TsqlOp
      SQL.Strings = (
        'begin'
        '  select to_char(exp_date, '#39'DD.MM.YYYY'#39')'
        '   into :Result'
        '  from fdc_user_current_lst;'
        'end;')
    end
    object sqlUserChangePassword: TsqlOp
      SQL.Strings = (
        'begin'
        
          '  execute immediate '#39'alter user '#39' ||:pUser || '#39' identified by '#39' ' +
          '||:pPass;'
        'end;'
        ''
        '')
    end
    object sqlGetUserLogin: TsqlOp
      SQL.Strings = (
        'begin'
        '  select login'
        '   into :Result'
        '  from fdc_user_current_lst;'
        'end;')
    end
    object sqlSetExpDate: TsqlOp
      SQL.Strings = (
        'begin'
        '  OI_User_Exp_Date(pLogin => :pLogin);'
        'end;')
    end
    object sqlGetUserCustomsId: TsqlOp
      SQL.Strings = (
        'begin'
        ' select l.CUSTOM_ID'
        '  into :result'
        '  from fdc_user_current_lst l;'
        'end;')
    end
    object sqlGetUserCustomsCode: TsqlOp
      SQL.Strings = (
        'begin'
        ' select l.CUSTOMS_CODE_8'
        '  into :result'
        '  from fdc_user_current_lst l;'
        'end;')
    end
  end
  object qryLoadFile: TOracleQuery
    SQL.Strings = (
      'begin'
      '  :result := fdc_load_dbf(pfile => :file,'
      '               ptablename => :tablename,'
      '               pcolmap  => :colmap);'
      '  :v1 := p_loader.GetTotal;'
      '  :v2 := p_loader.GetProgress;'
      '  :v3 := p_loader.GetErrorCount;'
      '  :v4 := p_loader.GetNewCount;'
      '  :v5 := p_loader.GetModifyCount;'
      '  :v6 := p_loader.GetSkipCount;'
      'end;')
    Session = Session
    Variables.Data = {
      030000000A000000050000003A46494C457100000000000000000000000A0000
      003A5441424C454E414D45050000000000000000000000070000003A52455355
      4C54040000000000000000000000070000003A434F4C4D415005000000000000
      0000000000030000003A5631030000000000000000000000030000003A563203
      0000000000000000000000030000003A56330300000000000000000000000300
      00003A5634030000000000000000000000030000003A56350300000000000000
      00000000030000003A5636030000000000000000000000}
    Left = 504
    Top = 144
  end
  object qryGetDocAsXML: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '  CASE :typesysname WHEN '#39'DocPackReturns'#39' THEN'
      '         :XMLCLOB :=  fdc_srlz_pack_return(:Doc_Id, 0);'
      '       -- '#1056#1077#1077#1089#1090#1088' '#1055#1077#1088#1077#1079#1072#1095#1077#1090#1086#1074
      '       WHEN '#39'DocPackReuse'#39' THEN'
      '         :XMLCLOB := fdc_srlz_pack_reuse(:Doc_Id, 0);'
      '       -- '#1056#1077#1077#1089#1090#1088' '#1055#1083#1072#1090#1077#1078#1077#1081' '#1074' '#1073#1102#1076#1078#1077#1090
      '       WHEN '#39'PackBudgetPayment'#39' THEN'
      '         :XMLCLOB := fdc_srlz_pack_budget_pay(:Doc_Id, 0);'
      #9#9#9'ELSE NULL;'
      '  END CASE;'
      'END;')
    Session = Session
    Variables.Data = {
      03000000030000000C0000003A545950455359534E414D450500000000000000
      00000000080000003A584D4C434C4F4270000000000000000000000007000000
      3A444F435F4944030000000000000000000000}
    Left = 651
    Top = 170
  end
  object dsDocList: TOracleDataSet
    SQL.Strings = (
      'select dp.ID, dp.TypeSysName'
      'from fdc_Object_Lst dp'
      'where'
      '  dp.id IN ( SELECT r.rel_object_id'
      '             FROM fdc_rel_pack_docs_lst r'
      '             WHERE r.object_id = :Pack_ID )'
      '--- '#1076#1088#1091#1075#1080#1077' '#1090#1080#1087#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1082#1086#1085#1074#1077#1088#1090#1086#1088' '#1085#1077' '#1087#1086#1085#1080#1084#1072#1077#1090
      
        'AND dp.TypeSysName IN ('#39'DocPackReturns'#39', '#39'DocPackReuse'#39', '#39'PackBu' +
        'dgetPayment'#39')')
    Variables.Data = {
      0300000001000000080000003A5041434B5F4944030000000000000000000000}
    Session = Session
    Left = 651
    Top = 242
  end
  object pkgCommon: TOraclePackage
    Session = Session
    Cursor = crSQLWait
    Left = 48
    Top = 358
  end
  object dsRegEvent: TfdcQuery
    Session = Session
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  p_evt.EventRegister('
      '    pTypeCode => :TypeCode'
      '   ,pCode     => :EvtNum'
      '   ,pParam1   => :P1'
      '   ,pParam2   => :P2'
      '   ,pParam3   => :P3'
      '   ,pParam4   => :P4'
      '   ,pParam5   => :P5'
      '  );'
      'end;')
    Left = 384
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'TypeCode'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EvtNum'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P3'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P4'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P5'
        ParamType = ptInput
      end>
  end
  object StyleRepository: TcxStyleRepository
    Left = 32
    Top = 240
    object stlDocPackAlien: TcxStyle
      AssignedValues = [svColor]
      Color = 12582911
    end
    object stlDocPackAlienSelected: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
    object stlDocPackSended: TcxStyle
      AssignedValues = [svColor]
      Color = 16247513
    end
    object stlDocPackSendedSelected: TcxStyle
      AssignedValues = [svColor]
      Color = clSkyBlue
    end
    object stlDocPackConfirmed: TcxStyle
      AssignedValues = [svColor]
      Color = 13235659
    end
    object stlDocPackConfirmedSelected: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object stlDocPackTransNoAuto: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
    object stlPOPaybackLoaded: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clHotLight
    end
    object stlPOPaybackWorked: TcxStyle
    end
    object stlPOPaybackConfirmed: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clGreen
    end
    object stlPOPaybackDenial: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
    object stlRepOwnRecords: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clNavy
    end
    object stlRepOwnGroupRecords: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object stlRepOtherGroupRecords: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object stlSumByDoc: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object stlDocInactive: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clSilver
      TextColor = clInactiveCaption
    end
  end
  object dsBuxReports: TOracleDataSet
    SQL.Strings = (
      'SELECT DISTINCT o.*'
      '  FROM fdc_nsi_report_lst o, fdc_value_lst v'
      '  WHERE o.typesysname = '#39'NSIREPORT.ACC'#39
      '    AND (   o.edate IS NULL'
      '         OR o.edate >= nvl( ( SELECT v2.DateTimeValue'
      '                                FROM fdc_value_lst v2'
      '                                WHERE v2.SYSNAME = '#39'MOVING_DATE'#39
      
        '                                  AND v2.IsSystem = 1 ), trunc( ' +
        'SYSDATE ))'
      '        )'
      '    AND o.sdate <= trunc( SYSDATE )'
      '    and v.owner_object_id = o.id'
      '    AND v.SysName = '#39'BuxRepCustomLevel'#39
      '    AND v.NumValue= p_Params.CustomLevel '
      '  ORDER BY o.name')
    Cursor = crSQLWait
    Session = Session
    Left = 656
    Top = 104
  end
  object dsGetChildCustoms: TfdcQuery
    Session = Session
    ReadOnly = False
    SQL.Strings = (
      'SELECT '#39#1042#1089#1077#39' AS name, '#39'00000000'#39' as code'
      '  FROM DUAL'
      'UNION ALL'
      'SELECT full_name, code'
      '  FROM ('
      '        SELECT c.full_name, c.customs_code_8 AS code, c.name'
      '          FROM fdc_customs_lst  c'
      '          WHERE substr( c.customs_code_8, 6, 3 ) = '#39'000'#39
      '            AND substr( c.customs_code_8, 1, 1 ) = '#39'1'#39
      '            AND substr( c.customs_code_8, 2, 1 ) = '#39'0'#39
      '            AND c.customs_code_8 <> '#39'10007000'#39
      '            AND c.customs_code_8 <> '#39'10008000'#39
      
        '            AND nvl( c.dt_end, trunc( SYSDATE ) ) >= trunc( SYSD' +
        'ATE )'
      '            AND (   c.customs_code_8 = p_Params.CustomCode'
      
        '                 OR p_Params.CustomLevel = 1 AND substr( c.custo' +
        'ms_code_8, 1, 3 ) = substr( p_Params.CustomCode, 1, 3 )'
      
        '                 OR p_Params.CustomLevel = 0 AND ( substr( c.cus' +
        'toms_code_8, 4, 5 ) = '#39'00000'#39' OR (substr( c.customs_code_8, 1, 3' +
        ' ) = '#39'100'#39
      
        '                                                                ' +
        '                                  and'
      
        '                                                                ' +
        '                                  substr( c.customs_code_8, 6, 3' +
        ' ) = '#39'000'#39
      
        '                                                                ' +
        '                                  and'
      
        '                                                                ' +
        '                                  (substr( c.customs_code_8, 4, ' +
        '1 ) = '#39'0'#39' or substr( c.customs_code_8, 4, 1 ) = '#39'1'#39')'
      
        '                                                                ' +
        '                                 )))'
      '        union '
      
        '        select nvl(c.full_name, c.name ) as full_name, c.customs' +
        '_code_8 AS code, c.name'
      '          FROM fdc_customs_lst  c'
      
        '          where p_Params.CustomLevel = 0 and c.customs_code_8 = ' +
        'p_params.ELSCustomCode'
      '          ORDER BY name'
      ')')
    Left = 200
    Top = 362
  end
  object dsCheckVerifyParams: TfdcQuery
    Session = Session
    AutoCommit = False
    AutoRollback = False
    ReadOnly = False
    SQL.Strings = (
      'begin'
      
        ' :Result ::= PKG_ASBC_CHECKS.verifyParams(:nSubjectID, :nDocumen' +
        'tID);'
      'end;')
    Left = 547
    Top = 84
    ParamData = <
      item
        DataType = ftString
        Name = 'Result'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'nSubjectID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'nDocumentID'
        ParamType = ptUnknown
      end>
  end
  object dsHintRcd: TfdcQuery
    Session = Session
    AutoCommit = False
    AutoRollback = False
    ReadOnly = False
    SQL.Strings = (
      'begin'
      '  :Result ::= GetHintRec(:UserLogn);'
      'end;')
    SourceServerObject = 'FDC_USER_LST'
    Left = 494
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'Result'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'UserLogn'
        ParamType = ptUnknown
      end>
  end
end
