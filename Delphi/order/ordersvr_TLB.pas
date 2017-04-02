unit ordersvr_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 24.01.2017 15:54:44 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\BUILD_LS\MOD\Delphi\order\ordersvr.tlb (1)
// LIBID: {1CB4B8B7-E859-48D3-AF81-5D9CDC3ED77F}
// LCID: 0
// Helpfile: 
// HelpString: ordersvr Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\Windows\SysWow64\midas.dll)
//   (2) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  ordersvrMajorVersion = 1;
  ordersvrMinorVersion = 0;

  LIBID_ordersvr: TGUID = '{1CB4B8B7-E859-48D3-AF81-5D9CDC3ED77F}';

  IID_IRemoteDM: TGUID = '{316B912E-0E72-45DB-AEF9-B14D0FF70363}';
  CLASS_RemoteDM: TGUID = '{BA47D127-6A50-4479-B9DB-981ED95FB3BA}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IRemoteDM = interface;
  IRemoteDMDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  RemoteDM = IRemoteDM;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  POleVariant1 = ^OleVariant; {*}


// *********************************************************************//
// Interface: IRemoteDM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {316B912E-0E72-45DB-AEF9-B14D0FF70363}
// *********************************************************************//
  IRemoteDM = interface(IAppServer)
    ['{316B912E-0E72-45DB-AEF9-B14D0FF70363}']
    procedure QueryCommit; safecall;
    procedure QueryRollback; safecall;
    procedure GetLastError(var ErrCode: OleVariant); safecall;
    procedure GetLastErrorMsg(var Size: OleVariant; var ErrMsg: OleVariant); safecall;
    procedure SetInfo(const Host: WideString; const IP: WideString; Port: Integer); safecall;
    procedure Query(const TypeQuery: WideString); safecall;
    procedure SendData(var QMsg: OleVariant; var QMsgSize: OleVariant); safecall;
    procedure ReceiveAnswer(var AMsg: OleVariant; var AMsgSize: OleVariant); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRemoteDMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {316B912E-0E72-45DB-AEF9-B14D0FF70363}
// *********************************************************************//
  IRemoteDMDisp = dispinterface
    ['{316B912E-0E72-45DB-AEF9-B14D0FF70363}']
    procedure QueryCommit; dispid 306;
    procedure QueryRollback; dispid 307;
    procedure GetLastError(var ErrCode: OleVariant); dispid 311;
    procedure GetLastErrorMsg(var Size: OleVariant; var ErrMsg: OleVariant); dispid 312;
    procedure SetInfo(const Host: WideString; const IP: WideString; Port: Integer); dispid 310;
    procedure Query(const TypeQuery: WideString); dispid 304;
    procedure SendData(var QMsg: OleVariant; var QMsgSize: OleVariant); dispid 302;
    procedure ReceiveAnswer(var AMsg: OleVariant; var AMsgSize: OleVariant); dispid 303;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoRemoteDM provides a Create and CreateRemote method to          
// create instances of the default interface IRemoteDM exposed by              
// the CoClass RemoteDM. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRemoteDM = class
    class function Create: IRemoteDM;
    class function CreateRemote(const MachineName: string): IRemoteDM;
  end;

implementation

uses ComObj;

class function CoRemoteDM.Create: IRemoteDM;
begin
  Result := CreateComObject(CLASS_RemoteDM) as IRemoteDM;
end;

class function CoRemoteDM.CreateRemote(const MachineName: string): IRemoteDM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RemoteDM) as IRemoteDM;
end;

end.
