unit UnitShareCenter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Winapi.ShellAPI,
  AdvOfficeImage, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, AdvPanel, ActiveX, shlobj,
  uCEFChromium, uCEFWindowParent, uCEFInterfaces, uCEFTypes, AdvSmoothWin8Marquee,
  uCEFWinControl, Vcl.OleCtrls, SHDocVw, AdvSmoothPopup;

type
  TShareCenterFrame = class(TFrame)
    BrowserPanel: TPanel;
    LoadingBrowser: TAdvSmoothWin8Marquee;
    Chromium: TChromium;
    ScrollBox1: TScrollBox;
    Fundo: TAdvPanel;
    Label2: TLabel;
    Button1: TSpeedButton;
    Bevel1: TBevel;
    Label3: TLabel;
    mail_bt1: TAdvGlowButton;
    mail_bt2: TAdvGlowButton;
    mail_bt3: TAdvGlowButton;
    mail_bt5: TAdvGlowButton;
    mail_bt6: TAdvGlowButton;
    mail_bt7: TAdvGlowButton;
    mail_bt4: TAdvGlowButton;
    Protocol_IMG1: TAdvOfficeImage;
    Protocol_IMG2: TAdvOfficeImage;
    Protocol_IMG3: TAdvOfficeImage;
    Protocol_IMG4: TAdvOfficeImage;
    LoadBrowserTimer: TTimer;
    ShareBrowserWindowParent: TCEFWindowParent;
    AnimationONTimer: TTimer;
    AnimationOFFTimer: TTimer;
    CertInfoList: TListBox;
    OnShow: TTimer;
    CertInfoPanel: TAdvPanel;
    Protocol_IMG: TAdvOfficeImage;
    Label1: TLabel;
    DomainLabel: TLabel;
    ProtocolLabel: TLabel;
    CertIssuerOrgNameLabel: TLabel;
    MoreCertInfoLabel: TLabel;
    ExpandPage_Cert: TSpeedButton;
    CertDetailPanel: TAdvPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    CertEdit_DateStart: TEdit;
    CertEdit_DateEnd: TEdit;
    CertEdit_EmCN: TEdit;
    CertEdit_EmO: TEdit;
    CertEdit_OrgCN: TEdit;
    CertEdit_OrgO: TEdit;
    BrowserCertLoad: TTimer;
    NativeCertWebBrowser: TWebBrowser;
    Protocol_IMG5: TAdvOfficeImage;
    CertImg: TAdvOfficeImage;
    CertMsg: TLabel;
    CertDomain: TLabel;
    CertDescExt: TLabel;
    ViewCompleteCert: TLinkLabel;
    procedure ChromiumBeforePopup(Sender: TObject; const browser: ICefBrowser;
      const frame: ICefFrame; const targetUrl, targetFrameName: ustring;
      targetDisposition: TCefWindowOpenDisposition; userGesture: Boolean;
      const popupFeatures: TCefPopupFeatures; var windowInfo: TCefWindowInfo;
      var client: ICefClient; var settings: TCefBrowserSettings;
      var noJavascriptAccess, Result: Boolean);
    procedure ChromiumLoadEnd(Sender: TObject; const browser: ICefBrowser;
      const frame: ICefFrame; httpStatusCode: Integer);
    procedure ChromiumLoadStart(Sender: TObject; const browser: ICefBrowser;
      const frame: ICefFrame; transitionType: Cardinal);
    procedure mail_bt3Click(Sender: TObject);
    procedure mail_bt4Click(Sender: TObject);
    procedure mail_bt5Click(Sender: TObject);
    procedure mail_bt6Click(Sender: TObject);
    procedure mail_bt7Click(Sender: TObject);
    procedure mail_bt2Click(Sender: TObject);
    procedure mail_bt1Click(Sender: TObject);
    procedure LoadBrowserTimerTimer(Sender: TObject);
    procedure ChromiumBeforeContextMenu(Sender: TObject;
      const browser: ICefBrowser; const frame: ICefFrame;
      const params: ICefContextMenuParams; const model: ICefMenuModel);
    procedure AnimationONTimerTimer(Sender: TObject);
    procedure AnimationOFFTimerTimer(Sender: TObject);
    procedure OnShowTimer(Sender: TObject);
    procedure ExpandPage_CertClick(Sender: TObject);
    procedure RetractPage_CertClick(Sender: TObject);
    procedure NativeCertWebBrowserSetSecureLockIcon(ASender: TObject;
      SecureLockIcon: Integer);
    procedure BrowserCertLoadTimer(Sender: TObject);
    procedure ViewCompleteCertClick(Sender: TObject);
  private
    function CutSpecialChar(text : String) : String;
    procedure GetLanguage;
    procedure LoadIMGDLL;
    procedure ShowCerDialog;
  public
    procedure OnShowFrame;
    procedure ShowCertInfo(cmd: Boolean);
    var
     Adr: string;
  end;

