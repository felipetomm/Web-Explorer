unit UnitBackgroundGlassForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Winapi.UxTheme;

type
  TBackgroundGlassFrm = class(TForm)
    Win10GlassImage: TImage;
    GlassMainFormUpdate: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GlassMainFormUpdateTimer(Sender: TObject);
  private
    function IsGlassFormType: Boolean;
    procedure EnableBlur;
    procedure EnableOldAlhpha;
    procedure SetAlphaColorPicture(const Col: TColor; const Alpha: Integer; Picture: TPicture; const _width: Integer; const _height: Integer);
    function BlendColors(Col1, Col2: TColor; A: Byte): TColor;
  public
    var
     CallFromMenu: Boolean;
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
  BackgroundGlassFrm: TBackgroundGlassFrm;
  SetWindowCompositionAttribute: function (Wnd: HWND; const AttrData: TWinCompAttrData): BOOL; stdcall = Nil;

implementation

{$R *.dfm}

uses UnitMainForm;

{ TBackgroundGlassFrm }

function TBackgroundGlassFrm.BlendColors(Col1, Col2: TColor; A: Byte): TColor;
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

procedure TBackgroundGlassFrm.EnableBlur;
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

procedure TBackgroundGlassFrm.EnableOldAlhpha;
begin
 BorderStyle := bsNone;
 Win10GlassImage.Visible := false;
 Color := clBlack;
 AlphaBlend := true;
 AlphaBlendValue := 80;
end;

procedure TBackgroundGlassFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Free;
end;

procedure TBackgroundGlassFrm.FormCreate(Sender: TObject);
begin
 if IsGlassFormType then
  begin
   SetWindowCompositionAttribute := GetProcAddress(GetModuleHandle(user32), 'SetWindowCompositionAttribute');
   EnableBlur;
  end
 else
  EnableOldAlhpha;
end;

procedure TBackgroundGlassFrm.SetAlphaColorPicture(const Col: TColor;
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

procedure TBackgroundGlassFrm.GlassMainFormUpdateTimer(Sender: TObject);
begin
 TTimer(Sender).Enabled := false;
 if CallFromMenu then
  begin
   if IsGlassFormType then
    EnableBlur
   else
    EnableOldAlhpha;
  end;
end;

function TBackgroundGlassFrm.IsGlassFormType: Boolean;
begin
 if Win32MajorVersion < 10 then
  Result := false
 else
  Result := Winapi.UxTheme.IsCompositionActive;
end;

end.
