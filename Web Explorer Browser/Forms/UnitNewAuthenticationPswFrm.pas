unit UnitNewAuthenticationPswFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.UxTheme, System.win.Registry,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, AdvGlowButton;

type
  TNewAuthenticationPswFrm = class(TForm)
    BorderLineP1: TPanel;
    BorderLineP2: TPanel;
    BorderLineP3: TPanel;
    BorderLineP4: TPanel;
    NextBT: TAdvGlowButton;
    WindowCloseBT: TImage;
    JvLabel1: TLabel;
    WindowTitle: TLabel;
    ImageList1: TImageList;
    Paneledt2: TPanel;
    Paneledt3: TPanel;
    Paneledt1: TPanel;
    edtPassword: TButtonedEdit;
    BtEdtPswPanel1: TPanel;
    BtEdtPswPanel2: TPanel;
    edtPassword2: TButtonedEdit;
    BtEdtPswPanel4: TPanel;
    BtEdtPswPanel3: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    procedure WindowCloseBTMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure WindowCloseBTMouseEnter(Sender: TObject);
    procedure WindowCloseBTMouseLeave(Sender: TObject);
    procedure WindowCloseBTClick(Sender: TObject);
    procedure edtPasswordRightButtonClick(Sender: TObject);
    procedure edtPassword2RightButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPassword2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPasswordKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NextBTClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure BorderLineColor;
    procedure SetWindowsColor;
    function GetAeroColor: TColor;
    procedure WindowCloseButton(BtType: SmallInt);
    procedure GetLanguage;
  public
    { Public declarations }
  end;

var
  NewAuthenticationPswFrm: TNewAuthenticationPswFrm;
  AeroColorN, AeroColorH, AeroColorD: TColor;

implementation

{$R *.dfm}

uses UnitMainForm;

procedure TNewAuthenticationPswFrm.BorderLineColor;
begin
 if Winapi.UxTheme.IsCompositionActive then
  begin
   BorderLineP1.Color := GetAeroColor;
   BorderLineP2.Color := GetAeroColor;
   BorderLineP3.Color := GetAeroColor;
   BorderLineP4.Color := GetAeroColor;
  end;
end;

procedure TNewAuthenticationPswFrm.edtPassword2KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if TButtonedEdit(sender).Text = edtPassword.Text then
  NextBT.Enabled := true
 else
  NextBT.Enabled := false;
end;

procedure TNewAuthenticationPswFrm.edtPassword2RightButtonClick(
  Sender: TObject);
begin
  case edtPassword2.RightButton.ImageIndex of
  0: begin
      edtPassword2.RightButton.ImageIndex := 1;
      edtPassword2.PasswordChar := #0;
      BtEdtPswPanel3.Visible := true;
      BtEdtPswPanel4.Visible := true;
     end;
  1: begin
      edtPassword2.RightButton.ImageIndex := 0;
      edtPassword2.PasswordChar := '●';
      BtEdtPswPanel3.Visible := false;
      BtEdtPswPanel4.Visible := false;
     end;
 end;
end;

procedure TNewAuthenticationPswFrm.edtPasswordKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if TButtonedEdit(sender).Text = edtPassword2.Text then
  NextBT.Enabled := true
 else
  NextBT.Enabled := false;
end;

procedure TNewAuthenticationPswFrm.edtPasswordRightButtonClick(Sender: TObject);
begin
 case edtPassword.RightButton.ImageIndex of
  0: begin
      edtPassword.RightButton.ImageIndex := 1;
      edtPassword.PasswordChar := #0;
      BtEdtPswPanel1.Visible := true;
      BtEdtPswPanel2.Visible := true;
     end;
  1: begin
      edtPassword.RightButton.ImageIndex := 0;
      edtPassword.PasswordChar := '●';
      BtEdtPswPanel1.Visible := false;
      BtEdtPswPanel2.Visible := false;
     end;
 end;
end;

procedure TNewAuthenticationPswFrm.FormCreate(Sender: TObject);
begin
 WindowCloseButton(0);
 GetLanguage;
end;

procedure TNewAuthenticationPswFrm.FormShow(Sender: TObject);
begin
 BorderLineColor;
end;

function TNewAuthenticationPswFrm.GetAeroColor: TColor;
var
 Reg: TRegistry;
 AeroColor: String;
begin
if Winapi.UxTheme.IsCompositionActive then
 begin
 Reg := TRegistry.Create;
 try
  Reg.RootKey := HKEY_CURRENT_USER;
  if Reg.OpenKey('\Software\Microsoft\Windows\DWM', True) then
   begin
    AeroColor :=  IntToHex(Reg.ReadInteger('ColorizationColor'),8);
    Reg.CloseKey;
   end;
 finally
  Reg.Free;
 end;
 AeroColor := '#' + Copy(AeroColor, 3, 8);
 if copy(AeroColor,1,1)='#' then begin
    AeroColor:='$'+copy(AeroColor,6,2)+copy(AeroColor,4,2)+copy(AeroColor,2,2);
  end
  else
    AeroColor:='$00F2E4D7';
  try
    result:=StringToColor(AeroColor);
  except
    result:= StringToColor('$00F2E4D7');
  end;
 end;
end;

procedure TNewAuthenticationPswFrm.GetLanguage;
begin
 Label1.Caption := MainForm.LanguageCache.Lines[568];
 Label2.Caption := MainForm.LanguageCache.Lines[569];
 JvLabel1.Caption := MainForm.LanguageCache.Lines[579];
 NextBT.Caption := MainForm.LanguageCache.Lines[575];
 WindowTitle.Caption := 'Web Explorer - ' + MainForm.LanguageCache.Lines[556];
end;

procedure TNewAuthenticationPswFrm.NextBTClick(Sender: TObject);
begin
 MainForm.TempUserKeyProfilePsw := edtPassword2.Text;
end;

procedure TNewAuthenticationPswFrm.SetWindowsColor;
begin
 AeroColorD := GetAeroColor;
end;

procedure TNewAuthenticationPswFrm.WindowCloseBTClick(Sender: TObject);
begin
 ModalResult := mrAbort;
 close;
end;

procedure TNewAuthenticationPswFrm.WindowCloseBTMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
WindowCloseButton(2);
end;

procedure TNewAuthenticationPswFrm.WindowCloseBTMouseEnter(Sender: TObject);
begin
 WindowCloseButton(1);
end;

procedure TNewAuthenticationPswFrm.WindowCloseBTMouseLeave(Sender: TObject);
begin
WindowCloseButton(0);
end;

procedure TNewAuthenticationPswFrm.WindowCloseButton(BtType: SmallInt);
var
 img: thandle;
begin
 img := loadlibrary(PChar(ExtractFilePath(Application.ExeName) + '.\CoreImages.dll'));
 try
  if img <> 0 then
   begin
    case BtType of
     0: WindowCloseBT.Picture.Bitmap.LoadFromResourceName(img,'WM_CLOSE_N');
     1: WindowCloseBT.Picture.Bitmap.LoadFromResourceName(img,'WM_CLOSE_H');
     2: WindowCloseBT.Picture.Bitmap.LoadFromResourceName(img,'WM_CLOSE_D');
    end;
   end
  else
   begin
    MessageBox(Application.Handle, 'CoreImage was not found.', 'CoreImages.dll Error', MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
   end;
 except
  freelibrary(img);
 end;
end;

end.