var
  TempAdr: string;

implementation

{$R *.dfm}

uses UnitMainForm, UnitPopUpFrm;

{ TShareCenterFrame }

procedure TShareCenterFrame.AnimationOFFTimerTimer(Sender: TObject);
begin
 AnimationOFFTimer.Enabled := false;
 LoadingBrowser.Visible := false;
 LoadingBrowser.Animate := false;
end;

procedure TShareCenterFrame.AnimationONTimerTimer(Sender: TObject);
begin
 AnimationONTimer.Enabled := false;
 LoadingBrowser.Visible := true;
 LoadingBrowser.Animate := true;
end;

procedure TShareCenterFrame.BrowserCertLoadTimer(Sender: TObject);
begin
 BrowserCertLoad.Enabled := false;
 ShowCerDialog;
end;

procedure TShareCenterFrame.ChromiumBeforeContextMenu(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame;
  const params: ICefContextMenuParams; const model: ICefMenuModel);
begin
 model.Clear;
end;

procedure TShareCenterFrame.ChromiumBeforePopup(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame; const targetUrl,
  targetFrameName: ustring; targetDisposition: TCefWindowOpenDisposition;
  userGesture: Boolean; const popupFeatures: TCefPopupFeatures;
  var windowInfo: TCefWindowInfo; var client: ICefClient;
  var settings: TCefBrowserSettings; var noJavascriptAccess, Result: Boolean);
begin
 MainForm.OpenNewTab(targetUrl);
 Result := true;
end;

procedure TShareCenterFrame.ChromiumLoadEnd(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame; httpStatusCode: Integer);
begin
 if frame.IsMain then
  AnimationOFFTimer.Enabled := true;
end;

procedure TShareCenterFrame.ChromiumLoadStart(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame; transitionType: Cardinal);
begin
 if frame.IsMain then
  begin
   AnimationONTimer.Enabled := true;
  end;
end;

function TShareCenterFrame.CutSpecialChar(text: String): String;
begin
 if (text <> '') then
  text := StringReplace(text, ' ', '+', [rfreplaceall]);
 if (text = '') or (text = ' ') or (text = '  ') or (text = '   ') or (text = '    ') or (text = '     ') then
  text := MainForm.LanguageCache.Lines[115];
 Result := text;
end;

procedure TShareCenterFrame.ExpandPage_CertClick(Sender: TObject);
begin
 if TSpeedButton(sender).ShowHint then
  ShowCertInfo(true);
end;

procedure TShareCenterFrame.GetLanguage;
begin
 mail_bt1.Caption := MainForm.LanguageCache.Lines[228];
 mail_bt1.Notes.Clear;
 mail_bt1.Notes.Add(MainForm.LanguageCache.Lines[229]);
 mail_bt2.Caption := MainForm.LanguageCache.Lines[230];
 mail_bt2.Notes.Clear;
 mail_bt2.Notes.Add(MainForm.LanguageCache.Lines[231]);
 mail_bt4.Caption := MainForm.LanguageCache.Lines[232];
 mail_bt4.Notes.Clear;
 mail_bt4.Notes.Add(MainForm.LanguageCache.Lines[233]);
 mail_bt3.Caption := MainForm.LanguageCache.Lines[234];
 mail_bt3.Notes.Clear;
 mail_bt3.Notes.Add(MainForm.LanguageCache.Lines[235]);
 Button1.Caption := MainForm.LanguageCache.Lines[236];
 Caption := MainForm.LanguageCache.Lines[85];

 mail_bt5.Caption := MainForm.LanguageCache.Lines[448];
 mail_bt5.Notes.Clear;
 mail_bt5.Notes.Add(MainForm.LanguageCache.Lines[449]);
 mail_bt6.Caption := MainForm.LanguageCache.Lines[450];
 mail_bt6.Notes.Clear;
 mail_bt6.Notes.Add(MainForm.LanguageCache.Lines[451]);
 mail_bt7.Caption := MainForm.LanguageCache.Lines[452];
 mail_bt7.Notes.Clear;
 mail_bt7.Notes.Add(MainForm.LanguageCache.Lines[453]);

 Label2.Caption := MainForm.LanguageCache.Lines[237];
 Label1.Caption := MainForm.LanguageCache.Lines[455];
 Label3.Caption := MainForm.LanguageCache.Lines[459];

 ViewCompleteCert.Caption := '<a href="about:blank">' + MainForm.LanguageCache.Lines[534] + '</a>';
 Label6.Caption := MainForm.LanguageCache.Lines[535];
 Label7.Caption := MainForm.LanguageCache.Lines[537];
 Label8.Caption := MainForm.LanguageCache.Lines[538];
 Label9.Caption := MainForm.LanguageCache.Lines[536];
 Label4.Caption := MainForm.LanguageCache.Lines[537];
 Label5.Caption := MainForm.LanguageCache.Lines[538];
 Label10.Caption := MainForm.LanguageCache.Lines[539];
 Label11.Caption := MainForm.LanguageCache.Lines[540];
 Label12.Caption := MainForm.LanguageCache.Lines[541];

