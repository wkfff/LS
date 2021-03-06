unit fdcNoticeKindPayUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fdcCustomDlgFrm, Menus, cxLookAndFeelPainters, cxEdit,
  cxLookAndFeels, cxContainer, dxLayoutLookAndFeels, ActnList,
  dxLayoutControl, StdCtrls, cxButtons, cxControls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, xlcClasses, xlEngine, xlReport, DB,
  FDCCustomDataset, fdcQuery, dxmdaset, Oracle, cxCheckBox, cxGroupBox,
  cxRadioGroup;

type
  TfdcNoticeKindPayForm = class(TfdcCustomDlgForm)
    xlrNoticeKindPay: TxlReport;
    dxLayoutControl1Item1: TdxLayoutItem;
    edtDate_From: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    edtDate_To: TcxDBDateEdit;
    dsHeader: TfdcQuery;
    dxMemData: TdxMemData;
    dxMemDataDate_From: TDateField;
    dxMemDataDate_To: TDateField;
    srcMain: TDataSource;
    dxMemDataCustomsName: TStringField;
    dsBody: TfdcQuery;
    dxMemDataPeriod: TStringField;
    dxLayoutControl1Item3: TdxLayoutItem;
    chBIsActive: TcxDBCheckBox;
    dxMemDataIs_TS: TStringField;
    lciReportType: TdxLayoutItem;
    rgReportType: TcxRadioGroup;
    procedure actOkExecute(Sender: TObject);
    procedure dxMemDataDate_FromChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ExecReport(Session : TOracleSession): boolean;

var
  fdcNoticeKindPayForm: TfdcNoticeKindPayForm;

implementation

{$R *.dfm}

uses
  IniFiles,
  DateUtils,
  qReportUtil
 ,MainDM;

function ExecReport(Session : TOracleSession): boolean;
var
  Frm : TfdcNoticeKindPayForm;
begin
  Frm := TfdcNoticeKindPayForm.Create(nil);
  with Frm do
  try
    Result := False;
    // --- prepare template
    xlrNoticeKindPay.XLSTemplate :=ExtractFilePath(Application.ExeName) + 'Report\' +
                             'ReestNoticeKindPay.xls';
    LoadReportQueryEx(Frm, xlrNoticeKindPay.XLSTemplate);

    dsHeader.Session := Session;

    dxMemData.Open;
    dxMemData.Insert;
    dxMemDataDate_From.Value := Trunc(Now);
    dxMemDataDate_To.Value := Trunc(Now);

    Result := (ShowModal = mrOk);
  finally
    Free;
  end;
end;

procedure TfdcNoticeKindPayForm.actOkExecute(Sender: TObject);
begin
  dxMemDataPeriod.AsString := dxMemDataDate_From.AsString + ' - ' + dxMemDataDate_To.AsString;
  dxMemData.CheckBrowseMode;
  // --- check input params
  CheckDate(dxMemDataDate_From);
  CheckDate(dxMemDataDate_To);
  CmpDate(dxMemDataDate_From, dxMemDataDate_To);
  // --- open Query`s
  dsHeader.ParamByName( 'begin_date' ).AsDate    := dxMemDataDate_From.AsDateTime;
  dsHeader.ParamByName( 'end_date' ).AsDate      := dxMemDataDate_To.AsDateTime;
  dsHeader.ParamByName( 'report_type' ).AsString := rgReportType.Properties.Items.Items[ rgReportType.ItemIndex ].Caption;
  if dxMemDataIs_TS.AsString = 'Y' then
    dsHeader.ParamByName( 'is_ts' ).AsString := '�� ��'
  else
    dsHeader.ParamByName( 'is_ts' ).AsString := '';
  dsHeader.Open;

  dsBody.ParamByName( 'begin_date' ).AsDate     := dxMemDataDate_From.AsDateTime;
  dsBody.ParamByName( 'end_date' ).AsDate       := dxMemDataDate_To.AsDateTime;
  dsBody.ParamByName( 'is_ts' ).AsString        := dxMemDataIs_TS.AsString;
  dsBody.ParamByName( 'report_type' ).AsInteger := rgReportType.ItemIndex;
  dsBody.Open;
  // --- generate report
  try
    xlrNoticeKindPay.Report(True);
    ModalResult := mrOk;
  except on e:exception do begin
    e.Message := ReportError + e.Message;
    raise;
  end; end;
  // --- close Query`s
  dsHeader.Close;
  dsBody.Close;
end;

procedure TfdcNoticeKindPayForm.dxMemDataDate_FromChange(Sender: TField);
begin
  inherited;
  if (dxMemDataDate_From.Value > dxMemDataDate_To.Value) then
    begin
      dxMemDataDate_To.Value := dxMemDataDate_From.Value;
    end;
end;

procedure TfdcNoticeKindPayForm.FormCreate(Sender: TObject);
begin
  inherited;

  if MainData.GetCustomsLevel = 2 then
    begin
      rgReportType.ItemIndex := 1;
      lciReportType.Visible  := False;
    end;
end;

end.
