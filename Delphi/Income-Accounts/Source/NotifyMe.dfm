object NotifyMe: TNotifyMe
  Left = 578
  Top = 248
  Width = 500
  Height = 58
  AutoSize = True
  Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1103
  Color = clBtnFace
  Constraints.MaxHeight = 58
  Constraints.MaxWidth = 500
  Constraints.MinHeight = 20
  Constraints.MinWidth = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object mNotify: TcxMemo
    Left = 0
    Top = 0
    Align = alClient
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = RUSSIAN_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    StyleDisabled.BorderColor = clWindowFrame
    StyleDisabled.Color = clBtnHighlight
    StyleDisabled.TextColor = clWindowText
    StyleDisabled.TextStyle = [fsBold]
    StyleFocused.Color = clWindow
    StyleHot.Color = clBtnFace
    TabOrder = 0
    Height = 20
    Width = 484
  end
end
