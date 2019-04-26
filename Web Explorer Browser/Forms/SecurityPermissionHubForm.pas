unit SecurityPermissionHubForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, W7Classes,
  W7Buttons, W7Bars, Vcl.WinXCtrls, Vcl.StdCtrls, GoogleOTP, Vcl.Imaging.pngimage,
  AdvGlowButton, JvExControls, Vcl.Buttons;

Const
  InputBoxMsg = WM_USER + 123;

type
  TSecurityPermissionHubFrm = class(TForm)
    LeftSidePanel1: TPanel;
    ListViewSelect1: TListView;
    FormClient: TPanel;
    Bevel3: TBevel;
    toolbar1: TW7ToolBar;
    tool_bt1: TW7ToolButton;
    UserAccontPanel: TPanel;
    Bevel1: TBevel;
    login_image: TImage;
    UserNameLabel: TLabel;
    PswSaveButton: TAdvGlowButton;
    UserName2Label: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    optpanel5: TPanel;
    optPSW: TToggleSwitch;
    textopt9: TLabel;
    AuthenticationDesc: TMemo;
    Label34: TLabel;
    openbt1: TSpeedButton;
    StatusLabel1: TLabel;
    procedure ListViewSelect1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure FormShow(Sender: TObject);
    procedure tool_bt1Click(Sender: TObject);
    procedure optPSWClick(Sender: TObject);
    procedure PswSaveButtonClick(Sender: TObject);
    procedure PswBt1Click(Sender: TObject);
    procedure PswBt2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure openbt1Click(Sender: TObject);
  private
    procedure GetLanguage;
    procedure get_imageProfile;
    procedure ApplyThemeSettings;
    procedure GetAuthenticationSettings;
    procedure GenerateUserdefaultkeys;
    procedure GenerateUserCustomkeys;
    procedure CheckSaveButton;
    procedure LoadIMGDLL;
    procedure StarAuthSetup;
    procedure CheckLabelStatus;
  public
    procedure ShowHubOptions(cmd: SmallInt);
    var
     ExecuteCmdMenu: SmallInt;
  end;

var
  SecurityPermissionHubFrm: TSecurityPermissionHubFrm;
  UserKeyProfileStrs: array[1..3] of string;


implementation

{$R *.dfm}

uses UnitMainForm, UnitNewAuthenticationPswFrm;


{ TSecurityPermissionHubFrm }

procedure TSecurityPermissionHubFrm.ApplyThemeSettings;
var
 TempAerocolor: TColor;
begin
 TempAerocolor := MainForm.BrightenWinRT(MainForm.GetAeroColor);
 optPSW.FrameColor := TempAerocolor;
 optPSW.ThumbColor := TempAerocolor;
end;

procedure TSecurityPermissionHubFrm.CheckLabelStatus;
begin
 UserKeyProfileStrs[1] := MainForm.GetHashMd5(MainForm.GetProfileName + '@webexplorer');
 if optPSW.State = tssOn then
  begin
    Label34.Enabled := true;
    openbt1.Enabled := true;
    UserKeyProfileStrs[2] := '';
    UserKeyProfileStrs[3] := '';
    StatusLabel1.Font.Color := $006C6CFF;
    PswSaveButton.Enabled := false;
  end
 else
  begin
    Label34.Enabled := false;
    openbt1.Enabled := false;
    StatusLabel1.Font.Color := $006C6CFF;
    PswSaveButton.Enabled := true;
  end;
end;

procedure TSecurityPermissionHubFrm.CheckSaveButton;
begin
 if (( UserKeyProfileStrs[1] <> trim('') ) and ( UserKeyProfileStrs[2] <> trim('') ) and ( UserKeyProfileStrs[3] <> trim('') )) then
  PswSaveButton.Enabled := True
 else
  PswSaveButton.Enabled := false;
end;

procedure TSecurityPermissionHubFrm.FormCreate(Sender: TObject);
begin
 LoadIMGDLL;
end;