end;

procedure TShareCenterFrame.ViewCompleteCertClick(Sender: TObject);
begin
 NativeCertWebBrowser.Navigate(MainForm.URLsBar.Text);
end;

procedure TShareCenterFrame.LoadBrowserTimerTimer(Sender: TObject);
begin
 LoadBrowserTimer.Enabled := false;
 Chromium.LoadURL(TempAdr);
end;

procedure TShareCenterFrame.LoadIMGDLL;
var
 img: thandle;
begin
 img := loadlibrary(PChar(ExtractFilePath(Application.ExeName) + '.\CoreImages.dll'));
 try
  if img <> 0 then
   begin
    if ExpandPage_Cert.ShowHint then
     ExpandPage_Cert.Glyph.LoadFromResourceName(img, 'E_PAGE');
   end
  else
   begin
    Application.Terminate;
   end;
  except
   freelibrary(img);
  end;
end;

procedure TShareCenterFrame.mail_bt1Click(Sender: TObject);
var
 returnmail: integer;
 PopUpForm: TPopUpFrm;
begin
 returnmail := ShellExecute(0,'open','mailto:',NIL, NIL, SW_SHOWNORMAL);
 if returnmail <= 32 then
    MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[226]), Pchar(MainForm.LanguageCache.Lines[227]), MB_ICONQUESTION + MB_OK + MB_DEFBUTTON1);
 if MainForm.ShareCenterPanel.ControlCount > 0 then
  begin
   MainForm.ShareCenterPopupFunction.ClosePopup;
  end
 else
  begin
    try
     PopUpForm := TPopUpFrm(Tpanel(GetParentComponent).Owner );
     PopUpForm.ShareCenterPopupFunction.ClosePopup;
    Except
    end;
  end;
end;

procedure TShareCenterFrame.mail_bt2Click(Sender: TObject);
begin
 BrowserPanel.Visible := true;
 BrowserPanel.BringToFront;
 MainForm.ShareCenterPopupFunction.Buttons[1].Visible := true;
 MainForm.ShareCenterPopupFunction.Buttons[2].Visible := true;
 TempAdr := 'http://www.reddit.com/submit?url=' + Adr;
 try
  Chromium.CreateBrowser(ShareBrowserWindowParent, '');
 finally
  LoadBrowserTimer.Enabled := true;
 end;
end;

procedure TShareCenterFrame.mail_bt3Click(Sender: TObject);
var
 PopUpForm: TPopUpFrm;
begin
 if MainForm.ShareCenterPanel.ControlCount > 0 then
  begin
   MainForm.ShareCenterPopupFunction.ClosePopup;
  end
 else
  begin
    try
     PopUpForm := TPopUpFrm(Tpanel(GetParentComponent).Owner );
     PopUpForm.ShareCenterPopupFunction.ClosePopup;
    Except
    end;
  end;
 MainForm.OpenForm('QrCode', '', '', True, 0, false);
end;

procedure TShareCenterFrame.mail_bt4Click(Sender: TObject);
var
 PopUpForm: TPopUpFrm;
