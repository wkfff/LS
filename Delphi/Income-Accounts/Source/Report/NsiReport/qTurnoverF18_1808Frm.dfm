inherited qTurnoverF18_1808Form: TqTurnoverF18_1808Form
  Left = 298
  Top = 256
  Width = 854
  Caption = #1089#1095' 12.02.00 '#1080' 12.03.00'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdTurnoverSheet: TcxGrid
    Width = 846
    inherited grdTurnoverSheetDBBandedTableView: TcxGridDBBandedTableView
      FilterBox.Visible = fvNever
      OnCustomDrawCell = grdTurnoverSheetDBBandedTableViewCustomDrawCell
      DataController.DataSource = dsItog
      DataController.DetailKeyFieldNames = 'ID'
      DataController.Filter.OnChanged = grdTurnoverSheetDBBandedTableViewDataControllerFilterChanged
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'ID'
      OptionsBehavior.CellHints = True
      OptionsView.ExpandButtonsForEmptyDetails = False
      Bands = <
        item
          Caption = #8470' '#1087'/'#1087
          FixedKind = fkLeft
          Width = 40
        end
        item
          Caption = #1059#1074#1077#1076#1086#1084#1083#1077#1085#1080#1077' '#1086#1073' '#1091#1090#1086#1095#1085#1077#1085#1080#1080'/'#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077
        end
        item
          Caption = #1090#1080#1087
          Position.BandIndex = 1
          Position.ColIndex = 0
          Width = 180
        end
        item
          Caption = #8470
          Position.BandIndex = 1
          Position.ColIndex = 2
          Width = 160
        end
        item
          Caption = #1076#1072#1090#1072
          Position.BandIndex = 1
          Position.ColIndex = 3
        end
        item
          Caption = #1050#1041#1050
          Position.BandIndex = 1
          Position.ColIndex = 1
          Width = 84
        end
        item
          Caption = #1042#1093#1086#1076'. '#1086#1089#1090#1072#1090#1086#1082' '
          FixedKind = fkLeft
          Width = 140
        end
        item
          Caption = #1054#1073#1086#1088#1086#1090#1099' '#1079#1072'  '#1087#1077#1088#1080#1086#1076
          Width = 260
        end
        item
          Caption = #1055#1077#1088#1077#1076#1072#1085#1086
          Position.BandIndex = 7
          Position.ColIndex = 0
          Width = 140
        end
        item
          Caption = #1055#1088#1086#1074#1077#1076#1077#1085#1086' '#1087#1086' '#1089#1091#1073#1089#1095#1077#1090#1091
          Position.BandIndex = 7
          Position.ColIndex = 1
          Width = 140
        end
        item
          Caption = #1048#1089#1093'. '#1086#1089#1090#1072#1090#1086#1082
          FixedKind = fkRight
          Width = 140
        end>
      object grdTurnoverSheetDBBandedTableViewItem_no: TcxGridDBBandedColumn
        Caption = '1'
        DataBinding.FieldName = 'ITEM_NO'
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewDocType: TcxGridDBBandedColumn
        Caption = '2'
        DataBinding.FieldName = 'DOCTYPE'
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewDocnumber: TcxGridDBBandedColumn
        Caption = '3'
        DataBinding.FieldName = 'DOCNUMBER'
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewDocDate: TcxGridDBBandedColumn
        Caption = '4'
        DataBinding.FieldName = 'DOCDATE'
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewKBK: TcxGridDBBandedColumn
        Caption = '5'
        DataBinding.FieldName = 'KBK'
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Width = 200
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewIN_SUMMA_ITOGO: TcxGridDBBandedColumn
        Caption = '6'
        DataBinding.FieldName = 'IN_SUMMA_ITOGO'
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Width = 120
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewPostupilo: TcxGridDBBandedColumn
        Caption = '7'
        DataBinding.FieldName = 'POSTUPILO'
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewdebit: TcxGridDBBandedColumn
        Caption = '8'
        DataBinding.FieldName = 'DEBIT'
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Position.BandIndex = 9
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdTurnoverSheetDBBandedTableViewOut_summa_itogo: TcxGridDBBandedColumn
        Caption = '9'
        DataBinding.FieldName = 'OUT_SUMMA_ITOGO'
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Width = 120
        Position.BandIndex = 10
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object grdTurnoverSheetDBBandedTableDView: TcxGridDBTableView [1]
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsItogDocType
      DataController.DetailKeyFieldNames = 'PARENTID'
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object grdTurnoverSheetDBBandedTableDViewITEM_NO: TcxGridDBColumn
        Caption = #8470' '#1087'/'#1087
        DataBinding.FieldName = 'ITEM_NO'
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Width = 80
      end
      object grdTurnoverSheetDBBandedTableDViewDocType: TcxGridDBColumn
        Caption = #1059#1074#1077#1076#1086#1084#1083#1077#1085#1080#1103'/'#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077
        DataBinding.FieldName = 'DOCTYPE'
        Width = 180
      end
      object grdTurnoverSheetDBBandedTableDViewDocNumber: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'DOCNUMBER'
        Visible = False
        Width = 140
      end
      object grdTurnoverSheetDBBandedTableDViewDocDate: TcxGridDBColumn
        Caption = #1076#1072#1090#1072
        DataBinding.FieldName = 'DOCDATE'
        Visible = False
      end
      object grdTurnoverSheetDBBandedTableDViewKBK: TcxGridDBColumn
        Caption = #1050#1041#1050
        DataBinding.FieldName = 'KBK'
        Visible = False
        Width = 150
      end
      object grdTurnoverSheetDBBandedTableDViewIN_SUMMA_ITOGO: TcxGridDBColumn
        Caption = #1042#1093#1086#1076'. '#1086#1089#1090#1072#1090#1086#1082
        DataBinding.FieldName = 'IN_SUMMA_ITOGO'
        Visible = False
        Hidden = True
        Width = 140
      end
      object grdTurnoverSheetDBBandedTableDViewPostupilo: TcxGridDBColumn
        Caption = #1055#1077#1088#1077#1076#1072#1085#1086
        DataBinding.FieldName = 'POSTUPILO'
        Width = 140
      end
      object grdTurnoverSheetDBBandedTableDViewdebit: TcxGridDBColumn
        Caption = #1055#1088#1086#1074#1077#1076#1077#1085#1086' '#1087#1086' '#1089#1091#1073#1089#1095#1077#1090#1091
        DataBinding.FieldName = 'DEBIT'
        Width = 140
      end
      object grdTurnoverSheetDBBandedTableDViewOUT_SUMMA_ITOGO: TcxGridDBColumn
        Caption = #1048#1089#1093'. '#1086#1089#1090#1072#1090#1086#1082
        DataBinding.FieldName = 'OUT_SUMMA_ITOGO'
        Visible = False
        Hidden = True
        Width = 140
      end
    end
    object grdTurnoverSheetDBBandedTableD2View: TcxGridDBTableView [2]
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsData
      DataController.DetailKeyFieldNames = 'PARENTID'
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.GroupByBox = False
      object grdTurnoverSheetDBBandedTableD2ViewITEM_NO: TcxGridDBColumn
        Caption = #8470' '#1087'/'#1087
        DataBinding.FieldName = 'ITEM_NO'
        Visible = False
        Options.Filtering = False
        Options.FilteringMRUItemsList = False
        Width = 80
      end
      object grdTurnoverSheetDBBandedTableD2ViewDocType: TcxGridDBColumn
        Caption = #1059#1074#1077#1076#1086#1084#1083#1077#1085#1080#1103'/'#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077
        DataBinding.FieldName = 'DOCTYPE'
        Visible = False
        Width = 180
      end
      object grdTurnoverSheetDBBandedTableD2ViewDocNumber: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'DOCNUMBER'
        Width = 140
      end
      object grdTurnoverSheetDBBandedTableD2ViewDocDate: TcxGridDBColumn
        Caption = #1076#1072#1090#1072
        DataBinding.FieldName = 'DOCDATE'
      end
      object grdTurnoverSheetDBBandedTableD2ViewKBK: TcxGridDBColumn
        DataBinding.FieldName = 'KBK'
        Width = 150
      end
      object grdTurnoverSheetDBBandedTableD2ViewIN_SUMMA_ITOGO: TcxGridDBColumn
        Caption = #1042#1093#1086#1076'. '#1086#1089#1090#1072#1090#1086#1082
        DataBinding.FieldName = 'IN_SUMMA_ITOGO'
        Visible = False
        Hidden = True
        Width = 140
      end
      object grdTurnoverSheetDBBandedTableD2ViewPostupilo: TcxGridDBColumn
        Caption = #1055#1077#1088#1077#1076#1072#1085#1086
        DataBinding.FieldName = 'POSTUPILO'
        Width = 140
      end
      object grdTurnoverSheetDBBandedTableD2Viewdebit: TcxGridDBColumn
        Caption = #1055#1088#1086#1074#1077#1076#1077#1085#1086' '#1087#1086' '#1089#1091#1073#1089#1095#1077#1090#1091
        DataBinding.FieldName = 'DEBIT'
        Width = 140
      end
      object grdTurnoverSheetDBBandedTableD2ViewOUT_SUMMA_ITOGO: TcxGridDBColumn
        Caption = #1048#1089#1093'. '#1086#1089#1090#1072#1090#1086#1082
        DataBinding.FieldName = 'OUT_SUMMA_ITOGO'
        Visible = False
        Hidden = True
        Width = 140
      end
    end
    inherited grdTurnoverSheetLevel: TcxGridLevel
      object grdTurnoverSheetLevel1: TcxGridLevel
        GridView = grdTurnoverSheetDBBandedTableDView
        object grdTurnoverSheetLevel2: TcxGridLevel
          GridView = grdTurnoverSheetDBBandedTableD2View
        end
      end
    end
  end
  inherited PanelHeading: TPanel
    Width = 846
    Caption = 
      #1054#1073#1086#1088#1086#1090#1085#1072#1103' '#1074#1077#1076#1086#1084#1086#1089#1090#1100#1087#1086' '#1089#1095#1077#1090#1072#1084' '#1058'.12.02.00 "'#1055#1077#1088#1077#1076#1072#1095#1072' '#1091#1074#1077#1076#1086#1084#1083#1077#1085#1080#1081' '#1086#1073 +
      ' '#1091#1090#1086#1095#1085#1077#1085#1080#1080'", '#1058'.12.03.00 "'#1055#1077#1088#1077#1076#1072#1095#1072' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1081'"'
  end
  inherited dsetData: TOracleDataSet
    SQL.Strings = (
      'select '#39'-1'#39' id'
      '      ,null parentid'
      '      ,to_char(null) item_no'
      '      ,to_char(null) doctype'
      '      ,to_char(null) docnumber'
      '      ,to_date(null) docdate'
      '      ,to_char(null) kbk'
      
        '      ,p_oper_balans.get_bsumma(:account_id,:account_code,trunc(' +
        ':bdate),0,'#39'rur'#39','#39'rur'#39',(case :summarn when '#39'Y'#39' then 1 else 0 end)' +
        ',:ists)'
      '       +'
      
        '       p_oper_balans.get_bsumma(:account_id_confirm,:account_cod' +
        'e_confirm,trunc(:bdate),0,'#39'rur'#39','#39'rur'#39',(case :summarn when '#39'Y'#39' th' +
        'en 1 else 0 end),:ists) in_summa_itogo'
      '      ,to_number(null) postupilo'
      '      ,to_number(null) debit'
      
        '      ,p_oper_balans.get_bsumma(:account_id,:account_code,trunc(' +
        ':edate)+1,0,'#39'rur'#39','#39'rur'#39',(case :summarn when '#39'Y'#39' then 1 else 0 en' +
        'd),:ists)'
      '       +'
      
        '       p_oper_balans.get_bsumma(:account_id_confirm,:account_cod' +
        'e_confirm,trunc(:edate)+1,0,'#39'rur'#39','#39'rur'#39',(case :summarn when '#39'Y'#39' ' +
        'then 1 else 0 end),:ists) out_summa_itogo'
      'from dual'
      'union all'
      'select id'
      '      ,parentid'
      '      ,item_no'
      '      ,doctype'
      '      ,docnumber'
      '      ,docdate'
      '      ,kbk'
      '      ,in_summa_itogo'
      '      ,postupilo'
      '      ,debit'
      '      ,(in_summa_itogo + postupilo - debit) out_summa_itogo'
      'from ('
      'select id'
      
        '      ,(case when (item_no is null and doctype is null) then nul' +
        'l'
      
        '             when (item_no is null and doctype is not null) then' +
        ' null'
      '             else parentid'
      '       end) parentid'
      
        '      ,(case when (item_no is null and doctype is null) then '#39#1048#1090 +
        #1086#1075#1086#39
      
        '             when (item_no is null and doctype is not null) then' +
        ' '#39#1048#1090#1086#1075#1086' '#1087#1086' '#39'||doctype'
      '             else to_char(item_no)'
      '       end) item_no'
      '      ,item_no item_no_sort'
      '      ,doctype'
      '      ,docnumber'
      '      ,docdate'
      '      ,kbk'
      
        '      ,(case when (item_no is null) then p_oper_balans.get_bsumm' +
        'a(:account_id,:account_code,trunc(:bdate),0,'#39'rur'#39','#39'rur'#39',(case :s' +
        'ummarn when '#39'Y'#39' then 1 else 0 end),:ists)'
      '                                         +'
      
        '                                         p_oper_balans.get_bsumm' +
        'a(:account_id_confirm,:account_code_confirm,trunc(:bdate),0,'#39'rur' +
        #39','#39'rur'#39',(case :summarn when '#39'Y'#39' then 1 else 0 end),:ists)'
      '                                    else in_summa_itogo'
      '       end) in_summa_itogo'
      '      ,sum(postupilo) postupilo'
      '      ,sum(debit) debit'
      'from ('
      
        '      select row_number() over(order by doctype, kbk, docnumber,' +
        ' docdate) item_no'
      
        '            ,(doctype||'#39'|'#39'||kbk||'#39'|'#39'||docnumber||'#39'|'#39'||to_date(do' +
        'cdate,'#39'dd.mm.yyyy'#39')) id'
      '            ,(doctype) parentid'
      '            ,doctype'
      '            ,docnumber'
      '            ,docdate'
      '            ,to_number(null) in_summa_itogo'
      '            ,kbk'
      '            ,postupilo'
      '            ,debit'
      '      from ('
      '            select doctype'
      '                  ,docnumber'
      '                  ,docdate  '
      '                  ,kbk'
      '                  ,sum(postupilo) postupilo'
      '                  ,sum(debit) debit'
      '            from ('
      '                  SELECT acct.kbk_id'
      '                        ,acct.subject_id subject_id'
      '                        ,acct.account_id'
      '                        ,acct.operation_date'
      
        '                        ,(case :summarn when '#39'Y'#39' then null else ' +
        '(case dl.typesysname when '#39'DocChildsBalance'#39' then null ELSE nvl(' +
        ' cdl.doc_number, dl.doc_number ) end) end) docnumber'
      
        '                        ,(case :summarn when '#39'Y'#39' then null else ' +
        '(case dl.typesysname when '#39'DocChildsBalance'#39' then null else nvl(' +
        ' cdl.doc_date, dl.doc_date ) end) end) docdate'
      
        '                        ,(case acc.code when '#39'12.02.01'#39' then '#39#1059#1074 +
        #1040#39' when '#39'12.02.02'#39' then '#39#1059#1074#1062#39' when '#39'12.02.03'#39' then '#39#1059#1074#1048#1079#1083#39' when ' +
        #39'12.03.00'#39' then '#39#1055#39' else '#39#1085#1077' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1086#39' end) doctype'
      
        '                        ,p_oborotki.get_kbk_code(acct.kbk_id) kb' +
        'k'
      
        '                        ,(case acc.code when '#39'12.02.03'#39' then -1 ' +
        'else +1 end)*(case  when (acct.is_debit = '#39'Y'#39') then sum_rur else' +
        ' 0 end) postupilo'
      
        '                        ,(case acc.code when '#39'12.02.03'#39' then +1 ' +
        'else -1 end)*(case  when (acct.is_debit = '#39'N'#39') then sum_rur else' +
        ' 0 end) debit'
      '                  from fdc_acc_transaction acct'
      '                      ,('
      '                        select id, code'
      '                        from fdc_acc_lst'
      
        '                        where (:bdate between sdate and nvl(edat' +
        'e,:bdate + 1))'
      
        '                        start with (id in (:account_id,:account_' +
        'id_confirm))'
      '                        connect by prior id = parent_id'
      '                       ) acc'
      '                      ,fdc_document_lst dl'
      '                      ,fdc_cnfrm_specify_kindpay_lst c'
      '                      ,fdc_document_lst cdl'
      
        '                  where (operation_date between trunc(:bdate) an' +
        'd trunc(:edate))'
      '                    and acct.account_id = acc.id'
      
        '                    and (case :ists when '#39'N'#39' then '#39'Y'#39' else acct.' +
        'is_ts end) = '#39'Y'#39
      '                    and acct.doc_id = dl.id'
      '                    AND c.id(+) = acct.doc_id'
      '                    AND cdl.id(+) = c.confirmed_doc_id'
      '                    and ('
      '                         acct.is_current = 1'
      '                         or'
      '                         :summarn = '#39'Y'#39
      '                        ) '
      '                  )'
      '            group by doctype'
      '                    ,docnumber'
      '                    ,docdate'
      '                    ,kbk'
      '           ) a'
      '      where postupilo != 0 '
      '         or debit != 0'
      '     )'
      'group by grouping sets(('
      '         id'
      '        ,parentid'
      '        ,item_no'
      '        ,doctype'
      '        ,docnumber'
      '        ,docdate'
      '        ,kbk'
      '        ,in_summa_itogo'
      '        ,postupilo'
      '        ,debit)'
      '        ,(doctype),())'
      'order by item_no_sort nulls first'
      '     )'
      'union all'
      'select '#39'-2'#39' id'
      '      ,null parentid'
      '      ,to_char(null) item_no'
      '      ,to_char(null) doctype'
      '      ,to_char(null) docnumber'
      '      ,to_date(null) docdate'
      '      ,to_char(null) kbk'
      
        '      ,p_oper_balans.get_bsumma(:account_id,:account_code,trunc(' +
        ':bdate),0,'#39'rur'#39','#39'rur'#39',(case :summarn when '#39'Y'#39' then 1 else 0 end)' +
        ',:ists)'
      '       +'
      
        '       p_oper_balans.get_bsumma(:account_id_confirm,:account_cod' +
        'e_confirm,trunc(:bdate),0,'#39'rur'#39','#39'rur'#39',(case :summarn when '#39'Y'#39' th' +
        'en 1 else 0 end),:ists) in_summa_itogo'
      '      ,to_number(null) postupilo'
      '      ,to_number(null) debit'
      
        '      ,p_oper_balans.get_bsumma(:account_id,:account_code,trunc(' +
        ':edate)+1,0,'#39'rur'#39','#39'rur'#39',(case :summarn when '#39'Y'#39' then 1 else 0 en' +
        'd),:ists)'
      '       +'
      
        '       p_oper_balans.get_bsumma(:account_id_confirm,:account_cod' +
        'e_confirm,trunc(:edate)+1,0,'#39'rur'#39','#39'rur'#39',(case :summarn when '#39'Y'#39' ' +
        'then 1 else 0 end),:ists) out_summa_itogo'
      'from dual')
    Optimize = False
    Variables.Data = {
      03000000080000000B0000003A4143434F554E545F4944030000000000000000
      0000000D0000003A4143434F554E545F434F4445050000000000000000000000
      060000003A42444154450C0000000000000000000000060000003A4544415445
      0C0000000000000000000000050000003A495354530500000000000000000000
      00080000003A53554D4D41524E050000000000000000000000130000003A4143
      434F554E545F49445F434F4E4649524D03000000000000000000000015000000
      3A4143434F554E545F434F44455F434F4E4649524D0500000000000000000000
      00}
    QBEDefinition.QBEFieldDefs = {
      040000000B000000070000004954454D5F4E4F01000000000002000000494401
      000000000008000000504152454E544944010000000000030000004B424B0100
      000000000E000000494E5F53554D4D415F49544F474F0100000000000F000000
      4F55545F53554D4D415F49544F474F01000000000007000000444F4354595045
      01000000000009000000504F53545550494C4F01000000000005000000444542
      495401000000000009000000444F434E554D4245520100000000000700000044
      4F4344415445010000000000}
    AfterQuery = dsetDataAfterQuery
    AfterClose = dsetDataAfterClose
    Top = 88
    object dsetDataID: TStringField
      FieldName = 'ID'
      Size = 2000
    end
    object dsetDataPARENTID: TStringField
      FieldName = 'PARENTID'
      Size = 2000
    end
    object dsetDataITEM_NO: TStringField
      FieldName = 'ITEM_NO'
      Size = 255
    end
    object dsetDataKBK: TStringField
      FieldName = 'KBK'
      Size = 255
    end
    object dsetDataIN_SUMMA_ITOGO: TFloatField
      FieldName = 'IN_SUMMA_ITOGO'
      DisplayFormat = ',0.00'
    end
    object dsetDataOUT_SUMMA_ITOGO: TFloatField
      FieldName = 'OUT_SUMMA_ITOGO'
      DisplayFormat = ',0.00'
    end
    object dsetDataDOCTYPE: TStringField
      FieldName = 'DOCTYPE'
      Size = 255
    end
    object dsetDataPOSTUPILO: TFloatField
      FieldName = 'POSTUPILO'
      DisplayFormat = ',0.00'
    end
    object dsetDataDEBIT: TFloatField
      FieldName = 'DEBIT'
      DisplayFormat = ',0.00'
    end
    object dsetDataDOCNUMBER: TStringField
      FieldName = 'DOCNUMBER'
      Size = 255
    end
    object dsetDataDOCDATE: TDateTimeField
      FieldName = 'DOCDATE'
    end
  end
  inherited dsetAccount: TOracleDataSet
    Optimize = False
  end
  object dsetItog: TOracleDataSet
    SQL.Strings = (
      'select '#39'-1'#39' id'
      '      ,null parentid'
      '      ,to_char(null) item_no'
      '      ,to_char(null) doctype'
      '      ,to_char(null) docnumber'
      '      ,to_date(null) docdate'
      '      ,to_char(null) kbk'
      
        '      ,p_oper_balans.get_bsumma(:account_id,:account_code,trunc(' +
        ':bdate),0,'#39'rur'#39','#39'rur'#39',(case :summarn when '#39'Y'#39' then 1 else 0 end)' +
        ',:ists)'
      '       +'
      
        '       p_oper_balans.get_bsumma(:account_id_confirm,:account_cod' +
        'e_confirm,trunc(:bdate),0,'#39'rur'#39','#39'rur'#39',(case :summarn when '#39'Y'#39' th' +
        'en 1 else 0 end),:ists) in_summa_itogo'
      '      ,to_number(null) postupilo'
      '      ,to_number(null) debit'
      
        '      ,p_oper_balans.get_bsumma(:account_id,:account_code,trunc(' +
        ':edate)+1,0,'#39'rur'#39','#39'rur'#39',(case :summarn when '#39'Y'#39' then 1 else 0 en' +
        'd),:ists)'
      '       +'
      
        '       p_oper_balans.get_bsumma(:account_id_confirm,:account_cod' +
        'e_confirm,trunc(:edate)+1,0,'#39'rur'#39','#39'rur'#39',(case :summarn when '#39'Y'#39' ' +
        'then 1 else 0 end),:ists) out_summa_itogo'
      'from dual'
      'union all'
      'select '#39'0'#39' id'
      '      ,null parentid'
      '      ,item_no'
      '      ,to_char(null) doctype'
      '      ,to_char(null) docnumber'
      '      ,to_date(null) docdate'
      '      ,to_char(null) kbk'
      '      ,in_summa_itogo'
      '      ,postupilo'
      '      ,debit'
      '      ,(in_summa_itogo + postupilo - debit) out_summa_itogo'
      'from ('
      'select '#39#1048#1090#1086#1075#1086#39' item_no'
      '      ,('
      
        '        p_oper_balans.get_bsumma(:account_id,:account_code,trunc' +
        '(:bdate),0,'#39'rur'#39','#39'rur'#39',(case :summarn when '#39'Y'#39' then 1 else 0 end' +
        '),:ists)'
      '        +'
      
        '        p_oper_balans.get_bsumma(:account_id_confirm,:account_co' +
        'de_confirm,trunc(:bdate),0,'#39'rur'#39','#39'rur'#39',(case :summarn when '#39'Y'#39' t' +
        'hen 1 else 0 end),:ists) '
      '       )in_summa_itogo'
      '      ,postupilo'
      '      ,debit'
      'from ('
      '      select postupilo'
      '            ,debit'
      '      from ('
      '            select nvl(sum(postupilo),0) postupilo'
      '                  ,nvl(sum(debit),0) debit'
      '            from ('
      '                  select acct.kbk_id'
      '                        ,acct.subject_id subject_id'
      '                        ,acct.account_id'
      '                        ,acct.operation_date'
      
        '                        ,(case :summarn when '#39'Y'#39' then null else ' +
        '(case dl.typesysname when '#39'DocChildsBalance'#39' then null else dl.d' +
        'oc_number end) end) docnumber'
      
        '                        ,(case :summarn when '#39'Y'#39' then null else ' +
        '(case dl.typesysname when '#39'DocChildsBalance'#39' then null else dl.d' +
        'oc_date end) end) docdate'
      
        '                        ,(case acc.code when '#39'12.02.01'#39' then '#39#1059#1074 +
        #1040#39' when '#39'12.02.02'#39' then '#39#1059#1074#1062#39' when '#39'12.02.03'#39' then '#39#1059#1074#1048#1079#1083#39' when ' +
        #39'12.03.00'#39' then '#39#1055#39' else '#39#1085#1077' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1086#39' end) doctype'
      
        '                        ,p_oborotki.get_kbk_code(acct.kbk_id) kb' +
        'k'
      
        '                        ,(case  when (acct.is_debit = '#39'Y'#39') then ' +
        'sum_rur else 0 end) postupilo'
      
        '                        ,-(case  when (acct.is_debit = '#39'N'#39') then' +
        ' sum_rur else 0 end) debit'
      '                  from fdc_acc_transaction acct'
      '                      ,('
      '                        select id, code'
      '                        from fdc_acc_lst'
      
        '                        where (:bdate between sdate and nvl(edat' +
        'e,:bdate + 1))'
      
        '                        start with (id in (:account_id,:account_' +
        'id_confirm))'
      '                        connect by prior id = parent_id'
      '                       ) acc'
      '                      ,fdc_document_lst dl'
      
        '                  where (operation_date between trunc(:bdate) an' +
        'd trunc(:edate))'
      '                    and acct.account_id = acc.id'
      
        '                    and (case :ists when '#39'N'#39' then '#39'Y'#39' else acct.' +
        'is_ts end) = '#39'Y'#39' '
      '                    and acct.doc_id = dl.id'
      '                    and ('
      '                         acct.is_current = 1'
      '                         or'
      '                         :summarn = '#39'Y'#39
      '                        ) '
      '                  )'
      '           ) a'
      '     )'
      '     )'
      'union all'
      'select '#39'-2'#39' id'
      '      ,null parentid'
      '      ,to_char(null) item_no'
      '      ,to_char(null) doctype'
      '      ,to_char(null) docnumber'
      '      ,to_date(null) docdate'
      '      ,to_char(null) kbk'
      
        '      ,p_oper_balans.get_bsumma(:account_id,:account_code,trunc(' +
        ':bdate),0,'#39'rur'#39','#39'rur'#39',(case :summarn when '#39'Y'#39' then 1 else 0 end)' +
        ',:ists)'
      '       +'
      
        '       p_oper_balans.get_bsumma(:account_id_confirm,:account_cod' +
        'e_confirm,trunc(:bdate),0,'#39'rur'#39','#39'rur'#39',(case :summarn when '#39'Y'#39' th' +
        'en 1 else 0 end),:ists) in_summa_itogo'
      '      ,to_number(null) postupilo'
      '      ,to_number(null) debit'
      
        '      ,p_oper_balans.get_bsumma(:account_id,:account_code,trunc(' +
        ':edate)+1,0,'#39'rur'#39','#39'rur'#39',(case :summarn when '#39'Y'#39' then 1 else 0 en' +
        'd),:ists)'
      '       +'
      
        '       p_oper_balans.get_bsumma(:account_id_confirm,:account_cod' +
        'e_confirm,trunc(:edate)+1,0,'#39'rur'#39','#39'rur'#39',(case :summarn when '#39'Y'#39' ' +
        'then 1 else 0 end),:ists) out_summa_itogo'
      'from dual')
    Optimize = False
    Variables.Data = {
      03000000080000000B0000003A4143434F554E545F4944030000000000000000
      0000000D0000003A4143434F554E545F434F4445050000000000000000000000
      060000003A42444154450C0000000000000000000000060000003A4544415445
      0C0000000000000000000000050000003A495354530500000000000000000000
      00080000003A53554D4D41524E050000000000000000000000130000003A4143
      434F554E545F49445F434F4E4649524D03000000000000000000000015000000
      3A4143434F554E545F434F44455F434F4E4649524D0500000000000000000000
      00}
    QBEDefinition.QBEFieldDefs = {
      040000000B000000070000004954454D5F4E4F01000000000002000000494401
      000000000008000000504152454E544944010000000000030000004B424B0100
      000000000E000000494E5F53554D4D415F49544F474F0100000000000F000000
      4F55545F53554D4D415F49544F474F01000000000007000000444F4354595045
      01000000000009000000504F53545550494C4F01000000000005000000444542
      495401000000000009000000444F434E554D4245520100000000000700000044
      4F4344415445010000000000}
    Cursor = crSQLWait
    BeforeQuery = dsetItogBeforeQuery
    Session = MainData.Session
    Left = 240
    Top = 104
    object dsetItogID: TStringField
      FieldName = 'ID'
      Size = 2000
    end
    object dsetItogPARENTID: TStringField
      FieldName = 'PARENTID'
      Size = 2000
    end
    object dsetItogITEM_NO: TStringField
      FieldName = 'ITEM_NO'
      Size = 255
    end
    object dsetItogKBK: TStringField
      FieldName = 'KBK'
      Size = 255
    end
    object dsetItogIN_SUMMA_ITOGO: TFloatField
      FieldName = 'IN_SUMMA_ITOGO'
      DisplayFormat = ',0.00'
    end
    object dsetItogOUT_SUMMA_ITOGO: TFloatField
      FieldName = 'OUT_SUMMA_ITOGO'
      DisplayFormat = ',0.00'
    end
    object dsetItogDOCTYPE2: TStringField
      FieldName = 'DOCTYPE'
      Size = 255
    end
    object dsetItogPOSTUPILO: TFloatField
      FieldName = 'POSTUPILO'
      DisplayFormat = ',0.00'
    end
    object dsetItogDEBIT: TFloatField
      FieldName = 'DEBIT'
      DisplayFormat = ',0.00'
    end
    object dsetItogDOCNUMBER: TStringField
      FieldName = 'DOCNUMBER'
      Size = 255
    end
    object dsetItogDOCDATE: TDateTimeField
      FieldName = 'DOCDATE'
    end
  end
  object dsItog: TDataSource
    DataSet = dsetItog
    Left = 240
    Top = 200
  end
  object dsetItogDocType: TOracleDataSet
    SQL.Strings = (
      'select id'
      '      ,parentid'
      '      ,item_no'
      '      ,doctype'
      '      ,to_char(null) docnumber'
      '      ,to_date(null) docdate'
      '      ,to_char(null) kbk'
      '      ,in_summa_itogo'
      '      ,postupilo'
      '      ,debit'
      '      ,(in_summa_itogo + postupilo - debit) out_summa_itogo'
      'from ('
      'select id'
      '      ,'#39'0'#39' parentid'
      '      ,'#39#1048#1090#1086#1075#1086' '#1087#1086' '#39'||doctype item_no'
      '      ,doctype'
      '      ,to_number(null) in_summa_itogo'
      '      ,postupilo'
      '      ,debit'
      '      ,:account_code account_code'
      '      ,:account_code_confirm account_code_confirm'
      'from ('
      '      select (doctype) id'
      '            ,doctype'
      '            ,postupilo'
      '            ,debit'
      '      from ('
      '            select doctype'
      '                  ,nvl(sum(postupilo),0) postupilo'
      '                  ,nvl(sum(debit),0) debit'
      '            from ('
      '                  select acct.kbk_id'
      '                        ,acct.subject_id subject_id'
      '                        ,acct.account_id'
      '                        ,acct.operation_date'
      
        '                        ,(case :summarn when '#39'Y'#39' then null else ' +
        '(case dl.typesysname when '#39'DocChildsBalance'#39' then null else dl.d' +
        'oc_number end) end) docnumber'
      
        '                        ,(case :summarn when '#39'Y'#39' then null else ' +
        '(case dl.typesysname when '#39'DocChildsBalance'#39' then null else dl.d' +
        'oc_date end) end) docdate'
      
        '                        ,(case acc.code when '#39'12.02.01'#39' then '#39#1059#1074 +
        #1040#39' when '#39'12.02.02'#39' then '#39#1059#1074#1062#39' when '#39'12.02.03'#39' then '#39#1059#1074#1048#1079#1083#39' when ' +
        #39'12.03.00'#39' then '#39#1055#39' else '#39#1085#1077' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1086#39' end) doctype'
      
        '                        ,p_oborotki.get_kbk_code(acct.kbk_id) kb' +
        'k'
      
        '                        ,(case  when (acct.is_debit = '#39'Y'#39') then ' +
        'sum_rur else 0 end) postupilo'
      
        '                        ,-(case  when (acct.is_debit = '#39'N'#39') then' +
        ' sum_rur else 0 end) debit'
      '                  from fdc_acc_transaction acct'
      '                      ,('
      '                        select id, code'
      '                        from fdc_acc_lst'
      
        '                        where (:bdate between sdate and nvl(edat' +
        'e,:bdate + 1))'
      
        '                        start with (id in (:account_id,:account_' +
        'id_confirm))'
      '                        connect by prior id = parent_id'
      '                       ) acc'
      '                      ,fdc_document_lst dl'
      
        '       where (operation_date between trunc(:bdate) and trunc(:ed' +
        'ate))'
      '                    and acct.account_id = acc.id'
      
        '                    and (case :ists when '#39'N'#39' then '#39'Y'#39' else acct.' +
        'is_ts end) = '#39'Y'#39' '
      '                    and acct.doc_id = dl.id'
      '                    and ('
      '                         acct.is_current = 1'
      '                         or'
      '                         :summarn = '#39'Y'#39
      '                        ) '
      '                  )'
      '            group by doctype'
      '           ) a'
      '     )'
      '     )')
    Optimize = False
    Variables.Data = {
      03000000080000000B0000003A4143434F554E545F4944030000000000000000
      0000000D0000003A4143434F554E545F434F4445050000000000000000000000
      060000003A42444154450C0000000000000000000000060000003A4544415445
      0C0000000000000000000000050000003A495354530500000000000000000000
      00080000003A53554D4D41524E050000000000000000000000130000003A4143
      434F554E545F49445F434F4E4649524D03000000000000000000000015000000
      3A4143434F554E545F434F44455F434F4E4649524D0500000000000000000000
      00}
    QBEDefinition.QBEFieldDefs = {
      040000000B000000070000004954454D5F4E4F01000000000002000000494401
      000000000008000000504152454E544944010000000000030000004B424B0100
      0000000007000000444F43545950450100000000000E000000494E5F53554D4D
      415F49544F474F01000000000009000000504F53545550494C4F010000000000
      0500000044454249540100000000000F0000004F55545F53554D4D415F49544F
      474F01000000000009000000444F434E554D4245520100000000000700000044
      4F4344415445010000000000}
    Cursor = crSQLWait
    BeforeQuery = dsetItogBeforeQuery
    Session = MainData.Session
    Left = 304
    Top = 104
    object StringField1: TStringField
      FieldName = 'ID'
      Size = 2000
    end
    object StringField2: TStringField
      FieldName = 'PARENTID'
      Size = 2000
    end
    object StringField3: TStringField
      FieldName = 'ITEM_NO'
      Size = 255
    end
    object dsetItogDocTypeDOCTYPE: TStringField
      FieldName = 'DOCTYPE'
      Size = 255
    end
    object dsetItogDocTypeKBK: TStringField
      FieldName = 'KBK'
      Size = 255
    end
    object dsetItogDocTypePOSTUPILO: TFloatField
      FieldName = 'POSTUPILO'
      DisplayFormat = ',0.00'
    end
    object dsetItogDocTypeDEBIT: TFloatField
      FieldName = 'DEBIT'
      DisplayFormat = ',0.00'
    end
    object dsetItogDocTypeOUT_SUMMA_ITOGO: TFloatField
      FieldName = 'OUT_SUMMA_ITOGO'
      DisplayFormat = ',0.00'
    end
    object dsetItogDocTypeIN_SUMMA_ITOGO: TFloatField
      FieldName = 'IN_SUMMA_ITOGO'
      DisplayFormat = ',0.00'
    end
    object dsetItogDocTypeDOCNUMBER: TStringField
      FieldName = 'DOCNUMBER'
      Size = 255
    end
    object dsetItogDocTypeDOCDATE: TDateTimeField
      FieldName = 'DOCDATE'
    end
  end
  object dsItogDocType: TDataSource
    DataSet = dsetItogDocType
    Left = 312
    Top = 200
  end
end
