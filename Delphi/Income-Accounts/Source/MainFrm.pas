{
  Copyright � Fors Development Center.
  All rights reserved.

  $Workfile: MainFrm.pas $
  $Revision: 16476 $
  $Author: adavletyarov $
  $Date: 2013-04-03 12:29:53 +0400 (Ср, 03 апр 2013) $
}
unit MainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, fdcCustomOraMainFrm, cxGraphics, XPMan, AppEvnts,
  ImgList, dxBar, cxContainer, cxEdit, dxLayoutLookAndFeels, ActnList,
  cxControls, dxStatusBar, cxLookAndFeels, ExtCtrls, cxLabel, StdActns,
  DB, fdcObjectCore, fdcObjectServices, ObjectFrm, fdcOracleSession,
  dxDockControl, dxDockPanel, cxSplitter, fdcCustomGridFrm, fdcInspector,
  fdcCustomObjectFrm, fdcCustomObjectGridFrm, fdcParamsHolder,
  NavigatorFrm, ObjectBufferFrm, StdCtrls, dxBarExtItems, Oracle, dxNavBar, dxNavBarCollns;

const
  SIgnoreVersionParam = 'ignore_version';
  SShowServiceParam = 'show_service';
  SShowConnectParam = 'show_connect';
  SShowBalansParam = 'show_bparam';

