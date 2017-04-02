inherited ObjectForm: TObjectForm
  Left = 469
  Top = 315
  ActiveControl = nil
  Caption = #1054#1073#1098#1077#1082#1090
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    object tabService: TcxTabSheet
      Caption = #1057#1077#1088#1074#1080#1089
      OnShow = tabServiceShow
      object pcService: TcxPageControl
        Left = 0
        Top = 0
        Width = 484
        Height = 286
        ActivePage = tabHistory
        Align = alClient
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = True
        ParentShowHint = False
        ShowHint = True
        Style = 5
        TabOrder = 0
        TabPosition = tpBottom
        OnMouseDown = PageControlMouseDown
        ClientRectBottom = 262
        ClientRectRight = 484
        ClientRectTop = 0
        object tabHistory: TcxTabSheet
          Caption = #1048#1089#1090#1086#1088#1080#1103
          OnShow = tabHistoryShow
        end
        object tabChildObjects: TcxTabSheet
          Caption = #1057#1086#1089#1090#1072#1074
          ImageIndex = 3
          OnShow = tabChildObjectsShow
        end
        object tabValues: TcxTabSheet
          Caption = #1044#1086#1087'. '#1072#1090#1088#1080#1073#1091#1090#1099
          ImageIndex = 2
          OnShow = tabValuesShow
        end
        object tabRelations: TcxTabSheet
          Caption = #1054#1090#1085#1086#1096#1077#1085#1080#1103
          OnShow = tabRelationsShow
        end
        object tabAccess: TcxTabSheet
          Caption = #1044#1086#1089#1090#1091#1087
          OnShow = tabAccessShow
        end
        object tabFake: TcxTabSheet
          Caption = 'tabFake'
          ImageIndex = 3
          TabVisible = False
          object lblFake: TLabel
            Left = 0
            Top = 0
            Width = 114
            Height = 13
            Align = alClient
            Alignment = taCenter
            Caption = #1048#1089#1087#1086#1083#1085#1103#1077#1090#1089#1103' '#1079#1072#1087#1088#1086#1089'...'
          end
        end
      end
    end
    object tabTransactions: TcxTabSheet
      Caption = #1055#1088#1086#1074#1086#1076#1082#1080
      ImageIndex = 2
      OnShow = tabTransactionsShow
    end
  end
  inherited ActionList: TActionList
    object actCreateActCorrOB: TAction
      Category = 'Object'
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1072#1082#1090
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1072#1082#1090' '#1086' '#1074#1085#1077#1089#1077#1085#1080#1080' '#1080#1079#1084#1077#1085#1077#1085#1080#1081' '#1074' '#1054#1041
      OnExecute = actCreateActCorrOBExecute
      OnUpdate = actCreateActCorrOBUpdate
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
  inherited BarManager: TdxBarManager
    Bars = <
      item
        AllowClose = False
        Caption = #1054#1073#1098#1077#1082#1090
        DockControl = dxBarDockControlTop
        DockedDockControl = dxBarDockControlTop
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 322
        FloatTop = 261
        FloatClientWidth = 86
        FloatClientHeight = 81
        ItemLinks = <
          item
            Item = btnNew
            Visible = True
          end
          item
            Item = btnSave
            Visible = True
          end
          item
            Item = btnRefresh
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnDelete
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnStateTransit
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnCreateActCorrOB
            Visible = True
          end>
        Name = #1054#1073#1098#1077#1082#1090'1'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end>
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    DockControlHeights = (
      0
      0
      0
      0)
    object btnCreateActCorrOB: TdxBarButton
      Action = actCreateActCorrOB
      Category = 0
    end
  end
  inherited dsData: TfdcQuery
    AutoCommit = False
    AutoRollback = False
    object dsDataOBJECTKINDLIST: TStringField
      FieldName = 'OBJECTKINDLIST'
      Visible = False
      Size = 4000
    end
  end
end