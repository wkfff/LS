unit qTurnoverF06_1808frm;

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
  TqTurnoverF06_1808Form = class(TCustomTurnoverSheetForm)
    grdTurnoverSheetDBBandedTableViewItem_no: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewIn_summa: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewINN: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewName: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewTypePerson: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewNumber_pp: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewDate_pp: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewKBK_PP: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewOut_summa: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewPostupilo: TcxGridDBBandedColumn;
    grdTurnoverSheetDBBandedTableViewIsPaid: TcxGridDBBandedColumn;
    grdTurnoverSheetLevel1: TcxGridLevel;
    grdTurnoverSheetDBBandedTableDView: TcxGridDBTableView;
    dsetItog: TOracleDataSet;
    dsItog: TDataSource;
    grdTurnoverSheetDBBandedTableDViewITEM_NO: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableDViewIN_SUMMA: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableDViewOUT_SUMMA: TcxGridDBColumn;
    grdTurnoverSheetLevel2: TcxGridLevel;
    dsetItogSubject: TOracleDataSet;
    dsItogSubject: TDataSource;
    grdTurnoverSheetDBBandedTableD2View: TcxGridDBTableView;
    grdTurnoverSheetDBBandedTableD2ViewINN: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD2ViewITEM_NO: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD2ViewPOSTUPILO: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD2ViewIN_SUMMA: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD2ViewNAME: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD2ViewOUT_SUMMA: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD2ViewTYPE_PERSON: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD2ViewISPAID: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableDViewISPAID: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableDViewPOSTUPILO: TcxGridDBColumn;
    dsetItogBankName: TOracleDataSet;
    dsItogBankName: TDataSource;
    grdTurnoverSheetLevel3: TcxGridLevel;
    grdTurnoverSheetDBBandedTableD3View: TcxGridDBTableView;
    grdTurnoverSheetDBBandedTableDViewBANK_NAME: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD2ViewBANK_NAME: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD3ViewITEM_NO: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD3ViewINN: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD3ViewNAME: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD3ViewTYPE_PERSON: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD3ViewBANK_NAME: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD3ViewDOC_NUMBER: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD3ViewDOC_DATE: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD3ViewKBK: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD3ViewIN_SUMMA: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD3ViewISPAID: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD3ViewPOSTUPILO: TcxGridDBColumn;
    grdTurnoverSheetDBBandedTableD3ViewOUT_SUMMA: TcxGridDBColumn;
    dsetDataID: TStringField;
    dsetDataPARENTID: TStringField;
    dsetDataITEM_NO: TStringField;
    dsetDataIN_SUMMA: TFloatField;
    dsetDataBANK_NAME: TStringField;
    dsetDataINN: TStringField;
    dsetDataNAME: TStringField;
    dsetDataTYPE_PERSON: TStringField;
    dsetDataDOC_NUMBER: TStringField;
    dsetDataDOC_DATE: TDateTimeField;
    dsetDataKBK: TStringField;
    dsetDataISPAID: TFloatField;
    dsetDataPOSTUPILO: TFloatField;
    dsetDataOUT_SUMMA: TFloatField;
    dsetItogID: TStringField;
    dsetItogPARENTID: TStringField;
    dsetItogITEM_NO: TStringField;
    dsetItogIN_SUMMA: TFloatField;
    dsetItogBANK_NAME: TStringField;
    dsetItogINN: TStringField;
    dsetItogNAME: TStringField;
    dsetItogTYPE_PERSON: TStringField;
    dsetItogDOC_NUMBER: TStringField;
    dsetItogDOC_DATE: TDateTimeField;
    dsetItogKBK: TStringField;
    dsetItogISPAID: TFloatField;
    dsetItogPOSTUPILO: TFloatField;
    dsetItogOUT_SUMMA: TFloatField;
    dsetItogSubjectID: TStringField;
    dsetItogSubjectPARENTID: TStringField;
    dsetItogSubjectITEM_NO: TStringField;
    dsetItogSubjectIN_SUMMA: TFloatField;
    dsetItogSubjectBANK_NAME: TStringField;
    dsetItogSubjectINN: TStringField;
    dsetItogSubjectNAME: TStringField;
    dsetItogSubjectTYPE_PERSON: TStringField;
    dsetItogSubjectDOC_NUMBER: TStringField;
    dsetItogSubjectDOC_DATE: TDateTimeField;
    dsetItogSubjectKBK: TStringField;
    dsetItogSubjectISPAID: TFloatField;
    dsetItogSubjectPOSTUPILO: TFloatField;
    dsetItogSubjectOUT_SUMMA: TFloatField;
    dsetItogBankNameID: TStringField;
    dsetItogBankNamePARENTID: TStringField;
    dsetItogBankNameITEM_NO: TStringField;
    dsetItogBankNameIN_SUMMA: TFloatField;
    dsetItogBankNameBANK_NAME: TStringField;
    dsetItogBankNameINN: TStringField;
    dsetItogBankNameNAME: TStringField;
    dsetItogBankNameTYPE_PERSON: TStringField;
    dsetItogBankNameDOC_NUMBER: TStringField;
    dsetItogBankNameDOC_DATE: TDateTimeField;
    dsetItogBankNameKBK: TStringField;
    dsetItogBankNameISPAID: TFloatField;
    dsetItogBankNamePOSTUPILO: TFloatField;
    dsetItogBankNameOUT_SUMMA: TFloatField;
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
    fAccountID : integer; // 01.03.03
  protected
    function GetAccountCode : string; override;
    function GetAppendixNo : string;  override;
    function GetFormNo : string;      override;
    function GetXLSName : string;     override;
    function GetXLSDetailName: string;override;
  public
  end;