begin
 BrowserPanel.Visible := true;
 BrowserPanel.BringToFront;
 if MainForm.ShareCenterPanel.ControlCount > 0 then
  begin
   MainForm.ShareCenterPopupFunction.Buttons[1].Visible := true;
   MainForm.ShareCenterPopupFunction.Buttons[2].Visible := true;
  end
 else
  begin
    try
     PopUpForm := TPopUpFrm(Tpanel(GetParentComponent).Owner );
     PopUpForm.ShareCenterPopupFunction.Buttons[1].Visible := true;
     PopUpForm.ShareCenterPopupFunction.Buttons[2].Visible := true;
    Except
    end;
  end;
 TempAdr := 'http://www.facebook.com/share.php?u=' + Adr;
 try
  Chromium.CreateBrowser(ShareBrowserWindowParent, '');
 finally
  LoadBrowserTimer.Enabled := true;
 end;
end;

procedure TShareCenterFrame.mail_bt5Click(Sender: TObject);
var
 PopUpForm: TPopUpFrm;
begin
 BrowserPanel.Visible := true;
 BrowserPanel.BringToFront;
 if MainForm.ShareCenterPanel.ControlCount > 0 then
  begin
   MainForm.ShareCenterPopupFunction.Buttons[1].Visible := true;
   MainForm.ShareCenterPopupFunction.Buttons[2].Visible := true;
  end
 else
  begin
    try
     PopUpForm := TPopUpFrm(Tpanel(GetParentComponent).Owner );
     PopUpForm.ShareCenterPopupFunction.Buttons[1].Visible := true;
     PopUpForm.ShareCenterPopupFunction.Buttons[2].Visible := true;
    Except
    end;
  end;
 TempAdr := 'https://plus.google.com/share?url=' + Adr;
 try
  Chromium.CreateBrowser(ShareBrowserWindowParent, '');
 finally
  LoadBrowserTimer.Enabled := true;
 end;
end;

procedure TShareCenterFrame.mail_bt6Click(Sender: TObject);
var
 PopUpForm: TPopUpFrm;
begin
 BrowserPanel.Visible := true;
 BrowserPanel.BringToFront;
 if MainForm.ShareCenterPanel.ControlCount > 0 then
  begin
   MainForm.ShareCenterPopupFunction.Buttons[1].Visible := true;
   MainForm.ShareCenterPopupFunction.Buttons[2].Visible := true;
  end
 else
  begin
    try
     PopUpForm := TPopUpFrm(Tpanel(GetParentComponent).Owner );
     PopUpForm.ShareCenterPopupFunction.Buttons[1].Visible := true;
     PopUpForm.ShareCenterPopupFunction.Buttons[2].Visible := true;
    Except
    end;
  end;
 TempAdr := 'http://twitter.com/share?&url=' + Adr;
 try
  Chromium.CreateBrowser(ShareBrowserWindowParent, '');
 finally
  LoadBrowserTimer.Enabled := true;
 end;
end;

procedure TShareCenterFrame.mail_bt7Click(Sender: TObject);
var
 PopUpForm: TPopUpFrm;
begin
 BrowserPanel.Visible := true;
 BrowserPanel.BringToFront;
 if MainForm.ShareCenterPanel.ControlCount > 0 then
  begin
   MainForm.ShareCenterPopupFunction.Buttons[1].Visible := true;
   MainForm.ShareCenterPopupFunction.Buttons[2].Visible := true;
  end
 else
  begin
    try
     PopUpForm := TPopUpFrm(Tpanel(GetParentComponent).Owner );
     PopUpForm.ShareCenterPopupFunction.Buttons[1].Visible := true;
     PopUpForm.ShareCenterPopupFunction.Buttons[2].Visible := true;
    Except
    end;
  end;
 TempAdr := 'https://getpocket.com/save?url=' + Adr;
 try
  Chromium.CreateBrowser(ShareBrowserWindowParent, '');
 finally
  LoadBrowserTimer.Enabled := true;
 end;
end;

procedure TShareCenterFrame.NativeCertWebBrowserSetSecureLockIcon(
  ASender: TObject; SecureLockIcon: Integer);
begin
  if SecureLockIcon > 0 then
  begin
   BrowserCertLoad.Enabled := true;
   NativeCertWebBrowser.Stop;
   NativeCertWebBrowser.ControlInterface.Stop;
  end;
end;

