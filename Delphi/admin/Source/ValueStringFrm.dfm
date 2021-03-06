inherited ValueStringForm: TValueStringForm
  Left = 329
  Top = 281
  Height = 327
  Caption = #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1072#1090#1088#1080#1073#1091#1090
  PixelsPerInch = 120
  TextHeight = 17
  inherited pcMain: TcxPageControl
    Height = 287
    ClientRectBottom = 259
    ClientRectRight = 492
    ClientRectTop = 0
    inherited tabGeneral: TcxTabSheet
      inherited lcGeneral: TdxLayoutControl
        Height = 228
        inherited edtName: TcxDBTextEdit
          Width = 545
        end
        inherited edtDescript: TcxDBMemo
          Width = 545
          Height = 66
        end
        inherited edtStringValue: TcxDBMemo
          Width = 534
        end
        inherited edtOwnerID: TfdcObjectLinkEdit
          Width = 158
        end
        inherited edtSysName: TcxDBTextEdit
          Width = 158
        end
      end
      inherited dxBarDockControlLeft: TdxBarDockControl
        Height = 228
      end
      inherited dxBarDockControlBottom: TdxBarDockControl
        Top = 256
      end
      inherited dxBarDockControlRight: TdxBarDockControl
        Height = 228
      end
    end
    inherited tabService: TcxTabSheet
      inherited pcService: TcxPageControl
        Height = 259
        ClientRectBottom = 231
        ClientRectRight = 492
        ClientRectTop = 0
      end
    end
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
        FloatLeft = 395
        FloatTop = 298
        FloatClientWidth = 104
        FloatClientHeight = 55
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
  end
  inherited dsInsert: TfdcQuery
    SQL.Strings = (
      'begin'
      '  :ID ::= fdc_ValueString_Add('
      '    :TYPESYSNAME,'
      '    :NAME,'
      '    :SYSNAME,'
      '    :ISSYSTEM,'
      '    :OWNER_OBJECT_ID,    '
      '    :STRINGVALUE,    '
      '    :SHORTNAME,'
      '    :DESCRIPT);'
      'end;')
    SourceServerObject = 'FDC_VALUESTRING_ADD'
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'TYPESYSNAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'SYSNAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'ISSYSTEM'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'OWNER_OBJECT_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'STRINGVALUE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'SHORTNAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DESCRIPT'
        ParamType = ptUnknown
      end>
  end
  inherited dsUpdate: TfdcQuery
    SQL.Strings = (
      'begin'
      '  fdc_ValueString_Upd('
      '    :ID,'
      '    :NAME,'
      '    :SYSNAME,'
      '    :STRINGVALUE,'
      '    :SHORTNAME,'
      '    :DESCRIPT);'
      'end;')
    SourceServerObject = 'FDC_VALUESTRING_UPD'
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'NAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'SYSNAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'STRINGVALUE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'SHORTNAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DESCRIPT'
        ParamType = ptUnknown
      end>
  end
end