type

  { TMainForm }
  TMainForm = class(TfdcCustomOraMainForm, IfdcObjectServices)
    pnlNavigator: TdxDockPanel;
    LeftDockSite: TdxDockSite;
    RightDockSite: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    pnlObjectBuffer: TdxDockPanel;
    actShowNavigator: TAction;
    actShowBuffer: TAction;
    miShowNavigator: TdxBarButton;
    miShowBuffer: TdxBarButton;
    actCopyToBuffer: TAction;
    actPasteFromBuffer: TAction;
    miCopyToBuffer: TdxBarButton;
    miPasteFromBuffer: TdxBarButton;
    actClearBuffer: TAction;
    miClearBuffer: TdxBarButton;
    actOpenFromBuffer: TAction;
    miOpenFromBuffer: TdxBarButton;
    actRemoveFromBuffer: TAction;
    miRemoveFromBuffer: TdxBarButton;
    dxVertContainerDockSite1: TdxVertContainerDockSite;
    tmrCheckVersion: TTimer;
    tmrCloseApp: TTimer;
    pnlClose: TPanel;
    lblClose: TLabel;
    Image1: TImage;
    miClosePanel: TdxBarControlContainerItem;
    actObjectGridTree: TAction;
    pmnObjectBuffer: TdxBarPopupMenu;
    pnlTask: TdxDockPanel;
    dxTabContainerDockSite1: TdxTabContainerDockSite;
    actImportDecl: TAction;
    dxBarButton1: TdxBarButton;
    actSaveLayout: TAction;
    btnSaveLayout: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    actImportTPO: TAction;
    actImportTR: TAction;
    dxBarButton8: TdxBarButton;
    actImportCC: TAction;
    dxBarButton9: TdxBarButton;
    actImportCO: TAction;
    dxBarButton13: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    btnLoadNSI: TdxBarListItem;
    dxBarButton18: TdxBarButton;
    barSubItemBuxReports: TdxBarSubItem;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    actFont: TAction;
    dlgFont: TFontDialog;
    actOpen: TAction;
    dxBarButton23: TdxBarButton;
    actHelpContents: TAction;
    dxBarButton24: TdxBarButton;
    btnqDebetCredit: TdxBarButton;
    dxBarButton26: TdxBarButton;
    miService: TdxBarSubItem;
    btAccDate: TdxBarDateCombo;
    dxBarButton29: TdxBarButton;
    bsiReportKNPGroup: TdxBarSubItem;
    btnKNPRepSaldo: TdxBarButton;
    btnKNPRepKBK: TdxBarButton;
    btnKNPRepDed: TdxBarButton;
    btnKNPRepDedAll: TdxBarButton;
    dxBarButton36: TdxBarButton;
    bsiReport: TdxBarSubItem;
    btnCustomsChequeNew: TdxBarButton;
    btnAvansRaschodNew: TdxBarButton;
    actGetDebts: TAction;
    qryGetDebts: TOracleQuery;
    barBtnGetDebts: TdxBarButton;
    btnAvansCmpNew: TdxBarButton;
    barBtnDocSearchOnOpen: TdxBarButton;
    actDocSearchOnOpen: TAction;
    btnEqualINN: TdxBarButton;
    actEqualINN: TAction;
    btnAdvanceRest: TdxBarButton;
    dxBarButton25: TdxBarButton;
    actNoticePeriod: TAction;
    btnRepDocPackPayments: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton50: TdxBarButton;
    btnRepKNPPlusMinus: TdxBarButton;
    btnKNPAcc: TdxBarButton;
    actReportSvod: TAction;
    barBtnReportSvod: TdxBarButton;
    dxBarButton7: TdxBarButton;
    barSubItemReportMK: TdxBarSubItem;
    btnReportPayMK_TPS: TdxBarButton;
    btnReportPayMK_TK: TdxBarButton;
    BarButtonReestrs_Rtu_Fts: TdxBarButton;
    BarBtnReestrs_rtu_fts: TdxBarButton;
    btnReportOutPacks: TdxBarButton;
    btnReportInPacks: TdxBarButton;
    btnChargesPay0543011: TdxBarButton;
    dxBarControlTimeBack: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    actReportSvodOut: TAction;
    //Klim-12.8.16
    actReportSvodOutELS: TAction;
    actCheckForMes: TAction;
    //
    actReportSvodIn: TAction;
    barSItemReportsSvods: TdxBarSubItem;
    barBtnReportSvodIn: TdxBarButton;
    barBtnReportSvodOut: TdxBarButton;
    barSubItemBuxReportsDate: TdxBarSubItem;
    barSubItemBuxReportsInterval: TdxBarSubItem;
    barSubItemBuxReportsOld: TdxBarSubItem;
    barSubItemBuxReportsPeriodOld: TdxBarSubItem;
    actReportConfirmPay: TAction;
    barBtnReportConfirmPay: TdxBarButton;
    actMergePerson: TAction;
    btnMerge: TdxBarButton;
    btnKTSPaysRep: TdxBarButton;
    btnKTSReturnRep: TdxBarButton;
    btnBudgetPays: TdxBarButton;
    btnF23PayBack: TdxBarButton;
    btnF23Payment: TdxBarButton;
    actReportSpecifyTargetKBK: TAction;
    barBtnReportSpecifyTargetKBK: TdxBarButton;
    btnRepPayments: TdxBarButton;
    siRepPaymments: TdxBarSubItem;
    btnPaymentsBySubAccount: TdxBarButton;
    dxBarButton2: TdxBarButton;
    btnCheckTPONo: TdxBarButton;
    siRepCheckNo: TdxBarSubItem;
    btnCheckTRNo: TdxBarButton;
    btnF23PayBackReuse: TdxBarButton;
    btnReportPayMK_MPS: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    btnReportPayMK_Fiz: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton19: TdxBarButton;
    dxBarButton27: TdxBarButton;
    barBtnReportSvodOutELS: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton28: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pnlNavigatorVisibleChanged(Sender: TdxCustomDockControl);
    procedure pnlObjectBufferVisibleChanged(Sender: TdxCustomDockControl);
    procedure tmrCheckVersionTimer(Sender: TObject);
    procedure tmrCloseAppTimer(Sender: TObject);
    procedure actShowNavigatorUpdate(Sender: TObject);
    procedure actShowNavigatorExecute(Sender: TObject);
    procedure actShowBufferUpdate(Sender: TObject);
    procedure actShowBufferExecute(Sender: TObject);
    procedure actCopyToBufferUpdate(Sender: TObject);
    procedure actCopyToBufferExecute(Sender: TObject);
    procedure actPasteFromBufferUpdate(Sender: TObject);
    procedure actPasteFromBufferExecute(Sender: TObject);
    procedure actClearBufferUpdate(Sender: TObject);
    procedure actClearBufferExecute(Sender: TObject);
    procedure actOpenFromBufferUpdate(Sender: TObject);
    procedure actOpenFromBufferExecute(Sender: TObject);
    procedure actRemoveFromBufferUpdate(Sender: TObject);
    procedure actRemoveFromBufferExecute(Sender: TObject);
    procedure actObjectGridTreeUpdate(Sender: TObject);
    procedure actObjectGridTreeExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actImportDeclExecute(Sender: TObject);
    procedure actSaveLayoutExecute(Sender: TObject);
    procedure actSaveLayoutUpdate(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure actImportTPOExecute(Sender: TObject);
    procedure actImportTRExecute(Sender: TObject);
    procedure actImportCCExecute(Sender: TObject);
    procedure actImportCOExecute(Sender: TObject);
    procedure btnLoadNSIGetData(Sender: TObject);
    procedure btnLoadNSIClick(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure actFontExecute(Sender: TObject);
    procedure actHelpExecute(Sender: TObject);
    procedure actOpenExecute(Sender: TObject);
    procedure actHelpContentsExecute(Sender: TObject);
    procedure btnqDebetCreditClick(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure btAccDateChange(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure btnKNPRepSaldoClick(Sender: TObject);
    procedure btnKNPRepKBKClick(Sender: TObject);
    procedure btnKNPRepDedClick(Sender: TObject);
    procedure btnKNPRepDedAllClick(Sender: TObject);
    procedure dxBarButton36Click(Sender: TObject);
    procedure btnCustomsChequeNewClick(Sender: TObject);
    procedure btnAvansRaschodNewClick(Sender: TObject);
    procedure actGetDebtsExecute(Sender: TObject);
    procedure btnAvansCmpNewClick(Sender: TObject);
    procedure actDocSearchOnOpenExecute(Sender: TObject);
    procedure actEqualINNExecute(Sender: TObject);
    procedure btnAdvanceRestClick(Sender: TObject);
    procedure actNoticePeriodExecute(Sender: TObject);
    procedure StatusBarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnRepDocPackPaymentsClick(Sender: TObject);
    procedure dxBarButton48Click(Sender: TObject);
    procedure dxBarButton50Click(Sender: TObject);
    procedure barSubItemBuxReportsPopup(Sender: TObject);
    procedure BuxReportClick(Sender: TObject);
    procedure btnRepKNPPlusMinusClick(Sender: TObject);
    procedure btnKNPAccClick(Sender: TObject);
    procedure actReportSvodExecute(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure btnReportPayMK_TPSClick(Sender: TObject);
    procedure btnReportPayMK_TKClick(Sender: TObject);
    procedure BarBtnReestrs_rtu_ftsClick(Sender: TObject);
    procedure btnReportOutPacksClick(Sender: TObject);
    procedure btnReportInPacksClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnChargesPay0543011Click(Sender: TObject);
    procedure dxBarControlTimeBackClick(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure actReportSvodOutExecute(Sender: TObject);
    //Klim-12.8.16
    procedure actReportSvodOutELSExecute(Sender: TObject);
    procedure actCheckForMesExecute(Sender: TObject);
    //
    procedure actReportSvodInExecute(Sender: TObject);
    procedure actReportConfirmPayExecute(Sender: TObject);
    procedure actMergePersonExecute(Sender: TObject);
    procedure btnKTSRepClick(Sender: TObject);
    // ���������� TdxBarButton.OnClick ��� ������� �������
    // TdxBarButton.Description = '���_������_�����_������;���_�����_�������'
    procedure btnXLSReportClick(Sender: TObject);
    procedure actReportSpecifyTargetKBKExecute(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure btnCheckTPONoClick(Sender: TObject);
    procedure btnCheckTRNoClick(Sender: TObject);
    procedure btnReportPayMK_MPSClick(Sender: TObject);
    procedure execReport(Sender: TObject);
    procedure btnReportPayMK_FizClick(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarButton32Click(Sender: TObject);
    procedure dxBarButton33Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarButton35Click(Sender: TObject);
    procedure dxBarButton37Click(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure dxBarButton39Click(Sender: TObject);
    procedure dxBarButton40Click(Sender: TObject);
    procedure dxBarButton41Click(Sender: TObject);
  private
    FObjectTypeFactory: TfdcObjectTypeFactory;
    FObjectFactory: TfdcObjectFactory;
    FFileFactory: TfdcFileFactory;
    FObjectServices: IfdcObjectServices;
    FUser: TfdcObject;
    FSaveObjectBufferTreeViewMouseDown: TMouseEvent;
    CloseMoment: TDateTime;
    FTaskListBarNavigator: TdxNavBar;

    fBuxReportsList : TList;

    fShowVersion : Boolean;

    function GetNavigator: TNavigatorForm;
    function GetObjectBuffer: TObjectBufferForm;
    function GetActiveObjectID: double;
    function GetIgnoreVersionMode: boolean;
    function GetShowServiceMode: boolean;
    function GetShowConnectMode: boolean;

    function GetCustomsLevel : Integer;
    function GetHelpFileName : string;
    procedure SetShowVersion(const Value: Boolean);
    procedure CheckExpDate;
  protected
    function GetSession: TfdcOracleSession; override;
    function CreateComponent(AClassName: string; AOwner: TComponent = nil):
      TComponent; override;
    procedure CheckVersion(ACloseImmediate: boolean = True); virtual;
    procedure ObjectBufferTreeViewMouseDown(Sender: TObject; Button:
      TMouseButton; Shift: TShiftState; X, Y: Integer);
    function GetAppVer : string;
    procedure SetVisibleComponents;
    procedure LoadLogon; override;
    procedure SaveLogon; override;
  public
    function FindObjectForm(AID: double): TfdcCustomObjectForm;
    function ShowObjectForm(AObject: TfdcObject; AParams: TParams = nil):
      TfdcCustomObjectForm; overload;
    function ShowObjectForm(AID: double; AParams: TParams = nil):
      TfdcCustomObjectForm; overload;
    function ShowNewObjectForm(ATypeSysName: string; ACheckChilds: boolean =
      True; AParams: TParams = nil): TfdcCustomObjectForm;
    function ShowFormObject(AID: double; ADockSite: TWinControl): TForm;
    procedure ShowXLSReportForm(const ACaption, AFormClass, ATemplateFile: string);
    procedure FreeObject(AID: double);
    procedure LoadLayout; override;
    procedure ResetLayout; override;
    procedure SaveLayout; override;

    procedure UpdateFormToDocSearchOnOpen(Form : TfdcCustomObjectGridForm);


    property ObjectTypeFactory: TfdcObjectTypeFactory read FObjectTypeFactory;
    property ObjectFactory: TfdcObjectFactory read FObjectFactory;
    property FileFactory: TfdcFileFactory read FFileFactory;
    property ObjectServices: IfdcObjectServices read FObjectServices implements
      IfdcObjectServices;
    property Navigator: TNavigatorForm read GetNavigator;
    property ObjectBuffer: TObjectBufferForm read GetObjectBuffer;
    property ActiveObjectID: double read GetActiveObjectID;
    property IgnoreVersionMode: boolean read GetIgnoreVersionMode;
    property ShowConnectMode: boolean read GetShowConnectMode;
    property User: TfdcObject read FUser;

    property ShowVersion : Boolean read fShowVersion write SetShowVersion;
  end;

var
  MainForm: TMainForm;

implementation

uses
  fdcUtils, fdcMessages, MainDm, fdcCustomMainDm, fdcCustomWindowFrm,
  ObjectTypeTreeDlgFrm, ObjectGridTreeFrm, TaskNavFrm, ObjServices, IniFiles,
  DeclLoadWizardFrm, IaccLoader, fdcCustomMainFrm, Registry,
  qDeclCard, qCustomsCardFrm, QReestrFrm, TPOLoadWizardFrm,
  TRLoadWizardFrm, Contnrs, fdcCustomFrm, DictDm, CCLoader,
  COLoader,
  LoaderWizardFrm,
  qNoticeFrm,
  //qBigPayerFrm,
  qOpisRaschetFrm,
  qDebetCreditFrm,
  qPaymentOrderFrm,
  qCalcPeniFrm,
  qPaymentCmpFrm,
  qAvansRashodNewFrm,
  qPayConfirmFrm,
  cxPC, cxCurrencyEdit, cxTextEdit, HelpIntfs, OracleCI,
  qCheckDeclNoFrm, qSubjSaldoFrm, qKNPKBKFrm, qKNPDedFrm, qknpDedAllFrm,
  ShellAPI, qAvansCmpNewFrm, cxClasses,
  ObjectGridFrm, qEqualINN, qAdvanceRest,
  qNsiNoticePeriodReportFrm,
  qCustomBuxReportFrm,
  qDocPackPaymentsFrm,
  qSpecifyTargetKBKReportFrm,
  fdcVozvratUnit, fdcNoticeKindPayUnit, qKNPPlusMinusFrm, qKNPAccFrm
  ,qSvodReportFrm, qSvodOutReportFrm,
  //Klim-12.8.16
  qSvodOutReportFrmELS, NotifyMe,
  //
  qSvodInReportFrm
  ,fdcEventDelGtd_ChangeNPPUnit, fdcReportDateForm_DateToUnit,
  fdcReportDateMKForm_DateToUnit,
  qMasterDetailByPeriodFrm, qReportFrom_TO_Date_CurrFrm,
  qReportControlTimeBackFrm, srDayTotalNew, ReportBudgetGridFrmUnit,
  SubjectMergeFrm, XLSReportFrm, StrUtils, qReportPaybackFrm,
  qCheckTPONoFrm, qCheckTRNoFrm, PasswordDlgFrm,
  qCheckSvedUnionAcc, CheckSvedCustomReport,
  CheckSvedAccStates,CheckSvedAccDocs, CheckSvedControlConfirm,
  ControlPays, CheckSvedDocsNotAcc,
  CheckSvedReviseChargeAistLS,  CheckSvedReviseChargeOrderLS,
  CheckSvedReviseDeductAistLS, CheckSvedReviseDeductOrderLS
  ,DeclarantChecksGridFrm
  ;

{$R *.dfm}

type

  { TfdcObjectServices }
  TfdcObjectServices = class(TInterfacedObject, IfdcObjectServices)
  private
    function GetObjectFactory: TfdcObjectFactory;
    function GetObjectTypeFactory: TfdcObjectTypeFactory;
    function GetFileFactory: TfdcFileFactory;

    function CreateObject(ATypeSysName: string; ACheckChilds: boolean = True;
      AParams: TParams = nil): TForm;
    function FindObject(AID: double): TForm;
    function OpenObject(AID: double; AParams: TParams = nil): TForm;
    function SearchObject(ASearchFormClassName, ASearchTypeSysName: string;
      ASelectedObjectID: double; AParams: TParams; ASourceComponent: TComponent;
      ASearchMultiple: boolean; AOnSearchFinished: TOnSearchFinishedEvent):
      TForm;
    procedure FreeObject(AID: double);

    function ShowForm(AClassName: string; AParams: TParams = nil; ADockSite:
      TWinControl = nil): TForm;

    procedure NavigateForm(AForm: IfdcNavigableForm; AUpdateChilds: boolean =
      True);
  public
    constructor Create;
  end;

const
  cptLevelCustoms = ' - �';
  cptLevelRTU     = ' - ���';
  cptLevelFTS     = ' - ���';
  cptLevelFTSKNP  = ' - ��� ������ ���';
  cptLevelRTUKNP  = ' - ��� ������ ���';

{ TfdcObjectServices }

constructor TfdcObjectServices.Create;
begin
  inherited Create;

  with MainForm, MainData do
  begin
    { check connection }
    if not Session.Connected then
      Exit;

    try
      { init object type factory }
      FObjectTypeFactory := TfdcObjectTypeFactory.Create(MainForm);
      ObjectTypeFactory.LoadQuery := dsObjectTypeAll;
      //ObjectTypeFactory.CheckQuery := dsObjectIs;
      ObjectTypeFactory.ActionList := ActionList;
      ObjectTypeFactory.Load;

      { init object factory }
      FObjectFactory := TfdcObjectFactory.Create(MainForm);
      ObjectFactory.ObjectTypes := FObjectTypeFactory;
      ObjectFactory.LoadQueries.Add(dsObject);
      ObjectFactory.LoadQueries.Add(dsEvent);

      { init file factory }
      FFileFactory := TfdcFileFactory.Create(MainForm);
      FileFactory.Directory := GetAppTempDir;
      FileFactory.LobQuery := qryLobQuery;

      { load current user }
      FUser := ObjectFactory.GetObject(MainData.GetUser, True);

      { check version }
      MainForm.CheckVersion;

      { create navigator }
      NavigatorForm := TNavigatorForm.Create(MainForm);
      Navigator.TreeView.Images := imglAction;
      Navigator.Align := alClient;

      if pnlNavigator.Parent <> nil then
      begin
        Navigator.ManualDock(pnlNavigator);
        if Navigator.Parent <> nil then
          Navigator.Show;
      end;

      { create object buffer }
      ObjectBufferForm := TObjectBufferForm.Create(MainForm);
      ObjectBuffer.ObjectServices := Self;
      ObjectBuffer.TreeView.Images := imglAction;
      FSaveObjectBufferTreeViewMouseDown := ObjectBuffer.TreeView.OnMouseDown;
      ObjectBuffer.TreeView.OnMouseDown := ObjectBufferTreeViewMouseDown;
      ObjectBuffer.Align := alClient;
      if pnlObjectBuffer.Parent <> nil then
      begin
        ObjectBuffer.ManualDock(pnlObjectBuffer);
        ObjectBuffer.Show;
      end;

      CheckExpDate;
    except
      on E: Exception do
      begin
        E.Message :=
          '<<������ ������������� ����������>>. ' +
          '<<���������� �� ����� ���� ��������. ���������� � �������������� �������.>> ' +
          E.Message;
        ErrorDlg(E);
        Application.ShowMainForm := False;
        PostQuitMessage(0);
      end;
    end;
  end;
end;

function TfdcObjectServices.GetObjectFactory: TfdcObjectFactory;
begin
  Result := nil;
  if Assigned(MainForm) then
    Result := MainForm.ObjectFactory;
end;

function TfdcObjectServices.GetObjectTypeFactory: TfdcObjectTypeFactory;
begin
  Result := nil;
  if Assigned(MainForm) then
    Result := MainForm.ObjectTypeFactory;
end;

function TfdcObjectServices.GetFileFactory: TfdcFileFactory;
begin
  Result := nil;
  if Assigned(MainForm) then
    Result := MainForm.FileFactory;
end;

function TfdcObjectServices.CreateObject(ATypeSysName: string;
  ACheckChilds: boolean = True; AParams: TParams = nil): TForm;
begin
  Result := nil;
  if Assigned(MainForm) then
    Result := MainForm.ShowNewObjectForm(ATypeSysName, ACheckChilds, AParams);
end;

function TfdcObjectServices.FindObject(AID: double): TForm;
begin
  Result := nil;
  if Assigned(MainForm) then
    Result := MainForm.FindObjectForm(AID);
end;

function TfdcObjectServices.OpenObject(AID: double; AParams: TParams = nil):
  TForm;
begin
  Result := nil;
  if Assigned(MainForm) then
    Result := MainForm.ShowObjectForm(AID, AParams);
end;

function TfdcObjectServices.SearchObject(ASearchFormClassName,
  ASearchTypeSysName: string; ASelectedObjectID: double;
  AParams: TParams; ASourceComponent: TComponent;
  ASearchMultiple: boolean; AOnSearchFinished: TOnSearchFinishedEvent): TForm;
begin
  try
    Result := MainForm.CreateComponent(ASearchFormClassName,
      ASourceComponent) as TForm;
    if Result is TfdcCustomGridForm then
      with Result as TfdcCustomGridForm do
      begin
        SearchMode := True;
        SearchMultiple := ASearchMultiple;
        SearchComponent := ASourceComponent;
        if Result is TfdcCustomObjectGridForm then
          with Result as TfdcCustomObjectGridForm do
          begin
            SelectedObjectID := ASelectedObjectID;
            SearchTypeSysName := ASearchTypeSysName;
            OnSearchFinished := AOnSearchFinished;
          end;
      end;
    MainForm.ShowForm(Result, AParams);
  except
    on E: Exception do
    begin
      E.Message := '������ ������������� ����� ������ ' +
        ASearchFormClassName + '!'#10#13 + E.Message;
      raise;
    end;
  end;
end;

procedure TfdcObjectServices.FreeObject(AID: double);
begin
  if Assigned(MainForm) then
    MainForm.FreeObject(AID);
end;

function TfdcObjectServices.ShowForm(AClassName: string; AParams: TParams = nil;
  ADockSite: TWinControl = nil): TForm;
begin
  Result := nil;
  if Assigned(MainForm) then
  begin
    Result := MainForm.ShowForm(AClassName, AParams, ADockSite);
    if Assigned(Result) and (Result.FormStyle = fsMDIChild)
      and not (fsModal in Result.FormState)
      and not Supports(Result, IfdcNavigableForm) then
            NavigateForm(TfdcNavigableFormAdapter.Create(Result), False);
  end;
end;

procedure TfdcObjectServices.NavigateForm(AForm: IfdcNavigableForm;
  AUpdateChilds: boolean = True);
begin
  if Assigned(MainForm) and
    Assigned(MainForm.Navigator) then
//    MainForm.Navigator.Navigate(AForm, AUpdateChilds);
    MainForm.Navigator.Navigate(AForm, False);
end;

{ TMainForm }

function TMainForm.GetNavigator: TNavigatorForm;
begin
  Result := NavigatorForm;
end;

function TMainForm.GetObjectBuffer: TObjectBufferForm;
begin
  Result := ObjectBufferForm;
end;

function TMainForm.GetActiveObjectID: double;
begin
  Result := cNewIDNexus;
  if Assigned(Screen.ActiveForm) then
  begin
    { TfdcCustomObjectForm }
    if Screen.ActiveForm is TfdcCustomObjectForm then
      Result := (Screen.ActiveForm as TfdcCustomObjectForm).CurrentObjectID
    else
      if Screen.ActiveForm is
      TfdcCustomObjectGridForm then
        Result := (Screen.ActiveForm as
          TfdcCustomObjectGridForm).CurrentObjectID;
  end;
end;

function TMainForm.GetIgnoreVersionMode: boolean;
begin
  Result := FindCmdLineSwitch(SIgnoreVersionParam);
end;

function TMainForm.GetSession: TfdcOracleSession;
begin
  Result := MainData.Session;
end;

function TMainForm.CreateComponent(AClassName: string;
  AOwner: TComponent): TComponent;
begin
  { create component }
  Result := inherited CreateComponent(AClassName, AOwner);

  { set object services interface link }
  if Result is TfdcCustomObjectForm then
    (Result as TfdcCustomObjectForm).ObjectServices := ObjectServices;
  if Result is TfdcCustomObjectGridForm then
    (Result as TfdcCustomObjectGridForm).ObjectServices := ObjectServices;
  if Result is TObjectGridTreeForm then
    (Result as TObjectGridTreeForm).ObjectServices := ObjectServices;
end;

procedure TMainForm.CheckVersion(ACloseImmediate: boolean = True);
var
  ServerVersion: string;
  VersionMigrate: boolean;
  UserMessage: string;
  UserHint: string;

  procedure ShowClosingBar;
  var
    ClosingBar: TdxBar;
  begin
    ClosingBar := BarManager.BarByName('barClose');
    if Assigned(ClosingBar) then
    begin
      ClosingBar.Visible := True;
      miClosePanel.Visible := ivAlways;
    end;
  end;

  procedure HideClosingBar;
  var
    ClosingBar: TdxBar;
  begin
    ClosingBar := BarManager.BarByName('barClose');
    if Assigned(ClosingBar) then
    begin
      ClosingBar.Visible := False;
      miClosePanel.Visible := ivNever;
    end;
  end;

  procedure StartClosing;
  begin
    if ACloseImmediate then
      PostQuitMessage(0)
    else
    begin
      tmrCloseApp.Enabled := True;
      ShowClosingBar;
    end;
  end;

begin
  pnlClose.Visible := False;
  HideClosingBar;
  { ��������� ������������ ������ ���������� � ��������� ����� }
  if not MainData.CheckVersion(True{False}, ServerVersion, VersionMigrate) then
  begin
    tmrCheckVersion.Enabled := False;

    UserMessage := IfElse(VersionMigrate,
      '������� �� ����� ������ �� ��������',
      '���������� �������������� ������');
    UserHint := IfElse(VersionMigrate,
      '��������� ������������� ������� �������� �� ����� ������ �������. ',
      '���������� �������������� ������ ���������� � ��������� ����� �������: '#10 +
      '  - ������ ����������: ' + GetAppVersion + #10 +
      '  - ������ ��������� �����: ' + ServerVersion + '. ');

    {
      ������������� ������ ���� �������� ����� ����� ���������� ������
      � ������ ������������� ������.
    }
    if IgnoreVersionMode and
      (
      MainData.UserIsAdminData or
      MainData.UserIsSchemaOwner
      ) then
    begin
      UserHint := UserHint + #10 +
        IfElse(VersionMigrate,
        '�� ������������� ���������� ������ �� ���������� �������� �������� �� ����� ������. ',
        '�� ������������� ���������� ������ ��� �������������� ������. ') +
        '���� �� ������ ���������� ������ ������� "��", ����� ������� "���". ';

      if WarningDlg(UserMessage, UserHint) = mrYes then
      begin
        lblClose.Caption := '����� ������������� ������';
        ShowClosingBar;
      end
      else
        StartClosing;
    end

      { ��� ��������� ������������ ������ �������� ���������� }
    else
    begin
      UserHint := UserHint + #10#10 +
        IfElse(ACloseImmediate,
        '���������� ����� ���������� �������.',
        '� ������� 3 ����� ���������� ����� ������������� �������.');
      MessageDlg(UserMessage, UserHint, '', mtWarning, [mbOk], 0);
      lblClose.Caption := '';
      StartClosing;
    end;

  end

    { ���� ��� ������, �� ��������� ������ �������� ������ }
//  else
//    tmrCheckVersion.Enabled := True;
end;

procedure TMainForm.ObjectBufferTreeViewMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  { fire own ObjectBuffer.TreeView.OnMouseDown event }
  if Assigned(FSaveObjectBufferTreeViewMouseDown) then
    FSaveObjectBufferTreeViewMouseDown(Sender, Button, Shift, X, Y);

  { show object buffer popup menu }
  if Button = mbRight then
    pmnObjectBuffer.PopupFromCursorPos;
end;

function TMainForm.FindObjectForm(AID: double): TfdcCustomObjectForm;
var
  i: integer;
begin
  Result := nil;
  for i := 0 to MDIChildCount - 1 do
    if (MDIChildren[i] is TfdcCustomObjectForm) and
      ((MDIChildren[i] as TfdcCustomObjectForm).ID = AID) then
    begin
      Result := MDIChildren[i] as TfdcCustomObjectForm;
      Exit;
    end;
end;

function TMainForm.ShowObjectForm(AObject: TfdcObject;
  AParams: TParams = nil): TfdcCustomObjectForm;
begin
  { find visible form }
  Result := FindObjectForm(AObject.ID);

  { create new form }
  if not Assigned(Result) then
  begin
    Result := CreateComponent(AObject.ObjectType.DefaultFormClass) as
      TfdcCustomObjectForm;
    Result.EditObject := AObject;
  end;

  // ��������� ������� "������"
  if Result is TObjectForm then
//     with TObjectForm(Result).tabService do
//       TabVisible := TabVisible and GetShowServiceMode;
     // �� ��������� ����� ������� �������
     with TObjectForm(Result) do
     begin
       tabChildObjects.TabVisible := tabChildObjects.TabVisible and GetShowServiceMode;
       tabValues.TabVisible := tabValues.TabVisible and GetShowServiceMode;
       tabRelations.TabVisible := tabRelations.TabVisible and GetShowServiceMode;
       tabAccess.TabVisible := tabAccess.TabVisible and GetShowServiceMode;
     end;

  { show form }
  ShowForm(Result, AParams);

end;

function TMainForm.ShowObjectForm(AID: double; AParams: TParams = nil):
  TfdcCustomObjectForm;
begin
  Result := ShowObjectForm(ObjectFactory.GetObject(AID, True), AParams);
end;

function TMainForm.ShowNewObjectForm(ATypeSysName: string;
  ACheckChilds: boolean = True; AParams: TParams = nil): TfdcCustomObjectForm;
var
  ObjType: TfdcObjectType;
begin
  Result := nil;

  { get object type }
  if ACheckChilds then
  begin
    ObjType := ObjectTypeFactory.Find(ATypeSysName, True);
    if ObjType.HasChildren then
      ObjType := ExecObjectTypeDlg(ObjType, ObjectServices,
        '��� ������������ �������');

    if Assigned(ObjType) then
      ATypeSysName := ObjType.SysName
    else
      Exit;
  end;

  { open new form for the newly created object }
  Result := ShowObjectForm(ObjectFactory.CreateObject(ATypeSysName), AParams);
end;

procedure TMainForm.FreeObject(AID: double);
var
  Obj: TComponent;
  ObjForm: TForm;
begin
  { delete object from DB }
  MainData.FreeObject(AID);

  { close and free object form }
  ObjForm := FindObjectForm(AID);
  if Assigned(ObjForm) then
  begin
    if ObjForm is TObjectForm then
      TObjectForm(ObjForm).RefreshWaiters;
    ObjForm.Close;
    ObjForm.Free;
  end;

  { remove object from the object cache }
  Obj := ObjectFactory.FindObject(AID);
  if Assigned(Obj) then
    Obj.Free;
end;

const
  SAutoSaveLayout = 'AutoSaveLayout';
  SAppFontName = 'AppFontName';
  SDocSearchOnOpen = 'DocSearchOnOpen';

procedure TMainForm.FormCreate(Sender: TObject);
begin
  inherited;
  fBuxReportsList := TList.Create;

  (Application.HelpSystem as IHelpManager).Release(1);
  Application.HelpFile := ExtractFilePath(Application.ExeName) + HelpFile;
  ClearAppTempDir;
  FObjectServices := TfdcObjectServices.Create;
  fdcObjectServices.SetObjectServices(Self);
  ObjServices.SetObjectServices(Self);
  btAccDate.ReadOnly := not ReadRegistryValue(AppRegistryKey, 'EnableAccDate', rvBoolean);

  case GetCustomsLevel of
    0 : InternalName      := InternalName + cptLevelFTS;
    1 : InternalName      := InternalName + cptLevelRTU;
    2 : InternalName      := InternalName + cptLevelCustoms;
    3 : InternalName      := InternalName + cptLevelFTSKNP;
    4 : InternalName      := InternalName + cptLevelRTUKNP;
  end;

  if ShowConnectMode then
    InternalName := InternalName + ' ['+ mainData.Session.LogonUsername + '@' + mainData.Session.LogonDatabase
    + ']' + '[MAC-�����: ' + MainData.MACAddress
    + ']';

  actDocSearchOnOpen.Checked := ReadRegistryValue(AppRegistryKey, SDocSearchOnOpen, rvBoolean);
  Caption := InternalName;
  //-- �������� ������ ���������� � StatusBar
  SetShowVersion( True );
  MainData.Session.DBMS_Pipe.Purge(MainData.Session.LogonUsername);
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ClearAppTempDir;
  FObjectServices := nil;
  fBuxReportsList.Free;
end;

procedure TMainForm.pnlNavigatorVisibleChanged(
  Sender: TdxCustomDockControl);
begin
  inherited;
  if (Navigator <> nil) then
    Navigator.Visible := Sender.Visible;
end;

procedure TMainForm.pnlObjectBufferVisibleChanged(
  Sender: TdxCustomDockControl);
begin
  inherited;
  if (ObjectBuffer <> nil) then
    ObjectBuffer.Visible := Sender.Visible;
end;

procedure TMainForm.tmrCheckVersionTimer(Sender: TObject);
begin
  inherited;
  CheckVersion(False);
end;

procedure TMainForm.tmrCloseAppTimer(Sender: TObject);
var
  SecsLeft: integer;
begin
  inherited;

  { disable version checking timer }
  tmrCheckVersion.Enabled := False;

  { set close moment forward to 3 min }
  if CloseMoment = 0 then
    CloseMoment := Now + 180 * (1 / (60 * 60 * 24));

  { check close moment }
  if Now > CloseMoment then
    Application.Terminate
  else
  begin
    SecsLeft := Round((CloseMoment - Now) * 60 * 60 * 24);
    lblClose.Caption := IntToStr(SecsLeft) + ' ������ �� �������� ����������';
    lblClose.Refresh;
  end;
end;

procedure TMainForm.actShowNavigatorUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked := pnlNavigator.Visible;
end;

procedure TMainForm.actShowNavigatorExecute(Sender: TObject);
begin
  inherited;
  if (pnlNavigator <> nil) then
    pnlNavigator.Visible := not pnlNavigator.Visible;
end;

procedure TMainForm.actShowBufferUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Checked := pnlObjectBuffer.Visible;
end;

procedure TMainForm.actShowBufferExecute(Sender: TObject);
begin
  inherited;
  if (pnlObjectBuffer <> nil) then
    pnlObjectBuffer.Visible := not pnlObjectBuffer.Visible;
end;

procedure TMainForm.actCopyToBufferUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled := (Sender as TAction).Visible and
    Assigned(ObjectBuffer) and
    (not IsNewID(ActiveObjectID));
end;

procedure TMainForm.actCopyToBufferExecute(Sender: TObject);
begin
  inherited;
  ObjectBuffer.AddObject(ObjectFactory.GetObject(ActiveObjectID));
end;

procedure TMainForm.actPasteFromBufferUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled := (Sender as TAction).Visible and
    Assigned(Screen.ActiveControl) and
    Assigned(ObjectBuffer) and
    Assigned(ObjectBuffer.CurObject);
end;

procedure TMainForm.actPasteFromBufferExecute(Sender: TObject);
begin
  inherited;
  Screen.ActiveControl.DragDrop(ObjectBuffer.GetDragObject(Sender), 0, 0);
end;

procedure TMainForm.actClearBufferUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled := (Sender as TAction).Visible and
    Assigned(ObjectBuffer) and
    (ObjectBuffer.ObjectsCount > 0);
end;

procedure TMainForm.actClearBufferExecute(Sender: TObject);
begin
  inherited;
  ObjectBuffer.Clear;
end;

procedure TMainForm.actOpenFromBufferUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled := (Sender as TAction).Visible and
    Assigned(ObjectBuffer) and
    Assigned(ObjectBuffer.CurObject);
end;

procedure TMainForm.actOpenFromBufferExecute(Sender: TObject);
begin
  inherited;
  ShowObjectForm(ObjectBuffer.CurObject);
end;

procedure TMainForm.actRemoveFromBufferUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled := (Sender as TAction).Visible and
    Assigned(ObjectBuffer) and
    Assigned(ObjectBuffer.CurObject);
end;

procedure TMainForm.actRemoveFromBufferExecute(Sender: TObject);
begin
  inherited;
  ObjectBuffer.RemoveCurObject;
end;

procedure TMainForm.actObjectGridTreeUpdate(Sender: TObject);
begin
  inherited;
  (Sender as TAction).Enabled := (Sender as TAction).Visible and
    Assigned(Session) and
    Session.Connected;
end;

procedure TMainForm.actObjectGridTreeExecute(Sender: TObject);
begin
  inherited;
  ShowForm('TObjectGridTreeForm');
end;

procedure TMainForm.FormShow(Sender: TObject);
  var lAClass: TPersistentClass;
      li: Integer;
begin
  inherited;
  SetVisibleComponents;
  with TTaskListForm.Create(MainForm) do
  begin
    Align := alClient;
    ManualDock(pnlTask);
    LoadNavigator(MainData.Session);
    Show;
    FTaskListBarNavigator := barNavigator;
  end;
  //-- ������ - ��������� ������������ �����
  if not(FindCmdLineSwitch(SShowBalansParam)) then
    begin
      lAClass := GetClass('TAccTurnOverParamsGridForm');
      if (lAClass <> nil) then
        begin
          for li := 0 to FTaskListBarNavigator.Items.Count - 1 do
            begin
               if (FTaskListBarNavigator.Items[li].Tag = Integer(lAClass)) then
                 begin
                   FTaskListBarNavigator.Items[li].Visible := false;
                 end;
            end;
        end;
    end;
  {$IFDEF _DEBUG_}
   ShowForm('TDocPackReturnsGridForm');
   
//   ShowForm('TDecisionPaybackGridForm');
//   dxBarButton27.Click;
 //  ShowForm('TPayment_Order_PaybackGridForm');
  {$ENDIF}
end;

const
  DEF_SCHEME_NAME = '';

function GetDefSchemeName: string;
var
  IniFile: TIniFile;
  S: string;
begin
  IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) +
    'dbconn.ini');
  try
    S := IniFile.ReadString('db', 'ORACLE_HOME', '');
    if S <> '' then
    begin
      SetEnvironmentVariable('ORACLE_HOME', PChar(S));
      SetEnvironmentVariable('Path', PChar(S + '\bin;' + GetEnvironmentVariable('Path')));
      OCIDLL := S + '\bin\oci.dll';
      S := IniFile.ReadString('db', 'NLS_LANG', 'RUSSIAN_CIS.CL8MSWIN1251');
      if S <> '' then
        SetEnvironmentVariable('NLS_LANG', PChar(S));
    end;
    Result := IniFile.ReadString('db', 'scheme_name', DEF_SCHEME_NAME);
  finally
    IniFile.Free;
  end;
end;

function GetDefLogonUsername(const ADefVal: string): string;
var
  IniFile: TIniFile;
begin
  IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) +
    'dbconn.ini');
  try
    Result := IniFile.ReadString('db', 'LogonUsername', ADefVal);
  finally
    IniFile.Free;
  end;
end;

function GetDatabaseName(const ADefVal: string) : string;
var IniFile: TIniFile;
begin
  IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) +
    'dbconn.ini');
  try
    Result := IniFile.ReadString('db', 'DataBase', ADefVal);
  finally
    IniFile.Free;
  end;
end;

procedure TMainForm.LoadLogon;
begin
  inherited;
  Session.DefSchemeName := GetDefSchemeName;
  Session.LogonUsername := GetDefLogonUsername(Session.LogonUsername);
  Session.LogonDatabase := GetDatabaseName(Session.LogonDatabase);
end;

procedure TMainForm.actImportDeclExecute(Sender: TObject);
begin
  inherited;
  MainData.CheckTask('Tsk_ImportDoc_GTD', True);
  ImportCustomDecl(Session);
end;

procedure TMainForm.actSaveLayoutExecute(Sender: TObject);
begin
  inherited;
  TAction(Sender).Checked := not TAction(Sender).Checked;
  WriteRegistryValue(AppRegistryKey, SAutoSaveLayout, TAction(Sender).Checked);
end;

procedure TMainForm.actSaveLayoutUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Checked := ReadRegistryValue(AppRegistryKey, SAutoSaveLayout, rvBoolean);
end;

procedure TMainForm.dxBarButton3Click(Sender: TObject);
begin
  inherited;
  MainData.CheckTask('Tsk_Report_RegTI', True);
  qDeclCard.ExecReport(Session);
end;

procedure TMainForm.actImportTPOExecute(Sender: TObject);
  var
    i : Integer;
begin
  inherited;
  ImportTPO(Session);

  for i := 0 to MDIChildCount - 1 do
    if MDIChildren[i].ClassNameIs( 'TPaymentOrderGridForm' ) then
      (MDIChildren[i] as TObjectGridForm).actRefresh.Execute
    else if MDIChildren[i].ClassNameIs( 'TPaymentOrderNonIDForm' ) then
      (MDIChildren[i] as TObjectForm).actRefresh.Execute;
end;

procedure TMainForm.actImportTRExecute(Sender: TObject);
  var
    i : Integer;
begin
  inherited;
  ImportTR(Session);

  for i := 0 to MDIChildCount - 1 do
    if MDIChildren[i].ClassNameIs( 'TPaymentOrderGridForm' ) then
      (MDIChildren[i] as TObjectGridForm).actRefresh.Execute
    else if MDIChildren[i].ClassNameIs( 'TPaymentOrderNonIDForm' ) then
      (MDIChildren[i] as TObjectForm).actRefresh.Execute;
end;

procedure TMainForm.actImportCCExecute(Sender: TObject);
begin
  inherited;
  MainData.CheckTask('Tsk_ImportPay_TK', True);
  ImportCC(Session);
end;

procedure TMainForm.actImportCOExecute(Sender: TObject);
begin
  inherited;
  MainData.CheckTask('Tsk_ImportPay_KO', True);
  ImportCO(Session);
end;

procedure TMainForm.btnLoadNSIGetData(Sender: TObject);
var
  List: TStrings;
begin
  inherited;
  if btnLoadNSI.Items.Count = 0 then
  begin
    List := btnLoadNSI.Items;
    GetLoaderList(List);
  end;
end;

procedure TMainForm.btnLoadNSIClick(Sender: TObject);
begin
  inherited;
  with btnLoadNSI.Items do
    ExecuteLoader(TIaccLegacyLoaderClass(Objects[btnLoadNSI.ItemIndex]),
      Strings[btnLoadNSI.ItemIndex]);
end;

procedure TMainForm.dxBarButton18Click(Sender: TObject);
begin
  inherited;
  MainData.CheckTask('Tsk_Report_Notice', True);
  qNoticeFrm.ExecReport(Session);
end;

procedure TMainForm.dxBarButton21Click(Sender: TObject);
begin
  ShowMessage('����� ��� ��������!');
  exit;
  MainData.CheckTask('Tsk_Report_Notice', True);
  qNoticeFrm.ExecReport(Session);
end;

procedure TMainForm.dxBarButton20Click(Sender: TObject);
begin
  ShowMessage('����� �� ����������.');
  exit;
  MainData.CheckTask('Tsk_Report_Opis', True);
  qOpisRaschetFrm.ExecReport(Session);
end;

procedure TMainForm.actFontExecute(Sender: TObject);
var
  AFont: TFont;
  I: Integer;
  AForm: TCustomForm;
begin
(*
  with TForm(CreateComponent('TConfigurationForm')) do
    try
      ShowModal;
    finally
      Free;
    end;
*)
  inherited;
  AFont := DictData.LayoutWebLookAndFeel.ItemOptions.CaptionOptions.Font;
  dlgFont.Font := AFont;
  if dlgFont.Execute then
  begin
    AFont.Assign(dlgFont.Font);
    for I := 0 to Screen.FormCount - 1 do
    begin
      AForm := Screen.Forms[I];
      if AForm is TfdcCustomForm then
      begin
        TfdcCustomForm(AForm).LayoutWebLookAndFeel.GroupOptions.CaptionOptions.Font.Assign(AFont);
        TfdcCustomForm(AForm).LayoutWebLookAndFeel.ItemOptions.CaptionOptions.Font.Assign(AFont);
        TfdcCustomForm(AForm).LayoutOfficeLookAndFeel.GroupOptions.CaptionOptions.Font.Assign(AFont);
        TfdcCustomForm(AForm).LayoutOfficeLookAndFeel.ItemOptions.CaptionOptions.Font.Assign(AFont);
        TfdcCustomForm(AForm).LayoutWebToolLookAndFeel.GroupOptions.CaptionOptions.Font.Assign(AFont);
        TfdcCustomForm(AForm).LayoutWebToolLookAndFeel.ItemOptions.CaptionOptions.Font.Assign(AFont);
        TfdcCustomForm(AForm).DefaultEditStyleController.Style.Font.Assign(AFont);
        TfdcCustomForm(AForm).OfficeEditStyleController.Style.Font.Assign(AFont);
        TfdcCustomForm(AForm).WebEditStyleController.Style.Font.Assign(AFont);
        TfdcCustomForm(AForm).Font.Assign(AFont);
      end;
    end;
  end;
end;

function TMainForm.GetShowServiceMode: boolean;
begin
  Result := FindCmdLineSwitch(SShowServiceParam);
end;

function TMainForm.GetShowConnectMode: boolean;
begin
  Result := FindCmdLineSwitch(SShowConnectParam);
end;

procedure TMainForm.LoadLayout;
var
  AFont: TFont;
  S: String;
  FontStyles: TFontStyles;
  FontValue: String;
  P: Integer;
  I: Integer;
begin
  inherited;
  AFont := TFont.Create;
  try
    AFont.Assign(DictData.LayoutWebLookAndFeel.ItemOptions.CaptionOptions.Font);
    P := 1;
    FontValue := VarToStr(ReadRegistryValue(AppRegistryKey, SAppFontName, rvString));
    S := ExtractFieldName(FontValue, P);
    if S <> '' then
       AFont.Name := S;

    S := ExtractFieldName(FontValue, P);
    if TryStrToInt(S, I) then
       AFont.Size := I;

    S := ExtractFieldName(FontValue, P);
    if TryStrToInt(S, I) and (I >= 0) and (I <= 3) then
    begin
       PByte(@FontStyles)^ := I;
       AFont.Style := FontStyles;
    end;

    S := ExtractFieldName(FontValue, P);
    if TryStrToInt(S, I) then
       AFont.Charset := I;

    DictData.LayoutWebLookAndFeel.ItemOptions.CaptionOptions.Font.Assign(AFont);
  finally
    AFont.Free;
  end;
end;

procedure TMainForm.SaveLayout;
var
  AFont: TFont;
  S: String;
  FontStyles_: Integer;
  FontStyles: TFontStyles;
begin
  inherited;
  AFont := DictData.LayoutWebLookAndFeel.ItemOptions.CaptionOptions.Font;
  FontStyles := AFont.Style;
  FontStyles_ := PByte(@FontStyles)^;
  S := Format('%s;%d;%d;%d', [AFont.Name, AFont.Size, FontStyles_, AFont.CharSet]);
  WriteRegistryValue(AppRegistryKey, SAppFontName, S);
end;

procedure TMainForm.ResetLayout;
begin
  inherited;
  WriteRegistryValue(AppRegistryKey, SAppFontName, '');
end;

procedure TMainForm.actHelpExecute(Sender: TObject);
var
 fileName: string;
 directory: string;
begin
  fileName:= GetHelpFileName;
  directory:= extractFilePath( fileName );
  ShellExecute(Self.Handle,'open',PAnsiChar(GetHelpFileName),nil,PAnsiChar(directory),SW_SHOW);
{  inherited;
  Application.HelpCommand(HELP_CONTEXT, Screen.ActiveForm.HelpContext);}
end;

procedure TMainForm.actOpenExecute(Sender: TObject);
var
  AForm: TfdcCustomObjectGridForm;
begin
  inherited;
   AForm := TfdcCustomObjectGridForm(MainForm.CreateComponent('TSubjectGridForm'));
  try
    try
      AForm.SearchMode := True;
      AForm.SearchMultiple := False;
      AForm.SearchTypeSysName := 'Subject';
      AForm.OnSearchFinished := nil;
      AForm.actOpen.Visible := False;
      AForm.actAdd.Visible := False;
      AForm.actDelete.Visible := False;
      if AForm.ShowModal = mrOk then
         ObjectServices.OpenObject(AForm.dsDataID.Value, nil);
    finally
       AForm.Free;
    end;
  except
    on E: Exception do
    begin
      E.Message := '������ ������������� ����� ������ ' +
        'TSubjectGridForm' + '!'#10#13 + E.Message;
      raise;
    end;
  end;
end;

procedure TMainForm.actHelpContentsExecute(Sender: TObject);
begin
  inherited;
  Application.HelpCommand(HELP_CONTENTS, 0);
//  fdcUtils.ShowHelpContent(ExtractFilePath(Application.ExeName) + ExtractFileName(Self.HelpFile), Screen.ActiveForm.HelpContext);
{  if (Self.ActiveMDIChild = nil) then
    fdcUtils.ShowHelpContent(ExtractFilePath(Application.ExeName) + ExtractFileName(Self.HelpFile), Self.HelpContext)
  else
    fdcUtils.ShowHelpContent(ExtractFilePath(Application.ExeName) + ExtractFileName(Self.HelpFile), Self.ActiveMDIChild.HelpContext);
{}
end;


procedure TMainForm.btnqDebetCreditClick(Sender: TObject);
begin
  inherited;
  MainData.CheckTask('Tsk_Report_DebetCredit', True);
  qDebetCreditFrm.ExecReport(MainData.Session);
end;

procedure TMainForm.dxBarButton26Click(Sender: TObject);
begin
  inherited;
  MainData.CheckTask('Tsk_Report_Payment_Order', True);
  qPaymentOrderFrm.ExecReport(MainData.Session);
end;

procedure TMainForm.dxBarButton28Click(Sender: TObject);
begin
  qCalcPeniFrm.ExecReport(MainData.Session);
end;


procedure TMainForm.btAccDateChange(Sender: TObject);
begin
  inherited;
  MainData.sqlSetAccDate.Exec('pdate', btAccDate.Date);
end;

procedure TMainForm.dxBarButton29Click(Sender: TObject);
begin
  inherited;
  MainData.CheckTask('Tsk_Report_GTD_Numbers_Control', True);
  qCheckDeclNoFrm.ExecReport(Session);
end;

procedure TMainForm.btnKNPRepSaldoClick(Sender: TObject);
begin
  inherited;
  qSubjSaldoFrm.ExecReport(MainData.Session);
end;

procedure TMainForm.btnKNPRepKBKClick(Sender: TObject);
begin
  inherited;
  qKNPKBKFrm.ExecReport(MainData.Session);
end;

procedure TMainForm.btnKNPRepDedClick(Sender: TObject);
begin
  inherited;
  qKNPDedFrm.ExecReport(MainData.Session);
end;

procedure TMainForm.btnKNPRepDedAllClick(Sender: TObject);
begin
  inherited;
  qKNPDedAllFrm.ExecReport(MainData.Session);
end;

procedure TMainForm.dxBarButton36Click(Sender: TObject);
begin
  inherited;
  MainData.CheckTask('Tsk_Report_Payment_Cmp', True);
  qPaymentCmpFrm.ExecReport(MainData.Session);
end;

//  qAvansRashodNewFrm.ExecReport(MainData.Session);

procedure TMainForm.btnAvansRaschodNewClick(Sender: TObject);
begin
  MainData.CheckTask('Tsk_Report_AvansRashod');
  qAvansRashodNewFrm.ExecReport(MainData.Session);
end;

procedure TMainForm.actGetDebtsExecute(Sender: TObject);
begin
  qryGetDebts.Execute;

{  MessageDlg( '������ � ��� "�������������" ��������� � ������� �� ���������!'
             ,''
             ,''
             ,mtInformation
             ,[mbOK]
             );  }
//  MessageDlg('������ � ��� "�������������" ��������� � ������� �� '+#13+#10+'���������!', mtInformation, [mbOK], 0);
  ShowMessage('������ � ��� "�������������" ��������� � ������� �� ���������!');
end;

procedure TMainForm.btnAvansCmpNewClick(Sender: TObject);
begin
  MainData.CheckTask('Tsk_Report_Avans_Cmp');
  qAvansCmpNewFrm.ExecReport(MainData.Session);
end;

function TMainForm.GetHelpFileName: string;
 var
   vFile : TFileName;
begin
  case GetCustomsLevel of
    0 : vFile := '����������� ������������ ��-���.htm';
    1 : vFile := '����������� ������������ ��-���.htm';
    2 : vFile := '����������� ������������ ��-�.htm';
    3,4 : vFile := '����������� ������������ ��-���.htm';
  end;
  Result := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + vFile;
end;

function TMainForm.GetCustomsLevel: Integer;
begin
  Result := MainData.GetCustomsLevel;
end;

procedure TMainForm.actDocSearchOnOpenExecute(Sender: TObject);
begin
  inherited;
  WriteRegistryValue(AppRegistryKey, SDocSearchOnOpen, actDocSearchOnOpen.Checked);
end;

procedure TMainForm.UpdateFormToDocSearchOnOpen(Form: TfdcCustomObjectGridForm);
var
  Tag    : Integer;
  i, j   : Integer;
  Group  : TdxNavBarGroup;
  f      : Boolean;
begin
  Tag := Integer(Form.ClassType);
  f := False;
  for i := 0 to FTaskListBarNavigator.Groups.Count - 1 do
    if FTaskListBarNavigator.Groups[i].Caption = '���������' then begin
      Group := FTaskListBarNavigator.Groups[i];
      for j := 0 to Group.LinkCount - 1 do
        if (Group.Links[j].Item.Tag = Tag) and
            actDocSearchOnOpen.Checked and
            Form.actSwitchSearchCriteria.Enabled and
            Form.actSwitchSearchCriteria.Visible and
            not Form.dsData.Session.InTransaction
        then begin
 //         Form.NoRecordOnShow := True;
          Form.actSwitchSearchCriteria.Execute;
          f := True;
          Break;
        end;
      if f then Break;
    end;
end;


procedure TMainForm.actEqualINNExecute(Sender: TObject);
begin
  inherited;
  MainData.CheckTask('TSK_SERVICE_EQUALINN', True);
  qEqualINN.ExecReport(MainData.Session);
end;

function TMainForm.GetAppVer : string;
begin
  GetAppVersion(['FileVersion'], [@Result]);
  Result := '������: ' + Result;
end;


procedure TMainForm.btnAdvanceRestClick(Sender: TObject);
begin
  inherited;
  MainData.CheckTask('TSK_REPORT_ADVANCEREST', True);
  qAdvanceRest.ExecReport(MainData.Session);
end;

procedure TMainForm.actNoticePeriodExecute(Sender: TObject);
begin
  inherited;
  MainData.CheckTask('TSK_REPORT_NSINOTICE_PERIOD', True);
  qNsiNoticePeriodReportFrm.ExecReport(Session);
end;

procedure TMainForm.SetShowVersion(const Value: Boolean);
  var fStAv : string;
begin
  fShowVersion := Value;

  if fShowVersion then
    begin
    //22.8.16
      fStAv := '���� ������: ' + Session.LogonDatabase + MainData.GetHintRcd(Session.LogonUsername) + GetAppVer;
      StatusBar.Panels[1].Text := fStAv;
    //
    end
    //StatusBar.Panels[1].Text := GetAppVer
  else
    StatusBar.Panels[1].Text := '';
end;

procedure TMainForm.StatusBarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if     ( ssShift in Shift )
     and ( ssCtrl	 in Shift ) then
    SetShowVersion( not fShowVersion );
end;

procedure TMainForm.SetVisibleComponents;
  function as_iv( AVisible: boolean):TdxBarItemVisible;
  begin
    if AVisible then
      result := ivAlways
    else
      Result := ivNever;
  end;
begin
  if ( btnReportPayMK_Fiz.Enabled ) then
    btnReportPayMK_Fiz.Visible := ivAlways
  else
    btnReportPayMK_Fiz.Visible := ivNever;

  btnKTSPaysRep.Visible := as_iv(GetCustomsLevel in [2, 3, 4]);
  btnKTSReturnRep.Visible := as_iv(GetCustomsLevel in [2, 3, 4]);
  btnBudgetPays.Visible := as_iv(GetCustomsLevel in [2, 3, 4]);
  siRepPaymments.Visible := as_iv(GetCustomsLevel = 0);
  bsiReportKNPGroup.Visible := ivNever;
  case GetCustomsLevel of
   3, 4:  // ���
      begin
        miService.Visible  := ivNever;
        actImportDecl.Visible := False;
        actImportTPO.Visible := False;
        actImportTR.Visible := False;
//        actImportCC.Visible := False;
        actImportCO.Visible := False;
        bsiReportKNPGroup.Visible := ivAlways;
      end;
  end;
end;

procedure TMainForm.btnRepDocPackPaymentsClick(Sender: TObject);
begin
  inherited;
  qDocPackPaymentsFrm.ExecReport(MainData.Session);
end;

procedure TMainForm.dxBarButton48Click(Sender: TObject);
begin
  //MainData.CheckTask('', True);
  fdcVozvratUnit.ExecReport(Session);
end;

procedure TMainForm.dxBarButton50Click(Sender: TObject);
begin
  fdcNoticeKindPayUnit.ExecReport(Session);
end;

procedure TMainForm.barSubItemBuxReportsPopup(Sender: TObject);
  var
    item        : TdxBarButton;
    i           : Integer;
    Rep         : TBuxReport;
    isforperiod : Boolean;
    SubitemOld  : TdxBarSubItem;
begin
  isforperiod := (Sender <> barSubItemBuxReportsDate);
  if (isforperiod) then
    begin
      SubitemOld := barSubItemBuxReportsPeriodOld;
    end
  else
    begin
      SubitemOld := barSubItemBuxReportsOld;
    end;
  //--
  with TdxBarSubItem(Sender) do
    begin
      i := 0;
      while i < ItemLinks.Count do
        begin
          if (ItemLinks.Items[i].Item <> SubitemOld) then
            begin
              ItemLinks.Items[i].Item.Free;
            end
          else
            begin
              inc( i );
            end;
        end;
    end;

  with SubitemOld do
    begin
      while (ItemLinks.Count > 0) do
        begin
          ItemLinks.Items[0].Item.Free;
        end;
    end;

  while (fBuxReportsList.Count > 0) do
    begin
      Rep := TBuxReport( fBuxReportsList.Items[0] );
      fBuxReportsList.Remove( Rep );
      Rep.Free;
    end;

  try
    with MainData.dsBuxReports do
      begin
        if Active then
          Refresh
        else
          Open;
        First;
        while not Eof do
          begin
            Rep := TBuxReport.Create;
            with Rep do
              begin
                ID        := FieldByName( 'id' ).AsInteger;
                Name      := FieldByName( 'name' ).AsString;
                SysName   := FieldByName( 'SysName' ).AsString;
                Template  := FieldByName( 'template_name' ).AsString;
                EvtType   := FieldByName( 'evt_type' ).AsString;
                EvtCode   := FieldByName( 'evt_code' ).AsString;
                DateFrom  := FieldByName( 'sdate' ).AsDateTime;
                ForPeriod := isforperiod;

                if FieldByName( 'edate' ).IsNull then
                  DateTo := 0
                else
                  DateTo := FieldByName( 'edate' ).AsDateTime;
              end;

            fBuxReportsList.Add( Rep );

            item         := TdxBarButton.Create( BarManager );
            item.Caption := IfThen(isforperiod,IfThen((FieldByName( 'shortname' ).AsString <> ''),FieldByName( 'shortname' ).AsString,FieldByName( 'name' ).AsString),FieldByName( 'name' ).AsString);
            item.Data    := Rep;
            item.OnClick := BuxReportClick;

            if (
                (FieldByName( 'edate' ).IsNull)
               or
                (FieldByName( 'edate' ).AsDateTime >= Trunc( now ))
               ) then
              begin
                TdxBarSubItem(Sender).ItemLinks.Add.Item := item;
              end
            else
              begin
                SubitemOld.ItemLinks.Add.Item := item;
              end;  
            Next;
          end;

        if SubitemOld.ItemLinks.Count = 0 then
          begin
            SubitemOld.Visible := ivNever;
            SubitemOld.Enabled := False;
          end
        else
          begin
            SubitemOld.Visible := ivAlways;
            SubitemOld.Enabled := True;
          end;
      end;
  finally
    if MainData.dsBuxReports.Active then
      MainData.dsBuxReports.CloseAll;
  end;
end;

procedure TMainForm.BuxReportClick(Sender: TObject);
  var lParams: TParams;
      lReportBudgetGridForm: TReportBudgetGridForm;
      li: Integer;
      lParam: TParam;
  function is_need_Reportbudgetgrid_present(preport_type_id: Integer): boolean;
    var li: Integer;
  begin
    Result := false;
    for li := 0 to Navigator.TreeView.Items.Count-1 do
      begin
        if (TObject(Navigator.TreeView.Items[li].Data) is TReportBudgetGridForm) then
          begin
            lParam := (TObject(Navigator.TreeView.Items[li].Data) as TReportBudgetGridForm).Params.ParamByName('REPORT_TYPE_ID');
            if (lParam <> nil ) then
              begin
                if (lParam.Value = preport_type_id) then
                  begin
                    Result := true;
                    lParam := nil;
                    Navigator.TreeView.Selected := Navigator.TreeView.Items[li];
                    break;
                  end;
              end;
          end;
      end;
  end;
begin
  with Sender as TdxBarButton do
    begin
      if (( Data as TBuxReport ).ForPeriod) then
        begin
          TqCustomBuxReportForm.ShowReport( Session, ( Data as TBuxReport ), nil );
        end
      else
        begin
          if is_need_Reportbudgetgrid_present(( Data as TBuxReport ).ID) then
            begin
            end
          else
            begin
              //--
              lParams := TParams.Create;
              try
                lParams.AddParam(lParams.CreateParam(ftFloat,'REPORT_TYPE_ID',ptUnknown));
                lParams.Items[0].Value := ( Data as TBuxReport ).ID;
                //--
                lReportBudgetGridForm := TReportBudgetGridForm(ShowForm('TReportBudgetGridForm',lparams));
                lReportBudgetGridForm.Caption := '��������� ������: ' + ( Data as TBuxReport ).Name;
                for li := 0 to Navigator.TreeView.Items.Count-1 do
                  begin
                    if (Navigator.TreeView.Items[li].Data = lReportBudgetGridForm) then
                      begin
                        Navigator.TreeView.Items[li].Text := lReportBudgetGridForm.Caption;
                        break;
                      end;
                  end;
                //--
                //lReportBudgetGridForm := nil;
                //--
                FreeAndNil(lParams);
              except
                on e:Exception do
                  begin
                    FreeAndNil(lParams);
                    raise Exception.Create(e.Message);
                  end;
              end;
              //--
          end;
        end;
    end;
end;

procedure TMainForm.btnRepKNPPlusMinusClick(Sender: TObject);
begin
  qKNPPlusMinusFrm.ExecReport;
end;

procedure TMainForm.btnKNPAccClick(Sender: TObject);
begin
  qKNPAccFrm.ExecReport;
end;

procedure TMainForm.SaveLogon;
var
  IniFile: TIniFile;
begin
  IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) +
    'dbconn.ini');
  try
    IniFile.WriteString( 'db', 'LogonUsername', Trim(Session.LogonUsername) );
    IniFile.WriteString( 'db', 'DataBase',      Trim(Session.LogonDatabase) );
  finally
    IniFile.Free;
  end;
end;

procedure TMainForm.actReportSvodExecute(Sender: TObject);
  var
    frmParams : TqSvodReportForm;
begin
  inherited;

  frmParams := TqSvodReportForm.Create( Self );
  try
    frmParams.ExecReport( Session );
    frmParams.ShowModal;
  finally
    frmParams.Free;
  end;
end;

procedure TMainForm.dxBarButton7Click(Sender: TObject);
begin
  inherited;
  fdcEventDelGtd_ChangeNPPUnit.ExecReport(Session);
end;

procedure TMainForm.btnReportPayMK_TPSClick(Sender: TObject);
begin
  inherited;
  fdcReportDateForm_DateToUnit.ExecReportPayMK_TPS(Session);
end;

procedure TMainForm.btnReportPayMK_TKClick(Sender: TObject);
begin
  inherited;
  fdcReportDateForm_DateToUnit.ExecReportPayMK_TK(Session);
end;

procedure TMainForm.btnReportPayMK_MPSClick(Sender: TObject);
begin
  inherited;
  fdcReportDateForm_DateToUnit.ExecReportPayMK_MPS(Session);
end;

procedure TMainForm.BarBtnReestrs_rtu_ftsClick(Sender: TObject);
begin
  inherited;
  fdcReportDateForm_DateToUnit.ExecReportReestrs_RTU_FTS(Session);
end;

procedure TMainForm.btnReportOutPacksClick(Sender: TObject);
begin
  inherited;
  qMasterDetailByPeriodFrm.ExecReport('������������_�������.xls');
end;

procedure TMainForm.btnReportInPacksClick(Sender: TObject);
begin
  inherited;
  qMasterDetailByPeriodFrm.ExecReport('��������_�������.xls');
end;

procedure TMainForm.btnCustomsChequeNewClick(Sender: TObject);
begin
  fdcReportDateForm_DateToUnit.ExecReport(Session, '����������');
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{$IFDEF _DEBUG_}
  Action:= caFree
{$ELSE}
  if ConfirmDlg( '�� �������, ��� ������ ����� �� ��������� "' + InternalName + '"?'
                ,'����������� ����� �� ���������' ) = mrYes then
    Action:= caFree
  else
    Action:= caNone;
{$ENDIF}
end;

procedure TMainForm.btnChargesPay0543011Click(Sender: TObject);
begin
  qReportFrom_TO_Date_CurrFrm.ExecReportChargesPay(Session);
end;

procedure TMainForm.dxBarControlTimeBackClick(Sender: TObject);
begin
  qReportControlTimeBackFrm.ExecReport(Session);
end;

procedure TMainForm.dxBarButton12Click(Sender: TObject);
begin
   srDayTotalNew.ExecReport(Self);
end;

procedure TMainForm.actReportSvodOutExecute(Sender: TObject);
  var
    frmParams : TqSvodOutReportForm;
begin
  inherited;

  frmParams := TqSvodOutReportForm.Create( Self );
  try
    frmParams.ExecReport( Session );
    frmParams.ShowModal;
  finally
    frmParams.Free;
  end;
end;

//Klim-12.8.16
procedure TMainForm.actReportSvodOutELSExecute(Sender: TObject);
  var
    frmParams : TqSvodOutReportFormELS;
begin
  inherited;

  frmParams := TqSvodOutReportFormELS.Create( Self );
  try
    frmParams.ExecReport( Session );
    frmParams.ShowModal;
  finally
    frmParams.Free;
  end;
end;

procedure TMainForm.actCheckForMesExecute(Sender: TObject);
var
  sMesBf: string;
  sMes : Variant;
begin
  try
    if MainData.Session.Connected then
      while (MainData.Session.DBMS_Pipe.Receive_Message(UpperCase(MainData.Session.LogonUsername), 0) = 0) do
        begin
          MainData.Session.DBMS_Pipe.Unpack_Message(sMes);
          sMesBf := sMesBf + '---------- ��������� ----------' + #13#10 + sMes + #13#10;
        end;
    if (length(sMesBf) > 0) then
      begin
      MainData.NoteStr := sMesBf;
      with TNotifyMe.Create(Application) do
        try
          ShowModal;
        finally
          Free;
        end;
      end;
  except

  end;
end;
//
procedure TMainForm.actReportSvodInExecute(Sender: TObject);
  var
    frmParams : TqSvodInReportForm;
begin
  inherited;

  frmParams := TqSvodInReportForm.Create( Self );
  try
    frmParams.ExecReport( Session );
    frmParams.ShowModal;
  finally
    frmParams.Free;
  end;
end;

procedure TMainForm.actReportConfirmPayExecute(Sender: TObject);
begin
  MainData.CheckTask('Tsk_Report_PayConfirm', True);
  qPayConfirmFrm.ExecReport(MainData.Session);
end;

procedure TMainForm.actMergePersonExecute(Sender: TObject);
begin
  SubjectMergeFrm.ShowDialogForm(Session);
end;

procedure TMainForm.ShowXLSReportForm(const ACaption, AFormClass, ATemplateFile: string);
var vClass: TPersistentClass;
begin
  vClass := GetClass(AFormClass);
  if not(Assigned(vClass) and vClass.InheritsFrom(TXLSReportForm)) then
    raise Exception.CreateFmt('�������� ��� ������ ����� ������ [%s]!', [AFormClass]);
  TXLSReportForm(vClass.NewInstance).ExecuteReport(ACaption, ATemplateFile)
end;

procedure TMainForm.btnKTSRepClick(Sender: TObject);
begin
  ShowXLSReportForm(TdxBarButton(Sender).Caption, 'TqKTSForm', TdxBarButton(Sender).Description);
end;

procedure TMainForm.actReportSpecifyTargetKBKExecute(Sender: TObject);
  var
    frmParams : TqSpecifyTargetKBKReportForm;
begin
  inherited;

  frmParams := TqSpecifyTargetKBKReportForm.Create( Self );
  try
    frmParams.ExecReport( Session );
    frmParams.ShowModal;
  finally
    frmParams.Free;
  end;
end;

procedure TMainForm.dxBarButton2Click(Sender: TObject);
begin
  qReportPayBackFrm.ExecReport(Session);
end;

function TMainForm.ShowFormObject(AID: double; ADockSite: TWinControl): TForm;
  var l_fdcObject: TfdcObject;
begin
  l_fdcObject := MainForm.ObjectFactory.GetObject(AID, True);
  result := MainForm.CreateComponent(l_fdcObject.ObjectType.DefaultFormClass,Application) as TForm;
  TfdcCustomObjectForm(result).EditObject := l_fdcObject;
  result.ManualDock(ADockSite);
  result.WindowState := wsNormal;
  result.Align := alClient;
  result.Show;
  result.Realign;
end;

procedure TMainForm.btnCheckTPONoClick(Sender: TObject);
begin
  inherited;
  qCheckTPONoFrm.ExecReport(Session);
end;

procedure TMainForm.btnCheckTRNoClick(Sender: TObject);
begin
  inherited;
  qCheckTRNoFrm.ExecReport(Session);
end;

procedure TMainForm.btnReportPayMK_FizClick(Sender: TObject);
begin
  inherited;
  fdcReportDateMKForm_DateToUnit.ExecReportPayMKFiz(Session);
end;

// ���������� TdxBarButton.OnClick ��� ������� �������
// TdxBarButton.Description = '���_������_�����_������;���_�����_�������'
procedure TMainForm.btnXLSReportClick(Sender: TObject);
var
  vCaption, vFileName, vFormClass, vStr: string;
  vPos: integer;
begin
  if Assigned(Sender) and
    (Sender is TdxBarButton) then
  begin
    vCaption := IfElse(TdxBarButton(Sender).Hint = EmptyStr, TdxBarButton(Sender).Caption, TdxBarButton(Sender).Hint);
    vStr := TdxBarButton(Sender).Description;
    vPos := pos(';', vStr);
    if vPos > 0 then
      begin
        vFileName  := copy(vStr, vPos + 1, length(vStr) - vPos);
        vFormClass := copy(vStr, 1, vPos - 1);
        ShowXLSReportForm(vCaption, vFormClass, vFileName);
      end;
  end;
end;

procedure TMainForm.CheckExpDate;
var
  st: string;
  vExpDate: TDateTime;
begin
  with MainForm, MainData do
  begin
      st := GetUserExpDate;

      if st <> '' then
      begin
        vExpDate := StrToDate(st);
        if vExpDate <= DateOf(now) then
        begin
          if not Assigned(PasswordDlgForm) then
          begin
            PasswordDlgForm := TPasswordDlgForm.Create(nil);
            PasswordDlgForm.ShowModal;

            if PasswordDlgForm.ModalResult <> mrYes then
              Application.Terminate;

            if Assigned(PasswordDlgForm) then
                 PasswordDlgForm.Free;
          end;
        end;
      end;
  end;
end;

procedure TMainForm.execReport(Sender: TObject);
var
 vStr: string;
 vPos: integer;
begin
 if not(Assigned(Sender) and (Sender is TdxBarButton)) then
   raise Exception.Create('����� �� �������� ��� �������� �� �����!');
 vStr := TdxBarButton(Sender).Description;
 vPos := pos(';', vStr);
 if (vPos = 0) then
   raise Exception.Create('�� ����� ����������� �������� Description!');
 ShowXLSReportForm(
   IfElse(TdxBarButton(Sender).Hint = EmptyStr, TdxBarButton(Sender).Caption, TdxBarButton(Sender).Hint),
   copy(vStr, 1, vPos - 1),
   copy(vStr, vPos + 1, length(vStr) - vPos) );
end;

procedure TMainForm.dxBarButton30Click(Sender: TObject);
begin
 CheckSvedCustomReport.ExecReport(MainData.Session);
            
end;

procedure TMainForm.dxBarButton31Click(Sender: TObject);
begin
  inherited;
 CheckSvedAccStates.ExecReport(MainData.Session);
end;

procedure TMainForm.dxBarButton32Click(Sender: TObject);
begin
  inherited;
  CheckSvedAccDocs.ExecReport(MainData.Session);
end;

procedure TMainForm.dxBarButton33Click(Sender: TObject);
begin
  inherited;
  CheckSvedControlConfirm.execReport(MainData.Session);
end;

procedure TMainForm.dxBarButton34Click(Sender: TObject);
begin
  inherited;
  ControlPays.ExecReport(MainData.Session);
end;

procedure TMainForm.dxBarButton35Click(Sender: TObject);
begin
  inherited;
  checkSvedDocsNotAcc.ExecReport(MainData.Session);
end;

procedure TMainForm.dxBarButton37Click(Sender: TObject);
begin
  inherited;
  CheckSvedReviseChargeAistLS.ExecReport(MainData.Session);
end;

procedure TMainForm.dxBarButton38Click(Sender: TObject);
begin
  inherited;
  CheckSvedReviseChargeOrderLS.ExecReport(MainData.Session);
end;

procedure TMainForm.dxBarButton39Click(Sender: TObject);
begin
  inherited;
  CheckSvedReviseDeductAistLS.ExecReport(MainData.Session);
end;

procedure TMainForm.dxBarButton40Click(Sender: TObject);
begin
  inherited;
CheckSvedReviseDeductOrderLS.ExecReport(MainData.Session);
end;

procedure TMainForm.dxBarButton41Click(Sender: TObject);
var  F:   TDeclarantChecksGridForm;
begin
  inherited;
  F := TDeclarantChecksGridForm.create(nil);
  F.Show;
end;

end.
