unit UnitPopUpBarFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton,
  Vcl.StdCtrls, Vcl.ExtCtrls, AdvOfficeImage, AdvPanel, Vcl.Buttons,
  JvExControls, JvGradient;

type
  TPopUpBarFrame = class(TFrame)
    popupbar: TAdvPanel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    popuplabel1: TLabel;
    popuplabel2: TLabel;
    OnShowTimer: TTimer;
    popupbarconfigbt: TAdvGlowButton;
    popupbarclosebt: TAdvGlowButton;
    popupbarimg: TAdvOfficeImage;
    OpenAnimation: TTimer;
    BkgGradientPanel: TJvGradient;
    StartAnimation: TTimer;
    procedure popupbarclosebtClick(Sender: TObject);
    procedure OnShowTimerTimer(Sender: TObject);
    procedure FrameResize(Sender: TObject);
    procedure popupbarClick(Sender: TObject);
    procedure popupbarconfigbtClick(Sender: TObject);
    procedure OpenAnimationTimer(Sender: TObject);
    procedure StartAnimationTimer(Sender: TObject);
  private
    { Private declarations }
  public
    var
     NotificationBrowserIndexName, PopUpUrl: string;
  end;

var
 AnimationIndex: Integer;

implementation

{$R *.dfm}

uses UnitMainForm;

procedure TPopUpBarFrame.FrameResize(Sender: TObject);
begin
 popupbarclosebt.Left := popupbar.Width - popupbarclosebt.Width - 6;
 popupbarconfigbt.Left := popupbarclosebt.Left - popupbarconfigbt.Width - 4;
end;

procedure TPopUpBarFrame.OnShowTimerTimer(Sender: TObject);
begin
 Ttimer(sender).Enabled := false;
 popuplabel1.Caption := MainForm.LanguageCache.Lines[370];
 popuplabel2.Caption := MainForm.LanguageCache.Lines[371];
 popupbar.Hint := MainForm.LanguageCache.Lines[431];
 popuplabel1.hint := popupbar.Hint;
 popuplabel2.hint := popupbar.Hint;
 popupbarimg.Hint := popupbar.Hint;
 popupbarconfigbt.Hint := MainForm.LanguageCache.Lines[373];
 popupbarclosebt.Hint := MainForm.LanguageCache.Lines[211];
end;

procedure TPopUpBarFrame.OpenAnimationTimer(Sender: TObject);
begin
 if AnimationIndex <= 80 then
  begin
   if AnimationIndex < 10 then
    begin
     //1
     BkgGradientPanel.EndColor := MainForm.HtmlToColor('#FAD650', clYellow);
     BkgGradientPanel.StartColor := MainForm.HtmlToColor('#FAD960', clYellow);
     AnimationIndex := AnimationIndex + 10;
    end
   else if AnimationIndex = 10 then
    begin
     //2
     BkgGradientPanel.EndColor := MainForm.HtmlToColor('#FADD70', clYellow);
     BkgGradientPanel.StartColor := MainForm.HtmlToColor('#FBE180', clYellow);
     AnimationIndex := AnimationIndex + 10;
    end
   else if AnimationIndex = 20 then
    begin
     //3
     BkgGradientPanel.EndColor := MainForm.HtmlToColor('#FBE590', clYellow);
     BkgGradientPanel.StartColor := MainForm.HtmlToColor('#FCE8A1', clYellow);
     AnimationIndex := AnimationIndex + 10;
    end
   else if AnimationIndex = 30 then
    begin
     //4
     BkgGradientPanel.EndColor := MainForm.HtmlToColor('#FCECB1', clYellow);
     BkgGradientPanel.StartColor := MainForm.HtmlToColor('#FDF0C1', clYellow);
     AnimationIndex := AnimationIndex + 10;
    end
   else if AnimationIndex = 40 then
    begin
     BkgGradientPanel.EndColor := MainForm.HtmlToColor('#FDF4D1', clYellow);
     BkgGradientPanel.StartColor := MainForm.HtmlToColor('#FEF8E2', clYellow);
     AnimationIndex := AnimationIndex + 10;
    end
   else if AnimationIndex = 50 then
    begin
     //4
     BkgGradientPanel.EndColor := MainForm.HtmlToColor('#FCECB1', clYellow);
     BkgGradientPanel.StartColor := MainForm.HtmlToColor('#FDF0C1', clYellow);
     AnimationIndex := AnimationIndex + 10;
    end
   else if AnimationIndex = 60 then
    begin
     //3
     BkgGradientPanel.EndColor := MainForm.HtmlToColor('#FBE590', clYellow);
     BkgGradientPanel.StartColor := MainForm.HtmlToColor('#FCE8A1', clYellow);
     AnimationIndex := AnimationIndex + 10;
    end
   else if AnimationIndex = 70 then
    begin
     //2
     BkgGradientPanel.EndColor := MainForm.HtmlToColor('#FADD70', clYellow);
     BkgGradientPanel.StartColor := MainForm.HtmlToColor('#FBE180', clYellow);
     AnimationIndex := AnimationIndex + 10;
    end
   else
    begin
     //1
     BkgGradientPanel.EndColor := MainForm.HtmlToColor('#FAD650', clYellow);
     BkgGradientPanel.StartColor := MainForm.HtmlToColor('#FAD960', clYellow);
     AnimationIndex := AnimationIndex + 10;
    end;
  end
 else
  begin
    BkgGradientPanel.EndColor := $0050D6FA;//$00E2F8FE;
    BkgGradientPanel.StartColor := $0060D9FA;//$0058D6FA;
    AnimationIndex := 0;
    TTimer(Sender).Enabled := false;
  end;
end;

procedure TPopUpBarFrame.popupbarClick(Sender: TObject);
begin
 MainForm.TempUrlPage := PopUpUrl;
 MainForm.HandleOpenNewTab.Enabled := true;
 popupbarclosebt.Click;
end;

procedure TPopUpBarFrame.popupbarclosebtClick(Sender: TObject);
begin
 MainForm.HideBarNotification(NotificationBrowserIndexName);
end;

procedure TPopUpBarFrame.popupbarconfigbtClick(Sender: TObject);
begin
 MainForm.OpenForm('SecurityPermissionHub', '', '', False, 1, true);
 MainForm.HideBarNotification(NotificationBrowserIndexName);
end;

procedure TPopUpBarFrame.StartAnimationTimer(Sender: TObject);
begin
 Ttimer(sender).Enabled := false;
 OpenAnimation.Enabled := true;
 AnimationIndex := 0;
end;

end.
