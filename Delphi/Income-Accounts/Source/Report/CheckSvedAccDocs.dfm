inherited CheckSvedAccDocsForm: TCheckSvedAccDocsForm
  Left = 496
  Top = 498
  AutoSize = True
  Caption = #1056#1072#1089#1095#1077#1090#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' '#1087#1086' '#1083#1080#1094#1077#1074#1086#1084#1091' '#1089#1095#1077#1090#1091
  ClientHeight = 140
  ClientWidth = 451
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 451
    Height = 140
    inherited btnCancel: TcxButton
      Left = 367
      Top = 108
      TabOrder = 4
    end
    inherited btnOk: TcxButton
      Left = 286
      Top = 108
      TabOrder = 3
    end
    object edtRepDate: TcxDBDateEdit [2]
      Left = 89
      Top = 9
      DataBinding.DataField = 'dlgDate_From'
      DataBinding.DataSource = srcdsMain
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebsFlat
      Style.HotTrack = False
      Style.ButtonStyle = btsFlat
      Style.PopupBorderStyle = epbsFlat
      TabOrder = 0
      Width = 121
    end
    object cxDBMaskEdit1: TcxDBMaskEdit [3]
      Left = 89
      Top = 36
      DataBinding.DataField = 'INN'
      DataBinding.DataSource = srcdsMain
      ParentFont = False
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d{0,12}'
      Properties.MaxLength = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebsFlat
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBMaskEdit2: TcxDBMaskEdit [4]
      Left = 89
      Top = 63
      DataBinding.DataField = 'KPP'
      DataBinding.DataSource = srcdsMain
      ParentFont = False
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d{0,9}'
      Properties.MaxLength = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebsFlat
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      object lcidateReport: TdxLayoutItem [0]
        Caption = #1054#1090#1095#1077#1090#1085#1072#1103' '#1076#1072#1090#1072
        Control = edtRepDate
        ControlOptions.ShowBorder = False
      end
      object lciINN: TdxLayoutItem [1]
        Caption = #1048#1053#1053
        Control = cxDBMaskEdit1
        ControlOptions.ShowBorder = False
      end
      object lciKPP: TdxLayoutItem [2]
        Caption = #1050#1055#1055
        Control = cxDBMaskEdit2
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited OfficeEditStyleController: TcxEditStyleController
    Style.IsFontAssigned = True
  end
  inherited WebEditStyleController: TcxEditStyleController
    Style.IsFontAssigned = True
  end
  inherited DefaultEditStyleController: TcxDefaultEditStyleController
    Style.IsFontAssigned = True
  end
  object dsHeader: TfdcQuery
    DataSource = srcdsMain
    ReadOnly = False
    Left = 168
    Top = 88
    ParamData = <
      item
        DataType = ftDate
        Name = 'DATE_REP'
        ParamType = ptUnknown
      end>
    object dsHeaderCustomsName: TStringField
      FieldName = 'CustomsName'
      Size = 30
    end
    object dsHeaderCustomsCode: TStringField
      FieldName = 'CustCode'
    end
    object dsHeaderdate_report: TStringField
      FieldName = 'date_report'
    end
    object dsHeaderINN: TStringField
      FieldName = 'INN'
    end
    object dsHeaderKPP: TStringField
      FieldName = 'KPP'
    end
  end
  object xlrAvansLong: TxlReport
    DataExportMode = xdmDDE
    Options = [xroDisplayAlerts, xroAutoOpen]
    XLSTemplate = 'AccDocs.xls'
    DataSources = <
      item
        DataSet = dsTotals
        Alias = 'aTotals'
        Options = [xrgoAutoOpen, xrgoPreserveRowHeight]
        Tag = 0
      end
      item
        DataSet = dsHeader
        Alias = 'aHeader'
        Options = [xrgoAutoOpen, xrgoPreserveRowHeight]
        Tag = 0
      end
      item
        DataSet = dsLong
        Alias = 'aLong2'
        Range = 'list'
        Options = [xrgoAutoOpen, xrgoPreserveRowHeight]
        Tag = 0
      end>
    Preview = False
    Params = <>
    Left = 194
    Top = 88
  end
  object srcdsMain: TDataSource
    DataSet = dxMemData
    Left = 40
    Top = 88
  end
  object dxMemData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 8
    Top = 88
    object dxMemDataBossName: TStringField
      FieldName = 'BossName'
      Size = 2000
    end
    object dxMemDataCustomsName: TStringField
      FieldName = 'CustomsName'
      Size = 2000
    end
    object dxMemDataSubj_Id: TFloatField
      FieldName = 'Subj_Id'
    end
    object dxMemDataSubj_Name: TStringField
      FieldName = 'Subj_Name'
      Size = 512
    end
    object dxMemDataDate_From: TDateField
      FieldName = 'Date_From'
    end
    object dxMemDataDate_To: TDateField
      FieldName = 'Date_To'
    end
    object dxMemDataRest: TStringField
      FieldName = 'Rest'
      Size = 512
    end
    object dxMemDataPeriod: TStringField
      FieldName = 'Period'
      Size = 200
    end
    object dxMemDatadlgDate_From: TDateField
      FieldName = 'dlgDate_From'
    end
    object dxMemDatadlgDate_To: TDateField
      FieldName = 'dlgDate_To'
    end
    object dxMemDataDate_Now: TDateField
      FieldName = 'Date_Now'
    end
    object dxMemDataINNReport: TIntegerField
      FieldName = 'INNReport'
    end
    object dxMemDataSubj_INN: TStringField
      FieldName = 'Subj_INN'
      Size = 12
    end
    object dxMemDataCustomsCode: TStringField
      FieldName = 'CustomsCode'
    end
    object dxMemDatadate_rep: TDateField
      FieldName = 'date_rep'
    end
    object dxMemDataINN: TStringField
      FieldName = 'INN'
    end
    object dxMemDataKPP: TStringField
      FieldName = 'KPP'
    end
  end
  object dsTotals: TfdcQuery
    DataSource = srcdsMain
    ReadOnly = False
    SQL.Strings = (
      ':Subj_Id'
      ':INNREPORT'
      ':rep_mode'
      ':date_from'
      ':date_to')
    Left = 136
    Top = 88
    ParamData = <
      item
        DataType = ftFloat
        Name = 'Subj_Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'INNREPORT'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'rep_mode'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'date_rep'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'INN'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'KPP'
        ParamType = ptUnknown
      end>
  end
  object dsSysValues: TfdcQuery
    ReadOnly = False
    Left = 72
    Top = 88
  end
  object dsLong: TfdcQuery
    DataSource = srcdsMain
    ReadOnly = False
    SQL.Strings = (
      ':Subj_Id'
      ':INNREPORT'
      ':rep_mode'
      ':date_from'
      ':date_to')
    Left = 104
    Top = 88
    ParamData = <
      item
        DataType = ftFloat
        Name = 'Subj_Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'INNREPORT'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'rep_mode'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'date_rep'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'INN'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'KPP'
        ParamType = ptUnknown
      end>
  end
end