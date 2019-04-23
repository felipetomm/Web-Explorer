unit uCEFLoader;

interface

implementation

uses
  uCEFApplication, SysUtils, Vcl.Forms, Winapi.Windows, System.Classes, System.StrUtils, Winapi.ShellAPI, uCEFTypes, UnitMainForm,
  Vcl.Dialogs;

  // Follow these steps to test this demo :
  // 1. Build the SubProcess project in this directory.
  // 2. Copy the CEF binaries to the BIN directory in CEF4Delphi.
  // 3. Build this project : SimpleBrowser
  // 4. Run this demo : SimpleBrowser
var
  User_Name, Profile_Pach: string;

function GetUWPAppData(): string;
var
 UWPInstallDir, LocalAPPDataTemp: String;
begin
 UWPInstallDir := ExtractFileDir(Application.ExeName);
 LocalAPPDataTemp := StringReplace(GetHomePath, 'Roaming', 'Local\Packages\', [rfreplaceall]);
 UWPInstallDir := Copy(UWPInstallDir,Pos('__',UWPInstallDir)+1,Length(UWPInstallDir));
 UWPInstallDir := StringReplace(UWPInstallDir, '\Bin', '', [rfreplaceall]);
 if ContainsText(UWPInstallDir, '53288ThiagoFortes') then
  Result := Pchar(LocalAPPDataTemp + '53288ThiagoFortes.WebExplorer' + UWPInstallDir)
 else
  Result := Pchar(LocalAPPDataTemp + 'WebExplorer' + UWPInstallDir);
end;

function check_profile(): Boolean;
var
 buff : PCHAR;
begin
 try
  buff:= StrAlloc(500);
  if GetEnvironmentVariable('USERNAME', BUFF, 500) > 0 then
   User_Name := string(buff);
  {$IFDEF STORE}
  if DirectoryExists(GetUWPAppData + '\Profiles\' + user_name + '\History') = false then
   begin
    Result := false;
    ShellExecute(0,'open',PChar(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Profiles\ProfileWizard.exe'), nil,nil,SW_SHOWNORMAL);
   end
  else
   begin
    Result := true;
    Profile_Pach := GetUWPAppData + '\Profiles\' + user_name;
   end;
  {$ELSE}
  if DirectoryExists(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Profiles\' + user_name + '\History') = false then
   begin
    Result := false;
    ShellExecute(0,'open',PChar(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Profiles\ProfileWizard.exe'), nil,nil,SW_SHOWNORMAL);
   end
  else
   begin
    Result := true;
    Profile_Pach := ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\' + user_name;
   end;

  {$ENDIF}
 except
  if DirectoryExists(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Profiles\Usr') = false then
   begin
    Profile_Pach := ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\Usr';
    CreateDir(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Profiles\Usr');
    CreateDir(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Profiles\Usr\History');
    CreateDir(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Profiles\Usr\Cache\History');
    CreateDir(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Profiles\Usr\SpeedDial');
    CopyFile(Pchar(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Profiles\Global_Config.xml'),Pchar(Profile_Pach + '\Global_Config.xml'), true);
    buff := Pchar('"' + ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\Bookmarks\*.*" "' + ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\Usr\Bookmarks\*.*" /S /Y');
    shellExecute(0, '', 'xCopy', buff, '', SW_HIDE);
    Result := true;
   end;
  Profile_Pach := ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\Usr';
 end;
 //$REVIEW_THIS
 {if (DirectoryExists(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\Cache') = true) and (DirectoryExists(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\Cache\UpdateInProgress') = false) then
  DeleteDir(Self.Handle, Pchar(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\Cache'));
 TrustedPagesEnabler.Enabled := true;
 AdblockPages.Enabled := true;}
 //$REVIEW_THIS
 {if FileExists(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html')) = true then
  begin
   ReportFileTimesOpen(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
   ReportFileTimes(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
  end;}
end;

procedure CreateGlobalCEFApp;
var
 TempSettings: TStringList;
begin
  SetCurrentDir(Pchar(ExtractFileDir(Application.ExeName)));
  if check_profile = false then
   begin
    shellExecute(Application.Handle, 'open', 'taskkill.exe', Pchar('/F /IM "' + ExtractFileName(Application.ExeName)  + '"'), nil, SW_HIDE);
    Sleep(10000);
    Application.ProcessMessages;
   end
  else
   begin
    GlobalCEFApp := TCefApplication.Create;
   end;



  // In case you want to use custom directories for the CEF3 binaries, cache, cookies and user data.
  // If you don't set a cache directory the browser will use in-memory cache.
  // The cache, cookies and user data directories must be writable.


  case MainForm.WindowsLanguageID of
   0: GlobalCEFApp.Locale := 'pt-br';
   1: GlobalCEFApp.Locale := 'fr-ca';
   2: GlobalCEFApp.Locale := 'es';
   3: GlobalCEFApp.Locale := 'it';
   4: GlobalCEFApp.Locale := 'en-us';
  end;
    ////////////////Load Settings////////////////
  //check_profile;
  TempSettings := TStringList.Create;
  TempSettings.LoadFromFile(Profile_Pach + '\Global_Config.xml');

  try
   if TempSettings.Strings[27] = '<webrtc>true</webrtc>' then
    GlobalCEFApp.EnableMediaStream := true
   else
    GlobalCEFApp.EnableMediaStream := false;
  except
    GlobalCEFApp.EnableMediaStream := true;
  end;

  {if TempSettings.Strings[27] = '<webrtc>true</webrtc>' then
   GlobalCEFApp.EnableMediaStream := true
  else
   GlobalCEFApp.EnableMediaStream := false;}
  try
   if TempSettings.Strings[29] = '<smooth_scrolling>true</smooth_scrolling>' then
    GlobalCEFApp.SmoothScrolling := STATE_ENABLED
   else
    GlobalCEFApp.SmoothScrolling := STATE_DISABLED;
  except
   GlobalCEFApp.SmoothScrolling := STATE_ENABLED;
  end;

  try
   if TempSettings.Strings[25] = '<usegpu>true</usegpu>' then
    GlobalCEFApp.EnableGPU := true
   else
    GlobalCEFApp.EnableGPU := false;
  except
   GlobalCEFApp.EnableGPU := true;
  end;
  try
   if TempSettings.Strings[30] = '<mute_audio>true</mute_audio>' then
   GlobalCEFApp.MuteAudio := true;
  except

  end;

  

  GlobalCEFApp.IgnoreCertificateErrors := true;
  GlobalCEFApp.DisableWebSecurity := true;
  //GlobalCEFApp.AddCustomCommandLine('--allow-running-insecure-content');

  ////////////////Load Settings////////////////


  if DirectoryExists('C:\Program Files (x86)') = false then
   begin
    {$IFDEF STORE}
    if FileExists(GetUWPAppData + '\Profiles\' + UserBuff +  '\LegacyBrowser.ini') = false then
    {$ELSE}
    if FileExists(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\' + User_Name +  '\LegacyBrowser.ini') = false then
    {$ENDIF}
     GlobalCEFApp.UserAgent := 'Mozilla/5.0 (Windows NT ' + IntToStr(Win32MajorVersion) + '.' + IntToStr(Win32MinorVersion) + ';) AppleWebKit/537.36 (KHTML, like Gecko) Version/12.0 Safari/537.36 WebExplorer/15'
    else
     GlobalCEFApp.UserAgent := 'Mozilla/5.0 (Windows NT ' + IntToStr(Win32MajorVersion) + '.' + IntToStr(Win32MinorVersion) + ';) AppleWebKit/537.36 (KHTML, like Gecko) Safari/537.36 WebExplorer/15';
   end
  else
   begin
    {$IFDEF STORE}
    if FileExists(GetUWPAppData + '\Profiles\' + UserBuff +  '\LegacyBrowser.ini') = false then
    {$ELSE}
    if FileExists(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\' + User_Name +  '\LegacyBrowser.ini') = false then
    {$ENDIF}
     GlobalCEFApp.UserAgent := 'Mozilla/5.0 (Windows NT ' + IntToStr(Win32MajorVersion) + '.' + IntToStr(Win32MinorVersion) + '; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Version/12.0 Safari/537.36 WebExplorer/15'
    else
     GlobalCEFApp.UserAgent := 'Mozilla/5.0 (Windows NT ' + IntToStr(Win32MajorVersion) + '.' + IntToStr(Win32MinorVersion) + '; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Safari/537.36 WebExplorer/15';
   end;
  if ParamStr(1) <> '-welcome' then
   begin
    {$IFDEF STORE}
    if ParamStr(1) <> '-privatemode' and (ParamStr(3) <> '-privatemode') then
     GlobalCEFApp.Cache := GetUWPAppData + '\Profiles\' + UserBuff + '\Cache'
    else
     GlobalCEFApp.Cache := '';//GetUWPAppData + '\Profiles\' + UserBuff + '\Cache\Temp';
    if (ParamStr(1) = '-restore') and (ParamStr(3) = '-privatemode') then
      CefCache := GetUWPAppData + '\Profiles\' + UserBuff + '\Cache\Temp';
    {$ELSE}
    if (ParamStr(1) <> '-privatemode') and (ParamStr(3) <> '-privatemode') then
     GlobalCEFApp.Cache := ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\' + User_Name + '\Cache'
    else
     GlobalCEFApp.Cache := '';//ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\' + User_Name + '\Cache\Temp';
    if (ParamStr(1) = '-restore') and (ParamStr(3) = '-privatemode') then
      GlobalCEFApp.Cache := '';//ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\' + User_Name + '\Cache\Temp';
    {$ENDIF}
  end;



  GlobalCEFApp.BrowserSubprocessPath := 'WebExplorerFrame.exe';//Pchar(ExtractFileDir(Application.ExeName) + '\WebExplorerFrame.exe');

  GlobalCEFApp.StartMainProcess;
end;

initialization
  CreateGlobalCEFApp;

finalization
  DestroyGlobalCEFApp;

end.
