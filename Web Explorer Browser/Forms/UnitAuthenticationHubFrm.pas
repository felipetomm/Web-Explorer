unit UnitAuthenticationHubFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Winapi.UxTheme,
  Vcl.StdCtrls;

type
  TAuthenticationHubFrm = class(TForm)
    Win10GlassImage: TImage;
    OpenAuthForm: TTimer;
    ButtonOk: TButton;
    ButtonClose: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure OpenAuthFormTimer(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
  private
    function IsGlassFormType: Boolean;
    procedure EnableOldAlhpha;
    procedure EnableBlur;
    procedure SetAlphaColorPicture(const Col: TColor; const Alpha: Integer; Picture: TPicture; const _width: Integer; const _height: Integer);
    function BlendColors(Col1, Col2: TColor; A: Byte): TColor;
    procedure ShowAuthForm;
  public
    { Public declarations }
  end;

  AccentPolicy = packed record
    AccentState: Integer;
    AccentFlags: Integer;
    GradientColor: Integer;
    AnimationId: Integer;
  end;

  TWinCompAttrData = packed record
    attribute: THandle;
    pData: Pointer;
    dataSize: ULONG;
  end;

var
  AuthenticationHubFrm: TAuthenticationHubFrm;
  FormCanClose: Boolean;
  SetWindowCompositionAttribute: function (Wnd: HWND; const AttrData: TWinCompAttrData): BOOL; stdcall = Nil;

implementation

{$R *.dfm}

uses UnitMainForm, UnitAuthenticationPswFrm;

{ TAuthenticationHubFrm }

function TAuthenticationHubFrm.BlendColors(Col1, Col2: TColor; A: Byte): TColor;
var
  c1,c2: LongInt;
  r,g,b,v1,v2: byte;
begin
  A := Round(2.55 * A);
  c1 := ColorToRGB(Col1);
  c2 := ColorToRGB(Col2);
  v1 := Byte(c1);
  v2 := Byte(c2);
  r := A * (v1 - v2) shr 8 + v2;
  v1 := Byte(c1 shr 8);
  v2 := Byte(c2 shr 8);
  g := A * (v1 - v2) shr 8 + v2;
  v1 := Byte(c1 shr 16);
  v2 := Byte(c2 shr 16);
  b := A * (v1 - v2) shr 8 + v2;
  Result := (b shl 16) + (g shl 8) + r;
end;

procedure TAuthenticationHubFrm.ButtonCloseClick(Sender: TObject);
begin
 close;
end;

procedure TAuthenticationHubFrm.EnableBlur;
const
  WCA_ACCENT_POLICY = 19;
  ACCENT_ENABLE_BLURBEHIND = 3;
  DrawLeftBorder = $20;
  DrawTopBorder = $40;
  DrawRightBorder = $80;
  DrawBottomBorder = $100;
var
  dwm10: THandle;
  data : TWinCompAttrData;
  accent: AccentPolicy;
begin
      dwm10 := LoadLibrary('user32.dll');
      try
        @SetWindowCompositionAttribute := GetProcAddress(dwm10, 'SetWindowCompositionAttribute');
        if @SetWindowCompositionAttribute <> nil then
        begin
          accent.AccentState := ACCENT_ENABLE_BLURBEHIND ;
          accent.AccentFlags := DrawLeftBorder or DrawTopBorder or DrawRightBorder or DrawBottomBorder;

          data.Attribute := WCA_ACCENT_POLICY;
          data.dataSize := SizeOf(accent);
          data.pData := @accent;
          SetWindowCompositionAttribute(Handle, data);

          Win10GlassImage.Visible := true;
          Win10GlassImage.SendToBack;
          SetAlphaColorPicture(BlendColors(clBlack, clBlack, 50) , 120, Win10GlassImage.Picture, 10, 10);

          BorderStyle := bsNone;

        end
      else
       begin
        BorderStyle := bsDialog;
        Win10GlassImage.Visible := false;
       end;
      finally
        FreeLibrary(dwm10);
      end;
end;

procedure TAuthenticationHubFrm.EnableOldAlhpha;
begin
 BorderStyle := bsNone;
 Win10GlassImage.Visible := false;
 Color := clBlack;
 AlphaBlend := true;
 AlphaBlendValue := 80;
end;

procedure TAuthenticationHubFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose := FormCanClose;
end;

procedure TAuthenticationHubFrm.FormCreate(Sender: TObject);
begin
 FormCanClose := false;
 if IsGlassFormType then
  EnableBlur
 else
  EnableOldAlhpha;
end;

procedure TAuthenticationHubFrm.FormShow(Sender: TObject);
begin
 Left := MainForm.Left;
 Top := MainForm.Top;
 Width := MainForm.Width;
 Height := MainForm.Height;
end;

function TAuthenticationHubFrm.IsGlassFormType: Boolean;
begin
 if Win32MajorVersion < 10 then
  Result := false
 else
  Result := Winapi.UxTheme.IsCompositionActive;
end;

procedure TAuthenticationHubFrm.OpenAuthFormTimer(Sender: TObject);
begin
 TTimer(Sender).Enabled := false;
 ShowAuthForm;
end;

procedure TAuthenticationHubFrm.SetAlphaColorPicture(const Col: TColor;
  const Alpha: Integer; Picture: TPicture; const _width, _height: Integer);
var
 png: TPngImage;
 x,y: integer;
 sl: pByteArray;
begin
 png := TPngImage.CreateBlank(COLOR_RGBALPHA, 8, _width, _height);
 try
  png.Canvas.Brush.Color := Col;
  png.Canvas.FillRect(Rect(0,0,_width,_height));
  for y := 0 to png.Height - 1 do
   begin
    sl := png.AlphaScanline[y];
    FillChar(sl^, png.Width, Alpha);
   end;
  Picture.Assign(png);
 finally
  png.Free;
 end;
end;

procedure TAuthenticationHubFrm.ShowAuthForm;
begin
 with TAuthenticationPswFrm.Create(nil) do
  begin
   try
    if ShowModal = mrOk then
     begin
      ModalResult := mrOk;
      ButtonOk.Click;
     end
    else
     begin
      ModalResult := mrAbort;
      ButtonClose.Click;
     end;
    finally
     FormCanClose := true;
     Free;
    end;
 end;
end;

end.
