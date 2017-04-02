program SecurityMonitor;

uses
  Forms,
  fdcCustomFrm in '..\Common\fdcCustomFrm.pas' {fdcCustomForm},
  fdcCustomDlgFrm in '..\Common\fdcCustomDlgFrm.pas' {fdcCustomDlgForm},
  fdcCustomSimpleDlgFrm in '..\Common\fdcCustomSimpleDlgFrm.pas' {fdcCustomSimpleDlgForm},
  fdcCustomTabDlgFrm in '..\Common\fdcCustomTabDlgFrm.pas' {fdcCustomTabDlgForm},
  fdcCustomWizardFrm in '..\Common\fdcCustomWizardFrm.pas' {fdcCustomWizardForm},
  fdcCustomLogOnFrm in '..\Common\fdcCustomLogOnFrm.pas' {fdcCustomLogOnForm},
  fdcOraLogOnFrm in '..\Common\fdcOraLogOnFrm.pas' {fdcOraLogOnForm},
  fdcSplashFrm in '..\Common\fdcSplashFrm.pas' {fdcSplashForm},
  fdcModulesInfoFrm in '..\Common\fdcModulesInfoFrm.pas' {fdcModulesInfoForm},
  fdcCustomWindowFrm in '..\Common\fdcCustomWindowFrm.pas' {fdcCustomWindowForm},
  fdcCustomMainFrm in '..\Common\fdcCustomMainFrm.pas' {fdcCustomMainForm},
  fdcCustomOraMainFrm in '..\Common\fdcCustomOraMainFrm.pas' {fdcCustomOraMainForm},
  fdcCustomDataFrm in '..\Common\fdcCustomDataFrm.pas' {fdcCustomDataForm},
  fdcCustomDBDataFrm in '..\Common\fdcCustomDBDataFrm.pas' {fdcCustomDBDataForm},
  fdcCustomCardFrm in '..\Common\fdcCustomCardFrm.pas' {fdcCustomCardForm},
  fdcCustomGridFrm in '..\Common\fdcCustomGridFrm.pas' {fdcCustomGridForm},
  MainDm in 'Source\MainDm.pas' {MainData: TDataModule},
  MainFrm in 'Source\MainFrm.pas' {MainForm},
  fdcCustomObjectGridFrm in '..\Common\fdcCustomObjectGridFrm.pas' {fdcCustomObjectGridForm},
  fdcCustomObjectFrm in '..\Common\fdcCustomObjectFrm.pas' {fdcCustomObjectForm},
  ObjectFrm in 'Source\ObjectFrm.pas' {ObjectForm},
  ObjectGridFrm in 'Source\ObjectGridFrm.pas' {ObjectGridForm},
  fdcCustomMainDm in '..\Common\fdcCustomMainDm.pas' {fdcCustomMainData: TDataModule},
  NavigatorFrm in 'Source\NavigatorFrm.pas' {NavigatorForm},
  EventGridFrm in 'Source\EventGridFrm.pas' {EventGridForm},
  ObjectBufferFrm in 'Source\ObjectBufferFrm.pas' {ObjectBufferForm},
  ObjectGridByOwnerFrm in 'Source\ObjectGridByOwnerFrm.pas' {ObjectGridByOwnerForm},
  ValueGridByObjectFrm in 'Source\ValueGridByObjectFrm.pas' {ValueGridByObjectForm},
  ObjectTypeTreeDlgFrm in 'Source\ObjectTypeTreeDlgFrm.pas' {ObjectTypeTreeDlgForm},
  ValueFrm in 'Source\ValueFrm.pas' {ValueForm},
  ValueStringFrm in 'Source\ValueStringFrm.pas' {ValueStringForm},
  ValueNumberFrm in 'Source\ValueNumberFrm.pas' {ValueNumberForm},
  ValueDateTimeFrm in 'Source\ValueDateTimeFrm.pas' {ValueDateTimeForm},
  ValueRefFrm in 'Source\ValueRefFrm.pas' {ValueRefForm},
  ValueBoolFrm in 'Source\ValueBoolFrm.pas' {ValueBoolForm},
  ValueRefFileFrm in 'Source\ValueRefFileFrm.pas' {ValueRefFileForm},
  ObjectRelationGridByObjectFrm in 'Source\ObjectRelationGridByObjectFrm.pas' {ObjectRelationGridByObjectForm},
  EventGridByObjectFrm in 'Source\EventGridByObjectFrm.pas' {EventGridByObjectForm},
  StateFrm in 'Source\StateFrm.pas' {StateForm},
  StateSchemeFrm in 'Source\StateSchemeFrm.pas' {StateSchemeForm},
  StateGridBySchemeFrm in 'Source\StateGridBySchemeFrm.pas' {StateGridBySchemeForm},
  StateTransitGridFrm in 'Source\StateTransitGridFrm.pas' {StateTransitGridForm},
  StateTransitGridBySchemeFrm in 'Source\StateTransitGridBySchemeFrm.pas' {StateTransitGridBySchemeForm},
  StateTransitGridByStateFrm in 'Source\StateTransitGridByStateFrm.pas' {StateTransitGridByStateForm},
  AccessLevelDlgFrm in 'Source\AccessLevelDlgFrm.pas' {AccessLevelDlgForm},
  ObjectGrantGridFrm in 'Source\ObjectGrantGridFrm.pas' {ObjectGrantGridForm},
  StateTransitFrm in 'Source\StateTransitFrm.pas' {StateTransitForm},
  PersonGridFrm in 'Source\PersonGridFrm.pas' {PersonGridForm},
  PersonFrm in 'Source\PersonFrm.pas' {PersonForm},
  SysObjectGridFrm in 'Source\SysObjectGridFrm.pas' {SysObjectGridForm},
  ObjectGridTreeFrm in 'Source\ObjectGridTreeFrm.pas' {ObjectGridTreeForm},
  ObjectTypeFrm in 'Source\ObjectTypeFrm.pas' {ObjectTypeForm},
  UserFrm in 'Source\UserFrm.pas' {UserForm},
  UserGridByUserGroupFrm in 'Source\UserGridByUserGroupFrm.pas' {UserGridByUserGroupForm},
  UserGridFrm in 'Source\UserGridFrm.pas' {UserGridForm},
  UserGroupFrm in 'Source\UserGroupFrm.pas' {UserGroupForm},
  UserGroupGridByUserFrm in 'Source\UserGroupGridByUserFrm.pas' {UserGroupGridByUserForm},
  UserGroupGridFrm in 'Source\UserGroupGridFrm.pas' {UserGroupGridForm},
  SysComponentFrm in 'Source\SysComponentFrm.pas' {SysComponentForm},
  SysComponentGridFrm in 'Source\SysComponentGridFrm.pas' {SysComponentGridForm},
  SysComponentGridByObjectTypeFrm in 'Source\SysComponentGridByObjectTypeFrm.pas' {SysComponentGridByObjectTypeForm},
  ServerComponentFrm in 'Source\ServerComponentFrm.pas' {ServerComponentForm},
  ViewFrm in 'Source\ViewFrm.pas' {ViewForm},
  ProcedureFrm in 'Source\ProcedureFrm.pas' {ProcedureForm},
  AddressGridFrm in 'Source\AddressGridFrm.pas' {AddressGridForm},
  AddressGridByObjectFrm in 'Source\AddressGridByObjectFrm.pas' {AddressGridByObjectForm},
  AddressFrm in 'Source\AddressFrm.pas' {AddressForm},
  RegDocumentGridFrm in 'Source\RegDocumentGridFrm.pas' {RegDocumentGridForm},
  RegDocumentGridByObjectFrm in 'Source\RegDocumentGridByObjectFrm.pas' {RegDocumentGridByObjectForm},
  RegDocumentFrm in 'Source\RegDocumentFrm.pas' {RegDocumentForm},
  ContactGridFrm in 'Source\ContactGridFrm.pas' {ContactGridForm},
  ContactGridByObjectFrm in 'Source\ContactGridByObjectFrm.pas' {ContactGridByObjectForm},
  ContactFrm in 'Source\ContactFrm.pas' {ContactForm},
  HumanFrm in 'Source\HumanFrm.pas' {HumanForm},
  LegalFrm in 'Source\LegalFrm.pas' {LegalForm},
  DictGridFrm in 'Source\DictGridFrm.pas' {DictGridForm},
  DictGridByPositionFrm in 'Source\DictGridByPositionFrm.pas' {DictGridByPositionForm},
  DictFrm in 'Source\DictFrm.pas' {DictForm},
  DictGridByObjectFrm in 'Source\DictGridByObjectFrm.pas' {DictGridByObjectForm},
  TaskGridFrm in 'Source\TaskGridFrm.pas' {TaskGridForm},
  TaskFrm in 'Source\TaskFrm.pas' {TaskForm},
  UserGroupGridByTaskFrm in 'Source\UserGroupGridByTaskFrm.pas' {UserGroupGridByTaskForm},
  TaskGridBySysComponentFrm in 'Source\TaskGridBySysComponentFrm.pas' {TaskGridBySysComponentForm},
  TaskGridByUserFrm in 'Source\TaskGridByUserFrm.pas' {TaskGridByUserForm},
  TaskGridByUserGroupFrm in 'Source\TaskGridByUserGroupFrm.pas' {TaskGridByUserGroupForm},
  SysComponentGridByTaskFrm in 'Source\SysComponentGridByTaskFrm.pas' {SysComponentGridByTaskForm},
  FileGridFrm in 'Source\FileGridFrm.pas' {FileGridForm},
  FileFrm in 'Source\FileFrm.pas' {FileForm},
  CollectionGridFrm in 'Source\CollectionGridFrm.pas' {CollectionGridForm},
  CollectionFrm in 'Source\CollectionFrm.pas' {CollectionForm},
  ObjectGridByCollectionFrm in 'Source\ObjectGridByCollectionFrm.pas' {ObjectGridByCollectionForm},
  GranteeGridFrm in 'Source\GranteeGridFrm.pas' {GranteeGridForm},
  FormUtils in 'Source\FormUtils.pas',
  ObjServices in 'Source\ObjServices.pas',
  ValueSysGridFrm in 'Source\ValueSysGridFrm.pas' {ValueGridForm},
  FormMngr in '..\Common\FormMngr.pas',
  NewUserFrm in 'Source\NewUserFrm.pas' {NewUserForm},
  ChangeTableGridFrm in 'Source\ChangeTableGridFrm.pas' {ChangeTableGridForm},
  ChangeTableFrm in 'Source\ChangeTableFrm.pas' {ChangeTableForm},
  ChangeColumnGridFrm in 'Source\ChangeColumnGridFrm.pas' {ChangeColumnGridForm},
  fdcCustomNonObjectGridFrm in 'Source\fdcCustomNonObjectGridFrm.pas' {fdcCustomNonObjectGridForm},
  fdcCustomNonObjectFrm in 'Source\fdcCustomNonObjectFrm.pas' {fdcCustomNonObjectForm},
  TaskAddComponentsFrm in 'Source\TaskAddComponentsFrm.pas' {TaskAddComponentsForm},
  GetTaskInsertFrm in 'Source\GetTaskInsertFrm.pas' {GetTaskInsertForm},
  UpdateLogGridFrm in 'Source\UpdateLogGridFrm.pas' {UpdateLogGridForm},
  RoleGridFrm in 'Source\RoleGridFrm.pas' {RoleGridForm},
  RoleFrm in 'Source\RoleFrm.pas' {RoleForm},
  UserGridByRoleFrm in 'Source\UserGridByRoleFrm.pas' {UserGridByRoleForm},
  RoleGridByUserFrm in 'Source\RoleGridByUserFrm.pas' {RoleGridByUserForm},
  EventsGridFrm in 'Source\EventsGridFrm.pas' {EventsGridForm},
  DictPathDocpackGridFrm in 'Source\DictPathDocpackGridFrm.pas' {DictPathDocpackGridForm},
  DictPathDocpackFrm in 'Source\DictPathDocpackFrm.pas' {DictPathDocpackForm},
  SubjectGridFrm in 'Source\SubjectGridFrm.pas' {SubjectGridForm},
  TargetCustomsGridFrm in 'Source\TargetCustomsGridFrm.pas' {TargetCustomsGridForm},
  DictGridExFrm in 'Source\DictGridExFrm.pas' {DictGridExForm},
  EventReportDlgFrm in 'Source\EventReportDlgFrm.pas' {EventReportDlgForm},
  EventReportUtil in 'Source\EventReportUtil.pas',
  InteractSettingsGridFrm in 'Source\InteractSettingsGridFrm.pas' {InteractSettingsGridForm},
  InteractSettingsFrm in 'Source\InteractSettingsFrm.pas' {InteractSettingsForm},
  InteractSettingsMsgTypesGridFrm in 'Source\InteractSettingsMsgTypesGridFrm.pas' {InteractSettingsMsgTypesGridForm},
  InteractSettingsMsgTypesFrm in 'Source\InteractSettingsMsgTypesFrm.pas' {InteractSettingsMsgTypesForm},
  InteractSettingsQueuesGridFrm in 'Source\InteractSettingsQueuesGridFrm.pas' {InteractSettingsQueuesGridForm},
  InteractSettingsQueuesFrm in 'Source\InteractSettingsQueuesFrm.pas' {InteractSettingsQueuesForm},
  InteractLogGridFrm in 'Source\InteractLogGridFrm.pas' {InteractLogGridForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '�������������';
  Application.CreateForm(TMainData, MainData);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TGranteeGridForm, GranteeGridForm);
  Application.CreateForm(TInteractSettingsMsgTypesGridForm, InteractSettingsMsgTypesGridForm);
  Application.CreateForm(TInteractSettingsMsgTypesForm, InteractSettingsMsgTypesForm);
  Application.CreateForm(TInteractSettingsQueuesGridForm, InteractSettingsQueuesGridForm);
  Application.CreateForm(TInteractSettingsQueuesForm, InteractSettingsQueuesForm);
  Application.CreateForm(TInteractLogGridForm, InteractLogGridForm);
  //  Application.CreateForm(TInteractSettingsForm, InteractSettingsForm);
  //  Application.CreateForm(TInteractSettingsGridForm, InteractSettingsGridForm);
  Application.Run;
end.