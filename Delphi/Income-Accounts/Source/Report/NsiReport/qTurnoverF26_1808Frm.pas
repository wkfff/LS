unit qTurnoverF26_1808Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, qCustomTurnoverSheetFrm, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, OracleData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxGridCustomPopupMenu, cxGridPopupMenu,
  ExtCtrls, cxGridDBTableView, DBClient, Provider, cxFilterControl;

type
  TqTurnoverF26_1808Form = class(TCustomTurnoverSheetForm)
    grdTurnoverSheetDBBandedTableViewIn_summa: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewOut_summa: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewPostupilo: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewNoticeKindPay_avans: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewCNoticeKindPay: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewNoticeKindPay_celevoy: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewConfirm: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewReturn: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewKBK100: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewItogo_out: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewItem_no: TcxGridDBBandedColumn;
    dsetDataITEM_NO: TStringField;
    dsetDataIN_SUMMA: TFloatField;
    dsetDataDOC_NUMBER: TStringField;
    dsetDataDOC_DATE: TDateTimeField;
    dsetDataNOTICEKINDPAY_AVANS: TFloatField;
    dsetDataNOTICEKINDPAY_CELEVOY: TFloatField;
    dsetDataCNOTICEKINDPAY: TFloatField;
    dsetDataCONFIRMKINDPAY: TFloatField;
    dsetDataRETURN: TFloatField;
    dsetDataITOGO_OUT: TFloatField;
    dsetDataOUT_SUMMA: TFloatField;
    grdTurnoverSheetDBBandedTableViewDOC_NUMBER: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewDOC_DATE: TcxGridDBBandedColumn;
    grdTurnoverSheetLevel1: TcxGridLevel;
    grdTurnoverSheetDBBandedTableDView: TcxGridDBTableView;
    grdTurnoverSheetDBBandedTableDViewDOC_NUMBER: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableDViewDOC_DATE: TcxGridDBColumn;
    dsetDataID: TStringField;
    dsetDataPARENTID: TStringField;
    dsetItog: TOracleDataSet;
    StringField1: TStringField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    DateTimeField1: TDateTimeField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    dsItog: TDataSource;
    grdTurnoverSheetDBBandedTableDViewITEM_NO: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableDViewIN_SUMMA: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableDViewPostupilo: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableDViewNOTICEKINDPAY_AVANS: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableDViewNOTICEKINDPAY_CELEVOY: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableDViewCNOTICEKINDPAY: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableDViewCONFIRMKINDPAY: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableDViewRETURN: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableDViewREUSE: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableDViewITOGO_OUT: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableDViewOUT_SUMMA: TcxGridDBColumn;
    dsetDataPOSTUPILO: TFloatField;
    dsetItogPOSTUPILO: TFloatField;
    dsetDataKBK100: TFloatField;
    dsetItogKBK100: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure dsetDataBeforeQuery(Sender: TOracleDataSet);
    procedure grdTurnoverSheetDBBandedTableViewCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grdTurnoverSheetDBBandedTableViewDataControllerFilterChanged(
      Sender: TObject);
    procedure dsetDataAfterClose(DataSet: TDataSet);
    procedure dsetItogBeforeQuery(Sender: TOracleDataSet);
    procedure dsetDataAfterQuery(Sender: TOracleDataSet);
  private
    fAccountID : integer; // �01.00.00
  protected
    function GetAccountCode : string; override;
    function GetAppendixNo : string;  override;
    function GetFormNo : string;      override;
    function GetXLSName : string;     override;
  public
  end;

implementation

uses cxGridDBDataDefinitions;

{$R *.dfm}

function TqTurnoverF26_1808Form.GetAccountCode : string;
begin
  Result := '�01.00.00'
end;

function TqTurnoverF26_1808Form.GetAppendixNo : string;
begin
  Result := '0';
end;

function TqTurnoverF26_1808Form.GetFormNo : string;
begin
  Result := '0';
end;

function TqTurnoverF26_1808Form.GetXLSName : string;
begin
  Result := 'OB_F26_1808.xls';
end;

procedure TqTurnoverF26_1808Form.FormCreate(Sender: TObject);
begin
  inherited;
  fAccountID := GetAccountID( GetAccountCode );
  pvisible_detail := true;
end;

procedure TqTurnoverF26_1808Form.dsetDataBeforeQuery(
  Sender: TOracleDataSet);
begin
  inherited;

  Sender.SetVariable('account_id', fAccountID);
  Sender.SetVariable('account_code', GetAccountCode);
end;

procedure TqTurnoverF26_1808Form.grdTurnoverSheetDBBandedTableViewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if (AViewInfo.GridRecord.Values[ grdTurnoverSheetDBBandedTableViewItem_no.Index ] = null)
     and not AViewInfo.Selected then
    begin
      ACanvas.Brush.Color := clMoneyGreen;
      ACanvas.Font.Style  := [fsBold];
    end;
  if (AViewInfo.GridRecord.Values[ grdTurnoverSheetDBBandedTableViewItem_no.Index ] = '�����') then
    begin
      ACanvas.Font.Style  := [fsBold];
    end;
end;

procedure TqTurnoverF26_1808Form.grdTurnoverSheetDBBandedTableViewDataControllerFilterChanged(
  Sender: TObject);
begin
  inherited;
  grdTurnoverSheetDBBandedTableView.OptionsView.Footer:= TcxDBDataFilterCriteria(Sender).IsFiltering;
end;

procedure TqTurnoverF26_1808Form.dsetDataAfterClose(DataSet: TDataSet);
begin
  inherited;
  dsetItog.Close;
end;

procedure TqTurnoverF26_1808Form.dsetItogBeforeQuery(
  Sender: TOracleDataSet);
var
  I: Integer;
  F: TField;
begin
  for I := 0 to Sender.VariableCount - 1 do
  begin
    F := dsetParams.FindField( Copy( Sender.VariableName(I), 2, MaxInt ) );
    if Assigned( F ) then
      begin
        Sender.SetVariable(I, F.AsVariant);
      end;
  end;
  Sender.SetVariable('account_id', fAccountID);
  Sender.SetVariable('account_code', GetAccountCode);
  with Sender do
    if dsetParams.FieldByName('CURRID').AsInteger <> -1 then
      begin
        if (VariableIndex('rur') >= 0) then
          begin
            SetVariable( 'rur',          '' );
          end;
        if (VariableIndex('curr_fields') >= 0) then
          begin
            SetVariable( 'curr_fields' , '' );
          end;
        if (VariableIndex(cNsiCurr) >= 0) then
          SetVariable(cNsiCurr , 'operation_sum');
      end
    else
      begin
        if (VariableIndex('rur') >= 0) then
          begin
            SetVariable( 'rur',          '_rur' );
          end;
        if (VariableIndex('curr_fields') >= 0) then
          begin
            SetVariable( 'curr_fields' , ':currid = :currid --' );
          end;
        if VariableIndex(cNsiCurr) >= 0 then
          SetVariable(cNsiCurr , 'sum_rur');
      end;
end;

procedure TqTurnoverF26_1808Form.dsetDataAfterQuery(
  Sender: TOracleDataSet);
begin
  inherited;
  if (dsetItog.Active) then
    begin
      dsetItog.Refresh;
    end
  else
    begin
      dsetItog.Open;
    end;
end;

initialization
  RegisterTurnoverSheetClass ( TqTurnoverF26_1808Form , 'OB_F26_1808');

end.
