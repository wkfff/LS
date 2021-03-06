unit PeriodicChargeSelectMonthFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fdcCustomDlgFrm, Menus, cxLookAndFeelPainters, cxEdit,
  cxLookAndFeels, cxContainer, dxLayoutLookAndFeels, ActnList,
  dxLayoutControl, StdCtrls, cxButtons, cxControls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  FDCCustomDataset, fdcQuery, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, QueryList, OracleData;

type
  TPeriodicChargeSelectMonthForm = class(TfdcCustomDlgForm)
    dxLayoutControl1Item1: TdxLayoutItem;
    grdPO: TcxGrid;
    grdPODBTableView1: TcxGridDBTableView;
    grdPOLevel1: TcxGridLevel;
    dsMonthPayments: TfdcQuery;
    dsMonthPaymentsSUMMA: TFloatField;
    srcMonthPayments: TDataSource;
    dsMonthPaymentsIS_PAYED: TIntegerField;
    dsMonthPaymentsCURRENCY_ID: TFloatField;
    dsMonthPaymentsMONTH_MONTH: TStringField;
    dsMonthPaymentsMONTH_YEAR: TStringField;
    dsMonthPaymentsSTATUS: TStringField;
    grdPODBTableView1MONTH_MONTH: TcxGridDBColumn;
    dsMonthPaymentsID: TIntegerField;
    grdPODBTableView1MONTH_YEAR: TcxGridDBColumn;
    grdPODBTableView1STATUS: TcxGridDBColumn;
    dsMonthPaymentsMONTH: TDateTimeField;
    dsSetNextPayMonth: TfdcQuery;
    QueryList1: TQueryList;
    sqlGetSubject: TsqlOp;
    odsPaysSumKbk: TOracleDataSet;
    odsPaysSumKbkMONTH: TDateTimeField;
    odsPaysSumKbkSUMMA: TFloatField;
    odsPaysSumKbkIS_PAYED: TFloatField;
    odsPaysSumKbkCURRENCY_ID: TFloatField;
    odsPaysSumKbkPAY_TYPE_ID: TFloatField;
    odsPaysSumKbkKBKCODE_ID: TFloatField;
    dsAddChargePayMonth: TfdcQuery;
    procedure actOkUpdate(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function PayPeriodic(DeclId: double): Boolean;

var
  PeriodicChargeSelectMonthForm: TPeriodicChargeSelectMonthForm;

implementation

uses DeclCorrectFrm, SelectPOWizardFrm;
{$R *.dfm}

function PayPeriodic(DeclId: double): Boolean;
var
  F: TPeriodicChargeSelectMonthForm;
  SubjectId: integer;
begin
  Result := False;
  F := TPeriodicChargeSelectMonthForm.Create(nil);
  try
    F.dsAddChargePayMonth.ParamByName('DECL_ID').AsFloat := DeclId;
    F.dsSetNextPayMonth.ParamByName('DECL_ID').AsFloat := DeclId;

    F.dsMonthPayments.ParamByName('DECL_ID').AsFloat := DeclId;
    F.dsMonthPayments.Open;

    if (F.ShowModal = mrOk) then
    begin
      try
        SubjectId:= F.sqlGetSubject.Exec('DECL_ID',DeclId);
        F.odsPaysSumKbk.Close;
        F.odsPaysSumKbk.SetVariable('pDeclId',DeclId);
        F.odsPaysSumKbk.SetVariable('pMonth',F.dsMonthPaymentsMONTH.Value);
        F.odsPaysSumKbk.Open;
        F.odsPaysSumKbk.First;
        while not F.odsPaysSumKbk.Eof  do
        begin
          F.dsAddChargePayMonth.ParamByName('KbkCode_id').AsInteger := F.odsPaysSumKbkKBKCODE_ID.AsInteger;
          F.dsAddChargePayMonth.ParamByName('Month').AsDate         := F.dsMonthPaymentsMONTH.Value;
          F.dsAddChargePayMonth.ParamByName('PayType_id').AsInteger := F.odsPaysSumKbkPAY_TYPE_ID.AsInteger;
          F.dsAddChargePayMonth.ExecSQL;
          if not ShowPaymentWizard(F.odsPaysSumKbkSUMMA.AsCurrency,
                                   F.odsPaysSumKbkCURRENCY_ID.AsInteger,
                                   True,
                                   0,
                                   SubjectId,
                                   true,
                                   F.odsPaysSumKbkKBKCODE_ID.AsInteger) then
          begin
            F.dsAddChargePayMonth.Session.Rollback;
            Exit;
          end;
          F.odsPaysSumKbk.Next;
        end;
        F.dsSetNextPayMonth.ExecSQL;
        F.dsAddChargePayMonth.Session.Commit;
        Result := True;

      except
        F.dsSetNextPayMonth.Session.Rollback;
        raise;
      end;
    end;
  finally
    F.Free;
  end;
end;

procedure TPeriodicChargeSelectMonthForm.actOkUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (dsMonthPaymentsIS_PAYED.AsInteger = 0);
end;

procedure TPeriodicChargeSelectMonthForm.actOkExecute(Sender: TObject);
begin
 // inherited;
 if(dsMonthPayments.Eof) then
  raise Exception.Create('<<������ �������� ������ ������>>.<<�� ��������� ����� ������!>>');
 ModalResult := mrOK;
end;

end.

