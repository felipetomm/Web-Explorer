unit AppMenuForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Dialogs, GDIPPictureContainer, GDIPWedgeItem, ShellAPI, System.win.ComObj,
  GDIPImageTextItem, AdvPolyList, GDIPCustomItem, GDIPTextItem, AdvSmoothPopup,
  CustomItemsContainer, ActnList, Controls, Forms, ExtCtrls, AdvSmoothPanel,
  W7Classes, AdvGlowButton, AdvEdit, AdvEdBtn, StdCtrls, JvBaseDlg,
  JvBrowseFolder, System.win.Registry, ShlObj, ActiveX, Spin, Vcl.Imaging.pngimage,
  GDIPSplitterItem, JvComponentBase, JvThreadTimer, Vcl.WinXCtrls,
  GDIPImageTextButtonItem, GDIPFullDropDownItem, GDIPSectionItem,
  GDIPImageSectionItem, GDIPGroupItem, AdvMetroButton, Vcl.Themes, Vcl.Buttons,
  System.ImageList, Vcl.ImgList;

type

  MouseLLHookStruct = record
    pt          : TPoint;
    mouseData   : cardinal;
    flags       : cardinal;
    time        : cardinal;
    dwExtraInfo : cardinal;
  end;
  TAppMenu = class(TForm)
    GDIPPictureContainer1: TGDIPPictureContainer;
    fundo: TAdvSmoothPanel;
    PanelFundo: TPanel;
    AppMenu1: TAdvPolyMenu;
    Print_MenuItem: TWedgeItem;
    Tasks_MenuItem: TWedgeItem;
    Extras_MenuItem: TWedgeItem;
    Options_MenuItem: TWedgeItem;
    Help_MenuItem: TWedgeItem;
    Tasks_List: TAdvPolyList;
    ImageTextItem1: TImageTextItem;
    ImageTextItem2: TImageTextItem;
    ImageTextItem3: TImageTextItem;
    ImageTextItem4: TImageTextItem;
    ImageTextItem5: TImageTextItem;
    ImageTextItem6: TImageTextItem;
    AppMenuBottomBar: TPanel;
    MenuLogo: TImage;
    Options_List: TPanel;
    ScrollBox1: TScrollBox;
    Panel4: TPanel;
    textopt7: TLabel;
    textopt9: TLabel;
    opt_homepage_adr: TEdit;
    Panel8: TPanel;
    textopt16: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Panel7: TPanel;
    textopt13: TLabel;
    textopt14: TLabel;
    SelectDownloadFolder: TJvBrowseForFolderDialog;
    Help_List: TAdvPolyList;
    ImageTextItem7: TImageTextItem;
    ImageTextItem8: TImageTextItem;
    ImageTextItem9: TImageTextItem;
    ImageTextItem10: TImageTextItem;
    ImageTextItem11: TImageTextItem;
    Panel1: TPanel;
    Label3: TLabel;
    proxyaddress: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    proxyport: TEdit;
    Label6: TLabel;
    SpaceLabel: TLabel;
    SettingsTimer: TTimer;
    Extras_List: TAdvPolyList;
    ImageTextItem12: TImageTextItem;
    ImageTextItem13: TImageTextItem;
    ImageTextItem14: TImageTextItem;
    ImageTextItem15: TImageTextItem;
    Panel2: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    cachedays: TSpinEdit;
    Panel3: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Panel5: TPanel;
    Print_List: TAdvPolyList;
    ImageTextItem16: TImageTextItem;
    ImageTextItem17: TImageTextItem;
    ImageTextItem18: TImageTextItem;
    LanguageComboBox: TComboBox;
    ImageTextItem19: TImageTextItem;
    SplitterItem1: TSplitterItem;
    SplitterItem2: TSplitterItem;
    SplitterItem3: TSplitterItem;
    SplitterItem4: TSplitterItem;
    SplitterItem5: TSplitterItem;
    SplitterItem6: TSplitterItem;
    SplitterItem7: TSplitterItem;
    Label15: TLabel;
    Label16: TLabel;
    opt10: TComboBox;
    Panel6: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Panel9: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Panel10: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    ZoomComboBox: TComboBox;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    optpanel4: TPanel;
    opt4: TToggleSwitch;
    optpanel5: TPanel;
    opt5: TToggleSwitch;
    optpanel2: TPanel;
    opt2: TToggleSwitch;
    optpanel3: TPanel;
    optpanel11: TPanel;
    opt11: TToggleSwitch;
    optpanelPlugs: TPanel;
    opt6: TToggleSwitch;
    opt7: TToggleSwitch;
    opt8: TToggleSwitch;
    opt9: TToggleSwitch;
    opt14: TToggleSwitch;
    optpanelAcess: TPanel;
    opt13: TToggleSwitch;
    opt16: TComboBox;
    Label29: TLabel;
    Label30: TLabel;
    opt15: TToggleSwitch;
    Label7: TLabel;
    opt3: TToggleSwitch;
    ImageTextItem20: TImageTextItem;
    opt12: TToggleSwitch;
    Label26: TLabel;
    Label31: TLabel;
    ReaderModeComboBox: TComboBox;
    opt17: TToggleSwitch;
    Label32: TLabel;
    opt18: TToggleSwitch;
    Label33: TLabel;
    topbarbuttonPanel: TPanel;
    menucenter_bevel: TImage;
    LabeltitleName1: TLabel;
    leftbarbuttonPanel: TPanel;
    leftimagebavel: TImage;
    AppMenuBT1: TAdvMetroButton;
    SaveSettings: TAdvMetroButton;
    menucenter_bevel2: TImage;
    SaveLabel: TLabel;
    textopt19: TLabel;
    textopt20: TLabel;
    Panel11: TPanel;
    opt19: TToggleSwitch;
    textopt8: TLabel;
    StartPageOptCombobox: TComboBox;
    UserProfilePanel: TPanel;
    login_image: TImage;
    UserNameLabel: TLabel;
    EditUserLabel: TLinkLabel;
    UserBTTimer: TTimer;
    UserBTPanel: TPanel;
    UserBT: TAdvGlowButton;
    openbt1: TSpeedButton;
    Label34: TLabel;
    opt_downloaddir: TButtonedEdit;
    ItensImageList: TImageList;
    opt19BT: TSpeedButton;
    opt10BT: TSpeedButton;
    opt11bt: TSpeedButton;
    PanelLineDownloadEdit: TPanel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDeactivate(Sender: TObject);
    procedure AboutBTExecute(Sender: TObject);
    procedure AppMenu1ItemSelect(Sender: TObject; Item: TCustomItem;
      var Allow: Boolean);
    procedure AppMenuBT1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Help_ListItemSelect(Sender: TObject; Item: TCustomItem;
      var Allow: Boolean);
    procedure Tasks_ListItemSelect(Sender: TObject; Item: TCustomItem;
      var Allow: Boolean);
    procedure SpinProxyUpClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SettingsTimerTimer(Sender: TObject);
    procedure opt4Click(Sender: TObject);
    procedure opt_homepage_adrChange(Sender: TObject);
    procedure SaveSettingsClick(Sender: TObject);
    procedure Extras_ListItemSelect(Sender: TObject; Item: TCustomItem;
      var Allow: Boolean);
    procedure Print_ListItemSelect(Sender: TObject; Item: TCustomItem;
      var Allow: Boolean);
    procedure LanguageComboBoxChange(Sender: TObject);
    procedure cachedaysClick(Sender: TObject);
    procedure cachedaysChange(Sender: TObject);
    procedure opt6Click(Sender: TObject);
    procedure opt7Click(Sender: TObject);
    procedure opt8Click(Sender: TObject);
    procedure opt9Click(Sender: TObject);
    procedure opt10Change(Sender: TObject);
    procedure opt10BTClick(Sender: TObject);
    procedure opt11Click(Sender: TObject);
    procedure opt11btClick(Sender: TObject);
    procedure opt12Click(Sender: TObject);
    procedure ZoomComboBoxChange(Sender: TObject);
    procedure opt13Click(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure opt14Click(Sender: TObject);
    procedure opt2Click(Sender: TObject);
    procedure opt5Click(Sender: TObject);
    procedure opt15Click(Sender: TObject);
    procedure opt3Click(Sender: TObject);
    procedure ReaderModeComboBoxChange(Sender: TObject);
    procedure opt18Click(Sender: TObject);
    procedure opt17Click(Sender: TObject);
    procedure AppMenu1Change(Sender: TObject);
    procedure opt19Click(Sender: TObject);
    procedure StartPageOptComboboxClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure UserBTTimerTimer(Sender: TObject);
    procedure EditUserLabelClick(Sender: TObject);
    procedure UserBTClick(Sender: TObject);
    procedure openbt1Click(Sender: TObject);
    procedure opt_downloaddirRightButtonClick(Sender: TObject);
    procedure opt19BTClick(Sender: TObject);
  private
    procedure LoadIMGDLL;
    procedure OpenHomeLogo;
    procedure MyScrollVert(Sender: TObject);
  public
    procedure CreateShortcut(FileName, Parameters, InitialDir, ShortcutName, ShortcutFolder: String);
    procedure Shortcut;
    procedure ProxyCtrls(cmd: Boolean);
    procedure GetLanguage;
    procedure get_imageProfile;
    function CallControlPanel(Handle: HWnd; FileName, FuncCall: WideString): Integer;
  end;
  function LowLevelMouseHookProc(nCode, wParam, lParam : integer) : integer; stdcall;
var
  AppMenu: TAppMenu;
  ChangedSettings, NeedsRestart, FirstOpen: Boolean;
  mHook: cardinal;
  AppMenuSelectItem: SmallInt;

implementation

{$R *.dfm}

uses UnitMainForm, About;{, MailService, BrowserFrame, BookmarkManager, NewResourcesForm,
  WidgetManager, NotepadForm, WENetIDForm, TrustedPagesFrm, AdblockFrm;}

procedure TAppMenu.AboutBTExecute(Sender: TObject);
begin
  About.ShowAboutBox;
end;

procedure TAppMenu.AppMenu1Change(Sender: TObject);
begin
if (Tasks_MenuItem.State = isNormal) and (Print_MenuItem.State = isNormal)
 and (Extras_MenuItem.State = isNormal) and (Options_MenuItem.State = isNormal) and (Help_MenuItem.State = isNormal) then
  begin
   Tasks_List.Visible := false;
   Print_List.Visible := false;
   Options_List.Visible := false;
   Help_List.Visible := false;
   Extras_List.Visible := false;
   LabeltitleName1.Caption := MainForm.LanguageCache.Lines[516];
   MenuLogo.Parent := PanelFundo;
   MenuLogo.Top := PanelFundo.Height - MenuLogo.Height - 2;
   MenuLogo.Left := 35;
   UserBTPanel.Visible := true;
   {UserProfilePanel.Visible := true;
   UserProfilePanel.Parent := PanelFundo;
   UserProfilePanel.Top := 42;
   UserProfilePanel.Left := 41;}
  end
 else
  begin
   if Options_MenuItem.State <> isNormal then
    begin
     opt_downloaddir.Repaint;
     {UserProfilePanel.Top := 10;
     UserProfilePanel.Left := 6;
     UserProfilePanel.Parent := ScrollBox1;
     UserProfilePanel.Visible := true;}
     UserNameLabel.Caption := MainForm.LanguageCache.Lines[554] + ',' + MainForm.GetProfileName + '.';
     UserBTPanel.Visible := false;
    end
   else
    begin
     UserBTpanel.Visible := true;
     //UserProfilePanel.Visible := false;
    end;
  end;
end;

procedure TAppMenu.AppMenu1ItemSelect(Sender: TObject; Item: TCustomItem;
  var Allow: Boolean);
begin
 AppMenuSelectItem := Item.Index;
 UserBTTimer.Enabled := true;
 case Item.Index of
  0: begin
      Tasks_List.Visible := true;
      Print_List.Visible := false;
      Options_List.Visible := false;
      Help_List.Visible := false;
      Extras_List.Visible := false;
      Tasks_List.SetFocus;
      LabeltitleName1.Caption := MainForm.LanguageCache.Lines[133];
      MenuLogo.Parent := Tasks_List;
      MenuLogo.Left := 0;
      MenuLogo.top := Tasks_List.Height - MenuLogo.Height - 2;
      if MainForm.Height <= 680 then
       MenuLogo.Visible := false
      else
       MenuLogo.Visible := true;
     end;
  1: begin
      Tasks_List.Visible := false;
      Print_List.Visible := true;
      Options_List.Visible := false;
      Help_List.Visible := false;
      Extras_List.Visible := false;
      LabeltitleName1.Caption := MainForm.LanguageCache.Lines[134];
      MenuLogo.Parent := Print_List;
      MenuLogo.Left := 0;
      MenuLogo.top := Print_List.Height - MenuLogo.Height - 2;
      if MainForm.Height <= 680 then
       MenuLogo.Visible := false
      else
       MenuLogo.Visible := true;
     end;
  2: begin
      Tasks_List.Visible := false;
      Print_List.Visible := false;
      Options_List.Visible := false;
      Help_List.Visible := false;
      Extras_List.Visible := true;
      Extras_List.SetFocus;
      LabeltitleName1.Caption := MainForm.LanguageCache.Lines[135];
      MenuLogo.Parent := Extras_List;
      MenuLogo.Left := 0;
      MenuLogo.top := Extras_List.Height - MenuLogo.Height - 2;
      if MainForm.Height <= 680 then
       MenuLogo.Visible := false
      else
       MenuLogo.Visible := true;
     end;
  3: begin
      Tasks_List.Visible := false;
      Print_List.Visible := false;
      Options_List.Visible := true;
      Help_List.Visible := false;
      Extras_List.Visible := false;
      Options_List.SetFocus;
      LabeltitleName1.Caption := MainForm.LanguageCache.Lines[136];
      //MainForm.OpenConfig; //No OnShow já é executado.
      NeedsRestart := false;
      if MainForm.Height <= 680 then
       MenuLogo.Visible := false
      else
       MenuLogo.Visible := true;
     end;
  4: begin
      Tasks_List.Visible := false;
      Print_List.Visible := false;
      Options_List.Visible := false;
      Help_List.Visible := true;
      Extras_List.Visible := false;
      Help_List.SetFocus;
      LabeltitleName1.Caption := MainForm.LanguageCache.Lines[137];
      MenuLogo.Parent := Help_List;
      MenuLogo.Left := 0;
      MenuLogo.top := Help_List.Height - MenuLogo.Height - 2;
      if MainForm.Height <= 680 then
       MenuLogo.Visible := false
      else
       MenuLogo.Visible := true;
     end;
 end;
end;

procedure TAppMenu.AppMenuBT1Click(Sender: TObject);
begin
 MainForm.StopSessionAndTerminate;
end;

procedure TAppMenu.cachedaysChange(Sender: TObject);
begin
 ChangedSettings := true;
end;

procedure TAppMenu.cachedaysClick(Sender: TObject);
begin
 ChangedSettings := true;
end;

procedure TAppMenu.LanguageComboBoxChange(Sender: TObject);
begin
 ChangedSettings := true;
 NeedsRestart := true;
end;

procedure TAppMenu.ZoomComboBoxChange(Sender: TObject);
begin
 ChangedSettings := true;
 NeedsRestart := true;
end;

function TAppMenu.CallControlPanel(Handle: HWnd; FileName,
  FuncCall: WideString): Integer;
const
  CPL_STARTWPARMSW = 10;
type
  cplfunc = function (hWndCPL : hWnd; iMessage : integer; lParam1 : longint;
         lParam2 : longint) : LongInt stdcall;
var
  lhandle: THandle;
  funchandle: cplfunc;
begin
  Result := -1;
  lHandle := LoadLibraryW(PWideChar(FileName));
  if LHandle <> 0 then
    begin
      @funchandle := GetProcAddress(lhandle, 'CPlApplet');
      if @funchandle <> nil then
        Result := funchandle(Handle, CPL_STARTWPARMSW, 0, LongInt(PWideString(funccall)));
      FreeLibrary(lHandle);
    end;
end;

procedure TAppMenu.CreateShortcut(FileName, Parameters, InitialDir,
  ShortcutName, ShortcutFolder: String);
var
 MyObject: IUnknown;
 MySLink: IShellLink;
 MyPFile: IPersistFile;
 Directory: String;
 WFileName: WideString;
 MyReg: TRegIniFile;
begin
MyObject:=CreateComObject(CLSID_ShellLink);
MySLink:=MyObject as IShellLink;
MyPFile:=MyObject as IPersistFile;
with MySLink do
 begin
  SetArguments(Pchar(Parameters));
  SetPath(PChar(FileName));
  SetWorkingDirectory(PChar(InitialDir));
  SetIconLocation(pchar(ExtractFilePath(Application.ExeName) + '\CoreImages.dll'),0);
 end;
MyReg:=TRegIniFile.Create('Software\MicroSoft\Windows\CurrentVersion\Explorer');
Directory:=MyReg.ReadString ('Shell Folders','Desktop','');
WFileName:=Directory + '\' + ShortcutName + '.lnk';
MyPFile.Save(PWChar (WFileName), False);
MyReg.Free;
end;

procedure TAppMenu.EditUserLabelClick(Sender: TObject);
begin
 MainForm.CloseMenuHubTimer.Enabled := true;
 MainForm.OpenForm('SecurityPermissionHub', '', '', False, 3, true);
end;

procedure TAppMenu.Extras_ListItemSelect(Sender: TObject; Item: TCustomItem;
  var Allow: Boolean);
begin
 case Item.Index of
  0: begin
      //Close;
      MainForm.CloseMenuHubTimer.Enabled := true;
      //$REVIEW_THIS
      //NewResources.ShowModal;
      Allow := false;
     end;
  1: begin
      MainForm.CloseMenuHubTimer.Enabled := true;
      MainForm.OpenNewTab('http://www.webexplorerbrasil.com/store.html');
      Allow := false;
     end;
  3: begin
      MainForm.CloseMenuHubTimer.Enabled := true;
      MainForm.OpenForm('UserLibrary', '', '', False, 4, true);
      Allow := false;
     end;
  4: begin
      MainForm.CloseMenuHubTimer.Enabled := true;
      MainForm.OpenForm('UserLibrary', '', '', False, 5, true);
      Allow := false;
     end;
  6: begin
      MainForm.CloseMenuHubTimer.Enabled := true;
      MainForm.OpenForm('WENetID', '', '', True, 0, true);
      Allow := false;
     end;
 end;
end;

procedure TAppMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FirstOpen := false;
 SettingsTimer.Enabled := false;
 SaveSettings.visible := false;
 SaveLabel.Visible := false;
 if MainForm.MENUcenterPanel.Left >= 0 then
  MainForm.ShowMenuHub(false);
end;

procedure TAppMenu.FormCreate(Sender: TObject);
const
  WH_MOUSE_LL = 14;
begin
 mHook := SetWindowsHookEx(WH_MOUSE_LL, @LowLevelMouseHookProc, hInstance, 0);
 FirstOpen := true;
 NeedsRestart := false;
 LoadIMGDLL;
 {$IFDEF STORE}
 ImageTextItem9.Visible := false;
 ImageTextItem10.Visible := false;
 SplitterItem4.Visible := false;
 {$ENDIF}
end;

procedure TAppMenu.FormDeactivate(Sender: TObject);
begin
 //close;
 MainForm.ShowMenuHub(false);
end;

procedure TAppMenu.FormDestroy(Sender: TObject);
begin
 UnhookWindowsHookEx(mHook);
end;

procedure TAppMenu.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   Key := #0;
   //close;
   MainForm.ShowMenuHub(false);
  end;
end;

procedure TAppMenu.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
 if Options_List.Visible = true then
  begin
   With ScrollBox1.VertScrollBar Do
    Begin
     If (Position <= (Range - Increment)) Then
      Position := Position + Increment
     Else
      Position := Range - Increment;
    End;
  end;
end;

procedure TAppMenu.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
 if Options_List.Visible = true then
  begin
   With ScrollBox1.VertScrollBar Do
    Begin
     If (Position >= Increment) Then
      Position := Position - Increment
     Else
      Position := 0;
    End;
  end;
end;

procedure TAppMenu.FormShow(Sender: TObject);
begin
 MainForm.OpenConfig;
 ChangedSettings := false;
 SettingsTimer.Enabled := true;
 if FirstOpen = true then
  begin
   Tasks_MenuItem.State := isSelected;
   UserBT.Appearance := MainForm.Trash_bt.Appearance;
   get_imageProfile;
  end;
 if MainForm.safemode = true then
  Options_MenuItem.Enabled := false;
 leftbarbuttonPanel.Height := PanelFundo.Height;
 UserBTPanel.Top := AppMenu1.Height - UserBTPanel.Height - 6;
 OpenHomeLogo;
end;

procedure TAppMenu.GetLanguage;
begin
// Tasks_MenuItem.Caption := MainForm.LanguageCache.Lines[133];
// Print_MenuItem.Caption := MainForm.LanguageCache.Lines[134];
// Extras_MenuItem.Caption := MainForm.LanguageCache.Lines[135];
// Options_MenuItem.Caption := MainForm.LanguageCache.Lines[136];
// Help_MenuItem.Caption := MainForm.LanguageCache.Lines[137];
 Tasks_MenuItem.Hint := MainForm.LanguageCache.Lines[133];
 Print_MenuItem.Hint := MainForm.LanguageCache.Lines[134];
 Extras_MenuItem.Hint := MainForm.LanguageCache.Lines[135];
 Options_MenuItem.Hint := MainForm.LanguageCache.Lines[136];
 Help_MenuItem.Hint := MainForm.LanguageCache.Lines[137];
 ImageTextItem1.Caption := MainForm.LanguageCache.Lines[138];
 ImageTextItem6.Caption := MainForm.LanguageCache.Lines[139];
 ImageTextItem5.Caption := MainForm.LanguageCache.Lines[140];
 ImageTextItem4.Caption := MainForm.LanguageCache.Lines[141];
 ImageTextItem3.Caption := MainForm.LanguageCache.Lines[142];
 ImageTextItem2.Caption := MainForm.LanguageCache.Lines[143];
 ImageTextItem16.Caption := MainForm.LanguageCache.Lines[75];
 ImageTextItem17.Caption := MainForm.LanguageCache.Lines[38];
 ImageTextItem18.Caption := MainForm.LanguageCache.Lines[144];
 ImageTextItem12.Caption := MainForm.LanguageCache.Lines[145];
 ImageTextItem13.Caption := MainForm.LanguageCache.Lines[146];
 ImageTextItem14.Caption := MainForm.LanguageCache.Lines[147];
 ImageTextItem15.Caption := MainForm.LanguageCache.Lines[148];
 ImageTextItem19.Caption := MainForm.LanguageCache.Lines[149];
 ImageTextItem20.Caption := MainForm.LanguageCache.Lines[504];
 textopt7.Caption := MainForm.LanguageCache.Lines[150];
 textopt8.Caption := MainForm.LanguageCache.Lines[151];
 textopt8.hint := MainForm.LanguageCache.Lines[151];
 textopt9.Caption := MainForm.LanguageCache.Lines[152];
 Label1.Caption := MainForm.LanguageCache.Lines[153];
 Label8.Caption := MainForm.LanguageCache.Lines[154];
 Label9.Caption := MainForm.LanguageCache.Lines[155];
 cachedays.Left := Label9.Left + Label9.Width + 5;
 Label9.hint := MainForm.LanguageCache.Lines[155];
 textopt16.Caption := MainForm.LanguageCache.Lines[156];
 Label2.Caption := MainForm.LanguageCache.Lines[157];
 Label15.Caption := MainForm.LanguageCache.Lines[158];
 Label16.Caption := MainForm.LanguageCache.Lines[158];
 textopt13.Caption := MainForm.LanguageCache.Lines[159];
 textopt14.Caption := MainForm.LanguageCache.Lines[160];
 Label3.Caption := MainForm.LanguageCache.Lines[161];
 Label7.Caption := MainForm.LanguageCache.Lines[162];

 openbt1.Hint := MainForm.LanguageCache.Lines[382];
 opt_downloaddir.RightButton.Hint := MainForm.LanguageCache.Lines[382];
 opt19BT.Hint := MainForm.LanguageCache.Lines[382];
 opt10BT.Hint := MainForm.LanguageCache.Lines[382];
 opt11bt.Hint := MainForm.LanguageCache.Lines[382];
 Label34.Caption := MainForm.LanguageCache.Lines[578];
 SelectDownloadFolder.StatusText := MainForm.LanguageCache.Lines[157];

 Label4.Caption := MainForm.LanguageCache.Lines[163];
 Label6.Caption := MainForm.LanguageCache.Lines[164];
 Label10.Caption := MainForm.LanguageCache.Lines[165];
 Label11.Caption := MainForm.LanguageCache.Lines[166];
 Label11.hint := MainForm.LanguageCache.Lines[166];
 Label12.Caption := MainForm.LanguageCache.Lines[167];
 Label13.Caption := MainForm.LanguageCache.Lines[168];
 Label14.Caption := MainForm.LanguageCache.Lines[169];
 Label28.Caption := MainForm.LanguageCache.Lines[468];
 ImageTextItem7.Caption := MainForm.LanguageCache.Lines[170];
 ImageTextItem9.Caption := MainForm.LanguageCache.Lines[171];
 ImageTextItem8.Caption := MainForm.LanguageCache.Lines[172];
 ImageTextItem10.Caption := MainForm.LanguageCache.Lines[173];
 ImageTextItem11.Caption := MainForm.LanguageCache.Lines[174];
 SaveSettings.Hint := MainForm.LanguageCache.Lines[175];
 SaveLabel.Caption := MainForm.LanguageCache.Lines[175];
 AppMenuBT1.Hint := MainForm.LanguageCache.Lines[176];
 Label17.Caption := MainForm.LanguageCache.Lines[373];
 Label18.Caption := MainForm.LanguageCache.Lines[374];
 opt10.Items[0] := MainForm.LanguageCache.Lines[375];
 opt10.Items[1] := MainForm.LanguageCache.Lines[376];
 opt10.Items[2] := MainForm.LanguageCache.Lines[377];
 Label19.Caption := MainForm.LanguageCache.Lines[381];
 Label20.Caption := MainForm.LanguageCache.Lines[405];
 Label21.Caption := MainForm.LanguageCache.Lines[406];
 Label22.Caption := MainForm.LanguageCache.Lines[407];
 Label22.hint := MainForm.LanguageCache.Lines[407];
 Label24.Caption := MainForm.LanguageCache.Lines[158];
 Label23.Caption := MainForm.LanguageCache.Lines[435];
 Label26.Caption := MainForm.LanguageCache.Lines[436];
 Label25.Caption := MainForm.LanguageCache.Lines[437];
 Label27.Caption := MainForm.LanguageCache.Lines[438];
 Label29.Caption := MainForm.LanguageCache.Lines[474];
 Label30.Caption := MainForm.LanguageCache.Lines[473];
 Label31.Caption := MainForm.LanguageCache.Lines[511];
 Label32.Caption := MainForm.LanguageCache.Lines[513];
 Label33.Caption := MainForm.LanguageCache.Lines[514];
 textopt19.Caption := MainForm.LanguageCache.Lines[532];
 textopt20.Caption := MainForm.LanguageCache.Lines[533];
 StartPageOptCombobox.Items[0] := StringReplace(MainForm.LanguageCache.Lines[153], ':', '', [rfreplaceall]);

 opt4.StateCaptions.CaptionOn := MainForm.LanguageCache.Lines[471];
 opt4.StateCaptions.CaptionOff := MainForm.LanguageCache.Lines[472];
 opt5.StateCaptions.CaptionOn := MainForm.LanguageCache.Lines[471];
 opt5.StateCaptions.CaptionOff := MainForm.LanguageCache.Lines[472];
 opt2.StateCaptions.CaptionOn := MainForm.LanguageCache.Lines[471];
 opt2.StateCaptions.CaptionOff := MainForm.LanguageCache.Lines[472];
 opt3.StateCaptions.CaptionOn := MainForm.LanguageCache.Lines[471];
 opt3.StateCaptions.CaptionOff := MainForm.LanguageCache.Lines[472];
 opt11.StateCaptions.CaptionOn := MainForm.LanguageCache.Lines[471];
 opt11.StateCaptions.CaptionOff := MainForm.LanguageCache.Lines[472];
 opt6.StateCaptions.CaptionOn := MainForm.LanguageCache.Lines[471];
 opt6.StateCaptions.CaptionOff := MainForm.LanguageCache.Lines[472];
 opt7.StateCaptions.CaptionOn := MainForm.LanguageCache.Lines[471];
 opt7.StateCaptions.CaptionOff := MainForm.LanguageCache.Lines[472];
 opt8.StateCaptions.CaptionOn := MainForm.LanguageCache.Lines[471];
 opt8.StateCaptions.CaptionOff := MainForm.LanguageCache.Lines[472];
 opt9.StateCaptions.CaptionOn := MainForm.LanguageCache.Lines[471];
 opt9.StateCaptions.CaptionOff := MainForm.LanguageCache.Lines[472];
 opt12.StateCaptions.CaptionOn := MainForm.LanguageCache.Lines[471];
 opt12.StateCaptions.CaptionOff := MainForm.LanguageCache.Lines[472];
 opt13.StateCaptions.CaptionOn := MainForm.LanguageCache.Lines[471];
 opt13.StateCaptions.CaptionOff := MainForm.LanguageCache.Lines[472];
 opt14.StateCaptions.CaptionOn := MainForm.LanguageCache.Lines[471];
 opt14.StateCaptions.CaptionOff := MainForm.LanguageCache.Lines[472];
 opt15.StateCaptions.CaptionOn := MainForm.LanguageCache.Lines[471];
 opt15.StateCaptions.CaptionOff := MainForm.LanguageCache.Lines[472];
 opt17.StateCaptions.CaptionOn := MainForm.LanguageCache.Lines[471];
 opt17.StateCaptions.CaptionOff := MainForm.LanguageCache.Lines[472];
 opt18.StateCaptions.CaptionOn := MainForm.LanguageCache.Lines[471];
 opt18.StateCaptions.CaptionOff := MainForm.LanguageCache.Lines[472];
 opt19.StateCaptions.CaptionOn := MainForm.LanguageCache.Lines[471];
 opt19.StateCaptions.CaptionOff := MainForm.LanguageCache.Lines[472];
 EditUserLabel.Caption := '<a href="about:blank">' + MainForm.LanguageCache.Lines[555] + '</a>';
 UserBT.Hint := MainForm.LanguageCache.Lines[555];

end;

procedure TAppMenu.get_imageProfile;
var
 PngImage: TPngImage;
begin
    try
     if FileExists( Pchar( MainForm.Profile_Pach + '\' + MainForm.GetHashMd5('UserKeys_' + MainForm.GetProfileName + '@webexplorer') + '.png') ) then
      begin
       try
        PngImage := TPngImage.Create;
        PngImage.LoadFromFile( Pchar( MainForm.Profile_Pach + '\' + MainForm.GetHashMd5('UserKeys_' + MainForm.GetProfileName + '@webexplorer') + '.png') );
        login_image.Picture.Graphic := PngImage;
        UserBT.Picture.LoadFromFile( Pchar( MainForm.Profile_Pach + '\' + MainForm.GetHashMd5('UserKeys_' + MainForm.GetProfileName + '@webexplorer') + '_S.png') );
       finally
        PngImage.Free;
       end;
      end
     else
      begin
       LoadIMGDLL;
      end;
    except
     LoadIMGDLL;
    end;
end;

procedure TAppMenu.Help_ListItemSelect(Sender: TObject; Item: TCustomItem;
  var Allow: Boolean);
begin
{$IFDEF STORE}
 case Item.Index of
  0: begin
      //Close;
      MainForm.CloseMenuHubTimer.Enabled := true;
      MainForm.OpenNewTab('http://www.webexplorerbrasil.com/feedback.html');
      Allow := false;
     end;
  3: begin
      //Close;
      MainForm.CloseMenuHubTimer.Enabled := true;
      ShowAboutBox;
      Allow := false;
     end;
  6: begin
      //Close;
      MainForm.CloseMenuHubTimer.Enabled := true;
      ShellExecute(handle,'open',PChar('ms-windows-store://pdp/?productid=9nblggh40gf4'), nil,nil,SW_SHOWNORMAL);
      Allow := false;
     end;
 end;
{$ELSE}
 case Item.Index of
  0: begin
      //Close;
      MainForm.CloseMenuHubTimer.Enabled := true;
      //$REVIEW_THIS
      //MainForm.OpenNewTab('http://www.webexplorerbrasil.com/feedback.html');
      Allow := false;
     end;
  3: begin
      //Close;
      MainForm.CloseMenuHubTimer.Enabled := true;
      ShowAboutBox;
      Allow := false;
     end;
  1: begin
      //Close;
      MainForm.CloseMenuHubTimer.Enabled := true;
      //ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + 'CrashReporter.exe'), nil,nil,SW_SHOWNORMAL);
      ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchWEApp CrashReporter.exe'), NIL, SW_HIDE);
      Allow := false;
     end;
  4: begin
      //close;
      MainForm.CloseMenuHubTimer.Enabled := true;
      ShellAbout(Handle, 'Web Explorer for Windows®', 'tSoftware® Canada', Application.Icon.Handle);
      Allow := false;
     end;
  6: begin
      //Close;
      MainForm.CloseMenuHubTimer.Enabled := true;
      ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchWEApp WebExplorerUpdate.exe'), NIL, SW_HIDE);
      //ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerUpdate.exe'), nil,nil,SW_SHOWNORMAL);
      Allow := false;
     end;
 end;
{$ENDIF}
end;

procedure TAppMenu.LoadIMGDLL;
var
 img: thandle;
 BmpImage: TImage;
begin
 img := loadlibrary(PChar(ExtractFilePath(Application.ExeName) + '.\CoreImages.dll'));
 try
  if img <> 0 then
   begin
    MenuLogo.Picture.Bitmap.LoadFromResourceName(img,'UWI_LOGO');
    login_image.Picture.Bitmap.LoadFromResourceName(img,'LOGIN_C');
    openbt1.Glyph.LoadFromResourceName(img,'OPENWINDOW');
    opt19BT.Glyph.LoadFromResourceName(img,'OPENWINDOW');
    opt10BT.Glyph.LoadFromResourceName(img,'OPENWINDOW');
    opt11BT.Glyph.LoadFromResourceName(img,'OPENWINDOW');
    try
     BmpImage := TImage.Create(nil);
     BmpImage.Picture.Bitmap.LoadFromResourceName(img,'LOGIN_S');
     BmpImage.Picture.SaveToFile( Pchar( MainForm.Profile_Pach + '\' + MainForm.GetHashMd5('UserKeys_' + MainForm.GetProfileName + '@webexplorer') + '_S.bmp') );
     UserBT.Picture.LoadFromFile( Pchar( MainForm.Profile_Pach + '\' + MainForm.GetHashMd5('UserKeys_' + MainForm.GetProfileName + '@webexplorer') + '_S.bmp') );
    finally
     BmpImage.Free;
    end;

   end
  else
   begin
    Application.Terminate;
   end;
  except
   freelibrary(img);
  end;
end;

function LowLevelMouseHookProc(nCode, wParam,
  lParam: integer): integer;
var
  info : ^MouseLLHookStruct absolute lParam;
begin
  result := CallNextHookEx(mHook, nCode, wParam, lParam);
  with info^ do begin
    case wParam of
      wm_lbuttondown: begin
                         if ((MainForm.MENUviewerPanel.Visible) and (not PtInRect(MainForm.MENUviewerPanel.ClientRect, MainForm.MENUviewerPanel.ScreenToClient(pt)))) then
                          begin
                           MainForm.ShowMenuHub(false);
                          end;
                       end;
      wm_mbuttondown: begin
                         if ((MainForm.MENUviewerPanel.Visible) and (not PtInRect(MainForm.MENUviewerPanel.ClientRect, MainForm.MENUviewerPanel.ScreenToClient(pt)))) then
                          begin
                           MainForm.ShowMenuHub(false);
                          end;
                       end;
      wm_rbuttondown: begin
                         if ((MainForm.MENUviewerPanel.Visible) and (not PtInRect(MainForm.MENUviewerPanel.ClientRect, MainForm.MENUviewerPanel.ScreenToClient(pt)))) then
                          begin
                           MainForm.ShowMenuHub(false);
                          end;
                       end;
      {wm_mousewheel: begin
                        if smallInt(mouseData shr 16) > 0 then
                          Form1.Memo1.Lines.Append('scrolled wheel (up)')
                        else
                          Form1.Memo1.Lines.Append('scrolled wheel (down)');
                       end;}
    end;
  end;
end;

procedure TAppMenu.MyScrollVert(Sender: TObject);
begin
 MainForm.AdvFocusHelper1.UpdateHelper;
end;

procedure TAppMenu.openbt1Click(Sender: TObject);
begin
 CallControlPanel(Handle, 'inetcpl.cpl', '4');
end;

procedure TAppMenu.OpenHomeLogo;
begin
 if (Tasks_MenuItem.State = isSelected) then
  begin
   MenuLogo.Parent := Tasks_List;
   MenuLogo.Left := 0;
   MenuLogo.top := Tasks_List.Height - MenuLogo.Height - 2;
   if MainForm.Height <= 680 then
    MenuLogo.Visible := false
   else
    MenuLogo.Visible := true;
  end
 else if (Print_MenuItem.State = isSelected) then
  begin
   MenuLogo.Parent := Print_List;
   MenuLogo.Left := 0;
   MenuLogo.top := Print_List.Height - MenuLogo.Height - 2;
   if MainForm.Height <= 680 then
    MenuLogo.Visible := false
   else
    MenuLogo.Visible := true;
  end
 else if (Extras_MenuItem.State = isSelected) then
  begin
   MenuLogo.Parent := Extras_List;
   MenuLogo.Left := 0;
   MenuLogo.top := Extras_List.Height - MenuLogo.Height - 2;
   if MainForm.Height <= 680 then
    MenuLogo.Visible := false
   else
    MenuLogo.Visible := true;
  end
 else if (Help_MenuItem.State = isSelected) then
  begin
   MenuLogo.Parent := Help_List;
   MenuLogo.Left := 0;
   MenuLogo.top := Help_List.Height - MenuLogo.Height - 2;
   if MainForm.Height <= 680 then
    MenuLogo.Visible := false
   else
    MenuLogo.Visible := true;
  end
 else
  begin
   MenuLogo.Parent := PanelFundo;
   MenuLogo.Top := PanelFundo.Height - MenuLogo.Height - 2;
   MenuLogo.Left := 35;
  end;
end;

procedure TAppMenu.opt10BTClick(Sender: TObject);
begin
 MainForm.ShowMenuHub(false);
 //$REVIEW_THIS
 //MainForm.ShowSecPermHub(1);
end;

procedure TAppMenu.opt10Change(Sender: TObject);
begin
 ChangedSettings := true;
 NeedsRestart := false;
end;

procedure TAppMenu.opt11btClick(Sender: TObject);
begin
 MainForm.ShowMenuHub(false);
 //$REVIEW_THIS
 //MainForm.ShowSecPermHub(0);
end;

procedure TAppMenu.opt11Click(Sender: TObject);
begin
 ChangedSettings := true;
 NeedsRestart := false;
end;

procedure TAppMenu.opt12Click(Sender: TObject);
begin
NeedsRestart := false;
ChangedSettings := true;
end;

procedure TAppMenu.opt13Click(Sender: TObject);
begin
NeedsRestart := true;
ChangedSettings := true;
end;

procedure TAppMenu.opt14Click(Sender: TObject);
begin
NeedsRestart := true;
ChangedSettings := true;
end;

procedure TAppMenu.opt15Click(Sender: TObject);
begin
 NeedsRestart := true;
 ChangedSettings := true;
end;

procedure TAppMenu.opt17Click(Sender: TObject);
begin
NeedsRestart := true;
ChangedSettings := true;
end;

procedure TAppMenu.opt18Click(Sender: TObject);
begin
NeedsRestart := true;
ChangedSettings := true;
end;

procedure TAppMenu.opt19BTClick(Sender: TObject);
begin
 MainForm.SearchBarButton.Click;
end;

procedure TAppMenu.opt19Click(Sender: TObject);
begin
 if opt19.State = tssOn then
  MainForm.UseInstantSearch := true;
 if opt19.State = tssOff then
  MainForm.UseInstantSearch := false;
 ChangedSettings := true;
 NeedsRestart := false;
end;

procedure TAppMenu.opt2Click(Sender: TObject);
begin
 ChangedSettings := true;
end;

procedure TAppMenu.opt3Click(Sender: TObject);
begin
 if opt3.State = tssOn then
  ProxyCtrls(False);
 if opt3.State = tssOff then
  ProxyCtrls(True);
 ChangedSettings := true;
end;

procedure TAppMenu.opt4Click(Sender: TObject);
begin
 ChangedSettings := true;
 NeedsRestart := false;
end;

procedure TAppMenu.opt5Click(Sender: TObject);
begin
 ChangedSettings := true;
 if opt5.State = tssOn then
  begin
   Label1.Enabled := false;
   opt_homepage_adr.Enabled := false;
   opt_homepage_adr.Text := 'about:blank';
  end
 else
  begin
   Label1.Enabled := true;
   opt_homepage_adr.Enabled := true;
  end;
 NeedsRestart := false;
end;

procedure TAppMenu.opt6Click(Sender: TObject);
begin
NeedsRestart := true;
ChangedSettings := true;
end;

procedure TAppMenu.opt7Click(Sender: TObject);
begin
NeedsRestart := true;
ChangedSettings := true;
end;

procedure TAppMenu.opt8Click(Sender: TObject);
begin
NeedsRestart := true;
ChangedSettings := true;
end;

procedure TAppMenu.opt9Click(Sender: TObject);
begin
NeedsRestart := true;
ChangedSettings := true;
end;

procedure TAppMenu.opt_downloaddirRightButtonClick(Sender: TObject);
begin
ChangedSettings := true;
SelectDownloadFolder.Position := fpTopLeft;// fpFormCenter;
if SelectDownloadFolder.Execute then
 begin
  if Length(SelectDownloadFolder.Directory) <= 3 then
   opt_downloaddir.Text := SelectDownloadFolder.Directory
  else
   opt_downloaddir.Text := SelectDownloadFolder.Directory + '\';
 end;
end;

procedure TAppMenu.opt_homepage_adrChange(Sender: TObject);
begin
 ChangedSettings := true;
end;

procedure TAppMenu.Print_ListItemSelect(Sender: TObject; Item: TCustomItem;
  var Allow: Boolean);
begin
 case Item.Index of
  0: begin
      MainForm.CloseMenuHubTimer.Enabled := true;
      MainForm.PrintPreview1.Click;
      Allow := false;
     end;
  2: begin
      MainForm.CloseMenuHubTimer.Enabled := true;
      MainForm.Print1.Click;
      Allow := false;
     end;
  3: begin
      //close;
      MainForm.CloseMenuHubTimer.Enabled := true;
      //$REVIEW_THIS
      {Notepad.Show;
      Notepad.GetTextfromactivepage1.Click;
      Notepad.PrintPage;}
      Allow := false;
     end;
 end;
end;

procedure TAppMenu.ProxyCtrls(cmd: Boolean);
begin
 if cmd = True then
  begin
    proxyaddress.Enabled := true;
    proxyport.Enabled := true;
    openbt1.Enabled := false;
    Label34.Enabled := false;
    Label4.Enabled := true;
    Label5.Enabled := true;
    Label6.Enabled := true;
    Label29.Enabled := true;
    opt16.Enabled := true;
  end
 else
  begin
    proxyaddress.Enabled := false;
    proxyport.Enabled := false;
    openbt1.Enabled := true;
    Label34.Enabled := true;
    Label4.Enabled := false;
    Label5.Enabled := false;
    Label6.Enabled := false;
    Label29.Enabled := false;
    opt16.Enabled := false;
  end;
end;

procedure TAppMenu.ReaderModeComboBoxChange(Sender: TObject);
begin
 ChangedSettings := true;
 NeedsRestart := false;
end;

procedure TAppMenu.SaveSettingsClick(Sender: TObject);
begin
 {if (proxyaddress.Enabled = true) and (opt3.State = tssOn) then
  MainForm.EnableProxy(proxyaddress.Text, proxyport.Text)
 else
  MainForm.DisableProxy;}
 if opt13.State = tssOn then
  MainForm.Legacybrowser(true)
 else
  MainForm.Legacybrowser(false);
 MainForm.SaveConfig;
 if NeedsRestart = true then
  MainForm.RestartApp;
 MainForm.ShowMenuHub(false);
end;

procedure TAppMenu.SettingsTimerTimer(Sender: TObject);
var
 TempAerocolor: TColor;
begin
 TempAerocolor := MainForm.BrightenWinRT(MainForm.GetAeroColor);
 if ChangedSettings = true then
  begin
   SaveSettings.Visible := true;
   SaveLabel.Visible := true;
  end
 else
  begin
   SaveSettings.Visible := false;
   SaveLabel.Visible := false;
  end;

 opt4.FrameColor := TempAerocolor;
 opt4.ThumbColor := TempAerocolor;
 opt5.FrameColor := TempAerocolor;
 opt5.ThumbColor := TempAerocolor;
 opt2.FrameColor := TempAerocolor;
 opt2.ThumbColor := TempAerocolor;
 opt3.FrameColor := TempAerocolor;
 opt3.ThumbColor := TempAerocolor;
 opt11.FrameColor := TempAerocolor;
 opt11.ThumbColor := TempAerocolor;
 opt6.FrameColor := TempAerocolor;
 opt6.ThumbColor := TempAerocolor;
 opt7.FrameColor := TempAerocolor;
 opt7.ThumbColor := TempAerocolor;
 opt8.FrameColor := TempAerocolor;
 opt8.ThumbColor := TempAerocolor;
 opt9.FrameColor := TempAerocolor;
 opt9.ThumbColor := TempAerocolor;
 opt12.FrameColor := TempAerocolor;
 opt12.ThumbColor := TempAerocolor;
 opt13.FrameColor := TempAerocolor;
 opt13.ThumbColor := TempAerocolor;
 opt14.FrameColor := TempAerocolor;
 opt14.ThumbColor := TempAerocolor;
 opt15.FrameColor := TempAerocolor;
 opt15.ThumbColor := TempAerocolor;
 opt17.FrameColor := TempAerocolor;
 opt17.ThumbColor := TempAerocolor;
 opt18.FrameColor := TempAerocolor;
 opt18.ThumbColor := TempAerocolor;
 opt19.FrameColor := TempAerocolor;
 opt19.ThumbColor := TempAerocolor;
end;

procedure TAppMenu.Shortcut;
begin
{$IFDEF RELEASE}
 Showmessage('Under Construction!');
 //$REVIEW_THIS
 //CreateShortcut(pchar(ExtractFilePath(Application.ExeName) + 'Web Explorer.exe'),BrowserFrame.Chromium1.Browser.MainFrame.Url,pchar(ExtractFilePath(Application.ExeName)),MainForm.CutSpecialChar(BrowserFrame.PageName),'');
{$ELSE}
 Showmessage('Under Construction!');
 //$REVIEW_THIS
 //CreateShortcut(pchar(ExtractFilePath(Application.ExeName) + 'WebExplorer.exe'),BrowserFrame.Chromium1.Browser.MainFrame.Url,pchar(ExtractFilePath(Application.ExeName)),MainForm.CutSpecialChar(BrowserFrame.PageName),'');
{$ENDIF}
end;

procedure TAppMenu.SpinProxyUpClick(Sender: TObject);
var
 Tempport: Integer;
begin
 Tempport := strtoint(proxyport.Text);
 if (Tempport >= 0) and (Tempport <= 999998) then
  Inc(Tempport);
 proxyport.Text := inttostr(Tempport);
end;

procedure TAppMenu.StartPageOptComboboxClick(Sender: TObject);
begin
 ChangedSettings := true;
 NeedsRestart := false;
end;

procedure TAppMenu.Tasks_ListItemSelect(Sender: TObject; Item: TCustomItem;
  var Allow: Boolean);
begin
 case Item.Index of
  0: begin
      //Close;
      MainForm.CloseMenuHubTimer.Enabled := true;
      Shortcut;
      Allow := false;
     end;
  2: begin
      //Close;
      MainForm.CloseMenuHubTimer.Enabled := true;
      MainForm.P1.Click;
      Allow := false;
     end;
  8: begin
      //Close;
      MainForm.CloseMenuHubTimer.Enabled := true;
      ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchWindow -privatemode'), NIL, SW_HIDE);
      Allow := false;
     end;
  7: begin
      //Close;
      MainForm.CloseMenuHubTimer.Enabled := true;
      ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchWindow -safemode'), NIL, SW_HIDE);
      Allow := false;
     end;
  5: begin
      MainForm.CloseMenuHubTimer.Enabled := true;
      MainForm.OpenForm('UserLibrary', '', '', False, 3, true);
      Allow := false;
     end;
  4: begin
      //Close;
      MainForm.CloseMenuHubTimer.Enabled := true;
      MainForm.FullScreen1.Click;
      Allow := false;
     end;
  1: begin
      //close;
      MainForm.CloseMenuHubTimer.Enabled := true;
      MainForm.OpenSharePopupTimer.Enabled := true;
      Allow := false;
     end;
 end;
end;

procedure TAppMenu.UserBTClick(Sender: TObject);
begin
 MainForm.CloseMenuHubTimer.Enabled := true;
 MainForm.OpenForm('SecurityPermissionHub', '', '', False, 3, true);
end;

procedure TAppMenu.UserBTTimerTimer(Sender: TObject);
begin
 TTimer(Sender).Enabled := false;
 if AppMenu1.Items[AppMenuSelectItem].Hint = MainForm.LanguageCache.Lines[136] then
  UserBTpanel.Visible := false
 else
  UserBTPanel.Visible := true;
end;

end.

