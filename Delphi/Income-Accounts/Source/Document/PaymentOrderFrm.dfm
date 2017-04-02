inherited PaymentOrderForm: TPaymentOrderForm
  Left = 682
  Top = 215
  Width = 875
  Height = 721
  HelpContext = 4102
  Caption = 'PaymentOrderForm'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcMain: TcxPageControl
    Width = 867
    Height = 694
    ClientRectBottom = 670
    ClientRectRight = 867
    inherited tabGeneral: TcxTabSheet
      inherited lcGeneral: TdxLayoutControl
        Width = 861
        Height = 641
        inherited edtName: TcxDBTextEdit
          Left = 140
          Width = 353
        end
        inherited edtDescript: TcxDBMemo
          Left = 140
          Top = 653
          TabOrder = 30
          Height = 28
          Width = 591
        end
        object edtDocNo: TcxDBMaskEdit [2]
          Left = 140
          Top = 34
          DataBinding.DataField = 'DOC_NO'
          DataBinding.DataSource = srcData
          ParentFont = False
          Properties.MaskKind = emkRegExprEx
          Properties.MaxLength = 0
          Properties.OnChange = Modify
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.StyleController = WebEditStyleController
          TabOrder = 1
          Width = 119
        end
        object edtDocDate: TcxDBDateEdit [3]
          Left = 293
          Top = 34
          DataBinding.DataField = 'DOC_DATE'
          DataBinding.DataSource = srcData
          ParentFont = False
          Properties.OnChange = Modify
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.StyleController = WebEditStyleController
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 2
          Width = 106
        end
        object edtPayerINN: TcxDBMaskEdit [4]
          Left = 154
          Top = 142
          DataBinding.DataField = 'PAYER_INN'
          DataBinding.DataSource = srcData
          ParentFont = False
          Properties.MaskKind = emkRegExprEx
          Properties.MaxLength = 0
          Properties.ReadOnly = True
          Properties.OnChange = Modify
          Properties.OnValidate = edtPayerINNPropertiesValidate
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.Color = clWindow
          Style.StyleController = WebEditStyleController
          TabOrder = 8
          Width = 260
        end
        object edtPayerName: TfdcObjectLinkEdit [5]
          Left = 154
          Top = 167
          DataBinding.DataField = 'PAYER_NAME'
          DataBinding.DataSource = srcData
          DataBinding.DataKeyField = 'PAYER_ID'
          DataBinding.TypeSysName = 'Declarant;Person;Subject;Bank'
          DataBinding.SearchFormClass = 'TSubjectFindGridForm'
          ParentFont = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnChange = Modify
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.StyleController = WebEditStyleController
          Style.ButtonStyle = btsHotFlat
          TabOrder = 10
          OnBeforeAcceptObject = edtPayerNameBeforeAcceptObject
          Width = 258
        end
        object edtDocSumma: TcxDBCurrencyEdit [6]
          Left = 140
          Top = 353
          Hint = #1057#1091#1084#1084#1072' '#1087#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
          DataBinding.DataField = 'DOC_SUMMA'
          DataBinding.DataSource = srcData
          ParentFont = False
          ParentShowHint = False
          Properties.DisplayFormat = ',0.00;-,0.00'
          Properties.EditFormat = ',0.00;-,0.00'
          Properties.ReadOnly = False
          Properties.UseThousandSeparator = True
          Properties.OnChange = Modify
          ShowHint = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.StyleController = WebEditStyleController
          TabOrder = 19
          Width = 107
        end
        object edtExecDate: TcxDBDateEdit [7]
          Left = 471
          Top = 428
          DataBinding.DataField = 'EXEC_DATE'
          DataBinding.DataSource = srcData
          ParentFont = False
          Properties.OnChange = Modify
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.StyleController = WebEditStyleController
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 24
          Width = 94
        end
        object edtSumma: TcxDBCurrencyEdit [8]
          Left = 579
          Top = 353
          Hint = #1047#1072#1095#1080#1089#1083#1077#1085#1085#1086' '#1085#1072' '#1089#1095#1077#1090' '#1090#1072#1084#1086#1078#1085#1080
          DataBinding.DataField = 'SUMMA'
          DataBinding.DataSource = srcData
          ParentFont = False
          ParentShowHint = False
          Properties.DisplayFormat = ',0.00;-,0.00'
          Properties.EditFormat = ',0.00;-,0.00'
          Properties.UseThousandSeparator = True
          ShowHint = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.StyleController = WebEditStyleController
          TabOrder = 20
          Width = 91
        end
        object edtRestSumma: TcxDBCurrencyEdit [9]
          Left = 140
          Top = 378
          Hint = #1044#1086#1089#1090#1091#1087#1085#1099#1081' '#1086#1089#1090#1072#1090#1086#1082
          DataBinding.DataField = 'REST_SUMMA2'
          DataBinding.DataSource = srcData
          ParentFont = False
          ParentShowHint = False
          Properties.DisplayFormat = ',0.00;-,0.00'
          Properties.EditFormat = ',0.00;-,0.00'
          Properties.ReadOnly = False
          Properties.UseThousandSeparator = True
          ShowHint = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.Color = clSilver
          Style.StyleController = WebEditStyleController
          TabOrder = 21
          Width = 258
        end
        object cmbxedtCurrID: TfdcObjectLookupEdit [10]
          Left = 140
          Top = 326
          DataBinding.DataField = 'CURRENCY_ID'
          DataBinding.DataSource = srcData
          ParentFont = False
          Properties.DropDownAutoSize = True
          Properties.DropDownSizeable = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = DictData.srcCurrency
          Properties.ReadOnly = False
          Properties.OnChange = Modify
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.StyleController = WebEditStyleController
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 16
          Width = 54
        end
        object edtBankDocNo: TcxDBMaskEdit [11]
          Left = 140
          Top = 59
          DataBinding.DataField = 'DOC_NO2'
          DataBinding.DataSource = srcData
          ParentFont = False
          Properties.MaskKind = emkRegExprEx
          Properties.MaxLength = 0
          Properties.OnChange = Modify
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.StyleController = WebEditStyleController
          TabOrder = 3
          Width = 119
        end
        object edtBankDocDate: TcxDBDateEdit [12]
          Left = 293
          Top = 59
          DataBinding.DataField = 'DOC_DATE2'
          DataBinding.DataSource = srcData
          ParentFont = False
          Properties.OnChange = Modify
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.StyleController = WebEditStyleController
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 4
          Width = 106
        end
        object edtKPP: TcxDBMaskEdit [13]
          Left = 443
          Top = 142
          DataBinding.DataField = 'PAYER_KPP'
          DataBinding.DataSource = srcData
          ParentFont = False
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '\d{0,9}'
          Properties.MaxLength = 0
          Properties.ReadOnly = True
          Properties.OnChange = Modify
          Properties.OnValidate = edtKPPPropertiesValidate
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.Color = clWindow
          Style.StyleController = WebEditStyleController
          TabOrder = 9
          Width = 109
        end
        object btnSaveNew: TcxButton [14]
          Left = 674
          Top = 679
          Width = 162
          Height = 18
          Action = actSaveAndClose
          TabOrder = 32
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00AD5A5A00AD525200A54A4A00AD949400C6CEC600CECEC600CECEC600C6CE
            C600C6CEC600B59C9C009C4242009C424200A5525200FF00FF00FF00FF00BD7B
            7300CE636300CE6B6B00B55A5A009C848400BDA5A500E7CECE00FFF7F700FFFF
            F700F7F7F700CEB5B500942929009C313100C65A5A00AD5A5A00FF00FF00BD7B
            7300CE636300CE636300B55A5A009C7B7B009C424200B5737300E7DEDE00FFF7
            F700FFFFFF00D6B5B500943131009C313100BD5A5A00AD5A5A00FF00FF00BD7B
            7300CE636300CE636300B55A5A00AD8484009C3939009C393900CEBDBD00EFEF
            EF00FFFFFF00E7C6C6009429290094313100BD5A5A00AD5A5A00FF00FF00BD7B
            7300CE636300CE636300B55A5A00B58C8C009C4A4A0094313100A59C9C00D6D6
            D600FFFFFF00E7C6C6009429290094313100BD5A5A00AD5A5A00FF00FF00BD7B
            7300CE636300CE636300BD5A5A00C6948C00C6949400B5848400AD8C8C00BDA5
            A500E7C6C600DEADAD00A5393900A5393900C65A5A00AD5A5A00FF00FF00BD7B
            7300CE636300CE636300CE636300CE636300CE636300CE636300CE636300C65A
            5A00C65A5A00CE636300CE636300CE636300CE6B6B00AD525A00FF00FF00BD7B
            7300B5525200B55A5A00C6848400D6A5A500D6ADAD00D6ADA500D6ADAD00D6A5
            A500D6A5A500D6ADA500D6ADAD00D69C9C00CE636300AD525200FF00FF00BD7B
            7300AD524A00E7CECE00F7F7F700F7F7EF00F7F7F700F7F7F700F7F7F700F7F7
            F700F7F7F700F7F7F700F7F7F700DEBDBD00C65A5A00AD525A00FF00FF00BD7B
            7300B5524A00EFD6D600FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
            EF00F7EFEF00F7EFEF00F7F7F700DEBDBD00C65A5A00AD525A00FF00FF00BD7B
            7300B5524A00EFD6D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6
            D600D6D6D600D6D6D600EFEFEF00DEBDBD00C65A5A00AD525A00FF00FF00BD7B
            7300B5524A00EFD6D600EFEFEF00DED6D600DEDEDE00DEDEDE00DEDEDE00DEDE
            DE00DEDEDE00DED6D600EFEFEF00DEBDBD00C65A5A00AD525A00FF00FF00BD7B
            7300B5524A00EFD6D600F7F7EF00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
            DE00E7DEDE00E7DEDE00EFEFEF00DEBDBD00C65A5A00AD525A00FF00FF00BD7B
            7300B5524A00EFD6D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6
            D600D6D6D600D6D6D600EFEFEF00DEBDBD00C65A5A00AD525A00FF00FF00BD7B
            7300B5524A00E7D6CE00FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
            EF00F7EFEF00F7EFEF00FFF7F700DEBDBD00C65A5A00AD525A00FF00FF00FF00
            FF00AD524A00CEB5B500D6D6D600CECECE00CECECE00CECECE00CECECE00CECE
            CE00CECECE00CECECE00D6D6D600CEADAD00A54A4A00FF00FF00}
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit [15]
          Left = 140
          Top = 403
          Hint = #1054#1089#1090#1072#1090#1086#1082' '#1076#1086#1089#1090#1091#1087#1085#1099#1081' '#1076#1083#1103' '#1089#1087#1080#1089#1072#1085#1080#1103
          DataBinding.DataField = 'REST_SUMMA'
          DataBinding.DataSource = srcData
          ParentFont = False
          ParentShowHint = False
          Properties.DisplayFormat = ',0.00;-,0.00'
          Properties.EditFormat = ',0.00;-,0.00'
          Properties.UseThousandSeparator = True
          ShowHint = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.StyleController = WebEditStyleController
          TabOrder = 22
          Width = 96
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit [16]
          Left = 557
          Top = 403
          Hint = #1057#1091#1084#1084#1072' '#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085#1085#1072#1103
          DataBinding.DataField = 'LOCKED_SUMMA'
          DataBinding.DataSource = srcData
          ParentFont = False
          ParentShowHint = False
          Properties.DisplayFormat = ',0.00;-,0.00'
          Properties.EditFormat = ',0.00;-,0.00'
          Properties.UseThousandSeparator = True
          ShowHint = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.StyleController = WebEditStyleController
          TabOrder = 23
          Width = 101
        end
        object chbxAsOld: TcxCheckBox [17]
          Left = 9
          Top = 679
          Caption = #1059#1095#1080#1090#1099#1074#1072#1090#1100' '#1082#1072#1082' "'#1089#1090#1072#1088#1099#1081'"'
          ParentColor = False
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 31
          Width = 163
        end
        object cmbxPayCode: TfdcObjectLookupEdit [18]
          Left = 755
          Top = 326
          DataBinding.DataField = 'PAY_TYPE_ID'
          DataBinding.DataSource = srcData
          ParentFont = False
          Properties.DropDownAutoSize = True
          Properties.DropDownSizeable = True
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'CODE'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = DictData.srcPayTypes
          Properties.ReadOnly = False
          Properties.OnChange = Modify
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.StyleController = WebEditStyleController
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 18
          Width = 81
        end
        object edtDescript2: TcxDBMemo [19]
          Left = 140
          Top = 620
          DataBinding.DataField = 'DESCRIPT2'
          DataBinding.DataSource = srcData
          ParentFont = False
          Properties.ScrollBars = ssVertical
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.StyleController = WebEditStyleController
          TabOrder = 29
          Height = 30
          Width = 258
        end
        object edtIncomeDate: TcxDBDateEdit [20]
          Left = 742
          Top = 428
          DataBinding.DataField = 'INCOME_DATE'
          DataBinding.DataSource = srcData
          ParentFont = False
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.Color = clSilver
          Style.HotTrack = False
          Style.StyleController = WebEditStyleController
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 25
          Width = 94
        end
        object edtNote: TcxDBMemo [21]
          Left = 140
          Top = 560
          DataBinding.DataField = 'NOTE'
          DataBinding.DataSource = srcData
          ParentFont = False
          Properties.ScrollBars = ssVertical
          Properties.OnChange = Modify
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.StyleController = WebEditStyleController
          TabOrder = 27
          Height = 27
          Width = 575
        end
        object gbxPaymentFor: TcxGroupBox [22]
          Left = 9
          Top = 453
          Align = alClient
          Caption = #1055#1077#1088#1077#1074#1077#1076#1077#1085#1085#1099#1077' '#1089#1088#1077#1076#1089#1090#1074#1072
          ParentColor = False
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.StyleController = WebEditStyleController
          TabOrder = 26
          Height = 101
          Width = 722
          object dxLayoutControl1: TdxLayoutControl
            Left = 2
            Top = 14
            Width = 718
            Height = 85
            Align = alClient
            TabOrder = 0
            AutoContentSizes = [acsWidth, acsHeight]
            LookAndFeel = LayoutWebLookAndFeel
            object edtPFSumma: TcxDBTextEdit
              Left = 64
              Top = 56
              DataBinding.DataField = 'PF_SUMMA'
              DataBinding.DataSource = srcData
              ParentFont = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebsSingle
              Style.Color = clSilver
              Style.HotTrack = False
              Style.StyleController = WebEditStyleController
              TabOrder = 3
              Width = 93
            end
            object edtPFRestSumma: TcxDBTextEdit
              Left = 345
              Top = 56
              DataBinding.DataField = 'PF_REST_SUMMA'
              DataBinding.DataSource = srcData
              ParentFont = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebsSingle
              Style.Color = clSilver
              Style.HotTrack = False
              Style.StyleController = WebEditStyleController
              TabOrder = 4
              Width = 92
            end
            object edtPFLockedSumma: TcxDBTextEdit
              Left = 622
              Top = 56
              DataBinding.DataField = 'PF_LOCKED_SUMMA'
              DataBinding.DataSource = srcData
              ParentFont = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebsSingle
              Style.Color = clSilver
              Style.HotTrack = False
              Style.StyleController = WebEditStyleController
              TabOrder = 5
              Width = 93
            end
            object edtSubjectName: TfdcObjectLinkEdit
              Left = 64
              Top = 32
              DataBinding.DataField = 'PF_SUBJECT_NAME'
              DataBinding.DataSource = srcData
              DataBinding.DataKeyField = 'PF_SUBJECT_ID'
              ParentFont = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                  Visible = False
                end>
              Properties.ReadOnly = True
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebsSingle
              Style.Color = clSilver
              Style.HotTrack = False
              Style.StyleController = WebEditStyleController
              Style.ButtonStyle = btsHotFlat
              TabOrder = 2
              Width = 93
            end
            object edtSubjectINN: TcxDBTextEdit
              Left = 64
              Top = 8
              DataBinding.DataField = 'PF_SUBJECT_INN'
              DataBinding.DataSource = srcData
              ParentFont = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebsSingle
              Style.Color = clSilver
              Style.HotTrack = False
              Style.StyleController = WebEditStyleController
              TabOrder = 0
              Width = 93
            end
            object edtSubjectKPP: TcxDBTextEdit
              Left = 488
              Top = 8
              DataBinding.DataField = 'PF_SUBJECT_KPP'
              DataBinding.DataSource = srcData
              ParentFont = False
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebsSingle
              Style.Color = clSilver
              Style.HotTrack = False
              Style.StyleController = WebEditStyleController
              TabOrder = 1
              Width = 93
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Group4: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Group1: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutControl1Item5: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = #1048#1053#1053
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = edtSubjectINN
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl1Item6: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = #1050#1055#1055
                    CaptionOptions.AlignHorz = taRightJustify
                    Control = edtSubjectKPP
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl1Item4: TdxLayoutItem
                  Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
                  CaptionOptions.AlignHorz = taRightJustify
                  Control = edtSubjectName
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl1Group5: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl1Item1: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = #1057#1091#1084#1084#1072
                  CaptionOptions.AlignHorz = taRightJustify
                  Control = edtPFSumma
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item2: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = #1044#1086#1089#1090#1091#1087#1085#1099#1081' '#1086#1089#1090#1072#1090#1086#1082
                  CaptionOptions.AlignHorz = taRightJustify
                  Control = edtPFRestSumma
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl1Item3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = #1047#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085#1086
                  CaptionOptions.AlignHorz = taRightJustify
                  Visible = False
                  Control = edtPFLockedSumma
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
        object edtRecipientINN: TcxDBMaskEdit [23]
          Tag = 1
          Left = 154
          Top = 236
          DataBinding.DataField = 'RECIPIENT_INN'
          DataBinding.DataSource = srcData
          ParentFont = False
          Properties.MaskKind = emkRegExprEx
          Properties.MaxLength = 0
          Properties.ReadOnly = True
          Properties.OnChange = Modify
          Properties.OnValidate = edtPayerINNPropertiesValidate
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.Color = clWindow
          Style.HotTrack = False
          Style.StyleController = WebEditStyleController
          TabOrder = 11
          Width = 260
        end
        object edtRecipientKPP: TcxDBMaskEdit [24]
          Tag = 1
          Left = 443
          Top = 236
          DataBinding.DataField = 'RECIPIENT_KPP'
          DataBinding.DataSource = srcData
          ParentFont = False
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '\d{0,9}'
          Properties.MaxLength = 0
          Properties.ReadOnly = True
          Properties.OnChange = Modify
          Properties.OnValidate = edtKPPPropertiesValidate
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.Color = clWindow
          Style.HotTrack = False
          Style.StyleController = WebEditStyleController
          TabOrder = 12
          Width = 71
        end
        object edtRecipientName: TfdcObjectLinkEdit [25]
          Left = 154
          Top = 261
          DataBinding.DataField = 'RECIPIENT_NAME'
          DataBinding.DataSource = srcData
          DataBinding.DataKeyField = 'RECIPIENT_ID'
          DataBinding.TypeSysName = 'Declarant;Person;Broker;Bank'
          DataBinding.SearchFormClass = 'TSubjectFindGridForm'
          ParentFont = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnChange = Modify
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.StyleController = WebEditStyleController
          Style.ButtonStyle = btsHotFlat
          TabOrder = 13
          OnBeforeAcceptObject = edtRecipientNameBeforeAcceptObject
          Width = 623
        end
        object edtKBK: TcxDBTextEdit [26]
          Left = 247
          Top = 326
          DataBinding.DataField = 'KBK'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 17
          Width = 205
        end
        object edtDestCustomsCode: TcxDBMaskEdit [27]
          Left = 154
          Top = 286
          DataBinding.DataField = 'DESTCUSTOMSCODE'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 14
          Width = 150
        end
        object chBIS_ACTIVE: TcxDBCheckBox [28]
          Left = 9
          Top = 84
          Caption = #1055#1088#1086#1074#1077#1076#1105#1085
          DataBinding.DataField = 'IS_ACTIVE'
          DataBinding.DataSource = srcData
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = #1044#1072
          Properties.DisplayUnchecked = #1053#1077#1090
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 5
          Width = 121
        end
        object edtACTIVATION_DATE: TcxDBDateEdit [29]
          Left = 216
          Top = 84
          DataBinding.DataField = 'ACTIVATION_DATE'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 6
          Width = 121
        end
        object cxDBIsTS: TcxDBCheckBox [30]
          Left = 343
          Top = 84
          Caption = #1044#1086#1082#1091#1084#1077#1085#1090' '#1058#1057
          DataBinding.DataField = 'IS_TS'
          DataBinding.DataSource = srcData
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = #1044#1072
          Properties.DisplayUnchecked = #1053#1077#1090
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 7
          Width = 110
        end
        object edtCustomsName: TcxDBTextEdit [31]
          Left = 402
          Top = 286
          DataBinding.DataField = 'CUSTOMS_NAME'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 15
          Width = 570
        end
        object edtUIN: TcxDBTextEdit [32]
          Left = 140
          Top = 593
          DataBinding.DataField = 'UIN'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 28
          Width = 849
        end
        inherited dxLayoutGroup1: TdxLayoutGroup
          inherited lciNameEdit: TdxLayoutItem
            Visible = False
          end
          object lcGeneralGroup1: TdxLayoutGroup [1]
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object lcGeneralGroup8: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lciDocNumber: TdxLayoutItem
                Tag = 11
                Caption = #1053#1086#1084#1077#1088' ('#1087#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1091')'
                CaptionOptions.AlignHorz = taRightJustify
                Control = edtDocNo
                ControlOptions.ShowBorder = False
              end
              object lciDocDate: TdxLayoutItem
                Tag = 13
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = #1044#1072#1090#1072
                CaptionOptions.AlignHorz = taRightJustify
                Control = edtDocDate
                ControlOptions.ShowBorder = False
              end
            end
            object lcGeneralGroup7: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object lcGrpBank: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lciBankDocNo: TdxLayoutItem
                  Tag = 23
                  Caption = #1053#1086#1084#1077#1088' ('#1080#1079' '#1073#1072#1085#1082#1072')'
                  CaptionOptions.AlignHorz = taRightJustify
                  Control = edtBankDocNo
                  ControlOptions.ShowBorder = False
                end
                object lciBankDocDate: TdxLayoutItem
                  Tag = 23
                  AutoAligns = [aaVertical]
                  AlignHorz = ahClient
                  Caption = #1044#1072#1090#1072
                  CaptionOptions.AlignHorz = taRightJustify
                  Control = edtBankDocDate
                  ControlOptions.ShowBorder = False
                end
              end
              object lcGrpActivationDate: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcGeneralItem1: TdxLayoutItem
                  Tag = 33
                  AutoAligns = [aaVertical]
                  Caption = 'cxDBCheckBox1'
                  CaptionOptions.AlignHorz = taRightJustify
                  ShowCaption = False
                  Control = chBIS_ACTIVE
                  ControlOptions.ShowBorder = False
                end
                object lcGeneralItem2: TdxLayoutItem
                  Tag = 33
                  Caption = #1044#1072#1090#1072' '#1087#1088#1086#1074#1086#1076#1082#1080
                  CaptionOptions.AlignHorz = taRightJustify
                  Control = edtACTIVATION_DATE
                  ControlOptions.ShowBorder = False
                end
                object lciIsTS: TdxLayoutItem
                  CaptionOptions.AlignHorz = taRightJustify
                  ShowCaption = False
                  Control = cxDBIsTS
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
          object lcGeneralGroup4: TdxLayoutGroup [2]
            Caption = #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082
            object lcGeneralGroup10: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lciINN_P: TdxLayoutItem
                Tag = 13
                AutoAligns = [aaVertical]
                Caption = #1048#1053#1053
                CaptionOptions.AlignHorz = taRightJustify
                Control = edtPayerINN
                ControlOptions.ShowBorder = False
              end
              object lciKPP_P: TdxLayoutItem
                Tag = 13
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = #1050#1055#1055
                CaptionOptions.AlignHorz = taRightJustify
                Control = edtKPP
                ControlOptions.ShowBorder = False
              end
            end
            object lciName_P: TdxLayoutItem
              Tag = 13
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              CaptionOptions.AlignHorz = taRightJustify
              Control = edtPayerName
              ControlOptions.ShowBorder = False
            end
          end
          object lcGeneralGroup11: TdxLayoutGroup [3]
            Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
            object lcGeneralGroup12: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lciINN_R: TdxLayoutItem
                Tag = 13
                AutoAligns = [aaVertical]
                Caption = #1048#1053#1053
                CaptionOptions.AlignHorz = taRightJustify
                Control = edtRecipientINN
                ControlOptions.ShowBorder = False
              end
              object lciKPP_R: TdxLayoutItem
                Tag = 13
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = #1050#1055#1055
                CaptionOptions.AlignHorz = taRightJustify
                Control = edtRecipientKPP
                ControlOptions.ShowBorder = False
              end
            end
            object lciName_R: TdxLayoutItem
              Tag = 13
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Control = edtRecipientName
              ControlOptions.ShowBorder = False
            end
            object lcgCustoms: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lciDestCustomsCode: TdxLayoutItem
                Tag = 33
                Caption = #1050#1086#1076' '#1090#1072#1084#1086#1078#1085#1080'-'#1087#1086#1083#1091#1095#1072#1090#1077#1083#1103
                Control = edtDestCustomsCode
                ControlOptions.ShowBorder = False
              end
              object lciCustomsName: TdxLayoutItem
                Tag = 33
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1058#1054
                Control = edtCustomsName
                ControlOptions.ShowBorder = False
              end
            end
          end
          object lcGeneralGroup3: TdxLayoutGroup [4]
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object lcGeneralGroup6: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lciCurrency: TdxLayoutItem
                Tag = 13
                AutoAligns = [aaVertical]
                Caption = #1042#1072#1083#1102#1090#1072
                CaptionOptions.AlignHorz = taRightJustify
                Control = cmbxedtCurrID
                ControlOptions.ShowBorder = False
              end
              object lciKBK: TdxLayoutItem
                Tag = 13
                Caption = #1050#1041#1050
                CaptionOptions.AlignHorz = taRightJustify
                Offsets.Left = 25
                Control = edtKBK
                ControlOptions.ShowBorder = False
              end
              object lciPayTypeCode: TdxLayoutItem
                Tag = 11
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = #1042#1080#1076' '#1087#1083#1072#1090#1077#1078#1072
                CaptionOptions.AlignHorz = taRightJustify
                Control = cmbxPayCode
                ControlOptions.ShowBorder = False
              end
            end
            object lcGeneralGroup5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lciDocSum: TdxLayoutItem
                Tag = 13
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'C'#1091#1084#1084#1072' '#1087#1083#1072#1090#1077#1078#1072
                CaptionOptions.AlignHorz = taRightJustify
                Control = edtDocSumma
                ControlOptions.ShowBorder = False
              end
              object lciSumma: TdxLayoutItem
                Tag = 23
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = #1047#1072#1095#1080#1089#1083#1077#1085#1086
                CaptionOptions.AlignHorz = taRightJustify
                Control = edtSumma
                ControlOptions.ShowBorder = False
              end
            end
          end
          object lciRestSum: TdxLayoutItem [5]
            Tag = 23
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = #1044#1086#1089#1090#1091#1087#1085#1099#1081' '#1086#1089#1090#1072#1090#1086#1082
            CaptionOptions.AlignHorz = taRightJustify
            Control = edtRestSumma
            ControlOptions.ShowBorder = False
          end
          object lcGeneralGroup2: TdxLayoutGroup [6]
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object lciRestXSum: TdxLayoutItem
              Tag = 23
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = #1054#1089#1090#1072#1090#1086#1082
              CaptionOptions.AlignHorz = taRightJustify
              Control = cxDBCurrencyEdit1
              ControlOptions.ShowBorder = False
            end
            object lciLockSum: TdxLayoutItem
              Tag = 23
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = #1041#1083#1086#1082#1080#1088#1086#1074'.'
              Control = cxDBCurrencyEdit2
              ControlOptions.ShowBorder = False
            end
          end
          object lcGeneralGroup9: TdxLayoutGroup [7]
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object lciExecDate: TdxLayoutItem
              Tag = 13
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1085#1072' '#1089#1095#1077#1090' '#1060#1050
              Control = edtExecDate
              ControlOptions.ShowBorder = False
            end
            object lciIncomeDateEdt: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = #1044#1072#1090#1072' '#1074#1085#1077#1089#1077#1085#1080#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1074' '#1073#1072#1079#1091
              Control = edtIncomeDate
              ControlOptions.ShowBorder = False
            end
          end
          object lciPaymentFor: TdxLayoutItem [8]
            Caption = 'cxGroupBox1'
            ShowCaption = False
            Visible = False
            Control = gbxPaymentFor
            ControlOptions.ShowBorder = False
          end
          object lciNoteEdt: TdxLayoutItem [9]
            Tag = 13
            AutoAligns = [aaHorizontal]
            Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' '#1087#1083#1072#1090#1077#1078#1072
            CaptionOptions.AlignHorz = taRightJustify
            Control = edtNote
            ControlOptions.ShowBorder = False
          end
          object lciUIN: TdxLayoutItem [10]
            Tag = 13
            Caption = #1059#1048#1053
            CaptionOptions.AlignHorz = taRightJustify
            Control = edtUIN
            ControlOptions.ShowBorder = False
          end
          object lciDescript2: TdxLayoutItem [11]
            Tag = 23
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1080#1079' '#1082#1072#1079#1085#1072#1095#1077#1081#1089#1090#1074#1072
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.AlignVert = tavTop
            CaptionOptions.Width = 130
            Control = edtDescript2
            ControlOptions.ShowBorder = False
          end
          inherited lciDescriptEdit: TdxLayoutItem
            Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
            CaptionOptions.Width = 130
          end
          object lcgNewOption: TdxLayoutGroup
            ShowCaption = False
            Visible = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object lcilcAsOld: TdxLayoutItem
              ShowCaption = False
              Visible = False
              Control = chbxAsOld
              ControlOptions.ShowBorder = False
            end
            object lciSaveBtn: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              ShowCaption = False
              Control = btnSaveNew
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      inherited dxBarDockControlTop: TdxBarDockControl
        Width = 867
      end
      inherited dxBarDockControlLeft: TdxBarDockControl
        Height = 641
      end
      inherited dxBarDockControlBottom: TdxBarDockControl
        Top = 667
        Width = 867
      end
      inherited dxBarDockControlRight: TdxBarDockControl
        Left = 864
        Height = 641
      end
    end
    object tabDeduction: TcxTabSheet [1]
      Caption = #1057#1087#1080#1089#1072#1085#1080#1103
      ImageIndex = 2
      OnShow = tabDeductionShow
    end
    object tabLock: TcxTabSheet [2]
      Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1082#1080
      ImageIndex = 3
      OnShow = tabLockShow
    end
    object tabPayFor: TcxTabSheet [3]
      Caption = #1055#1077#1088#1077#1074#1086#1076#1099
      ImageIndex = 4
      OnShow = tabPayForShow
    end
    object tabConfirmation: TcxTabSheet [4]
      Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077
      ImageIndex = 4
      OnShow = tabConfirmationShow
      object lcConfirm: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 867
        Height = 670
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = LayoutWebLookAndFeel
        object edtCnfrmDocNumber: TcxDBTextEdit
          Left = 87
          Top = 40
          DataBinding.DataField = 'DOC_NUMBER'
          DataBinding.DataSource = dsPOConfirm
          Enabled = False
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 0
          Width = 121
        end
        object edtCnfrmDocDate: TcxDBDateEdit
          Left = 673
          Top = 40
          DataBinding.DataField = 'DOC_DATE'
          DataBinding.DataSource = dsPOConfirm
          Enabled = False
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 1
          Width = 173
        end
        object chBCnfrmIsActive: TcxDBCheckBox
          Left = 21
          Top = 67
          Caption = #1055#1088#1080#1079#1085#1072#1082' '#1087#1088#1086#1074#1086#1076#1082#1080
          DataBinding.DataField = 'IS_ACTIVE'
          DataBinding.DataSource = dsPOConfirm
          Enabled = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = #1044#1072
          Properties.DisplayUnchecked = #1053#1077#1090
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 2
          Width = 164
        end
        object edtCnfrmActivationDate: TcxDBDateEdit
          Left = 271
          Top = 67
          DataBinding.DataField = 'ACTIVATION_DATE'
          DataBinding.DataSource = dsPOConfirm
          Enabled = False
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 3
          Width = 157
        end
        object edtCnfrmPayerINN: TcxDBTextEdit
          Left = 87
          Top = 138
          DataBinding.DataField = 'PAYER_INN'
          DataBinding.DataSource = dsPOConfirm
          Enabled = False
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 4
          Width = 275
        end
        object edtCnfrmPayerKPP: TcxDBTextEdit
          Left = 659
          Top = 138
          DataBinding.DataField = 'PAYER_KPP'
          DataBinding.DataSource = dsPOConfirm
          Enabled = False
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 5
          Width = 187
        end
        object edtCnfrmPayerName: TcxDBTextEdit
          Left = 87
          Top = 165
          DataBinding.DataField = 'PAYER_NAME'
          DataBinding.DataSource = dsPOConfirm
          Enabled = False
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 6
          Width = 121
        end
        object edtCnfrmExecDate: TcxDBDateEdit
          Left = 87
          Top = 236
          DataBinding.DataField = 'EXEC_DATE'
          DataBinding.DataSource = dsPOConfirm
          Enabled = False
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 7
          Width = 170
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 359
          Top = 236
          DataBinding.DataField = 'INCOME_DATE'
          DataBinding.DataSource = dsPOConfirm
          Enabled = False
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 8
          Width = 177
        end
        object edtCnfrmCurrencyCode: TcxDBTextEdit
          Left = 87
          Top = 263
          DataBinding.DataField = 'CURR_CODE'
          DataBinding.DataSource = dsPOConfirm
          Enabled = False
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 9
          Width = 58
        end
        object edtCnfrmCurrencyName: TcxDBTextEdit
          Left = 151
          Top = 263
          DataBinding.DataField = 'CURR_NAME'
          DataBinding.DataSource = dsPOConfirm
          Enabled = False
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 10
          Width = 121
        end
        object edtCnfrmDocSumma: TcxDBCurrencyEdit
          Left = 87
          Top = 290
          DataBinding.DataField = 'DOC_SUMMA'
          DataBinding.DataSource = dsPOConfirm
          Enabled = False
          ParentFont = False
          Properties.DisplayFormat = ',0.00;-,0.00'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 11
          Width = 121
        end
        object lcConfirmGroup_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object lcgDocument: TdxLayoutGroup
            Caption = #1044#1086#1082#1091#1084#1077#1085#1090' - '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1072#1102#1097#1077#1077' '#1087'/'#1087
            object lcConfirmGroup1: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lciCnfrmDocNumber: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = #1053#1086#1084#1077#1088
                Enabled = False
                Control = edtCnfrmDocNumber
                ControlOptions.ShowBorder = False
              end
              object lciCnfrmDocDate: TdxLayoutItem
                Caption = #1044#1072#1090#1072
                Enabled = False
                Control = edtCnfrmDocDate
                ControlOptions.ShowBorder = False
              end
            end
            object lcConfirmGroup2: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lciCnfrmIsActive: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'cxDBCheckBox1'
                Enabled = False
                ShowCaption = False
                Control = chBCnfrmIsActive
                ControlOptions.ShowBorder = False
              end
              object lciCnfrmActivationDate: TdxLayoutItem
                Caption = #1044#1072#1090#1072' '#1087#1088#1086#1074#1086#1076#1082#1080
                Enabled = False
                Control = edtCnfrmActivationDate
                ControlOptions.ShowBorder = False
              end
            end
          end
          object lcgPayer: TdxLayoutGroup
            Caption = #1059#1095#1072#1089#1090#1085#1080#1082' '#1042#1069#1044' - '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082
            object lcConfirmGroup3: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lciCnfrmPayerINN: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = #1048#1053#1053
                Enabled = False
                Control = edtCnfrmPayerINN
                ControlOptions.ShowBorder = False
              end
              object lciCnfrmPayerKPP: TdxLayoutItem
                Caption = #1050#1055#1055
                Enabled = False
                Control = edtCnfrmPayerKPP
                ControlOptions.ShowBorder = False
              end
            end
            object lciCnfrmPayerName: TdxLayoutItem
              Caption = #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082
              Enabled = False
              Control = edtCnfrmPayerName
              ControlOptions.ShowBorder = False
            end
          end
          object lcgConfirm: TdxLayoutGroup
            Caption = #1044#1072#1085#1085#1099#1077' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103
            object lcConfirmGroup4: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lciCnfrmExecDate: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = #1044#1072#1090#1072' '#1073#1072#1085#1082#1072
                Enabled = False
                Control = edtCnfrmExecDate
                ControlOptions.ShowBorder = False
              end
              object lciCnfrmIncomeDate: TdxLayoutItem
                Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
                Enabled = False
                Control = cxDBDateEdit1
                ControlOptions.ShowBorder = False
              end
            end
            object lcConfirmGroup5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lciCnfrmCurrencyCode: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = #1042#1072#1083#1102#1090#1072
                Enabled = False
                Control = edtCnfrmCurrencyCode
                ControlOptions.ShowBorder = False
              end
              object lciCnfrmCurrencyName: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'cxDBTextEdit1'
                Enabled = False
                ShowCaption = False
                Control = edtCnfrmCurrencyName
                ControlOptions.ShowBorder = False
              end
            end
            object lciCnfrmDocSumma: TdxLayoutItem
              Caption = #1057#1091#1084#1084#1072
              Enabled = False
              Control = edtCnfrmDocSumma
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    inherited tabService: TcxTabSheet
      inherited pcService: TcxPageControl
        Width = 867
        Height = 670
        ClientRectBottom = 646
        ClientRectRight = 867
      end
    end
    object TabCorrection: TcxTabSheet
      Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080
      ImageIndex = 6
      OnShow = TabCorrectionShow
    end
    object tabDocPack: TcxTabSheet
      Caption = #1056#1077#1077#1089#1090#1088#1099
      ImageIndex = 7
      OnShow = tabDocPackShow
    end
    object tabBankInfo: TcxTabSheet
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1080#1079' '#1082#1072#1079#1085#1072#1095#1077#1081#1089#1090#1074#1072
      ImageIndex = 8
      OnShow = tabBankInfoShow
      object lcBankInfo: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 867
        Height = 670
        Align = alClient
        TabOrder = 0
        AutoContentSizes = [acsWidth, acsHeight]
        LookAndFeel = LayoutWebLookAndFeel
        object edtBankInfoDocNumber: TcxDBTextEdit
          Left = 123
          Top = 40
          DataBinding.DataField = 'DOC_NO2'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 0
          Width = 121
        end
        object edtBankInfoDocDate: TcxDBDateEdit
          Left = 278
          Top = 40
          DataBinding.DataField = 'DOC_DATE2'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 1
          Width = 155
        end
        object edtBankInfoExecDate: TcxDBDateEdit
          Left = 568
          Top = 40
          DataBinding.DataField = 'EXEC_DATE'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 2
          Width = 155
        end
        object edtBankInfoPayerName: TcxDBTextEdit
          Left = 123
          Top = 111
          DataBinding.DataField = 'NAME_P'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object edtBankInfoPayerINN: TcxDBTextEdit
          Left = 123
          Top = 138
          DataBinding.DataField = 'INN_P'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 4
          Width = 193
        end
        object edtBankInfoPayerKPP: TcxDBTextEdit
          Left = 345
          Top = 138
          DataBinding.DataField = 'KPP_P'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 5
          Width = 146
        end
        object edtBankInfoPayerBIK: TcxDBTextEdit
          Left = 123
          Top = 165
          DataBinding.DataField = 'BIK_P'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 6
          Width = 161
        end
        object edtBankInfoPayerAccount: TcxDBTextEdit
          Left = 309
          Top = 165
          DataBinding.DataField = 'ACCOUNT_P'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 7
          Width = 121
        end
        object edtBankInfoRecepientName: TcxDBTextEdit
          Left = 123
          Top = 236
          DataBinding.DataField = 'NAME_K'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 8
          Width = 121
        end
        object edtBankInfoRecepientINN: TcxDBTextEdit
          Left = 123
          Top = 263
          DataBinding.DataField = 'INN_K'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 9
          Width = 193
        end
        object edtBankInfoRecepientKPP: TcxDBTextEdit
          Left = 345
          Top = 263
          DataBinding.DataField = 'KPP_K'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 10
          Width = 146
        end
        object edtBankInfoRecepientBIK: TcxDBTextEdit
          Left = 123
          Top = 290
          DataBinding.DataField = 'BIC_K'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 11
          Width = 161
        end
        object edtBankInfoRecepientAccount: TcxDBTextEdit
          Left = 309
          Top = 290
          DataBinding.DataField = 'ACCOUNT_K'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 12
          Width = 121
        end
        object edtBankInfoPaymentInfo: TcxDBMemo
          Left = 9
          Top = 345
          DataBinding.DataField = 'NOTE'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 13
          Height = 89
          Width = 185
        end
        object adtBankInfoPaymentReason: TcxDBTextEdit
          Left = 123
          Top = 498
          DataBinding.DataField = 'VAL_PAYMENT_REASON'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 15
          Width = 62
        end
        object edtBankInfoValPaymentType: TcxDBTextEdit
          Left = 259
          Top = 498
          DataBinding.DataField = 'VAL_PAYMENT_TYPE'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 16
          Width = 74
        end
        object edtBankInfoValDocNumber: TcxDBTextEdit
          Left = 123
          Top = 525
          DataBinding.DataField = 'VAL_DOC_NUMBER'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 17
          Width = 286
        end
        object edtBankInfoValDocDate: TcxDBDateEdit
          Left = 502
          Top = 525
          DataBinding.DataField = 'VAL_DOC_DATE'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 18
          Width = 121
        end
        object edtUIN2: TcxDBTextEdit
          Left = 32
          Top = 440
          DataBinding.DataField = 'UIN'
          DataBinding.DataSource = srcData
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 14
          Width = 537
        end
        object lcBankInfoGroup_Root: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object lcgBankInfoDoc: TdxLayoutGroup
            Caption = #1044#1086#1082#1091#1084#1077#1085#1090
            LayoutDirection = ldHorizontal
            object lciBankInfoDocNumber: TdxLayoutItem
              Tag = 23
              AutoAligns = [aaVertical]
              Caption = #1053#1086#1084#1077#1088
              Control = edtBankInfoDocNumber
              ControlOptions.ShowBorder = False
            end
            object lciBankInfoDocDate: TdxLayoutItem
              Tag = 23
              Caption = #1044#1072#1090#1072
              Control = edtBankInfoDocDate
              ControlOptions.ShowBorder = False
            end
            object lciBankInfoExecDate: TdxLayoutItem
              Tag = 23
              Caption = #1044#1072#1090#1072' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103' '#1073#1072#1085#1082#1086#1084
              Control = edtBankInfoExecDate
              ControlOptions.ShowBorder = False
            end
          end
          object lcgBankInfoPayer: TdxLayoutGroup
            Caption = #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082
            object lciBankInfoPayerName: TdxLayoutItem
              Tag = 23
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Control = edtBankInfoPayerName
              ControlOptions.ShowBorder = False
            end
            object lcBankInfoGroup1: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lciBankInfoPayerINN: TdxLayoutItem
                Tag = 23
                AutoAligns = [aaVertical]
                Caption = #1048#1053#1053
                Control = edtBankInfoPayerINN
                ControlOptions.ShowBorder = False
              end
              object lciBankInfoPayerKPP: TdxLayoutItem
                Tag = 23
                Caption = #1050#1055#1055
                Control = edtBankInfoPayerKPP
                ControlOptions.ShowBorder = False
              end
            end
            object lcBankInfoGroup2: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lciBankInfoPayerBIK: TdxLayoutItem
                Tag = 23
                AutoAligns = [aaVertical]
                Caption = #1041#1048#1050' '#1073#1072#1085#1082#1072
                Control = edtBankInfoPayerBIK
                ControlOptions.ShowBorder = False
              end
              object lciBankInfoPayerAccount: TdxLayoutItem
                Tag = 23
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = #1056'/'#1057
                Control = edtBankInfoPayerAccount
                ControlOptions.ShowBorder = False
              end
            end
          end
          object lcgBankInfoRecipient: TdxLayoutGroup
            Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
            object lciBankInfoRecepientName: TdxLayoutItem
              Tag = 23
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Control = edtBankInfoRecepientName
              ControlOptions.ShowBorder = False
            end
            object lcBankInfoGroup3: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lciBankInfoRecepientINN: TdxLayoutItem
                Tag = 23
                AutoAligns = [aaVertical]
                Caption = #1048#1053#1053
                Control = edtBankInfoRecepientINN
                ControlOptions.ShowBorder = False
              end
              object lciBankInfoRecepientKPP: TdxLayoutItem
                Tag = 23
                Caption = #1050#1055#1055
                Control = edtBankInfoRecepientKPP
                ControlOptions.ShowBorder = False
              end
            end
            object lcBankInfoGroup4: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lciBankInfoRecepientBIK: TdxLayoutItem
                Tag = 23
                AutoAligns = [aaVertical]
                Caption = #1041#1048#1050' '#1073#1072#1085#1082#1072
                Control = edtBankInfoRecepientBIK
                ControlOptions.ShowBorder = False
              end
              object lciBankInfoRecepientAccount: TdxLayoutItem
                Tag = 23
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = #1056'/'#1057
                Control = edtBankInfoRecepientAccount
                ControlOptions.ShowBorder = False
              end
            end
          end
          object lciBankInfoPaymentInfo: TdxLayoutItem
            Tag = 23
            Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' '#1087#1083#1072#1090#1077#1078#1072
            CaptionOptions.Layout = clTop
            Control = edtBankInfoPaymentInfo
            ControlOptions.ShowBorder = False
          end
          object lciUIN2: TdxLayoutItem
            Tag = 13
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = #1059#1048#1053
            Control = edtUIN2
            ControlOptions.ShowBorder = False
          end
          object lcgBankInfoVals: TdxLayoutGroup
            Caption = #1055#1086#1082#1072#1079#1072#1090#1077#1083#1080
            object lcBankInfoGroup5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lciBankInfoValPaymentReason: TdxLayoutItem
                Tag = 23
                AutoAligns = [aaVertical]
                Caption = #1086#1089#1085#1086#1074#1072#1085#1080#1077' '#1087#1083#1072#1090#1077#1078#1072
                Control = adtBankInfoPaymentReason
                ControlOptions.ShowBorder = False
              end
              object lciBankInfoValPaymentType: TdxLayoutItem
                Tag = 23
                Caption = #1074#1080#1076' '#1087#1083#1072#1090#1077#1078#1072
                Control = edtBankInfoValPaymentType
                ControlOptions.ShowBorder = False
              end
            end
            object lcBankInfoGroup6: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lciBankInfoValDocNumber: TdxLayoutItem
                Tag = 23
                AutoAligns = [aaVertical]
                Caption = #1085#1086#1084#1077#1088#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
                Control = edtBankInfoValDocNumber
                ControlOptions.ShowBorder = False
              end
              object lciBankInfoValDocDate: TdxLayoutItem
                Tag = 23
                Caption = #1076#1072#1090#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
                Control = edtBankInfoValDocDate
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object tabRest: TcxTabSheet
      Caption = #1054#1089#1090#1072#1090#1082#1080
      ImageIndex = 9
      OnShow = tabRestShow
    end
    object tabActDeduction: TcxTabSheet
      Caption = #1040#1082#1090#1099
      ImageIndex = 11
      OnShow = tabActDeductionShow
    end
  end
  inherited ActionList: TActionList
    Left = 424
    Top = 35
    inherited actNew: TAction
      Enabled = False
      Visible = False
    end
    object aCorrectSubject: TAction [1]
      Caption = #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082
      Hint = #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082
      ImageIndex = 5
      OnExecute = aCorrectSubjectExecute
    end
    object actSaveAndClose: TAction
      Category = 'Object'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1079#1072#1082#1088#1099#1090#1100
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1080' '#1079#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086
      ImageIndex = 1
      OnExecute = actSaveAndCloseExecute
      OnUpdate = actSaveUpdate
    end
    object actAsOld: TAction
      Category = 'View'
      Caption = #1059#1095#1080#1090#1099#1074#1072#1090#1100' '#1082#1072#1082' "'#1089#1090#1072#1088#1099#1081'"'
    end
    object actCreateSubj: TAction
      Category = 'Object'
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072' '#1076#1083#1103' '#1087#1083#1072#1090#1077#1078#1085#1086#1075#1086' '#1087#1086#1088#1091#1095#1077#1085#1080#1103
      ImageIndex = 5
      OnExecute = actCreateSubjExecute
      OnUpdate = actCreateSubjUpdate
    end
    object actLink: TAction
      Category = 'Object'
      Caption = #1057#1074#1103#1079#1072#1090#1100
      Hint = #1057#1074#1103#1079#1072#1090#1100' '#1089' '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1085#1099#1084' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1084
      OnExecute = actLinkExecute
      OnUpdate = actLinkUpdate
    end
    object actCancelReserve3Year: TAction
      Category = 'Object'
      Caption = #1056#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100
      Hint = #1059#1073#1088#1072#1090#1100' '#1073#1083#1086#1082#1080#1088#1086#1074#1082#1091' '#1087#1086' '#1089#1088#1086#1082#1091' '#1076#1072#1074#1085#1086#1089#1090#1080' 3 '#1075#1086#1076#1072
      OnExecute = actCancelReserve3YearExecute
      OnUpdate = actCancelReserve3YearUpdate
    end
    object aCorrectBack: TAction
      Caption = #1042#1077#1088#1085#1091#1074#1096#1080#1077#1089#1103' '#1044#1057
      Hint = #1042#1077#1088#1085#1091#1074#1096#1080#1077#1089#1103' '#1044#1057
      ImageIndex = 4
      OnExecute = aCorrectBackExecute
    end
    object actCorrectSum: TAction
      Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1091#1084#1084#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Hint = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1091#1084#1084#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      ImageIndex = 5
      OnExecute = actCorrectSumExecute
    end
    object actCorrectPOCustomCode: TAction
      Caption = #1055#1086#1074#1090#1086#1088#1085#1072#1103' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103' '#1087#1086' '#1082#1086#1076#1091' '#1058#1054
      Hint = #1055#1086#1074#1090#1086#1088#1085#1072#1103' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103' '#1087#1086' '#1082#1086#1076#1091' '#1058#1054
      OnExecute = actCorrectPOCustomCodeExecute
      OnUpdate = actCorrectPOCustomCodeUpdate
    end
  end
  inherited LayoutLookAndFeelList: TdxLayoutLookAndFeelList
    Left = 508
    Top = 35
  end
  inherited OfficeEditStyleController: TcxEditStyleController
    Style.IsFontAssigned = True
    Left = 620
    Top = 35
  end
  inherited WebEditStyleController: TcxEditStyleController
    Style.Font.Height = -9
    Style.IsFontAssigned = True
    Left = 648
    Top = 35
  end
  inherited LookAndFeelController: TcxLookAndFeelController
    Left = 564
    Top = 35
  end
  inherited DefaultEditStyleController: TcxDefaultEditStyleController
    Style.IsFontAssigned = True
    Left = 592
    Top = 35
  end
  inherited imglAction: TImageList
    Left = 452
    Top = 35
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005ABD6300089C100010A5
      100010A5180010A5180008A510000000000000000000DED6D600B59494009C5A
      4A008C393100D6C6C60000000000000000000000000000000000000000000000
      00004A4AA5002939AD001829AD001029AD001021AD002129AD003139A5005A5A
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004AB552004ADE
      6B0063FF9C0073FFB50010A5180000000000B55A3100CE7B4A00EFA57300FFC6
      8C00D6845A007B181000D6C6CE000000000000000000000000003942AD001031
      BD002973E700296BDE00185AD6001852D600184ACE001042C6001031BD000010
      AD000010A5002929AD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5D6B50018AD290052EF
      7B0052F784006BFFA50010A5100000000000BD633100FFCE9C00F7B57B00EFA5
      6B00DE8C63008C210800A5736B000000000000000000000000003952BD005294
      EF006394EF006B9CEF00427BE700215ADE001852D6001042C6001039C6000829
      BD000821B50010189C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003194390039DE5A0042E7
      6B0042DE630010A5210010A5100000000000BD632900F7AD7B00E79C6B00E794
      5A00DE9463009C3110009C5A52000000000000000000000000007B8CDE006B94
      FF005A73FF007BB5FF00739CF7005284E700215AD600184ACE001042C6001031
      BD000829B5003939A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000108C180031D64A0029C6
      42005AB55A00C6DECE00189C210000000000C66B2900E7946300E7946B00E79C
      7300EFB58C00BD5A39009C4A3100000000000000000000000000739CEF004294
      FF0052ADFF00429CFF004263FF007394F700427BE7001852CE001042C6001039
      BD000818AD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000318C310029CE42004AA5
      4A000000000000000000D6E7DE0000000000DE944A00EFAD6B00FFC69C00F7AD
      7B00E7946300D67B4A00943921000000000000000000000000003963F7005ADE
      FF0018E7FF005AEFFF005AADFF007B9CE700526BCE00215AD600104ACE001031
      BD004A4AA5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084ADAD00007B0800184A
      94002131C6002129AD005A5AB500BDC6DE0000000000E7BD9C00C6733100BD73
      4200BD846B00C6A59400D6CECE000000000000000000000000005294EF0052EF
      FF0000CEFF0039EFFF00317BFF006B8CF7008494CE001029B5001029B5005A5A
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000214AF70073C6A5007BC6
      CE0063A5FF00296BFF000031FF002121A5000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004263E7003994
      F70063F7FF006BE7FF003173FF007BADFF007BC6FF004A84D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007384EF0084BDFF0094D6
      FF005A94FF001852FF000021E7006B73BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A73
      E7005294FF00396BFF008CC6FF009CCEFF007BC6FF004AADFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEE7EF00294AEF00ADEF
      FF005294FF000842FF001010AD00DEDEEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008CADF7009CC6FF000000000094D6FF007BC6FF0063BDFF004A8CB5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B84EF007BB5
      F7005A94FF000021E7007B7BCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000429CCE009CD6FF009CDEFF0094D6FF007BC6FF000873A500006BA5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEE7EF00294A
      DE005A9CFF001010B500DEE7EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001873A50073BDFF008CCEFF008CD6FF00429CD6000084BD00007BB5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B84
      E7001839D600848CD60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A8CAD000073A500298CC600218CC600007BB500009CCE002184B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEE7
      EF003942BD00E7E7EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003984A5000873A500107BA500107BAD002984AD00000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD5A5A00AD52
      5200A54A4A00AD949400C6CEC600CECEC600CECEC600C6CEC600C6CEC600B59C
      9C009C4242009C424200A5525200000000000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE0000000000A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B730094635A00000000000000000000000000BD7B7300CE636300CE6B
      6B00B55A5A009C848400BDA5A500E7CECE00FFF7F700FFFFF700F7F7F700CEB5
      B500942929009C313100C65A5A00AD5A5A000000000000000000C6A59C00FFEF
      D600F7E7C600F7DEBD00F7DEB500F7D6AD00F7D6A500EFCE9C00EFCE9400EFCE
      9400EFCE9400F7D69C00B584840000000000000000000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE000000000000000000A57B7300F7E7D600F7E7
      D600FFEFD600EFDEBD00FFE7C600FFDEBD00FFDEBD00FFDEB500FFD6AD00FFD6
      A500FFD6A50094636300000000000000000000000000BD7B7300CE636300CE63
      6300B55A5A009C7B7B009C424200B5737300E7DEDE00FFF7F700FFFFFF00D6B5
      B500943131009C313100BD5A5A00AD5A5A000000000000000000C6A59C00FFEF
      D600F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6A500EFCE9C00EFCE9C00EFCE
      9400EFCE9400EFCE9C00B584840000000000000000000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE00000000000000000000000000AD847B00F7E7DE00F7E7
      DE00009C0000ADDEA50073C6730042AD310084BD5A00EFD6A500FFD6AD00FFD6
      A500FFD6A50094636300000000000000000000000000BD7B7300CE636300CE63
      6300B55A5A00AD8484009C3939009C393900CEBDBD00EFEFEF00FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A000000000000000000C6ADA500FFEF
      E700F7E7D600F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6AD00EFCE9C00EFCE
      9C00EFCE9400EFCE9C00B584840000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000031
      DE000031DE0000000000000000000000000000000000B5847B00F7EFDE00F7EF
      DE00009C0000009C0000009C0000009C0000009C000042AD2900FFDEB500FFD6
      AD00FFD6AD009C6B6300000000000000000000000000BD7B7300CE636300CE63
      6300B55A5A00B58C8C009C4A4A0094313100A59C9C00D6D6D600FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A000000000000000000C6ADA500FFF7
      E700F7E7D600F7E7CE00F7E7C600F7DEC600F7DEB500F7D6B500F7D6AD00EFCE
      9C00EFCE9C00EFCE9400B58484000000000000000000000000000031EF000031
      DE000031DE000031DE00000000000000000000000000000000000031DE000031
      DE000000000000000000000000000000000000000000B58C7B00F7EFE700F7EF
      E700009C0000009C0000109C0800CED6A500FFE7CE0021A51800FFDEB500FFD6
      B500FFD6B5009C6B6300000000000000000000000000BD7B7300CE636300CE63
      6300BD5A5A00C6948C00C6949400B5848400AD8C8C00BDA5A500E7C6C600DEAD
      AD00A5393900A5393900C65A5A00AD5A5A000000000000000000CEB5AD00FFFF
      F700FFEFE700F7E7D600F7E7D600F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6
      AD00EFCE9C00EFCE9C00B5848400000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000031DE000031DE000031DE000000
      00000000000000000000000000000000000000000000BD8C7B00F7EFEF00F7EF
      EF00009C0000009C0000009C0000009C0000FFE7CE00EFDEBD00FFDEB500FFD6
      B500FFDEB500A5736B00000000000000000000000000BD7B7300CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300C65A5A00C65A5A00CE63
      6300CE636300CE636300CE6B6B00AD525A000000000000000000D6B5AD00FFFF
      FF00FFF7EF00FFEFE700F7E7D600F7E7CE00F7E7C600F7DEC600F7DEBD00F7D6
      AD00F7D6A500F7D6A500B5848400000000000000000000000000000000000000
      0000000000000031DE000031E7000031E7000031E7000031DE00000000000000
      00000000000000000000000000000000000000000000C6948400FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00EFE7C600EFE7C600FFE7CE00FFDE
      BD00FFDEBD00A5736B00000000000000000000000000BD7B7300B5525200B55A
      5A00C6848400D6A5A500D6ADAD00D6ADA500D6ADAD00D6A5A500D6A5A500D6AD
      A500D6ADAD00D69C9C00CE636300AD5252000000000000000000D6BDB500FFFF
      FF00FFF7F700FFF7EF00FFEFDE00F7E7D600F7E7CE00F7E7C600F7DEC600F7DE
      BD00F7D6B500F7D6AD00B5848400000000000000000000000000000000000000
      000000000000000000000031E7000031E7000031EF0000000000000000000000
      00000000000000000000000000000000000000000000CE9C8400FFF7F700FFFF
      FF00FFF7EF00FFF7EF00FFF7EF00009C0000009C0000009C0000FFEFD600FFE7
      C600FFE7C600AD736B00000000000000000000000000BD7B7300AD524A00E7CE
      CE00F7F7F700F7F7EF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700DEBDBD00C65A5A00AD525A000000000000000000D6BDB500FFFF
      FF00FFFFFF00FFF7F700FFF7EF00FFEFE700F7E7D600F7E7CE00F7DEC600F7DE
      BD00F7DEB500F7DEB500B5848400000000000000000000000000000000000000
      0000000000000031DE000031EF000031E7000031EF000031F700000000000000
      00000000000000000000000000000000000000000000D6A58400FFFFFF00FFFF
      FF00109C1000ADDEA500FFF7EF00ADDEA500009C0000009C0000FFEFD600FFE7
      CE00FFE7C600AD7B6B00000000000000000000000000BD7B7300B5524A00EFD6
      D600FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7F7F700DEBDBD00C65A5A00AD525A000000000000000000DEBDB500FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00F7E7D600F7E7CE00F7DE
      C600F7DEC600F7D6B500B5848400000000000000000000000000000000000000
      00000031F7000031EF000031E70000000000000000000031F7000031F7000000
      00000000000000000000000000000000000000000000DEAD8C00FFFFFF00FFFF
      FF0073C67300009C0000009C0000009C0000009C0000009C0000FFEFD600FFEF
      D600FFE7CE00AD7B7300000000000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A000000000000000000DEC6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00FFEFDE00FFEF
      D600E7DEC600C6BDAD00B5848400000000000000000000000000000000000031
      FF000031EF000031F700000000000000000000000000000000000031FF000031
      F7000000000000000000000000000000000000000000DEAD8C00FFFFFF00FFFF
      FF00FFFFFF0073C67300009C0000009C0000ADDEA500009C0000FFEFD600FFCE
      C600FFB5B500B57B7300000000000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00DED6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DED6
      D600EFEFEF00DEBDBD00C65A5A00AD525A000000000000000000E7C6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00F7E7D600C6A5
      9400B5948C00B58C8400B58484000000000000000000000000000031F7000031
      F7000031FF000000000000000000000000000000000000000000000000000031
      F7000031F70000000000000000000000000000000000E7B58C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00F7DECE00B584
      7300B5847300B5847300000000000000000000000000BD7B7300B5524A00EFD6
      D600F7F7EF00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00EFEFEF00DEBDBD00C65A5A00AD525A000000000000000000E7C6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700E7CECE00BD8C
      7300EFB57300EFA54A00C6846B0000000000000000000031F7000031F7000031
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000031F700000000000000000000000000EFBD9400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700F7E7D600B584
      7300EFA55200D6AD9400000000000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A000000000000000000EFCEBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00C694
      7B00FFC67300CE94730000000000000000000031F7000031F7000031F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFBD9400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700F7EFEF00EFDED600B584
      7300DEB59C0000000000000000000000000000000000BD7B7300B5524A00E7D6
      CE00FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00FFF7F700DEBDBD00C65A5A00AD525A000000000000000000E7C6B500FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00E7CECE00C694
      7B00CE9C84000000000000000000000000000031F7000031F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7BD9400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B584
      7300000000000000000000000000000000000000000000000000AD524A00CEB5
      B500D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00D6D6D600CEADAD00A54A4A00000000000000000000000000E7C6B500EFCE
      B500EFCEB500EFCEB500EFCEB500E7C6B500E7C6B500EFCEB500D6BDB500BD84
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000008183F00F00000000
      C101C003000000008101C003000000008101C003000000008101C00700000000
      8D01C007000000008081C00F0000000080FFC03F0000000080FFE03F00000000
      80FFF21F00000000C1FFF01F00000000C1FFF01F00000000E3FFF01F00000000
      E3FFF83F00000000FFFFFFFF00000000FFFFC001C001FFFC80038000C0019FF9
      80038000C0018FF380038000C00187E780038000C001C3CF80038000C001F11F
      80038000C001F83F80038000C001FC7F80038000C001F83F80038000C001F19F
      80038000C001E3CF80038000C001C7E780038000C0018FFB80038000C0031FFF
      80078000C0073FFF800FC001C00FFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited imglLarge: TImageList
    Left = 480
    Top = 35
    Bitmap = {
      494C010106000900040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000003000000001002000000000000048
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7EFEF00CEBDBD00A57373007B292900AD6B
      7300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007373AD004A4AA5002931A5001829A5001018
      A50018189C0021219C0039399C005A5AA5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700CEA5A500AD635A0084211000A5422100CE7B5200FFB57B007B10
      0000B58484000000000000000000000000000000000000000000000000000000
      0000000000005263BD001039BD00104ACE00185AD600185AD6001852D6001852
      CE00184ACE001042C6001039BD000829B50000009C000810A5004A4AAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6B5
      A50094310800BD6B4200E7A57300FFCE9400FFC68C00F7B57B00F7AD73009431
      210073080000C694940000000000000000000000000000000000000000000000
      0000395ACE001042C600185AD600216BDE001863DE00185AD600185AD6001852
      D600184ACE001042C6001039C6001031BD000008A5000829B5000018AD000000
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000008A5100008A5100008A5100008A5100008A5100008A5100008A51000CEA5
      9400D68C5A00FFD6A500FFC68C00F7B58400EFAD7B00EFA56B00EFA56B00AD4A
      3100841808007B100000D6CECE00000000000000000000000000000000000000
      00003963D6002973E7003173E7003173E7002973E700216BDE001863DE00185A
      D6001852CE00104ACE001042C6001039BD000831BD000829B5000818AD000810
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084C6840021AD31006BFF9C006BFFA50073FFAD007BFFBD0010A51000D6AD
      9C00CE7B4200FFC68C00F7B57B00EFAD7B00EFA57300E79C6B00EF9C6300B563
      42009421100084180800C6ADAD00000000000000000000000000000000000000
      00006384DE004A8CEF005294F700639CF7004A8CEF004284E700296BDE001863
      DE001852D600184ACE001042C6001039C6001031BD000829B5000821B5002929
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5D6BD00088408004AE773005AF7840063FF940073FFAD0010A51000D6B5
      A500CE733900F7B58400EFAD7300EFA57300E79C6B00E7946300E7945A00C67B
      5200942910008C210800BD949400000000000000000000000000000000000000
      00007B94E700638CF700638CFF007BBDFF006394FF005A8CF7004A8CEF00296B
      DE00185AD6001852D600104ACE001039C6001031BD000829BD000818AD005A5A
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6E7
      DE00108C100042DE63004AE7730052EF7B005AF78C006BFFA50010A51000DEBD
      A500CE733100EFAD7B00EF9C6B00E79C6B00E7946300DE8C5A00DE845200D68C
      63009C31100094291000AD7B7300000000000000000000000000000000008CB5
      D600637BEF003163FF002952FF0073C6FF003963FF005A84FF005A8CF7004A84
      EF002163DE001852D600184ACE001042C6001039BD001031BD000808A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000063A5
      630029BD390039DE630042DE630052EF7B0029C642005AF7840010A51000DEC6
      AD00CE6B2900EF9C6B00E7946300E7945A00DE8C5200DE844A00DE844A00DEA5
      8400A53910009C391800A56B5A00000000000000000000000000000000005A7B
      DE0073CEF700297BFF004AA5FF0063DEFF00186BFF00295AFF006384EF005273
      DE00295AD600185AD600184ACE001042C6001039C6000818AD005A5AAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000187B
      180031D64A0031D6520042E7630018AD210052AD5A00189C180010A51000E7CE
      B500CE6B2100E78C5A00DE8C5A00E7A57B00EFB58C00F7BD9C00EFBD9400EFAD
      8400CE7B5A00AD4218009C5242000000000000000000000000006B84CE00294A
      EF003994F7005AEFFF0052EFFF0042DEFF005ABDFF002963FF006B94F7000000
      00006B73BD001042CE00184ACE001842CE000821B5003939A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000087B
      100029CE420031D65200109C18007BC67B0000000000CEE7D60021A52100E7D6
      C600CE630800FFC69C00FFD6A500F7BD8400EFAD7300E79C6B00E7945A00E78C
      5200E78C5A00D67B52008C3929000000000000000000000000005A73D600215A
      EF0063C6FF0029DEFF0000CEFF0000D6FF0052E7FF0073DEFF004A8CFF00739C
      FF008CADDE001831B5001039C6001021AD005A63AD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEE7EF002173
      390021C6310018AD2900216B52005A5AC6007B7BCE00ADB5DE00CEE7D6000000
      0000EFC6A500CE6B1800E79C5A00FFBD8C00F7AD7B00EFA57300DE8C5A00CE6B
      3900B55221009C310800A54A31000000000000000000000000005A6BD6004284
      F7004AD6FF0029DEFF0000CEFF0000CEFF006BEFFF00318CFF00295AFF0073A5
      FF006BB5FF0042A5FF005273BD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000849CF7000839F7002973
      A500088C1000088C1000428CDE003163EF001031DE000010BD001818A500B5B5
      E70000000000E7E7DE00D6945A00CE6B1000BD631800AD520800BD6B4200C68C
      7300D6B5A500E7DED6000000000000000000000000000000000084B5DE005294
      F700398CF70073F7FF0029DEFF0039E7FF004AC6FF002163FF00396BFF007BAD
      FF007BBDFF0063BDFF0042A5FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002142FF00ADEFFF00ADEF
      FF00399C6300007B08005A94FF003973FF001852FF000031FF000021E7004A4A
      BD00000000000000000000000000E7D6BD00E7D6CE00E7EFEF00000000000000
      000000000000000000000000000000000000000000000000000000000000425A
      DE003173F7004294F7004AC6FF005ABDFF0063C6FF004A8CFF006B8CFF0084B5
      FF007BC6FF006BBDFF0052ADFF0073ADD6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C9CF700427BF700ADEF
      FF0094CEFF00399C7B005294FF00316BFF000842FF000029FF000008AD00A5AD
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007384
      CE004A5ADE005AA5F7003173FF00296BFF00315AFF0084BDFF008CBDFF0094CE
      FF007BC6FF006BBDFF0063BDFF0052ADE7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7EFEF002139EF009CDE
      FF009CDEFF0073B5FF00528CFF002963FF000039FF000021E7003942B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084B5DE006B8CF7006394FF007BADFF0094BDFF009CD6FF0094D6
      FF007BCEFF0073C6FF0073C6FF003194EF005A94B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009CADF7003163
      EF00ADEFFF007BB5FF00528CFF00215AFF000031FF000000A500BDC6E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006B9CDE0084BDFF0094CEFF009CD6FF00A5DEFF0094D6
      FF0084CEFF007BC6FF004AA5E700007BB500087BAD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7EFEF003139
      E70094D6FF0084C6FF00528CFF00104AFF000018DE00525ABD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003184AD0073BDFF008CD6FF0094D6FF0094D6FF008CD6
      FF0084CEFF0052ADE7000073A500007BAD000084B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADB5
      F700294AE7009CDEFF004A84FF000039FF000808A500CED6EF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000297BAD00318CC60084CEFF0084CEFF0084CEFF0084CE
      FF0084CEFF00298CC600008CBD00008CC6000084B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003942E7007BB5F7004A84FF000018D6007373C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004284AD000063940063B5F70084CEFF0084CEFF0084CE
      FF0073C6FF00007BAD00008CC6000094C600008CBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDC6EF001839D6004284FF001010AD00DEE7EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B9CAD0000739C0000639C001884B500298CC6001884
      BD00007BAD00008CC6000094C6000094CE00319CC60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A5ADE000821C6008C8CD6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000031849C000073AD000084B5000084B500008C
      BD00008CC6000094C6000094CE000894C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6CEEF003139C600E7EFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000528CA500187BA500087BAD001884
      AD00298CAD00188CB5003194B500000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000AD736B009C52
      52009C4A4A009C5252009C4A4A00A5737300B5B5B500B5B5B500B5B5B500BDB5
      B500BDB5B500B5B5B500B5B5B500B5B5B500B5B5B500A5737300944242009C4A
      4A009C4A4A009C4A4A009C4A4A0000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500EFD6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000B5847300C66B6B00C663
      6300C6636300CE636300B55252009C6B6B00B5B5B500CECECE00E7E7DE00EFEF
      EF00F7F7EF00F7F7EF00EFE7E700E7DEDE00DEDEDE00B5737300942929009431
      31009C393900BD5A5A00C66363009C4A4A00000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE0000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C6B6B00A58C8C00B5848400CEADAD00DECE
      CE00F7F7EF00FFFFF700F7F7F700EFEFE700E7E7E700B5737300942929009431
      31009C393900C65A5A00C66363009C4A4A00000000000000000000000000AD73
      8400EFDEC600F7E7C600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE0000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C737300A57B7B009C393900B5736B00C69C
      9C00EFE7E700F7F7F700FFF7F700F7F7EF00EFEFEF00BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A00000000000000000000000000AD73
      8400F7DECE00F7E7CE00F7DEC600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6
      AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B5848400000000000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300A5848400943131009C424200B573
      7300DEDED600EFEFEF00F7F7F700FFF7F700F7F7F700BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A00000000000000000000000000AD73
      8400F7E7CE00F7E7D600F7E7CE00F7DEC600F7DEBD00F7DEBD00F7D6B500F7D6
      AD00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B5848400000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE00000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300AD8C8C0094313100943131009C4A
      4A00C6C6C600E7E7DE00EFEFEF00FFF7F700FFFFFF00C67B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A00000000000000000000000000AD73
      8400F7E7D600F7EFDE00F7E7D600F7E7CE00F7DEC600F7DEC600F7DEBD00F7D6
      B500F7D6AD00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE
      9400EFCE9400B5848400000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE0000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00B58C8C0094292900942929009431
      3100ADA5A500CECECE00E7E7DE00F7EFEF00FFFFFF00C6848400942929009431
      31009C393900C65A5A00C66363009C4A4A00000000000000000000000000AD7B
      8400F7E7DE00F7EFDE00F7E7D600F7E7CE00F7E7CE00F7DEC600F7DEC600F7DE
      BD00F7D6B500F7D6AD00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE9400EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      000000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B00000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00C6ADAD00A5636300A56363009C63
      63009C9C9C00B5B5B500D6D6D600EFEFEF00FFFFFF00C6848400942929009431
      31009C393900BD5A5A00C66363009C4A4A00000000000000000000000000B57B
      8400F7EFE700F7EFE700F7EFDE00F7E7D600F7E7CE00F7E7CE00F7DEC600F7DE
      BD00F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCEA500EFCE9C00EFCE9C00EFCE
      9400EFCE9400B584840000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      000000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B00000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00B5737300D6A5A500C69C9C00BD9C9C00BD94
      9400AD8C8C00AD8C8C00C69C9C00D6ADAD00E7C6C600C6737300A5424200AD42
      4200AD4A4A00C6636300C66363009C4A4A00000000000000000000000000B584
      8400F7EFE700FFF7EF00F7EFE700F7EFDE00F7E7D600F7E7D600F7E7CE00F7DE
      C600F7DEBD00F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCEA500EFCE9C00EFCE
      9C00EFCE9400B584840000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B00000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300C6636300C6636300C6636300CE636300CE636300CE63
      6300CE636300CE636300C66363009C4A4A00000000000000000000000000BD84
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700F7EFDE00F7E7D600F7E7CE00F7E7
      CE00F7DEC600F7DEBD00F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCEA500EFCE
      9C00EFCE9400B584840000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B00000000000000000000000000B5847300C66B6B00C663
      6300BD5A5A00C6636300C66B6B00CE737300CE737300CE737300CE737300CE73
      7300CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE7B
      7B00CE6B6B00CE636300C66363009C4A4A00000000000000000000000000BD84
      8C00FFF7F700FFFFF700FFF7EF00F7EFE700F7EFE700F7EFDE00F7E7D600F7E7
      CE00F7E7CE00F7DEC600F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6AD00EFCE
      A500EFCE9C00B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      AD00EFCEA500B58C7B00000000000000000000000000B5847300C66B6B00AD4A
      4A00A54A4200B56B6B00C68C8C00CEADAD00D6BDBD00D6BDBD00D6BDBD00D6BD
      BD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00DEC6
      C600CE8C8C00CE636300C66363009C4A4A00000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFF7F700FFF7EF00F7EFE700F7EFE700F7EFDE00F7E7
      D600F7E7CE00F7E7CE00F7DEC600F7DEBD00F7DEBD00F7D6B500F7D6AD00F7D6
      AD00EFCEA500B584840000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      AD00EFCEA500B58C7B00000000000000000000000000B5847300C66B6B00AD42
      4200CE9C9C00F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A00000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFF7F700FFF7EF00F7EFE700F7EFE700F7EF
      DE00F7E7D600F7E7CE00F7E7CE00F7DEC600F7DEBD00F7DEBD00F7D6B500F7D6
      AD00EFCEA500B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B00000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFF7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A00000000000000000000000000C68C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00F7EFE700F7EF
      E700F7EFDE00F7E7D600F7E7CE00F7E7CE00F7DEC600F7DEBD00F7DEBD00F7D6
      B500F7D6AD00B584840000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B00000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7F7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A00000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00F7EF
      E700F7EFE700F7EFDE00F7E7D600F7E7CE00F7E7CE00F7DEC600F7DEBD00F7DE
      BD00DEC6A500A57B840000000000000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      AD00B5AD94009C847B00000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CEC6C600CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600E7DEDE00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A00000000000000000000000000CE94
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7
      EF00F7EFE700F7EFE700F7EFDE00F7E7D600F7E7CE00F7E7CE00EFD6BD00CEBD
      AD00B5AD94009C7B840000000000000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      000000000000000000000000000000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B00000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700F7EFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A00000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700FFF7EF00F7EFE700F7EFDE00F7EFDE00F7EFDE00E7DECE00CEBDAD00BDB5
      A500B5AD9C009C7B840000000000000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      000000000000000000000000000000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD847300000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFE7E700D6CECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A00000000000000000000000000D69C
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700EFDED600B5847300AD847300AD7B7300AD7B
      7300AD7B7300AD7B730000000000000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF0000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B5848400000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A00000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B5848400000000000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF0000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B584840000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A00000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B5848400000000000000000000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      84000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CECECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A00000000000000000000000000DEA5
      9400FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      840000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A00000000000000000000000000DEA5
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
      00000000000000000000000000000000000000000000B5847300BD6B6B00AD42
      4200CE9C9C00EFEFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFEFE700E7DE
      DE00C68C8C00B5525200BD5A5A009C4A4A00000000000000000000000000DEA5
      8C00E7CEBD00EFD6BD00EFD6BD00EFCEC600E7CEBD00E7CEBD00E7CEBD00E7CE
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD736B00A542
      4200B58C8400C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600CEC6
      C600B5848400944242009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000300000000100010000000000400200000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF000000000000FFFE0FFE
      00FF000000000000FFF007F8001F000000000000FFE003F0000F000000000000
      F00001F0000F000000000000F00001F0000F000000000000F00001F0000F0000
      00000000E00001E0001F000000000000E00001E0001F000000000000E00001C0
      103F000000000000E08001C0007F000000000000C01001C001FF000000000000
      800803C001FF000000000000800E3FE000FF000000000000800FFFE000FF0000
      00000000801FFFF8007F000000000000C01FFFFC007F000000000000C03FFFFC
      007F000000000000E03FFFFC007F000000000000F07FFFFC007F000000000000
      F07FFFFC007F000000000000F8FFFFFE00FF000000000000F8FFFFFF01FF0000
      00000000FFFFFFFFFFFF000000000000E00003C00001E00003FFFFFFE0000380
      0000E00003FFFFF9E00003800000E00003FFFFF1E00003800000E00003C7FFE3
      E00003800000E00003C3FF87E00003800000E00003C1FF0FE00003800000E000
      03E0FE1FE00003800000E00003F07C3FE00003800000E00003FC307FE0000380
      0000E00003FE00FFE00003800000E00003FF01FFE00003800000E00003FF83FF
      E00003800000E00003FF01FFE00003800000E00003FE00FFE00003800000E000
      03FC187FE00003800000E00003F83C3FE00003800000E00003F07F1FE0000380
      0000E00003E0FF8FE00003800000E00003C1FFEFE00007800000E0000783FFFF
      E0000F800000E0000F87FFFFE0001F800000E0001F8FFFFFE0003F800000E000
      3FFFFFFFFFFFFFC00001FFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
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
        FloatClientWidth = 127
        FloatClientHeight = 55
        ItemLinks = <
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
            Item = dxBarButton1
            UserDefine = [udPaintStyle]
            Visible = True
          end
          item
            Item = dxBarButton2
            Visible = True
          end
          item
            Item = btnCancelReserve3Year
            Visible = True
          end
          item
            Item = btnCorrect
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnStateTransit
            Visible = True
          end
          item
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
    Left = 536
    Top = 35
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarButton1: TdxBarButton
      Action = actCreateSubj
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actLink
      Category = 0
    end
    object btnCancelReserve3Year: TdxBarButton
      Action = actCancelReserve3Year
      Category = 0
    end
    object btnCorrection: TdxBarButton
      Caption = #1055#1077#1088#1077#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103
      Category = 0
      Hint = #1055#1077#1088#1077#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103
      Visible = ivAlways
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object btnCorrect: TdxBarSubItem
      Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Item = dxBarSubItem3
          Visible = True
        end
        item
          Item = btnCorrectSum
          Visible = True
        end
        item
          Item = dxBarButton5
          Visible = True
        end>
    end
    object btnCorrectBack: TdxBarButton
      Action = aCorrectBack
      Category = 0
    end
    object btnCorrectSum: TdxBarButton
      Action = actCorrectSum
      Category = 0
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton3: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = #1055#1086#1074#1090#1086#1088#1085#1072#1103' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072
      Category = 0
      Visible = ivAlways
      ImageIndex = 5
      ItemLinks = <
        item
          Item = btnCorrectBack
          Visible = True
        end
        item
          Item = dxBarButton4
          Visible = True
        end>
    end
    object dxBarButton4: TdxBarButton
      Action = aCorrectSubject
      Category = 0
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton5: TdxBarButton
      Action = actCorrectPOCustomCode
      Category = 0
      Description = #1055#1086#1074#1090#1086#1088#1085#1072#1103' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103' '#1087#1086' '#1082#1086#1076#1091' '#1058#1054
    end
  end
  inherited ParamsHolder: TfdcParamsHolder
    Params = <
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptUnknown
        AcceptedSources = []
      end
      item
        DataType = ftFloat
        Name = 'pf_subject_ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'pDocId'
        ParamType = ptUnknown
      end>
    Left = 424
    Top = 63
  end
  inherited dsData: TfdcQuery
    SQL.Strings = (
      
        'select t.*, decode(sign(t.rest_summa - t.locked_summa),1,t.rest_' +
        'summa - t.locked_summa,0) as rest_summa2'
      '  from fdc_Payment_Order_Agg_Lst t'
      ' where t.ID = :ID'
      
        '  and (((:pf_Subject_id = 0 or :pf_subject_id is null) and t.pf_' +
        'subject_id is null) or t.pf_subject_id = :pf_Subject_Id)'
      'order by t.is_payment_for desc')
    Left = 452
    Top = 63
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'pf_Subject_Id'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'pf_subject_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'pf_Subject_Id'
        ParamType = ptUnknown
      end>
    object dsDataDOC_NO: TStringField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1087'/'#1087
      FieldName = 'DOC_NO'
      Required = True
      Size = 50
    end
    object dsDataDOC_DATE: TDateTimeField
      DefaultExpression = '$$DATE$$'
      DisplayLabel = #1044#1072#1090#1072' '#1087'/'#1087
      FieldName = 'DOC_DATE'
      Required = True
      OnValidate = dsDataDOC_DATEValidate
    end
    object dsDataEXEC_DATE: TDateTimeField
      DefaultExpression = '$$DATE$$'
      DisplayLabel = #1044#1072#1090#1072' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103
      FieldName = 'EXEC_DATE'
    end
    object dsDataPAYER_ID: TFloatField
      FieldName = 'PAYER_ID'
      Visible = False
    end
    object dsDataSUMMA: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'SUMMA'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object dsDataCURRENCY_ID: TFloatField
      DisplayLabel = #1042#1072#1083#1102#1090#1072
      FieldName = 'CURRENCY_ID'
      Required = True
      Visible = False
    end
    object dsDataPAYER_NAME: TStringField
      DisplayLabel = #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082
      FieldName = 'PAYER_NAME'
      Required = True
      Size = 1500
    end
    object dsDataPAYER_INN: TStringField
      DisplayLabel = #1048#1053#1053
      FieldName = 'PAYER_INN'
      Size = 12
    end
    object dsDataDOC_SUMMA: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072' '#1087#1083#1072#1090#1077#1078#1072
      FieldName = 'DOC_SUMMA'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object dsDataREST_SUMMA: TFloatField
      DisplayLabel = #1054#1089#1090#1072#1090#1086#1082
      FieldName = 'REST_SUMMA'
      ReadOnly = True
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object dsDataDOC_NO2: TStringField
      FieldName = 'DOC_NO2'
      Size = 50
    end
    object dsDataDOC_DATE2: TDateTimeField
      FieldName = 'DOC_DATE2'
    end
    object dsDataPAYER_KPP: TStringField
      DisplayLabel = #1050#1055#1055
      FieldName = 'PAYER_KPP'
      Size = 10
    end
    object dsDataLOCKED_SUMMA: TFloatField
      DisplayLabel = #1041#1083#1086#1082#1080#1088#1086#1074#1072#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
      FieldName = 'LOCKED_SUMMA'
      DisplayFormat = ',0.00'
    end
    object dsDataREST_SUMMA2: TFloatField
      DisplayLabel = #1054#1073#1097#1080#1081' '#1086#1089#1090#1072#1090#1086#1082
      FieldName = 'REST_SUMMA2'
      DisplayFormat = ',0.00'
    end
    object dsDataPAY_TYPE_ID: TFloatField
      DisplayLabel = #1042#1080#1076' '#1087#1083#1072#1090#1077#1078#1072
      FieldName = 'PAY_TYPE_ID'
    end
    object dsDataDESCRIPT2: TStringField
      DisplayLabel = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1080#1079' '#1082#1072#1079#1085#1072#1095#1077#1081#1089#1090#1074#1072
      FieldName = 'DESCRIPT2'
      Size = 280
    end
    object dsDataINCOME_DATE: TDateTimeField
      DefaultExpression = '$$DATE$$'
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1074' '#1073#1072#1079#1091
      FieldName = 'INCOME_DATE'
    end
    object dsDataNOTE: TStringField
      FieldName = 'NOTE'
      Size = 400
    end
    object dsDataIS_PAYMENT_FOR: TFloatField
      FieldName = 'IS_PAYMENT_FOR'
      ReadOnly = True
    end
    object dsDataPF_SUMMA: TFloatField
      FieldName = 'PF_SUMMA'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object dsDataPF_REST_SUMMA: TFloatField
      FieldName = 'PF_REST_SUMMA'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object dsDataPF_LOCKED_SUMMA: TFloatField
      FieldName = 'PF_LOCKED_SUMMA'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object dsDataPF_SUBJECT_ID: TFloatField
      FieldName = 'PF_SUBJECT_ID'
    end
    object dsDataPF_SUBJECT_INN: TStringField
      FieldName = 'PF_SUBJECT_INN'
      Size = 0
    end
    object dsDataPF_SUBJECT_KPP: TStringField
      FieldName = 'PF_SUBJECT_KPP'
      Size = 0
    end
    object dsDataPF_SUBJECT_NAME: TStringField
      FieldName = 'PF_SUBJECT_NAME'
      Size = 0
    end
    object dsDataRECIPIENT_ID: TFloatField
      DisplayLabel = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
      FieldName = 'RECIPIENT_ID'
    end
    object dsDataRECIPIENT_NAME: TStringField
      DisplayLabel = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
      FieldName = 'RECIPIENT_NAME'
      Size = 1500
    end
    object dsDataRECIPIENT_INN: TStringField
      DisplayLabel = #1048#1053#1053
      FieldName = 'RECIPIENT_INN'
      Size = 12
    end
    object dsDataRECIPIENT_KPP: TStringField
      DisplayLabel = #1050#1055#1055
      FieldName = 'RECIPIENT_KPP'
      Size = 10
    end
    object dsDataKBK: TStringField
      DisplayLabel = #1050#1041#1050
      FieldName = 'KBK'
    end
    object dsDataDESTCUSTOMSCODE: TStringField
      DisplayLabel = #1050#1086#1076' '#1090#1072#1084#1086#1078#1085#1080
      FieldName = 'DESTCUSTOMSCODE'
      Size = 8
    end
    object dsDataIS_ACTIVE: TStringField
      DisplayLabel = #1055#1088#1080#1079#1085#1072#1082' '#1087#1088#1086#1074#1086#1076#1082#1080
      FieldName = 'IS_ACTIVE'
      Size = 1
    end
    object dsDataACTIVATION_DATE: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1086#1074#1086#1076#1082#1080
      FieldName = 'ACTIVATION_DATE'
    end
    object dsDataVAL_PAYMENT_REASON: TStringField
      DisplayLabel = #1055#1086#1082#1072#1079#1072#1090#1077#1083#1100' '#1086#1089#1085#1086#1074#1072#1085#1080#1103' '#1087#1083#1072#1090#1077#1078#1072
      FieldName = 'VAL_PAYMENT_REASON'
      Size = 2
    end
    object dsDataVAL_DOC_NUMBER: TStringField
      DisplayLabel = #1055#1086#1082#1072#1079#1072#1090#1077#1083#1100' '#1085#1086#1084#1077#1088#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'VAL_DOC_NUMBER'
      Size = 15
    end
    object dsDataVAL_DOC_DATE: TDateTimeField
      DisplayLabel = #1055#1086#1082#1072#1079#1072#1090#1077#1083#1100' '#1076#1072#1090#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      FieldName = 'VAL_DOC_DATE'
    end
    object dsDataVAL_PAYMENT_TYPE: TStringField
      DisplayLabel = #1055#1086#1082#1072#1079#1072#1090#1077#1083#1100' '#1090#1080#1087#1072' '#1087#1083#1072#1090#1077#1078#1072
      FieldName = 'VAL_PAYMENT_TYPE'
      Size = 4
    end
    object dsDataNAME_P: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072
      FieldName = 'NAME_P'
      Size = 160
    end
    object dsDataINN_P: TStringField
      DisplayLabel = #1048#1053#1053' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072
      FieldName = 'INN_P'
      Size = 12
    end
    object dsDataKPP_P: TStringField
      DisplayLabel = #1050#1055#1055' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072
      FieldName = 'KPP_P'
      Size = 9
    end
    object dsDataBIK_P: TStringField
      DisplayLabel = #1041#1048#1050' '#1073#1072#1085#1082#1072' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072
      FieldName = 'BIK_P'
      Size = 9
    end
    object dsDataACCOUNT_P: TStringField
      DisplayLabel = #1056'/'#1057' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072
      FieldName = 'ACCOUNT_P'
    end
    object dsDataNAME_K: TStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1103
      FieldName = 'NAME_K'
      Size = 160
    end
    object dsDataINN_K: TStringField
      DisplayLabel = #1048#1053#1053' '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1103
      FieldName = 'INN_K'
      Size = 12
    end
    object dsDataKPP_K: TStringField
      DisplayLabel = #1050#1055#1055' '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1103
      FieldName = 'KPP_K'
      Size = 9
    end
    object dsDataBIC_K: TStringField
      DisplayLabel = #1041#1048#1050' '#1073#1072#1085#1082#1072' '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1103
      FieldName = 'BIC_K'
      Size = 9
    end
    object dsDataACCOUNT_K: TStringField
      DisplayLabel = #1056'/'#1057' '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1103
      FieldName = 'ACCOUNT_K'
    end
    object dsDataIS_TS: TStringField
      DisplayLabel = #1055#1088#1080#1079#1085#1072#1082' '#1058#1057
      FieldName = 'IS_TS'
      Size = 1
    end
    object dsDataCUSTOMS_NAME: TStringField
      FieldName = 'CUSTOMS_NAME'
      Size = 1500
    end
    object dsDataUIN: TStringField
      FieldName = 'UIN'
      Size = 25
    end
  end
  inherited srcData: TDataSource
    Left = 452
    Top = 91
  end
  inherited dsInsert: TfdcQuery
    Session = MainData.Session
    SQL.Strings = (
      'begin'
      '  :ID ::=  fdc_Payment_Order_Add('
      '                pObject_Type_SysName => :TypeSysName,'
      '                 pdocno => :doc_no,'
      '                      pdescript => :descript,'
      '                      pdocdate => :doc_date,'
      '                     pdocno2 => :doc_no2,'
      '                      pdocdate2 => :doc_date2,'
      '                      pexecdate => :exec_date,'
      '                      ppayerid => :payer_id,'
      '                      psumma => :summa,'
      '                     pdocsumma => :doc_summa,'
      '                      pcurrencyid => :currency_id,'
      '               pPayTypeId => :pay_type_id'
      '               ,pNote => :Note);'
      'end;')
    Left = 480
    Top = 63
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftString
        Name = 'TYPESYSNAME'
        ParamType = ptUnknown
        Size = 1501
      end
      item
        DataType = ftString
        Name = 'DOC_NO'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftString
        Name = 'DESCRIPT'
        ParamType = ptUnknown
        Size = 1501
      end
      item
        DataType = ftDateTime
        Name = 'DOC_DATE'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftString
        Name = 'DOC_NO2'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftDateTime
        Name = 'DOC_DATE2'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftDateTime
        Name = 'EXEC_DATE'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'PAYER_ID'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'summa'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'DOC_SUMMA'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_ID'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'pay_type_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Note'
        ParamType = ptUnknown
      end>
  end
  inherited dsUpdate: TfdcQuery
    SQL.Strings = (
      'begin'
      '  fdc_payment_order_upd('
      '        pid => :id,'
      '        pdocno => :doc_no,'
      '        pdescript => :descript,'
      '        pdocdate => :doc_date,'
      '        pdocno2 => :doc_no2,'
      '        pdocdate2 => :doc_date2,'
      '        pexecdate => :exec_date,'
      '        ppayerid => :payer_id,'
      '        psumma => :summa,'
      '        pdocsumma => :doc_summa,'
      '        pcurrencyid => :currency_id,'
      '        pPayTypeId => :pay_type_id,'
      '        pNote => :Note);'
      ''
      'end;')
    Left = 508
    Top = 63
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftString
        Name = 'DOC_NO'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftString
        Name = 'DESCRIPT'
        ParamType = ptUnknown
        Size = 1501
      end
      item
        DataType = ftDateTime
        Name = 'DOC_DATE'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftString
        Name = 'DOC_NO2'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftDateTime
        Name = 'DOC_DATE2'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftDateTime
        Name = 'EXEC_DATE'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'PAYER_ID'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'SUMMA'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'DOC_SUMMA'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_ID'
        ParamType = ptUnknown
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'pay_type_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Note'
        ParamType = ptUnknown
      end>
  end
  inherited srcTransit: TDataSource
    Left = 564
    Top = 91
  end
  inherited dsAccessLevelUpdate: TfdcQuery
    Left = 648
    Top = 63
  end
  inherited dsUpdateState: TfdcQuery
    Left = 592
    Top = 63
  end
  inherited srcState: TDataSource
    Left = 536
    Top = 91
  end
  inherited dsTransit: TfdcQuery
    SQL.Strings = (
      'select ID,'
      '       NAME,'
      '       DESCRIPT'
      '  from fdc_State_Transit_Lst'
      ' where State_Scheme_ID = :STATE_SCHEME_ID and'
      '       ('
      '         (SRC_STATE_ID is null and :ID is null) or'
      '         (SRC_STATE_ID = :ID)'
      '       )'
      '    and IsVisible = 1')
    Left = 564
    Top = 63
  end
  inherited dsState: TfdcQuery
    Left = 536
    Top = 63
  end
  inherited srcAccessLevel: TDataSource
    Left = 620
    Top = 91
  end
  inherited dsAccessLevel: TfdcQuery
    Left = 620
    Top = 63
  end
  object QueryList1: TQueryList
    Session = MainData.Session
    Left = 163
    Top = 196
    object sqlCheckINN: TsqlOp
      SQL.Strings = (
        'begin'
        '  select id, name, inn, kpp '
        '    into :PAYER_ID, :PAYER_NAME, :PAYER_INN, :PAYER_KPP    '
        '   from fdc_subject_lst'
        '    where inn = :INN and '
        '     (:KPP is null or (:KPP is not null and kpp = :KPP));'
        'exception'
        '  when others then'
        '     :PAYER_ID := NULL;'
        '     :PAYER_NAME := NULL;'
        'end;')
      DataSet = dsData
    end
    object sqlMergePP: TsqlOp
      SQL.Strings = (
        'begin'
        '  p_payment_order.mergewith(pid => :id,'
        '                            pmergingid => :mid);'
        'end;')
      DataSet = dsData
    end
    object sqlCancelReserve3Year: TsqlOp
      SQL.Strings = (
        'begin'
        '  p_payment_order.CancelReserve3Year(pPaymentID => :id);'
        'end;')
      DataSet = dsData
    end
    object sqlCheckPO: TsqlOp
      SQL.Strings = (
        'declare'
        'lv_Count number;'
        'begin'
        '  -- '#1055#1088#1086#1074#1077#1088#1080#1084' '#1077#1089#1090#1100' '#1083#1080' '#1089#1087#1080#1089#1072#1085#1080#1103' '#1089' '#1087#1083#1072#1090#1077#1078#1085#1086#1075#1086' '#1087#1086#1088#1091#1095#1077#1085#1080#1103
        '  select count(*) '
        '  into lv_Count '
        '  from (  select sum(p.summa)'
        '          from fdc_payment_deduction_lst p '
        '          where p.payment_id = :pID'
        '            and (   :TypeSysName not in ('#39'PaymentOrderReuse'#39')'
        
          '                 or p.TypeSysName not in ('#39'DocDeductionReuse'#39','#39'P' +
          'aymentDeductionReuseCancel'#39','#39'PaymentDeduction.ActChangeOstKBK'#39') ' +
          ')'
        '          group by'
        '               payment_id'
        '              ,pay_type_id'
        
          '              ,case when p.typesysname = '#39'PaymentBack'#39' then null' +
          ' else p.decl_id end'
        '              ,charge_curr_id'
        '              ,kbkcode_id'
        '          Having sum(p.summa)<>0)    '
        '  ;'
        '  if lv_Count > 0 then'
        '       fdc_util.Abort('
        
          '            pMessage => '#39'<<'#1055#1086' '#1076#1072#1085#1085#1086#1084#1091' '#1087#1083#1072#1090#1077#1078#1085#1086#1084#1091' '#1087#1086#1088#1091#1095#1077#1085#1080#1102' '#1089#1091#1097#1077#1089 +
          #1090#1074#1091#1102#1090' '#1089#1087#1080#1089#1072#1085#1080#1103'!>>'#39' || chr(10) ||'
        
          '            '#39'<<'#1044#1083#1103' '#1087#1086#1074#1090#1086#1088#1085#1086#1081' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1080' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1086#1090#1084#1077#1085#1080#1090#1100' '#1089 +
          #1087#1080#1089#1072#1085#1080#1103'!>>'#39
        '          );'
        '  end if;'
        ''
        '  -- '#1055#1088#1086#1074#1077#1088#1080#1084' '#1077#1089#1090#1100' '#1083#1080' '#1073#1083#1086#1082#1080#1088#1086#1074#1082#1080' '#1085#1072' '#1087#1083#1072#1090#1077#1078#1085#1086#1084' '#1087#1086#1088#1091#1095#1077#1085#1080#1080
        '  select count(*) '
        '  into lv_Count '
        '  from fdc_reserved_payment_lst p '
        '  where p.payment_id = :pID'
        '    and p.edate is null;'
        '  if lv_Count > 0 then'
        '       fdc_util.Abort('
        
          '            pMessage => '#39'<<'#1055#1086' '#1076#1072#1085#1085#1086#1084#1091' '#1087#1083#1072#1090#1077#1078#1085#1086#1084#1091' '#1087#1086#1088#1091#1095#1077#1085#1080#1102' '#1089#1091#1097#1077#1089 +
          #1090#1074#1091#1102#1090' '#1073#1083#1086#1082#1080#1088#1086#1074#1082#1080'!>>'#39' || chr(10) ||'
        
          '            '#39'<<'#1044#1083#1103' '#1087#1086#1074#1090#1086#1088#1085#1086#1081' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1080' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1086#1090#1084#1077#1085#1080#1090#1100' '#1073 +
          #1083#1086#1082#1080#1088#1086#1074#1082#1080'!>>'#39
        '          );'
        '  end if;'
        'end;')
    end
    object sqlHasPaymentFor: TsqlOp
      SQL.Strings = (
        'BEGIN'
        '  SELECT 1'
        '    INTO :result'
        '    FROM fdc_payment_for_lst'
        '    WHERE payment_id = :id'
        '      AND rownum < 2;'
        'EXCEPTION'
        '  WHEN no_data_found THEN'
        '    :result := 0;'
        'END;')
      DataSet = dsData
    end
  end
  object dsetPOConfirm: TOracleDataSet
    SQL.Strings = (
      'select *'
      '  from fdc_payment_order_cnfrm_lst'
      ' where confirmed_pay_id = :ID')
    Variables.Data = {0300000001000000030000003A4944030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000034000000020000004944010000000000040000004E414D4501000000
      00000900000053484F52544E414D450100000000000E0000004F424A4543545F
      545950455F49440100000000000800000053544154455F49440100000000000B
      0000004143434553534C4556454C010000000000070000005359534E414D4501
      00000000000800000044455343524950540100000000000F0000004F574E4552
      5F4F424A4543545F494401000000000008000000545950454E414D4501000000
      00000B000000545950455359534E414D450100000000000E0000004F424A4543
      544B494E444C4953540100000000000C0000004F5045524154455F4441544501
      00000000000A000000444F435F4E554D4245520100000000000900000049535F
      4143544956450100000000000F00000041435449564154494F4E5F4441544501
      000000000006000000444F435F4E4F01000000000008000000444F435F444154
      4501000000000007000000444F435F4E4F3201000000000009000000444F435F
      444154453201000000000009000000455845435F444154450100000000000800
      000050415945525F494401000000000009000000444F435F53554D4D41010000
      0000000500000053554D4D410100000000000B00000043555252454E43595F49
      440100000000000B000000434153484445534B5F494401000000000007000000
      434152444E554D0100000000000B0000005041595F545950455F494401000000
      00000C00000041475245454D454E545F49440100000000000D0000005041595F
      545950455F434F44450100000000000B000000494E434F4D455F444154450100
      00000000040000004E4F5445010000000000040000004E524546010000000000
      0A00000050415945525F4E414D450100000000000900000050415945525F494E
      4E0100000000000900000050415945525F4B50500100000000000D0000004341
      53484445534B5F4E414D4501000000000009000000435552525F4E414D450100
      0000000009000000435552525F434F44450100000000000A000000524553545F
      53554D4D410100000000000C0000004C4F434B45445F53554D4D410100000000
      000B000000434F4D494E475F444154450100000000000B000000415353555245
      5F44415445010000000000090000004445534352495054320100000000000A00
      00005355424A4543545F494401000000000007000000504F5F4E414D45010000
      00000006000000504F5F494E4E01000000000006000000504F5F4B5050010000
      00000006000000535F4E414D4501000000000005000000535F494E4E01000000
      000005000000535F4B505001000000000010000000434F4E4649524D45445F50
      41595F4944010000000000}
    Cursor = crSQLWait
    Session = MainData.Session
    Left = 264
    Top = 288
    object dsetPOConfirmID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object dsetPOConfirmNAME: TStringField
      FieldName = 'NAME'
      Size = 1500
    end
    object dsetPOConfirmSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 1500
    end
    object dsetPOConfirmOBJECT_TYPE_ID: TFloatField
      FieldName = 'OBJECT_TYPE_ID'
      Required = True
    end
    object dsetPOConfirmSTATE_ID: TFloatField
      FieldName = 'STATE_ID'
    end
    object dsetPOConfirmACCESSLEVEL: TFloatField
      FieldName = 'ACCESSLEVEL'
    end
    object dsetPOConfirmSYSNAME: TStringField
      FieldName = 'SYSNAME'
      Size = 1500
    end
    object dsetPOConfirmDESCRIPT: TStringField
      FieldName = 'DESCRIPT'
      Size = 1500
    end
    object dsetPOConfirmOWNER_OBJECT_ID: TFloatField
      FieldName = 'OWNER_OBJECT_ID'
    end
    object dsetPOConfirmTYPENAME: TStringField
      FieldName = 'TYPENAME'
      Required = True
      Size = 1500
    end
    object dsetPOConfirmTYPESYSNAME: TStringField
      FieldName = 'TYPESYSNAME'
      Required = True
      Size = 1500
    end
    object dsetPOConfirmOBJECTKINDLIST: TStringField
      FieldName = 'OBJECTKINDLIST'
      Size = 4000
    end
    object dsetPOConfirmOPERATE_DATE: TDateTimeField
      FieldName = 'OPERATE_DATE'
    end
    object dsetPOConfirmDOC_NUMBER: TStringField
      FieldName = 'DOC_NUMBER'
      Size = 100
    end
    object dsetPOConfirmIS_ACTIVE: TStringField
      FieldName = 'IS_ACTIVE'
      Required = True
      Size = 1
    end
    object dsetPOConfirmACTIVATION_DATE: TDateTimeField
      FieldName = 'ACTIVATION_DATE'
    end
    object dsetPOConfirmDOC_NO: TStringField
      FieldName = 'DOC_NO'
      Required = True
      Size = 50
    end
    object dsetPOConfirmDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
      Required = True
    end
    object dsetPOConfirmDOC_NO2: TStringField
      FieldName = 'DOC_NO2'
      Size = 50
    end
    object dsetPOConfirmDOC_DATE2: TDateTimeField
      FieldName = 'DOC_DATE2'
    end
    object dsetPOConfirmEXEC_DATE: TDateTimeField
      FieldName = 'EXEC_DATE'
    end
    object dsetPOConfirmPAYER_ID: TFloatField
      FieldName = 'PAYER_ID'
    end
    object dsetPOConfirmDOC_SUMMA: TFloatField
      FieldName = 'DOC_SUMMA'
      Required = True
    end
    object dsetPOConfirmSUMMA: TFloatField
      FieldName = 'SUMMA'
    end
    object dsetPOConfirmCURRENCY_ID: TFloatField
      FieldName = 'CURRENCY_ID'
    end
    object dsetPOConfirmCASHDESK_ID: TFloatField
      FieldName = 'CASHDESK_ID'
    end
    object dsetPOConfirmCARDNUM: TStringField
      FieldName = 'CARDNUM'
      Size = 19
    end
    object dsetPOConfirmPAY_TYPE_ID: TFloatField
      FieldName = 'PAY_TYPE_ID'
    end
    object dsetPOConfirmAGREEMENT_ID: TFloatField
      FieldName = 'AGREEMENT_ID'
    end
    object dsetPOConfirmPAY_TYPE_CODE: TStringField
      FieldName = 'PAY_TYPE_CODE'
      Size = 1500
    end
    object dsetPOConfirmINCOME_DATE: TDateTimeField
      FieldName = 'INCOME_DATE'
    end
    object dsetPOConfirmNOTE: TStringField
      FieldName = 'NOTE'
      Size = 400
    end
    object dsetPOConfirmNREF: TStringField
      FieldName = 'NREF'
      Size = 25
    end
    object dsetPOConfirmPAYER_NAME: TStringField
      FieldName = 'PAYER_NAME'
      Size = 1500
    end
    object dsetPOConfirmPAYER_INN: TStringField
      FieldName = 'PAYER_INN'
      Size = 12
    end
    object dsetPOConfirmPAYER_KPP: TStringField
      FieldName = 'PAYER_KPP'
      Size = 10
    end
    object dsetPOConfirmCASHDESK_NAME: TStringField
      FieldName = 'CASHDESK_NAME'
      Size = 1500
    end
    object dsetPOConfirmCURR_NAME: TStringField
      FieldName = 'CURR_NAME'
      Size = 1500
    end
    object dsetPOConfirmCURR_CODE: TStringField
      FieldName = 'CURR_CODE'
      Size = 3
    end
    object dsetPOConfirmREST_SUMMA: TFloatField
      FieldName = 'REST_SUMMA'
    end
    object dsetPOConfirmLOCKED_SUMMA: TFloatField
      FieldName = 'LOCKED_SUMMA'
    end
    object dsetPOConfirmCOMING_DATE: TDateTimeField
      FieldName = 'COMING_DATE'
    end
    object dsetPOConfirmASSURE_DATE: TDateTimeField
      FieldName = 'ASSURE_DATE'
    end
    object dsetPOConfirmDESCRIPT2: TStringField
      FieldName = 'DESCRIPT2'
      Size = 280
    end
    object dsetPOConfirmSUBJECT_ID: TFloatField
      FieldName = 'SUBJECT_ID'
    end
    object dsetPOConfirmPO_NAME: TStringField
      FieldName = 'PO_NAME'
      Size = 80
    end
    object dsetPOConfirmPO_INN: TStringField
      FieldName = 'PO_INN'
      Size = 12
    end
    object dsetPOConfirmPO_KPP: TStringField
      FieldName = 'PO_KPP'
      Size = 9
    end
    object dsetPOConfirmS_NAME: TStringField
      FieldName = 'S_NAME'
      Size = 1500
    end
    object dsetPOConfirmS_INN: TStringField
      FieldName = 'S_INN'
      Size = 12
    end
    object dsetPOConfirmS_KPP: TStringField
      FieldName = 'S_KPP'
      Size = 10
    end
    object dsetPOConfirmCONFIRMED_PAY_ID: TFloatField
      FieldName = 'CONFIRMED_PAY_ID'
      Required = True
    end
  end
  object dsPOConfirm: TDataSource
    AutoEdit = False
    DataSet = dsetPOConfirm
    Left = 264
    Top = 344
  end
  object qlSQLResult: TQueryList
    Session = MainData.Session
    Left = 408
    Top = 120
    object sqlisdoccanident: TsqlOp
      SQL.Strings = (
        'begin'
        
          '  case p_correctpo_customcode.isdoccanident(ppaymentid => :ppaym' +
          'entid )'
        
          '    when p_correctpo_customcode.c_sign_ident_in_reestr then :lre' +
          'sult := 1;'
        
          '    when p_correctpo_customcode.c_sign_ident_in_reestr_send then' +
          ' :lresult := 2;'
        '    else :lresult := 0;'
        '  end case; '
        'end;')
    end
    object sqlRemovePaymentOrderfromPack: TsqlOp
      SQL.Strings = (
        'begin'
        
          '  p_correctpo_customcode.remotedocfromdocpack(ppaymentid => :ppa' +
          'ymentid);'
        'end;')
    end
  end
end
