unit UnitAuthenticationPswFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.StdCtrls, GoogleOTP, Winapi.UxTheme,
  JvExStdCtrls, Vcl.ExtCtrls, JvExControls, JvLabel, JvAnimatedImage,
  JvGIFCtrl, System.ImageList, Vcl.ImgList;

type
  TAuthenticationPswFrm = class(TForm)
    AuthMSG: TJvLabel;
    JvLabel1: TLabel;
    Paneledt2: TPanel;
    CancelBT: TAdvGlowButton;
    ContinueBT: TAdvGlowButton;
    JvGIFAnimator1: TJvGIFAnimator;
    OK_Button: TButton;
    ContinueTimer: TTimer;
    GoLogonTimer: TTimer;
    BorderLineP1: TPanel;
    BorderLineP2: TPanel;
    BorderLineP3: TPanel;
    BorderLineP4: TPanel;
    WindowTitle: TLabel;
    Paneledt3: TPanel;
    Paneledt1: TPanel;
    edtPassword: TButtonedEdit;
    ImageList1: TImageList;
    BtEdtPswPanel1: TPanel;
    BtEdtPswPanel2: TPanel;
    procedure FormShow(Sender: TObject);
    procedure ContinueTimerTimer(Sender: TObject);
    procedure ContinueBTClick(Sender: TObject);
    procedure GoLogonTimerTimer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure CancelBTClick(Sender: TObject);
    procedure edtPasswordRightButtonClick(Sender: TObject);
    procedure edtPasswordLeftButtonClick(Sender: TObject);
    procedure BtEdtPswPanel1Click(Sender: TObject);
    procedure BtEdtPswPanel2Click(Sender: TObject);
  private
    procedure LoadIMG1DLL;
    procedure LoadIMG2DLL;
    procedure ImageAnimationType(cmd: SmallInt);
    procedure AuthPassword(IsPinPsw: Boolean; PswStr: string);
    procedure BorderLineColor;
    procedure GetLanguage;
    procedure WindowShake(wHandle: THandle);
  public
    { Public declarations }
  end;

var
  AuthenticationPswFrm: TAuthenticationPswFrm;
  FormCanClose, UsePin: Boolean;

implementation

{$R *.dfm}

uses UnitMainForm;

{ TAuthenticationPswFrm }

procedure TAuthenticationPswFrm.AuthPassword(IsPinPsw: Boolean; PswStr: string);
begin
 if IsPinPsw then
  begin
   if (ValidateTOPT(MainForm.UserKeyProfileStrs[3], StrToInt(PswStr))) then
		begin
     AuthMSG.Caption := MainForm.LanguageCache.Lines[574] + ' ' + MainForm.GetProfileName + ', ' + MainForm.LanguageCache.Lines[554];
     Paneledt1.Visible := false;
     Paneledt2.Visible := false;
     Paneledt3.Visible := false;
     edtPassword.Visible := false;
     BtEdtPswPanel2.Visible :=  edtPassword.Visible;
     BtEdtPswPanel1.Visible :=  edtPassword.Visible;
     LoadIMG2DLL;
    end
	else
    begin
     WindowShake(Self.Handle);
     edtPassword.Clear;
    end;
  end
 else
  begin
   if edtPassword.Text = MainForm.UserKeyProfileStrs[2] then
		begin
     AuthMSG.Caption := MainForm.LanguageCache.Lines[574] + ' ' + MainForm.GetProfileName + ', ' + MainForm.LanguageCache.Lines[554];
     Paneledt1.Visible := false;
     Paneledt2.Visible := false;
     Paneledt3.Visible := false;
     edtPassword.Visible := false;
     BtEdtPswPanel2.Visible :=  edtPassword.Visible;
     BtEdtPswPanel1.Visible :=  edtPassword.Visible;
     LoadIMG2DLL;
    end
	else
    begin
     WindowShake(Self.Handle);
     edtPassword.Clear;
    end;
  end;
end;

procedure TAuthenticationPswFrm.BorderLineColor;
begin
 if Winapi.UxTheme.IsCompositionActive then
  begin
   BorderLineP1.Color := MainForm.GetAeroColor;
   BorderLineP2.Color := MainForm.GetAeroColor;
   BorderLineP3.Color := MainForm.GetAeroColor;
   BorderLineP4.Color := MainForm.GetAeroColor;
  end;
end;

procedure TAuthenticationPswFrm.BtEdtPswPanel1Click(Sender: TObject);
begin
 edtPassword.OnRightButtonClick(sender);
end;

procedure TAuthenticationPswFrm.BtEdtPswPanel2Click(Sender: TObject);
begin
 edtPassword.OnRightButtonClick(sender);
end;

procedure TAuthenticationPswFrm.CancelBTClick(Sender: TObject);
begin
 FormCanClose := true;
 ModalResult := mrAbort;
end;

procedure TAuthenticationPswFrm.ContinueBTClick(Sender: TObject);
begin
 AuthPassword(UsePin, edtPassword.Text);
end;

procedure TAuthenticationPswFrm.ContinueTimerTimer(Sender: TObject);
begin
 TTimer(Sender).Enabled := false;
 ModalResult := mrOk;
 OK_Button.Click;