procedure TSecurityPermissionHubFrm.FormShow(Sender: TObject);
begin
 GetLanguage;
 ApplyThemeSettings;
 ShowHubOptions(ExecuteCmdMenu);
end;

procedure TSecurityPermissionHubFrm.GenerateUserCustomkeys;
var
 UserKeyProfile: TStringList;
begin
 try
  UserKeyProfile := TStringList.Create();
  UserKeyProfile.Add(UserKeyProfileStrs[1]);                   //identificador
  UserKeyProfile.Add(UserKeyProfileStrs[2]);                   //senha
  UserKeyProfile.Add(UserKeyProfileStrs[3]);                   //OTP Secrect
  UserKeyProfile.Text := MainForm.EnCrypt(true, UserKeyProfile.Text);
  {$IFDEF STORE}
  UserKeyProfile.SaveToFile(Pchar(MainForm.Profile_Pach + '\' + GetHashMd5('UserKeys_' + GetProfileName + '@webexplorer')));
  {$ELSE}
  UserKeyProfile.SaveToFile(Pchar(MainForm.Profile_Pach + '\' + MainForm.GetHashMd5('UserKeys_' + MainForm.GetProfileName + '@webexplorer')));
  {$ENDIF}
 finally
  UserKeyProfile.Free;
 end;
end;

procedure TSecurityPermissionHubFrm.GenerateUserdefaultkeys;
var
 UserKeyProfile: TStringList;
begin
 UserKeyProfileStrs[1] := MainForm.GetHashMd5(MainForm.GetProfileName + '@webexplorer');
 UserKeyProfileStrs[2] := MainForm.GetHashMd5(MainForm.GetProfileName);
 UserKeyProfileStrs[3] := 'W36DJD4MABA2BZT';
 try
  UserKeyProfile := TStringList.Create();
  UserKeyProfile.Add(UserKeyProfileStrs[1]);                   //identificador
  UserKeyProfile.Add(UserKeyProfileStrs[2]);                   //senha padrão
  UserKeyProfile.Add(UserKeyProfileStrs[3]);                   //OTP Secrect padrão
  UserKeyProfile.Text := MainForm.EnCrypt(true, UserKeyProfile.Text);
  {$IFDEF STORE}
  UserKeyProfile.SaveToFile(Pchar(Profile_Pach + '\' + GetHashMd5('UserKeys_' + GetProfileName + '@webexplorer')));
  {$ELSE}
  UserKeyProfile.SaveToFile(Pchar(MainForm.Profile_Pach + '\' + MainForm.GetHashMd5('UserKeys_' + MainForm.GetProfileName + '@webexplorer')));
  {$ENDIF}
 finally
  UserKeyProfile.Free;
 end;

end;

procedure TSecurityPermissionHubFrm.GetAuthenticationSettings;
var
 UserKeyProfile: TStringList;
begin
 try
  UserKeyProfile := TStringList.Create();
  UserKeyProfile.LoadFromFile(Pchar(MainForm.Profile_Pach + '\' + MainForm.GetHashMd5('UserKeys_' + MainForm.GetProfileName + '@webexplorer')));
  UserKeyProfile.Text := MainForm.EnCrypt(false, Trim(UserKeyProfile.Text));
  UserKeyProfileStrs[1] := UserKeyProfile.Strings[0];
  UserKeyProfileStrs[2] := UserKeyProfile.Strings[1];
  UserKeyProfileStrs[3] := UserKeyProfile.Strings[2];
 finally
  UserKeyProfile.Free;
 end;

 if UserKeyProfileStrs[3] = trim('W36DJD4MABA2BZT') then
  begin
    optPSW.State := tssOff;
    StatusLabel1.Caption := MainForm.LanguageCache.Lines[565];
    StatusLabel1.Font.Color := $006C6CFF;
    PswSaveButton.Enabled := false;
  end
 else
  begin
    optPSW.State := tssOn;
    StatusLabel1.Caption := MainForm.LanguageCache.Lines[566];
    StatusLabel1.Font.Color := clGreen;
    PswSaveButton.Enabled := false;
  end;
end;

procedure TSecurityPermissionHubFrm.GetLanguage;
begin
 ListViewSelect1.Groups[0].Header := MainForm.LanguageCache.Lines[524];
 ListViewSelect1.Groups[1].Header := MainForm.LanguageCache.Lines[525];
 ListViewSelect1.Items[0].Caption := MainForm.LanguageCache.Lines[526];
 ListViewSelect1.Items[1].Caption := MainForm.LanguageCache.Lines[527];
 ListViewSelect1.Items[2].Caption := MainForm.LanguageCache.Lines[528];
 ListViewSelect1.Items[3].Caption := MainForm.LanguageCache.Lines[580];
 tool_bt1.Caption := MainForm.LanguageCache.Lines[388];
 Caption := MainForm.LanguageCache.Lines[529];

 optPSW.StateCaptions.CaptionOn := MainForm.LanguageCache.Lines[471];
 optPSW.StateCaptions.CaptionOff := MainForm.LanguageCache.Lines[472];

 AuthenticationDesc.Lines.Text := MainForm.LanguageCache.Lines[559];
 Label2.Caption := MainForm.LanguageCache.Lines[561];
 textopt9.Caption := MainForm.LanguageCache.Lines[560];
 PswSaveButton.Caption := MainForm.LanguageCache.Lines[22];
 Label34.Caption := MainForm.LanguageCache.Lines[563];
 optPSW.StateCaptions.CaptionOn := MainForm.LanguageCache.Lines[471];
 optPSW.StateCaptions.CaptionOff := MainForm.LanguageCache.Lines[472];


end;

procedure TSecurityPermissionHubFrm.get_imageProfile;
var
 PngImage: TPngImage;
 img: thandle;
begin
 if FileExists( Pchar( MainForm.Profile_Pach + '\' + MainForm.GetHashMd5('UserKeys_' + MainForm.GetProfileName + '@webexplorer') + '.png') ) then
  begin
   try
    PngImage := TPngImage.Create;
    PngImage.LoadFromFile( Pchar( MainForm.Profile_Pach + '\' + MainForm.GetHashMd5('UserKeys_' + MainForm.GetProfileName + '@webexplorer') + '.png') );
    login_image.Picture.Graphic := PngImage;
   finally
    PngImage.Free;
   end;
  end
 else
  begin
   img := loadlibrary(PChar(ExtractFilePath(Application.ExeName) + '.\CoreImages.dll'));
    try
     if img <> 0 then
      begin
        login_image.Picture.Bitmap.LoadFromResourceName(img,'LOGIN_C');
      end
     else
      begin
       Application.Terminate;
      end;
    except
     freelibrary(img);
    end;
  end;
end;

procedure TSecurityPermissionHubFrm.ListViewSelect1Change(Sender: TObject;
  Item: TListItem; Change: TItemChange);
begin
 if ListViewSelect1.ItemIndex <> -1 then
  begin
   ExecuteCmdMenu := ListViewSelect1.ItemIndex;
   ShowHubOptions(ListViewSelect1.ItemIndex);
  end;
end;

procedure TSecurityPermissionHubFrm.LoadIMGDLL;
var
 img: thandle;
begin
 img := loadlibrary(PChar(ExtractFilePath(Application.ExeName) + '.\CoreImages.dll'));
 try
  if img <> 0 then
   begin
    //SetupPswTaskDialogEx1.CustomIcon.LoadFromResourceName(img, 'AUTHENTICPOPUP');
    //PasswordInputBox.CustomIcon.LoadFromResourceName(img, 'AUTHICON');
    openbt1.Glyph.LoadFromResourceName(img,'OPENWINDOW');
    //UserAuthenImg.Picture.Bitmap.LoadFromResourceName(img,'USERAUTH');
   end
  else
   begin
    Application.Terminate;
   end;
  except
   freelibrary(img);
  end;
end;

procedure TSecurityPermissionHubFrm.openbt1Click(Sender: TObject);
begin
 StarAuthSetup;
end;

procedure TSecurityPermissionHubFrm.optPSWClick(Sender: TObject);
begin
 CheckLabelStatus;
end;

procedure TSecurityPermissionHubFrm.PswBt1Click(Sender: TObject);
var
  UsrPsw1, UsrPsw2: string;
begin
  PostMessage(Handle, InputBoxMsg, 0, 0);

  if TNewAuthenticationPswFrm.Create(nil).ModalResult = mrOk then
   begin
    UsrPsw1 := MainForm.TempUserKeyProfilePsw;
    MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[570]), Pchar( 'Web Explorer - ' + MainForm.LanguageCache.Lines[556]), MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1);
    UserKeyProfileStrs[2] := UsrPsw2;
    StatusLabel1.Font.Color := clGreen;
    StatusLabel1.Caption := MainForm.LanguageCache.Lines[566];
   end
  else
   begin
    StatusLabel1.Font.Color := $006C6CFF;
    MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[571]), Pchar( 'Web Explorer - ' + MainForm.LanguageCache.Lines[556]), MB_ICONSTOP + MB_OK + MB_DEFBUTTON1);
   end;


//  if UsrPsw1 <> trim('') then
//   begin
//    PostMessage(Handle, InputBoxMsg, 0, 0);
//    UsrPsw2 := InputBox(Pchar( 'Web Explorer - ' + MainForm.LanguageCache.Lines[556]), MainForm.LanguageCache.Lines[569], '');
//    if UsrPsw1 = UsrPsw2 then
//     begin
//      MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[570]), Pchar( 'Web Explorer - ' + MainForm.LanguageCache.Lines[556]), MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1);
//      UserKeyProfileStrs[2] := UsrPsw2;
//      StatusLabel1.Font.Color := clGreen;
//      StatusLabel1.Caption := MainForm.LanguageCache.Lines[566];
//     end
//    else
//     begin
//      StatusLabel1.Font.Color := $006C6CFF;
//      MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[571]), Pchar( 'Web Explorer - ' + MainForm.LanguageCache.Lines[556]), MB_ICONSTOP + MB_OK + MB_DEFBUTTON1);
//     end;
//   end;
  CheckSaveButton;
end;

procedure TSecurityPermissionHubFrm.PswBt2Click(Sender: TObject);
begin
 try
  UserKeyProfileStrs[3] := GoogleOTP.GenerateOTPSecret(20);
  MainForm.OpenForm('QrCode', 'otpauth://totp/WebExplorer:' + MainForm.GetProfileName + '@webexplorer' + '?secret=' + UserKeyProfileStrs[3] +'&issuer=Web Explorer Account', '', True, 0, false);
 finally
  CheckSaveButton;
 end;
end;

procedure TSecurityPermissionHubFrm.PswSaveButtonClick(Sender: TObject);
begin
 if optPSW.State = tssOff then
  begin
   GenerateUserdefaultkeys;
   StatusLabel1.Caption := MainForm.LanguageCache.Lines[565];
   CheckLabelStatus;
  end
 else
  GenerateUserCustomkeys;
 PswSaveButton.Enabled := false;
end;

procedure TSecurityPermissionHubFrm.ShowHubOptions(cmd: SmallInt);
begin
 {if AdblockForm.Visible = true then
  AdblockForm.Close;
 if TrustedPagesForm.Visible = true then
  TrustedPagesForm.Close;
 if weActiveProtection.Visible = true then
  weActiveProtection.Close;}
 case cmd of
  0: begin
      FormClient.Visible := true;
      UserAccontPanel.Visible := false;
      {AdblockForm.Align := alClient;
      AdblockForm.BorderStyle := bsNone;
      AdblockForm.Parent := FormClient;
      AdblockForm.Visible := true;
      toolbar1.Visible := true;
      AdblockForm.Show;}
     end;
  1: begin
      FormClient.Visible := true;
      UserAccontPanel.Visible := false;
      {TrustedPagesForm.Align := alClient;
      TrustedPagesForm.BorderStyle := bsNone;
      TrustedPagesForm.Parent := FormClient;
      TrustedPagesForm.Visible := true;
      toolbar1.Visible := true;
      TrustedPagesForm.Show;}
     end;
  2: begin
      FormClient.Visible := true;
      UserAccontPanel.Visible := false;
      {weActiveProtection.Align := alClient;
      weActiveProtection.BorderStyle := bsNone;
      weActiveProtection.Parent := FormClient;
      weActiveProtection.Visible := true;
      toolbar1.Visible := true;
      weActiveProtection.Show;}
     end;
  3: begin
      get_imageProfile;
      UserNameLabel.Caption := MainForm.GetProfileName;
      UserName2Label.Caption := LowerCase(UserNameLabel.Caption) + '@webexplorer.local';
      FormClient.Visible := false;
      GetAuthenticationSettings;
      UserAccontPanel.Visible := true;
      {weActiveProtection.Align := alClient;
      weActiveProtection.BorderStyle := bsNone;
      weActiveProtection.Parent := FormClient;
      weActiveProtection.Visible := true;
      toolbar1.Visible := true;
      weActiveProtection.Show;}
     end;
 end;
end;

procedure TSecurityPermissionHubFrm.StarAuthSetup;
var
  UsrPsw: string;
begin
  with TNewAuthenticationPswFrm.Create(nil) do
   begin
    MainForm.CreateGlassBckgForm(true);
    if ShowModal = mrOk then
      begin

        UsrPsw := MainForm.TempUserKeyProfilePsw;
        MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[570]), Pchar( 'Web Explorer - ' + MainForm.LanguageCache.Lines[556]), MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1);
        UserKeyProfileStrs[2] := UsrPsw;
        StatusLabel1.Font.Color := clGreen;
        StatusLabel1.Caption := MainForm.LanguageCache.Lines[566];
        MainForm.CloseGlassBckgForm;
        try
         UserKeyProfileStrs[3] := GoogleOTP.GenerateOTPSecret(20);
         MainForm.OpenForm('QrCode', 'otpauth://totp/WebExplorer:' + MainForm.GetProfileName + '@webexplorer' + '?secret=' + UserKeyProfileStrs[3] +'&issuer=Web Explorer Account', '', True, 0, false);
        finally
        end;
      end
    else
     begin
      StatusLabel1.Font.Color := $006C6CFF;
      MainForm.CloseGlassBckgForm;
      MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[571] + #13 + '' + #13 + MainForm.LanguageCache.Lines[562]), Pchar( 'Web Explorer - ' + MainForm.LanguageCache.Lines[556]), MB_ICONSTOP + MB_OK + MB_DEFBUTTON1);
      optPSW.State := tssOff;
     end;
   end;
  CheckSaveButton;
end;

procedure TSecurityPermissionHubFrm.tool_bt1Click(Sender: TObject);
var
 MenuPosition1: TPoint;
begin
 case ExecuteCmdMenu of
  0: begin
      MenuPosition1 := ClientToScreen(Point(tool_bt1.Top,tool_bt1.Left));
      //AdblockForm.PopupMenu1.Popup(MenuPosition1.X -2, MenuPosition1.Y + tool_bt1.Height + 3);
     end;
  1: begin
      MenuPosition1 := ClientToScreen(Point(tool_bt1.Top,tool_bt1.Left));
      //TrustedPagesForm.PopupMenu2.Popup(MenuPosition1.X -2, MenuPosition1.Y + tool_bt1.Height + 3);
     end;
  2: begin
      MenuPosition1 := ClientToScreen(Point(tool_bt1.Top,tool_bt1.Left));
      //weActiveProtection.PopupMenu1.Popup(MenuPosition1.X -2, MenuPosition1.Y + tool_bt1.Height + 3);
     end;
  3: begin
      MenuPosition1 := ClientToScreen(Point(tool_bt1.Top,tool_bt1.Left));
      //weActiveProtection.PopupMenu1.Popup(MenuPosition1.X -2, MenuPosition1.Y + tool_bt1.Height + 3);

     end;
 end;


end;

end.