procedure TShareCenterFrame.OnShowFrame;
begin
 if Trim(MainForm.GetDomain(Adr)) <> '' then
  begin
   DomainLabel.Caption := MainForm.GetDomain(Adr);
   ProtocolLabel.Caption := MainForm.ProtocolInfos[2];
   if MainForm.ProtocolInfos[3] = 'IMG1' then
    Protocol_IMG.Picture := Protocol_IMG1.Picture
   else if MainForm.ProtocolInfos[3] = 'IMG2' then
    Protocol_IMG.Picture := Protocol_IMG2.Picture
   else if MainForm.ProtocolInfos[3] = 'IMG3' then
    Protocol_IMG.Picture := Protocol_IMG3.Picture
   else if MainForm.ProtocolInfos[3] = 'IMG4' then
    Protocol_IMG.Picture := Protocol_IMG4.Picture
   else
    Protocol_IMG.Picture := Protocol_IMG5.Picture;
   try
    DomainLabel.Caption := stringreplace(DomainLabel.Caption, 'www.', '', [rfreplaceall]);
   Except
    DomainLabel.Caption := MainForm.GetDomain(Adr);
   end;
  end
 else
  begin
   Protocol_IMG.Picture := Protocol_IMG4.Picture;
   DomainLabel.Caption := 'webexplorer.local';
   ProtocolLabel.Caption := MainForm.LanguageCache.Lines[456];
  end;
 mail_bt1.Appearance := MainForm.Home_BT.Appearance;
 mail_bt2.Appearance := MainForm.Home_BT.Appearance;
 mail_bt3.Appearance := MainForm.Home_BT.Appearance;
 mail_bt4.Appearance := MainForm.Home_BT.Appearance;
 mail_bt5.Appearance := MainForm.Home_BT.Appearance;
 mail_bt6.Appearance := MainForm.Home_BT.Appearance;
 mail_bt7.Appearance := MainForm.Home_BT.Appearance;
 GetLanguage;
end;

procedure TShareCenterFrame.OnShowTimer(Sender: TObject);
begin
 OnShow.Enabled := false;
 LoadIMGDLL;
end;

procedure TShareCenterFrame.RetractPage_CertClick(Sender: TObject);
begin
 ShowCertInfo(false);
end;

procedure TShareCenterFrame.ShowCerDialog;
var
 pct: IOleCommandTarget;
begin
 NativeCertWebBrowser.ControlInterface.QueryInterface(IOleCommandTarget, pct);
 if pct <> nil then
  pct.Exec(@CGID_ShellDocView, 33, 0, POleVariant(nil)^, POleVariant(nil)^);
end;

procedure TShareCenterFrame.ShowCertInfo(cmd: Boolean);
var
 PopUpForm: TPopUpFrm;
begin
 CertDetailPanel.Visible := cmd;
 ScrollBox1.Visible := not cmd;
 if cmd then
  begin
   if MainForm.ShareCenterPanel.ControlCount > 0 then
    begin
     MainForm.ShareCenterPopupFunction.Buttons[2].Visible := true;
    end
   else
    begin
     try
      PopUpForm := TPopUpFrm(Tpanel(GetParentComponent).Owner );
      PopUpForm.ShareCenterPopupFunction.Buttons[2].Visible := true;
     Except
     end;
    end;
   CertEdit_OrgCN.Text := DomainLabel.Caption;
   CertEdit_OrgO.Text := CertInfoList.Items[3];
   CertEdit_EmCN.Text := CertInfoList.Items[1];
   CertEdit_EmO.Text := CertInfoList.Items[2];
   CertEdit_DateStart.Text := CertInfoList.Items[4];
   CertEdit_DateEnd.Text := CertInfoList.Items[5];
   CertDomain.Caption := DomainLabel.Caption;
   CertMsg.Caption := Label1.Caption;
   CertImg.Picture := Protocol_IMG.Picture;
   CertDescExt.Caption := MainForm.ErrorCertificateMsg(CertInfoList.Items[6]);
   CertDetailPanel.BringToFront;
   if CertDescExt.Caption = MainForm.LanguageCache.Lines[542] then
    CertDescExt.Font.Color := clGreen
   else
    begin
     CertDescExt.Font.Color := clRed;
     ViewCompleteCert.Enabled := false;
     ViewCompleteCert.Font.Color := clLtGray;
    end;
  end
 else
  begin
   CertImg.Picture := nil;
   if MainForm.ShareCenterPanel.ControlCount > 0 then
    begin
     MainForm.ShareCenterPopupFunction.Buttons[2].Visible := false;
    end
   else
    begin
     try
      PopUpForm := TPopUpFrm(Tpanel(GetParentComponent).Owner );
      PopUpForm.ShareCenterPopupFunction.Buttons[2].Visible := false;
     Except
     end;
    end;
  end;
end;

end.