end;

procedure TAuthenticationPswFrm.edtPasswordLeftButtonClick(Sender: TObject);
begin
 case edtPassword.LeftButton.ImageIndex of
  0: begin
      edtPassword.LeftButton.ImageIndex := 1;
      edtPassword.NumbersOnly := false;
      UsePin := false;
     end;
  1: begin
      edtPassword.LeftButton.ImageIndex := 0;
      edtPassword.NumbersOnly := true;
      UsePin := true;
     end;
 end;
end;

procedure TAuthenticationPswFrm.edtPasswordRightButtonClick(Sender: TObject);
begin
 case edtPassword.RightButton.ImageIndex of
  2: begin
      edtPassword.RightButton.ImageIndex := 3;
      edtPassword.PasswordChar := #0;
      BtEdtPswPanel1.Visible := true;
      BtEdtPswPanel2.Visible := true;
     end;
  3: begin
      edtPassword.RightButton.ImageIndex := 2;
      edtPassword.PasswordChar := '●';
      BtEdtPswPanel1.Visible := false;
      BtEdtPswPanel2.Visible := false;
     end;
 end;

end;

procedure TAuthenticationPswFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose := FormCanClose;
end;

procedure TAuthenticationPswFrm.FormCreate(Sender: TObject);
begin
 GetLanguage;
 FormCanClose := false;
 UsePin := true;
end;

procedure TAuthenticationPswFrm.FormShow(Sender: TObject);
begin
 BorderLineColor;
 LoadIMG1DLL;
end;

procedure TAuthenticationPswFrm.GetLanguage;
begin
 //MainForm.LanguageCache.Lines[]
 JvLabel1.Caption := MainForm.LanguageCache.Lines[572];
 AuthMSG.Caption := MainForm.LanguageCache.Lines[573];
 WindowTitle.Caption := 'Web Explorer - ' + MainForm.LanguageCache.Lines[556];
 ContinueBT.Caption := MainForm.LanguageCache.Lines[575];
 CancelBT.Caption := MainForm.LanguageCache.Lines[241];
 edtPassword.LeftButton.Hint := MainForm.LanguageCache.Lines[576];
end;

procedure TAuthenticationPswFrm.GoLogonTimerTimer(Sender: TObject);
begin
 TTimer(Sender).Enabled := false;
 ContinueTimer.Enabled := true;
 ContinueBT.Enabled := false;
 CancelBT.Enabled := false;
end;

procedure TAuthenticationPswFrm.LoadIMG2DLL;
var
 img: thandle;
begin
 FormCanClose := true;

 img := loadlibrary(PChar(ExtractFilePath(Application.ExeName) + '.\CoreImages.dll'));
 try
  if img <> 0 then
   begin
    JvGIFAnimator1.Image.LoadFromResourcename(img,'AUTHENTICATIONx64', 'GIF');
    JvGIFAnimator1.Animate := true;
    GoLogonTimer.Enabled := true;
   end
  else
   begin
    Application.Terminate;
   end;
  except
   freelibrary(img);
  end;
end;

procedure TAuthenticationPswFrm.WindowShake(wHandle: THandle);
const
   MAXDELTA = 2;
   SHAKETIMES = 500;
var
   oRect, wRect :TRect;
   deltax : integer;
   deltay : integer;
   cnt : integer;
   dx, dy : integer;
begin
   //remember original position
   GetWindowRect(wHandle,wRect) ;
   oRect := wRect;

   Randomize;
   for cnt := 0 to SHAKETIMES do
   begin
     deltax := Round(Random(MAXDELTA)) ;
     deltay := Round(Random(MAXDELTA)) ;
     dx := Round(1 + Random(2)) ;
     if dx = 2 then dx := -1;
     dy := Round(1 + Random(2)) ;
     if dy = 2 then dy := -1;
     OffsetRect(wRect,dx * deltax, dy * deltay) ;
     MoveWindow(wHandle, wRect.Left,wRect.Top,wRect.Right - wRect.Left,wRect.Bottom - wRect.Top,true) ;
   end;
   //return to start position
   MoveWindow(wHandle, oRect.Left,oRect.Top,oRect.Right - oRect.Left,oRect.Bottom - oRect.Top,true) ;
end;

procedure TAuthenticationPswFrm.ImageAnimationType(cmd: SmallInt);
begin
 case cmd of
  0: begin
      JvGIFAnimator1.Loop := true;
      LoadIMG1DLL;
     end;
  1: begin
      JvGIFAnimator1.Loop := false;
      LoadIMG2DLL;
     end;
 end;
end;

procedure TAuthenticationPswFrm.LoadIMG1DLL;
var
 img: thandle;
begin
 img := loadlibrary(PChar(ExtractFilePath(Application.ExeName) + '.\CoreImages.dll'));
 try
  if img <> 0 then
   begin
    JvGIFAnimator1.Image.LoadFromResourcename(img,'SEARCHINGX64', 'GIF');
    JvGIFAnimator1.Animate := true;
   end
  else
   begin
    Application.Terminate;
   end;
  except
   freelibrary(img);
  end;
end;

end.
