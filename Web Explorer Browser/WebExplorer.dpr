program WebExplorer;

{$I cef.inc}

uses
  Vcl.Forms,
  Winapi.Windows,
  UnitMainForm in 'Forms\UnitMainForm.pas' {MainForm},
  AppMenuForm in 'Forms\AppMenuForm.pas' {AppMenu},
  uCEFLoader in 'Forms\uCEFLoader.pas',
  About in 'Forms\About.pas' {AboutBox},
  PageTrashForm in 'Forms\PageTrashForm.pas' {PageTrash},
  UnitInstantSearch in 'Forms\UnitInstantSearch.pas' {InstantSearchFrame: TFrame},
  UnitUserLibrary in 'Forms\UnitUserLibrary.pas' {UserLibrary},
  linkcenterform in 'Forms\linkcenterform.pas' {LinkCenter},
  UnitShareCenter in 'Forms\UnitShareCenter.pas' {ShareCenterFrame: TFrame},
  UnitPageNotification in 'Forms\UnitPageNotification.pas' {PageNotificationFrame: TFrame},
  UnitPopUpBarFrame in 'Forms\UnitPopUpBarFrame.pas' {PopUpBarFrame: TFrame},
  UnitPopUpFrm in 'Forms\UnitPopUpFrm.pas' {PopUpFrm},
  SecurityPermissionHubForm in 'Forms\SecurityPermissionHubForm.pas' {SecurityPermissionHubFrm},
  UnitAuthenticationHubFrm in 'Forms\UnitAuthenticationHubFrm.pas' {AuthenticationHubFrm},
  UnitAuthenticationPswFrm in 'Forms\UnitAuthenticationPswFrm.pas' {AuthenticationPswFrm},
  UnitBackgroundGlassForm in 'Forms\UnitBackgroundGlassForm.pas' {BackgroundGlassFrm},
  UnitNewAuthenticationPswFrm in 'Forms\UnitNewAuthenticationPswFrm.pas' {NewAuthenticationPswFrm};

{$R *.res}
{$SetPEFlags IMAGE_FILE_LARGE_ADDRESS_AWARE}

//const cRealName = 'Web Explorer.exe';

procedure SetAsMainForm(aForm:TForm);
var
  P:Pointer;
begin
  P := @Application.Mainform;
  Pointer(P^) := aForm;
end;

{function ApplicationNameEquals(Name1, Name2: String): Boolean;
begin
 if Name1 = Name2 then
  Result := true
 else
  Result := false;
end;}

begin
  //CreateGlobalCEFApp;
  //  if GlobalCEFApp.StartMainProcess then
  //    begin
  //      Application.Initialize;
  //      Application.MainFormOnTaskbar := True;
  //      Application.CreateForm(TMainForm, MainForm);
  //      Application.Run;
  //    end;
  {if not ApplicationNameEquals(ExtractFileName(ParamStr(0)),cRealName) then
   begin
    if not ((not FileExists(cRealName) or DeleteFile(cRealName)) and RenameFile(ParamStr(0),cRealName)) then
      Raise Exception.CreateFmt('Cannot rename "%s" to "%s"', [ParamStr(0),cRealName]);
   end;}
  Application.Title := 'Web Explorer';
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAppMenu, AppMenu);
  Application.CreateForm(TPageTrash, PageTrash);
  Application.CreateForm(TLinkCenter, LinkCenter);
  Application.Run;
  //DestroyGlobalCEFApp;


end.