implementation

uses cxGridDBDataDefinitions;

{$R *.dfm}

function TqTurnoverF06_1808Form.GetAccountCode : string;
begin
  Result := '01.03.03'
end;

function TqTurnoverF06_1808Form.GetAppendixNo : string;
begin
  Result := '8';
end;

function TqTurnoverF06_1808Form.GetFormNo : string;
begin
  Result := '6';
end;

function TqTurnoverF06_1808Form.GetXLSName : string;
begin
  Result := 'OB_F06_1808.xls';
end;

procedure TqTurnoverF06_1808Form.FormCreate(Sender: TObject);
begin
  inherited;
  fAccountID := GetAccountID( GetAccountCode );
  pvisible_detail := true;
end;

procedure TqTurnoverF06_1808Form.dsetDataBeforeQuery(
  Sender: TOracleDataSet);
begin
  inherited;

  Sender.SetVariable('account_id', fAccountID);
  Sender.SetVariable('account_code', GetAccountCode);
end;

procedure TqTurnoverF06_1808Form.grdTurnoverSheetDBBandedTableViewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if (AViewInfo.GridRecord.Values[ grdTurnoverSheetDBBandedTableViewItem_no.Index ] = null)
     and (AViewInfo.GridRecord.Values[ grdTurnoverSheetDBBandedTableViewInn.Index ] = null)
     and (AViewInfo.GridRecord.Values[ grdTurnoverSheetDBBandedTableViewName.Index ] = null)
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

procedure TqTurnoverF06_1808Form.grdTurnoverSheetDBBandedTableViewDataControllerFilterChanged(
  Sender: TObject);
begin
  inherited;
  grdTurnoverSheetDBBandedTableView.OptionsView.Footer:= TcxDBDataFilterCriteria(Sender).IsFiltering;
end;

procedure TqTurnoverF06_1808Form.dsetDataAfterClose(DataSet: TDataSet);
begin
  inherited;
  dsetItog.Close;
end;

procedure TqTurnoverF06_1808Form.dsetItogBeforeQuery(
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

procedure TqTurnoverF06_1808Form.dsetDataAfterQuery(
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
  if (dsetItogSubject.Active) then
    begin
      dsetItogSubject.Refresh;
    end
  else
    begin
      dsetItogSubject.Open;
    end;
  if (dsetItogBankName.Active) then
    begin
      dsetItogBankName.Refresh;
    end
  else
    begin
      dsetItogBankName.Open;
    end;
end;

function TqTurnoverF06_1808Form.GetXLSDetailName: string;
begin
  if VarToStr(dsetItog.GetVariable('SUMMARN')) = 'Y' then
    Result := 'OB_Detail_by_TO.xls'
  else
    Result := 'OB_Detail_by_Subject.xls';
end;

initialization
  RegisterTurnoverSheetClass ( TqTurnoverF06_1808Form , 'OB_F06_1808');

end.
