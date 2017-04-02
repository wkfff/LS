inherited qTurnoverF14Form: TqTurnoverF14Form
  Left = 170
  Top = 154
  Width = 854
  Caption = #1089#1095' 07.00.00'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdTurnoverSheet: TcxGrid
    Width = 846
    inherited grdTurnoverSheetDBBandedTableView: TcxGridDBBandedTableView
      OnCustomDrawCell = grdTurnoverSheetDBBandedTableViewCustomDrawCell
      DataController.Filter.OnChanged = grdTurnoverSheetDBBandedTableViewDataControllerFilterChanged
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00'
          Kind = skSum
          Column = grdTurnoverSheetDBBandedTableViewIsMadeOut
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = grdTurnoverSheetDBBandedTableViewZadolg
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = grdTurnoverSheetDBBandedTableViewForNextPay
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = grdTurnoverSheetDBBandedTableViewForPay
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = grdTurnoverSheetDBBandedTableViewReturn
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = grdTurnoverSheetDBBandedTableViewRemovedFromAcc
        end>
      Bands = <
        item
          Caption = #8470' '#1087'/'#1087
          FixedKind = fkLeft
          Width = 40
        end
        item
          Caption = #1091#1095#1072#1089#1090#1085#1080#1082' '#1042#1069#1044
          Width = 360
        end
        item
          Caption = #1048#1053#1053
          Position.BandIndex = 1
          Position.ColIndex = 0
          Width = 75
        end
        item
          Caption = #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'/'#1060#1048#1054
          Position.BandIndex = 1
          Position.ColIndex = 1
          Width = 88
        end
        item
          Caption = #1090#1080#1087
          Position.BandIndex = 1
          Position.ColIndex = 2
          Width = 106
        end
        item
          Caption = #8470' '#1090#1072#1084#1086#1078#1077#1085#1085#1086#1081' '#1088#1072#1089#1087#1080#1089#1082#1080
          Width = 100
        end
        item
          Caption = #1042#1093#1086#1076#1103#1097#1080#1081' '#1086#1089#1090#1072#1090#1086#1082
          Width = 100
        end
        item
          Caption = #1054#1073#1086#1088#1086#1090#1099' '#1079#1072'  '#1087#1077#1088#1080#1086#1076
        end
        item
          Caption = #1054#1092#1086#1088#1084#1083#1077#1085#1086
          Position.BandIndex = 7
          Position.ColIndex = 0
          Width = 80
        end
        item
          Caption = #1047#1072#1095#1090#1077#1085#1086' '
          Position.BandIndex = 7
          Position.ColIndex = 1
          Width = 240
        end
        item
          Caption = #1074' '#1089#1095#1077#1090' '#1079#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1080
          Position.BandIndex = 9
          Position.ColIndex = 0
        end
        item
          Caption = #1074' '#1089#1095#1077#1090' '#1073#1091#1076#1091#1097#1080#1093' '#1087#1083#1072#1090#1077#1078#1077#1081
          Position.BandIndex = 9
          Position.ColIndex = 1
        end
        item
          Caption = #1074' '#1089#1095#1077#1090' '#1091#1087#1083#1072#1090#1099' '#1087#1083#1072#1090#1077#1078#1077#1081
          Position.BandIndex = 9
          Position.ColIndex = 2
        end
        item
          Caption = #1042#1086#1079#1074#1088#1072#1097#1077#1085#1086
          Position.BandIndex = 7
          Position.ColIndex = 2
          Width = 80
        end
        item
          Caption = #1057#1085#1103#1090#1086' '#1089' '#1091#1095#1077#1090#1072' '#1085#1077#1074#1086#1089#1090#1088#1077#1073#1086#1074#1072#1085#1085#1086#1075#1086' '#1079#1072#1083#1086#1075#1072
          Position.BandIndex = 7
          Position.ColIndex = 3
          Width = 80
        end
        item
          Caption = #1048#1089#1093#1086#1076#1103#1097#1080#1081' '#1086#1089#1090#1072#1090#1086#1082' '
          FixedKind = fkRight
          Width = 100
        end>
      object grdTurnoverSheetDBBandedTableViewItem_no: TcxGridDBBandedColumn
        Caption = '1'
        DataBinding.FieldName = 'ITEM_NO'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewINN: TcxGridDBBandedColumn
        Caption = '2'
        DataBinding.FieldName = 'INN'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewName: TcxGridDBBandedColumn
        Caption = '3'
        DataBinding.FieldName = 'NAME'
        Width = 200
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewTypePerson: TcxGridDBBandedColumn
        Caption = '4'
        DataBinding.FieldName = 'TYPE_PERSON'
        Width = 140
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewDocNumbe: TcxGridDBBandedColumn
        Caption = '5'
        DataBinding.FieldName = 'DOC_NUMBER'
        Width = 80
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewIn_summa: TcxGridDBBandedColumn
        Caption = '6'
        DataBinding.FieldName = 'IN_SUMMA'
        Width = 120
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewIsMadeOut: TcxGridDBBandedColumn
        Caption = '7'
        DataBinding.FieldName = 'ISMADEOUT'
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewZadolg: TcxGridDBBandedColumn
        Caption = '8'
        DataBinding.FieldName = 'ZADOLG'
        Position.BandIndex = 10
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewForNextPay: TcxGridDBBandedColumn
        Caption = '9'
        DataBinding.FieldName = 'FORNEXTPAY'
        Position.BandIndex = 11
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewForPay: TcxGridDBBandedColumn
        Caption = '10'
        DataBinding.FieldName = 'FORPAY'
        Position.BandIndex = 12
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewReturn: TcxGridDBBandedColumn
        Caption = '11'
        DataBinding.FieldName = 'RETURN'
        Position.BandIndex = 13
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewRemovedFromAcc: TcxGridDBBandedColumn
        Caption = '12'
        DataBinding.FieldName = 'REMOVEDFROMACC'
        Position.BandIndex = 14
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewOut_summa: TcxGridDBBandedColumn
        Caption = '13'
        DataBinding.FieldName = 'OUT_SUMMA'
        Width = 120
        Position.BandIndex = 15
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
  end
  inherited PanelHeading: TPanel
    Width = 846
    Caption = 
      #1054#1073#1086#1088#1086#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100' '#1087#1086' '#1089#1095#1077#1090#1091' '#1058'.07.00.00 "'#1056#1072#1089#1095#1077#1090#1099' '#1087#1086' '#1076#1077#1085#1077#1078#1085#1099#1084' '#1079#1072#1083 +
      #1086#1075#1072#1084'" '
  end
  inherited dsetData: TOracleDataSet
    SQL.Strings = (
      'select to_char(null) item_no'
      
        '      ,p_oper_balans.get_bsumma(:account_id,:account_code,trunc(' +
        ':bdate),0,'#39'rur'#39','#39'rur'#39',0) in_summa'
      '      ,to_char(null) inn'
      '      ,to_char(null) name'
      '      ,to_char(null) type_person'
      '      ,to_char(null) doc_number'
      '      ,to_number(null) ismadeout'
      '      ,to_number(null) zadolg'
      '      ,to_number(null) fornextpay'
      '      ,to_number(null) forpay'
      '      ,to_number(null) return'
      '      ,to_number(null) removedfromacc'
      
        '      ,p_oper_balans.get_bsumma(:account_id,:account_code,trunc(' +
        ':edate)+1,0,'#39'rur'#39','#39'rur'#39',0) out_summa'
      'from dual'
      'union all'
      
        'select decode(item_no, lag(item_no, 1) over(order by item_sort n' +
        'ulls first, item_no, name nulls first), null, item_no) item_no'
      '      ,in_summa'
      '      ,inn'
      '      ,name'
      '      ,type_person'
      '      ,doc_number'
      '      ,ismadeout'
      '      ,zadolg'
      '      ,fornextpay'
      '      ,forpay'
      '      ,return'
      '      ,removedfromacc'
      
        '      ,(in_summa + ismadeout - zadolg - fornextpay - forpay - re' +
        'turn - removedfromacc) out_summa'
      'from ('
      
        'select nvl(to_char(item_no),(case when (subject_id is null) then' +
        ' '#39#1048#1090#1086#1075#1086#39' else '#39#1048#1090#1086#1075#1086' '#1087#1086' '#1091#1095#1072#1089#1090#1085#1080#1082#1091' '#1042#1069#1044#39' end)) item_no'
      '      ,item_no item_sort'
      '      ,subject_id'
      
        '      ,(case when (item_no is null and subject_id is null) then ' +
        'p_oper_balans.get_bsumma(:account_id,:account_code,trunc(:bdate)' +
        ',0,'#39'rur'#39','#39'rur'#39',0)'
      
        '             when (item_no is null and subject_id is not null) t' +
        'hen p_oper_balans.get_bsumma_account_subject(:account_id,:accoun' +
        't_code,trunc(:bdate),subject_id,0,'#39'rur'#39','#39'rur'#39',0)'
      '             else in_summa'
      '       end) in_summa'
      '      ,inn'
      '      ,name'
      '      ,type_person'
      '      ,doc_number'
      '      ,sum(ismadeout) ismadeout'
      '      ,sum(zadolg) zadolg'
      '      ,sum(fornextpay) fornextpay'
      '      ,sum(forpay) forpay'
      '      ,sum(return) return'
      '      ,sum(removedfromacc) removedfromacc'
      'from ('
      
        '      select row_number() over(order by inn,name,type_person,sub' +
        'ject_id,doc_number) item_no'
      '            ,subject_id'
      '            ,to_number(null) in_summa'
      '            ,inn'
      '            ,name'
      '            ,type_person'
      '            ,doc_number'
      '            ,ismadeout'
      '            ,zadolg'
      '            ,fornextpay'
      '            ,forpay'
      '            ,return'
      '            ,removedfromacc'
      '      from ('
      '            select subject_id'
      '                  ,inn'
      '                  ,name'
      '                  ,type_person'
      '                  ,doc_number'
      '                  ,sum(ismadeout) ismadeout'
      '                  ,sum(zadolg) zadolg'
      '                  ,sum(fornextpay) fornextpay'
      '                  ,sum(forpay) forpay'
      '                  ,sum(return) return'
      '                  ,sum(removedfromacc) removedfromacc'
      '            from ('
      '                  select acct.kbk_id'
      '                        ,acct.subject_id subject_id'
      '                        ,acct.account_id'
      '                        ,acct.operation_date'
      
        '                        ,(case sl.id when -1 then '#39' '#39' else sl.in' +
        'n end) inn'
      
        '                        ,(case sl.id when -1 then '#39' '#39' else sl.kp' +
        'p end) kpp'
      
        '                        ,(case sl.id when -1 then '#39' '#39' else sl.na' +
        'me end) name'
      
        '                        ,(case sl.id when -1 then null else (cas' +
        'e sl.typesysname when '#39'Person'#39' then '#39#1060#39' else '#39#1070#39' end) end) type_' +
        'person'
      '                        ,(case'
      
        '                         when (d.typesysname IN ( '#39'TR'#39', '#39'TrDupli' +
        'cate'#39') ) then d.name'
      
        '                         when (ol.typesysname IN ( '#39'PayDebt'#39') ) ' +
        'then'
      
        '                         (select tr.name          from fdc_ded_p' +
        'aydept pdd'
      
        '                                                      ,fdc_objec' +
        't_relation or1'
      
        '                                                      ,fdc_tr_ls' +
        't tr'
      
        '                                                    where pdd.id' +
        ' in (acct.doc_id)'
      
        '                                                    and   or1.re' +
        'l_object_id = pdd.decision_id'
      
        '                                                    and  or1.obj' +
        'ect_id = tr.id )'
      '                           else null end) doc_number'
      
        '                        ,(case  when (acc.code = '#39'07.01.01'#39' and ' +
        'acct.is_debit = '#39'Y'#39') then sum_rur else 0 end) ismadeout'
      
        '                        ,-(case  when (acc.code = '#39'07.01.02'#39' and' +
        ' acct.is_debit = '#39'N'#39') then sum_rur else 0 end) zadolg'
      '                        ,0 fornextpay'
      
        '                        ,-(case  when (acc.code = '#39#39' and acct.is' +
        '_debit = '#39'N'#39') then sum_rur else 0 end) forpay'
      
        '                        ,-(case  when (acc.code = '#39'07.01.04'#39' and' +
        ' acct.is_debit = '#39'N'#39') then sum_rur else 0 end) return'
      
        '                        ,-(case  when (acc.code = '#39'07.01.05'#39' and' +
        ' acct.is_debit = '#39'N'#39') then sum_rur else 0 end) removedfromacc'
      '                  from fdc_acc_transaction acct'
      '                      ,('
      '                        select id, code'
      '                        from fdc_acc_lst'
      '                        start with id = :account_id'
      '                        connect by prior id = parent_id'
      '                       ) acc'
      '                      ,fdc_object_lst ol '
      '                      ,fdc_document_lst d'
      '                      ,fdc_subject_lst sl'
      
        '                  where (operation_date between trunc(:bdate) an' +
        'd trunc(:edate))'
      '                    and acct.account_id = acc.id'
      '                    and acct.doc_id = ol.id'
      
        '                    and (acct.is_current = 1 and ol.typesysname ' +
        'not in ('#39'DecisionPaymentDeposit'#39'))'
      
        '                    and p_oborotki.get_doc_charge_id(acct.doc_id' +
        ') = d.id(+)'
      '                    and acct.subject_id = sl.id(+)'
      '                  union all'
      '                  select acct.kbk_id'
      '                        ,acct.subject_id subject_id'
      '                        ,acct.account_id'
      '                        ,acct.operation_date'
      
        '                        ,(case sl.id when -1 then '#39' '#39' else sl.in' +
        'n end) inn'
      
        '                        ,(case sl.id when -1 then '#39' '#39' else sl.kp' +
        'p end) kpp'
      
        '                        ,(case sl.id when -1 then '#39' '#39' else sl.na' +
        'me end) name'
      
        '                        ,(case sl.id when -1 then null else (cas' +
        'e sl.typesysname when '#39'Person'#39' then '#39#1060#39' else '#39#1070#39' end) end) type_' +
        'person'
      '                        ,(case'
      
        '                         when (d.typesysname IN ( '#39'TR'#39', '#39'TrDupli' +
        'cate'#39') ) then d.name  else null end) doc_number'
      '                        ,0 ismadeout'
      '                        ,0 zadolg'
      
        '                        ,(case  when (acc.code = '#39'07.01.03'#39' and ' +
        'acct.is_debit = '#39'N'#39') then (fdc_nsi_currency_get_rate(po.currency' +
        '_id, rr.payment_date) * rr.summa) else 0 end) fornextpay'
      '                        ,0 forpay'
      '                        ,0 return'
      '                        ,0 removedfromacc'
      '                  from fdc_acc_transaction acct'
      '                      ,('
      '                        select id, code'
      '                        from fdc_acc_lst'
      '                        start with id = :account_id'
      '                        connect by prior id = parent_id'
      '                       ) acc'
      '                      ,fdc_object_lst ol '
      '                      ,fdc_document_lst d'
      '                      ,fdc_subject_lst sl'
      '                      ,fdc_decision_payment_lst pd'
      '                      ,fdc_value                v'
      '                      ,fdc_object               ov'
      '                      ,fdc_reserved_payment     rr'
      '                      ,fdc_payment_order        po'
      
        '                  where (operation_date between trunc(:bdate) an' +
        'd trunc(:edate))'
      '                    and acct.account_id = acc.id'
      '                    and acct.doc_id = ol.id'
      
        '                    and (ol.typesysname in ('#39'DecisionPaymentDepo' +
        'sit'#39'))'
      '                    and acct.subject_id = sl.id(+)'
      '                    and ol.id = pd.id'
      '                    and ov.owner_object_id = pd.id'
      '                    and ov.id              = v.id'
      '                    and v.ref_object_id    = rr.id'
      '                    and rr.payment_id      = po.id'
      '                    and rr.doc_id = d.id'
      '                  )'
      '            group by subject_id '
      '                    ,inn'
      '                    ,name'
      '                    ,type_person'
      '                    ,doc_number'
      '           ) a'
      '      where ismadeout != 0'
      '         or zadolg != 0'
      '         or fornextpay != 0'
      '         or forpay != 0'
      '         or return != 0'
      '         or removedfromacc != 0'
      '     )'
      'group by grouping sets(('
      '         item_no'
      '        ,subject_id'
      '        ,in_summa'
      '        ,inn'
      '        ,name'
      '        ,type_person'
      '        ,doc_number'
      '        ,ismadeout'
      '        ,zadolg'
      '        ,fornextpay'
      '        ,forpay'
      '        ,return'
      '        ,removedfromacc),(subject_id,inn,name,type_person),())'
      '     )'
      'union all'
      'select to_char(null) item_no'
      
        '      ,p_oper_balans.get_bsumma(:account_id,:account_code,trunc(' +
        ':bdate),0,'#39'rur'#39','#39'rur'#39',0) in_summa'
      '      ,to_char(null) inn'
      '      ,to_char(null) name'
      '      ,to_char(null) type_person'
      '      ,to_char(null) doc_number'
      '      ,to_number(null) ismadeout'
      '      ,to_number(null) zadolg'
      '      ,to_number(null) fornextpay'
      '      ,to_number(null) forpay'
      '      ,to_number(null) return'
      '      ,to_number(null) removedfromacc'
      
        '      ,p_oper_balans.get_bsumma(:account_id,:account_code,trunc(' +
        ':edate)+1,0,'#39'rur'#39','#39'rur'#39',0) out_summa'
      'from dual')
    Optimize = False
    Variables.Data = {
      03000000040000000D0000003A4143434F554E545F434F444505000000000000
      00000000000B0000003A4143434F554E545F4944030000000000000000000000
      060000003A42444154450C0000000000000000000000060000003A4544415445
      0C0000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000E000000070000004954454D5F4E4F0100000000000E0000004F5045
      524154494F4E5F4441544501000000000008000000494E5F53554D4D41010000
      00000003000000494E4E010000000000040000004E414D450100000000000300
      000046494F0100000000000A000000444F435F4E554D42455201000000000006
      00000052455455524E010000000000090000004F55545F53554D4D4101000000
      00000900000049534D4144454F5554010000000000060000005A41444F4C4701
      00000000000A000000464F524E45585450415901000000000006000000464F52
      5041590100000000000E00000052454D4F56454446524F4D4143430100000000
      00}
    Left = 64
    object dsetDataITEM_NO: TStringField
      FieldName = 'ITEM_NO'
      Size = 40
    end
    object dsetDataIN_SUMMA: TFloatField
      FieldName = 'IN_SUMMA'
      DisplayFormat = ',0.00'
    end
    object dsetDataINN: TStringField
      FieldName = 'INN'
      Size = 12
    end
    object dsetDataNAME: TStringField
      FieldName = 'NAME'
      Size = 1500
    end
    object dsetDataTYPE_PERSON: TStringField
      FieldName = 'TYPE_PERSON'
      Size = 1500
    end
    object dsetDataDOC_NUMBER: TStringField
      FieldName = 'DOC_NUMBER'
      Size = 100
    end
    object dsetDataISMADEOUT: TFloatField
      FieldName = 'ISMADEOUT'
      DisplayFormat = ',0.00'
    end
    object dsetDataZADOLG: TFloatField
      FieldName = 'ZADOLG'
      DisplayFormat = ',0.00'
    end
    object dsetDataFORNEXTPAY: TFloatField
      FieldName = 'FORNEXTPAY'
      DisplayFormat = ',0.00'
    end
    object dsetDataFORPAY: TFloatField
      FieldName = 'FORPAY'
      DisplayFormat = ',0.00'
    end
    object dsetDataRETURN: TFloatField
      FieldName = 'RETURN'
      DisplayFormat = ',0.00'
    end
    object dsetDataREMOVEDFROMACC: TFloatField
      FieldName = 'REMOVEDFROMACC'
      DisplayFormat = ',0.00'
    end
    object dsetDataOUT_SUMMA: TFloatField
      FieldName = 'OUT_SUMMA'
      DisplayFormat = ',0.00'
    end
  end
  inherited dsetAccount: TOracleDataSet
    Optimize = False
  end
end
