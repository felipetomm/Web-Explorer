unit UnitPageNotification;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  AdvGlowButton, Vcl.ExtCtrls, PngImage;

type
  TPageNotificationFrame = class(TFrame)
    PanelCenter: TPanel;
    ErrorMSG1: TLabel;
    welogo_image: TImage;
    ErrorMSG2: TLabel;
    ErrorMSG3: TLabel;
    HTMLErrorPanelBTs: TPanel;
    ErrorBT1Popup: TAdvGlowButton;
    ErrorBT2Popup: TAdvGlowButton;
    CertErrorPanelBTs: TPanel;
    CertErrorBT1: TAdvGlowButton;
    CertErrorBT2: TAdvGlowButton;
    procedure ErrorBT1PopupClick(Sender: TObject);
    procedure ErrorBT2PopupClick(Sender: TObject);
    procedure CertErrorBT1Click(Sender: TObject);
    procedure CertErrorBT2Click(Sender: TObject);
    procedure FrameResize(Sender: TObject);
  private
    procedure LoadIMGDLL;
    procedure AlignAll;
  public
    procedure NotificationType(cmd: smallint);
    var
     NotificationBrowserIndexName, ErrorUrl: string;

  end;

var
 DialogImgType: SmallInt;

implementation

{$R *.dfm}

uses UnitMainForm;

procedure TPageNotificationFrame.AlignAll;
begin
 PanelCenter.Left := (self.Width div 2) - (PanelCenter.width div 2);
 PanelCenter.Top := (self.Height div 2) - (PanelCenter.Height div 2);
end;

procedure TPageNotificationFrame.CertErrorBT1Click(Sender: TObject);
begin
 MainForm.HideNotificationPage(NotificationBrowserIndexName);
end;

procedure TPageNotificationFrame.CertErrorBT2Click(Sender: TObject);
begin
 MainForm.CloseTab.Execute;
end;

procedure TPageNotificationFrame.ErrorBT1PopupClick(Sender: TObject);
begin
 MainForm.HideNotificationPage(NotificationBrowserIndexName);
end;

procedure TPageNotificationFrame.ErrorBT2PopupClick(Sender: TObject);
begin
 ShowMessage(ErrorUrl);
end;

procedure TPageNotificationFrame.FrameResize(Sender: TObject);
begin
 AlignAll;
end;

procedure TPageNotificationFrame.LoadIMGDLL;
var
  Png: TPngImage;
  IMGResourceStreamInstance: thandle;
begin
  try
   IMGResourceStreamInstance := loadlibrary(PChar(ExtractFilePath(Application.ExeName) + '.\CoreImages.dll'));
  finally
   Png := TPngImage.Create;
   try
    case DialogImgType of
     1: Png.LoadFromResourceName(IMGResourceStreamInstance, 'WELOGO_ERROR');
     2: Png.LoadFromResourceName(IMGResourceStreamInstance, 'WELOGO_ERRORCERT');
     3: Png.LoadFromResourceName(IMGResourceStreamInstance, 'WELOGO_WARNING');
    end;
    welogo_image.Picture.Graphic := Png;
   finally
    Png.Free;
    FreeLibrary(IMGResourceStreamInstance);
   end;
  end;
end;

procedure TPageNotificationFrame.NotificationType(cmd: smallint);
begin
 DialogImgType := cmd;
 try
  if cmd = 1 then
   begin
    CertErrorPanelBTs.Visible := false;
    HTMLErrorPanelBTs.Visible := true;
   end
  else if cmd = 2 then
   begin
    CertErrorPanelBTs.Visible := true;
    HTMLErrorPanelBTs.Visible := false;
    CertErrorBT1.Caption := MainForm.LanguageCache.Lines[394];
    CertErrorBT2.Caption := MainForm.LanguageCache.Lines[211];
   end
  else
   begin
    CertErrorPanelBTs.Visible := false;
    HTMLErrorPanelBTs.Visible := false;
   end;
 finally
   LoadIMGDLL;
 end;


end;

end.
