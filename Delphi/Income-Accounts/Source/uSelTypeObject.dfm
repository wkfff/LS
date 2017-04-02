object fSelTypeObject: TfSelTypeObject
  Left = 478
  Top = 191
  BorderStyle = bsSingle
  Caption = #1058#1080#1087' '#1089#1086#1079#1076#1072#1074#1072#1077#1084#1086#1075#1086' '#1086#1073#1098#1077#1082#1090#1072
  ClientHeight = 246
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 205
    Width = 505
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Panel2: TPanel
      Left = 298
      Top = 1
      Width = 206
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object cxButton1: TcxButton
        Left = 40
        Top = 8
        Width = 75
        Height = 25
        Caption = 'O'#1050
        ModalResult = 1
        TabOrder = 0
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 120
        Top = 8
        Width = 75
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        ModalResult = 2
        TabOrder = 1
      end
    end
  end
  object cxDBTreeList1: TcxDBTreeList
    Left = 0
    Top = 25
    Width = 505
    Height = 180
    Align = alClient
    Bands = <
      item
      end>
    BufferedPaint = False
    DataController.DataSource = dsGetType
    DataController.ImageIndexFieldName = 'IND'
    DataController.ParentField = 'PARENT_OBJECT_TYPE_ID'
    DataController.KeyField = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Images = ImageList1
    OptionsBehavior.ImmediateEditor = False
    OptionsBehavior.AutomateLeftMostIndent = False
    OptionsBehavior.ConfirmDelete = False
    OptionsBehavior.DragCollapse = False
    OptionsBehavior.DragExpand = False
    OptionsBehavior.ExpandOnDblClick = False
    OptionsBehavior.Sorting = False
    OptionsData.Editing = False
    OptionsData.Deleting = False
    OptionsSelection.InvertSelect = False
    OptionsView.CellAutoHeight = True
    OptionsView.ColumnAutoWidth = True
    OptionsView.Headers = False
    ParentFont = False
    RootValue = -1
    StateImages = ImageList1
    TabOrder = 1
    object cxDBTreeList1ID: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'ID'
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
    end
    object cxDBTreeList1PARENT_OBJECT_TYPE_ID: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'PARENT_OBJECT_TYPE_ID'
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
    end
    object cxDBTreeList1NAME: TcxDBTreeListColumn
      DataBinding.FieldName = 'NAME'
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
    end
    object cxDBTreeList1SYSNAME: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'SYSNAME'
      Position.ColIndex = 3
      Position.RowIndex = 0
      Position.BandIndex = 0
    end
    object cxDBTreeList1IND: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'IND'
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 505
    Height = 25
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 152
      Height = 16
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1090#1080#1087' '#1086#1073#1098#1077#1082#1090#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object odsGetType: TOracleDataSet
    SQL.Strings = (
      
        'select 0 as ind,id,parent_object_type_id,name,sysname from  fdc_' +
        'object_type_lst t'
      
        '  where t.id in (select o.parent_object_type_id from  fdc_object' +
        '_type_lst o where o.sysname in (@str))'
      'union all'
      
        'select 1 as ind,id,parent_object_type_id,name,sysname from  fdc_' +
        'object_type_lst  where sysname in (@str)')
    QBEDefinition.QBEFieldDefs = {
      040000000500000002000000494401000000000015000000504152454E545F4F
      424A4543545F545950455F4944010000000000040000004E414D450100000000
      00070000005359534E414D4501000000000003000000494E44010000000000}
    Session = MainData.Session
    AfterScroll = odsGetTypeAfterScroll
    Left = 216
    Top = 64
    object odsGetTypeIND: TFloatField
      FieldName = 'IND'
    end
    object odsGetTypeID: TFloatField
      FieldName = 'ID'
    end
    object odsGetTypePARENT_OBJECT_TYPE_ID: TFloatField
      FieldName = 'PARENT_OBJECT_TYPE_ID'
    end
    object odsGetTypeNAME: TStringField
      FieldName = 'NAME'
      Size = 1500
    end
    object odsGetTypeSYSNAME: TStringField
      FieldName = 'SYSNAME'
      Size = 1500
    end
  end
  object dsGetType: TDataSource
    DataSet = odsGetType
    Left = 144
    Top = 112
  end
  object ImageList1: TImageList
    Left = 304
    Top = 64
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7EFEF00DEE7EF000000000000000000E7EFEF009CC6A500398C3900187B
      180094C69C000000000000000000000000000000000000000000000000000000
      0000E7EFEF00DEE7EF000000000000000000E7EFEF009CC6A500398C3900187B
      180094C69C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6E7EF0073AD
      CE001073A5000873AD0073ADD60084C68C00188C2100007B000000840000008C
      0800006B00006BAD6B00E7EFEF00000000000000000000000000D6E7EF0073AD
      CE001073A5000873AD0073ADD60084C68C00188C2100007B000000840000008C
      0800006B00006BAD6B00E7EFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084BDD600087BAD000084
      B5000094C6000884B5000063AD0000841000008C000000940000009C080018AD
      210000730000006B000063A56B00000000000000000084BDD600087BAD000084
      B5000094C6000884B5000063AD0000841000008C000000940000009C080018AD
      210000730000006B000063A56B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000299CC600009CCE0000A5
      D60000ADDE001894BD000063AD000094100008AD100010AD210018B5310031C6
      52000073000000730000428C42000000000000000000299CC600009CCE0000A5
      D60000ADDE001894BD000063AD000094100008AD100010AD210018B5310031C6
      52000073000000730000428C4200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5CE0000ADE70000B5
      E70008C6F700219CC600006BB500109C310021BD390021BD4A0029C6520042DE
      730000730000007B0000318C3100000000000000000021A5CE0000ADE70000B5
      E70008C6F700219CC600006BB500109C310021BD390021BD4A0029C6520042DE
      730000730000007B0000318C3100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018ADDE0000C6FF0000CE
      FF0008E7FF0029A5C6000073B50010A54A0031DE6B0039DE730052EF8C006BFF
      A50008940800007B000021842100000000000000000018ADDE0000C6FF0000CE
      FF0008E7FF0029A5C6000073B50010A54A0031DE6B0039DE730052EF8C006BFF
      A50008940800007B000021842100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008C6E70000FFFF0021FF
      FF0031FFFF0029E7FF00007BBD00426B2900849442005AFF9C0052FF940052F7
      7B0052EF7B0021BD390010841000000000000000000008C6E70000FFFF0021FF
      FF0031FFFF0029E7FF00007BBD00426B2900849442005AFF9C0052FF940052F7
      7B0052EF7B0021BD390010841000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031C6DE0010DEFF0000D6
      FF0039949C009C5A1800CE420000CE520000BD420000AD2100007373210029C6
      420018B5290042BD4A008CCE8C00000000000000000031C6DE0010DEFF0000D6
      FF0039949C009C5A1800CE420000CE520000BD420000AD2100007373210029C6
      420018B5290042BD4A008CCE8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7EFEF00B5D6E70063BD
      E700C6630000DE6B0000D66B0000DE730000BD631800AD420000AD310000A539
      1000DEEFE70000000000000000000000000000000000E7EFEF00B5D6E70063BD
      E700C6630000DE6B0000D66B0000DE730000BD631800AD420000AD310000A539
      1000DEEFE7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7D6
      CE00DE6B0000E77B0000E77B0000E77B0000CE732100AD420000AD420000B542
      080000000000000000000000000000000000000000000000000000000000E7D6
      CE00DE6B0000E77B0000E77B0000E77B0000CE732100AD420000AD420000B542
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7D6
      C600E7840000EF840000EF840000F78C0000D67B3100B54A0000AD4A0000B542
      0000E7EFEF00000000000000000000000000000000000000000000000000E7D6
      C600E7840000EF840000EF840000F78C0000D67B3100B54A0000AD4A0000B542
      0000E7EFEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7CE
      C600F78C0000FF940000FF940000FF9C0000DE8C3900BD4A0000B54A0000AD42
      0000E7E7E700000000000000000000000000000000000000000000000000E7CE
      C600F78C0000FF940000FF940000FF9C0000DE8C3900BD4A0000B54A0000AD42
      0000E7E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7CE
      BD00FFB55200FFC67300FFCE8400FFCE9400F7BD7B00D67B2900BD5A0800B54A
      0000E7DEDE00000000000000000000000000000000000000000000000000E7CE
      BD00FFB55200FFC67300FFCE8400FFCE9400F7BD7B00D67B2900BD5A0800B54A
      0000E7DEDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7EF
      EF00DEB58C00DEA57300DE945A00D6843900CE843900CE844200CE8C5A00D694
      6B0000000000000000000000000000000000000000000000000000000000E7EF
      EF00DEB58C00DEA57300DE945A00D6843900CE843900CE844200CE8C5A00D694
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000F307F30700000000
      C001C00100000000800180010000000080018001000000008001800100000000
      8001800100000000800180010000000080018001000000008007800700000000
      E00FE00F00000000E007E00700000000E007E00700000000E007E00700000000
      E00FE00F00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
