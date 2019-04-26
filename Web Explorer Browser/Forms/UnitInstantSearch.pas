unit UnitInstantSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCEFChromium, uCEFInterfaces,
  Vcl.ExtCtrls, Vcl.StdCtrls, AdvSmoothWin8Marquee, uCEFWindowParent, uCEFTypes;

type
  TInstantSearchFrame = class(TFrame)
    LoadingBrowser: TAdvSmoothWin8Marquee;
    ErrorPanel: TPanel;
    ErrorTitlePopup: TLabel;
    ErrorImage1: TImage;
    Chromium: TChromium;
    OnShowTimer: TTimer;
    StartSearchTimer: TTimer;
    AnimationONTimer: TTimer;
    AnimationOFFTimer: TTimer;
    procedure ChromiumBeforeContextMenu(Sender: TObject;
      const browser: ICefBrowser; const frame: ICefFrame;
      const params: ICefContextMenuParams; const model: ICefMenuModel);
    procedure OnShowTimerTimer(Sender: TObject);
    procedure StartSearchTimerTimer(Sender: TObject);
    procedure ChromiumTitleChange(Sender: TObject; const browser: ICefBrowser;
      const title: ustring);
    procedure ChromiumLoadError(Sender: TObject; const browser: ICefBrowser;
      const frame: ICefFrame; errorCode: Integer; const errorText,
      failedUrl: ustring);
    procedure ChromiumLoadStart(Sender: TObject; const browser: ICefBrowser;
      const frame: ICefFrame; transitionType: Cardinal);
    procedure ChromiumLoadEnd(Sender: TObject; const browser: ICefBrowser;
      const frame: ICefFrame; httpStatusCode: Integer);
    procedure ChromiumBeforePopup(Sender: TObject; const browser: ICefBrowser;
      const frame: ICefFrame; const targetUrl, targetFrameName: ustring;
      targetDisposition: TCefWindowOpenDisposition; userGesture: Boolean;
      const popupFeatures: TCefPopupFeatures; var windowInfo: TCefWindowInfo;
      var client: ICefClient; var settings: TCefBrowserSettings;
      var noJavascriptAccess, Result: Boolean);
    procedure AnimationOFFTimerTimer(Sender: TObject);
    procedure AnimationONTimerTimer(Sender: TObject);
    procedure ChromiumAddressChange(Sender: TObject; const browser: ICefBrowser;
      const frame: ICefFrame; const url: ustring);
  private
    procedure WMMove(var aMessage : TWMMove); message WM_MOVE;
    procedure WMMoving(var aMessage : TMessage); message WM_MOVING;
    procedure SendToTab(link: string);
    procedure LoadIMGDLL;
    procedure ShowErrorMsg(show: Boolean);
    procedure Gosearch(adr: string);
    procedure CreateWindowBrowser;
  public
    var
     Adr: String;
  end;

implementation

{$R *.dfm}

uses UnitMainForm;

procedure TInstantSearchFrame.AnimationOFFTimerTimer(Sender: TObject);
begin
 AnimationOFFTimer.Enabled := false;
 LoadingBrowser.Visible := false;
 LoadingBrowser.Animate := false;
end;

procedure TInstantSearchFrame.AnimationONTimerTimer(Sender: TObject);
begin
 AnimationONTimer.Enabled := false;
 LoadingBrowser.Visible := true;
 LoadingBrowser.Animate := true;
end;

procedure TInstantSearchFrame.ChromiumAddressChange(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame; const url: ustring);
var
 TempURL: String;
begin
 if frame.IsMain then
  begin
  if copy(browser.MainFrame.Url, 1 ,8) = 'https://' then
   TempURL := StringReplace(browser.MainFrame.Url, 'https://', '', [rfreplaceall])
  else
   TempURL := StringReplace(browser.MainFrame.Url, 'http://', '', [rfreplaceall]);
  if TempURL <> 'about:blank' then
  case MainForm.SB_C1.ItemIndex of
  0: begin
      if MainForm.InstantSearchPanel.Visible then
       begin
        if (copy(TempURL, 1, 21) <> 'www.google.com/search') then
         begin
          SendToTab(browser.MainFrame.url);
         end;
       end;
     end;
  1: begin
      if MainForm.InstantSearchPanel.Visible then
       begin
        if (copy(TempURL, 1, 19) <> 'www.bing.com/search') then
         begin
          SendToTab(browser.MainFrame.url);
         end;
       end;
     end;
  2: begin
      if MainForm.InstantSearchPanel.Visible then
       begin
        if (copy(TempURL, 1, 23) <> 'search.yahoo.com/search') then
         begin
          SendToTab(browser.MainFrame.url);
         end;
       end;
     end;
  3: begin
      if MainForm.InstantSearchPanel.Visible then
       begin
        if (copy(TempURL, 1, 23) <> 'www.youtube.com/results') then
         begin
          SendToTab(browser.MainFrame.url);
         end;
       end;
     end;
  5: begin
      if MainForm.InstantSearchPanel.Visible then
       begin
        if (copy(TempURL, 1, 29) <> 'www.ebay.com/sch/i.html?_nkw=') then
         begin
          SendToTab(browser.MainFrame.url);
         end;
       end;
     end;
  6: begin
      if MainForm.InstantSearchPanel.Visible then
       begin
        if (copy(TempURL, 1, 27) <> 'www.dailymotion.com/search/') then
         begin
          SendToTab(browser.MainFrame.url);
         end;
       end;
     end;
  7: begin
      if MainForm.InstantSearchPanel.Visible then
       begin
        if (copy(TempURL, 1, 19) <> 'vimeo.com/search?q=') then
         begin
          SendToTab(browser.MainFrame.url);
         end;
       end;
     end;
 end;
  end;
end;

procedure TInstantSearchFrame.ChromiumBeforeContextMenu(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame;
  const params: ICefContextMenuParams; const model: ICefMenuModel);
begin
 model.Clear;
end;

procedure TInstantSearchFrame.ChromiumBeforePopup(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame; const targetUrl,
  targetFrameName: ustring; targetDisposition: TCefWindowOpenDisposition;
  userGesture: Boolean; const popupFeatures: TCefPopupFeatures;
  var windowInfo: TCefWindowInfo; var client: ICefClient;
  var settings: TCefBrowserSettings; var noJavascriptAccess, Result: Boolean);
begin
 SendToTab(targetUrl);
 Result := true;
end;

procedure TInstantSearchFrame.ChromiumLoadEnd(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame; httpStatusCode: Integer);
begin
 if frame.IsMain then
  AnimationOFFTimer.Enabled := true;
end;

procedure TInstantSearchFrame.ChromiumLoadError(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame; errorCode: Integer;
  const errorText, failedUrl: ustring);
begin
 if errorCode = -101 then
  begin
   if frame.IsMain = true then
    begin
     ErrorTitlePopup.Caption := MainForm.LanguageCache.Lines[97];
     ErrorTitlePopup.Caption := StringReplace(ErrorTitlePopup.Caption, '<h1>', '', [rfreplaceall]);
     ErrorTitlePopup.Caption := StringReplace(ErrorTitlePopup.Caption, '</h1>', '', [rfreplaceall]);
    end;
   Frame.LoadUrl('about:blank');
   ShowErrorMsg(true);
  end
 else if errorCode = -105 then
  begin
   if frame.IsMain = true then
    begin
     ErrorTitlePopup.Caption := MainForm.LanguageCache.Lines[97];
     ErrorTitlePopup.Caption := StringReplace(ErrorTitlePopup.Caption, '<h1>', '', [rfreplaceall]);
     ErrorTitlePopup.Caption := StringReplace(ErrorTitlePopup.Caption, '</h1>', '', [rfreplaceall]);
    end;
   Frame.LoadUrl('about:blank');
   ShowErrorMsg(true);
  end
 else if errorCode = -302 then
  begin
   if frame.IsMain = true then
    begin
     ErrorTitlePopup.Caption := MainForm.LanguageCache.Lines[101];
     ErrorTitlePopup.Caption := StringReplace(ErrorTitlePopup.Caption, '<h1>', '', [rfreplaceall]);
     ErrorTitlePopup.Caption := StringReplace(ErrorTitlePopup.Caption, '</h1>', '', [rfreplaceall]);
    end;
   Frame.LoadUrl('about:blank');
   ShowErrorMsg(true);
  end
 else if errorCode = -106 then
  begin
   if frame.IsMain = true then
    begin
     ErrorTitlePopup.Caption := MainForm.LanguageCache.Lines[103];
     ErrorTitlePopup.Caption := StringReplace(ErrorTitlePopup.Caption, '<h1>', '', [rfreplaceall]);
     ErrorTitlePopup.Caption := StringReplace(ErrorTitlePopup.Caption, '</h1>', '', [rfreplaceall]);
    end;
   Frame.LoadUrl('about:blank');
   ShowErrorMsg(true);
  end
 else if errorCode = -330 then
  begin
   if frame.IsMain = true then
    begin
     ErrorTitlePopup.Caption := MainForm.LanguageCache.Lines[103];
     ErrorTitlePopup.Caption := StringReplace(ErrorTitlePopup.Caption, '<h1>', '', [rfreplaceall]);
     ErrorTitlePopup.Caption := StringReplace(ErrorTitlePopup.Caption, '</h1>', '', [rfreplaceall]);
    end;
   Frame.LoadUrl('about:blank');
   ShowErrorMsg(true);
  end
 else
  begin
   ShowErrorMsg(false);
  end;
end;

procedure TInstantSearchFrame.ChromiumLoadStart(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame; transitionType: Cardinal);
{var
 TempURL: String;}
begin
 if frame.IsMain then
  begin
   AnimationONTimer.Enabled := true;
  {if copy(browser.MainFrame.Url, 1 ,8) = 'https://' then
   TempURL := StringReplace(browser.MainFrame.Url, 'https://', '', [rfreplaceall])
  else
   TempURL := StringReplace(browser.MainFrame.Url, 'http://', '', [rfreplaceall]);
  if TempURL <> 'about:blank' then
  case MainForm.SB_C1.ItemIndex of
  0: begin
      if MainForm.InstantSearchPanel.Visible then
       begin
        if (copy(TempURL, 1, 21) <> 'www.google.com/search') then
         begin
          SendToTab(browser.MainFrame.url);
         end;
       end;
     end;
  1: begin
      if MainForm.InstantSearchPanel.Visible then
       begin
        if (copy(TempURL, 1, 19) <> 'www.bing.com/search') then
         begin
          SendToTab(browser.MainFrame.url);
         end;
       end;
     end;
  2: begin
      if MainForm.InstantSearchPanel.Visible then
       begin
        if (copy(TempURL, 1, 23) <> 'search.yahoo.com/search') then
         begin
          SendToTab(browser.MainFrame.url);
         end;
       end;
     end;
  3: begin
      if MainForm.InstantSearchPanel.Visible then
       begin
        if (copy(TempURL, 1, 23) <> 'www.youtube.com/results') then
         begin
          SendToTab(browser.MainFrame.url);
         end;
       end;
     end;
  5: begin
      if MainForm.InstantSearchPanel.Visible then
       begin
        if (copy(TempURL, 1, 29) <> 'www.ebay.com/sch/i.html?_nkw=') then
         begin
          SendToTab(browser.MainFrame.url);
         end;
       end;
     end;
  6: begin
      if MainForm.InstantSearchPanel.Visible then
       begin
        if (copy(TempURL, 1, 27) <> 'www.dailymotion.com/search/') then
         begin
          SendToTab(browser.MainFrame.url);
         end;
       end;
     end;
  7: begin
      if MainForm.InstantSearchPanel.Visible then
       begin
        if (copy(TempURL, 1, 19) <> 'vimeo.com/search?q=') then
         begin
          SendToTab(browser.MainFrame.url);
         end;
       end;
     end;
 end; }
  end;
end;

procedure TInstantSearchFrame.ChromiumTitleChange(Sender: TObject;
  const browser: ICefBrowser; const title: ustring);
begin
 if title = 'about:blank' then
  MainForm.InstantSearchPopupFunction.FooterCaption := MainForm.SearchNameProvider
 else
  MainForm.InstantSearchPopupFunction.FooterCaption := title;
end;

procedure TInstantSearchFrame.CreateWindowBrowser;
var
 TempWindowParent: TCEFWindowParent;
begin
 TempWindowParent := TCEFWindowParent.Create(Self);
 TempWindowParent.Parent := Self;
 TempWindowParent.Name := 'SearchWindowParent';
 TempWindowParent.Color := clWhite;
 TempWindowParent.Align := alClient;
 TempWindowParent.BringToFront;
 LoadingBrowser.BringToFront;
 LoadingBrowser.Width := Width;
 ErrorPanel.BringToFront;
end;

procedure TInstantSearchFrame.Gosearch(adr: string);
var
 img: thandle;
begin
 img := loadlibrary(PChar(ExtractFilePath(Application.ExeName) + '.\CoreImages.dll'));
 try
  if img <> 0 then
   begin
    ErrorImage1.Picture.Bitmap.LoadFromResourceName(img, 'PAGE_ERROR');
   end
  else
   begin
    Application.Terminate;
   end;
  except
   freelibrary(img);
  end;
end;

procedure TInstantSearchFrame.LoadIMGDLL;
var
 img: thandle;
begin
 img := loadlibrary(PChar(ExtractFilePath(Application.ExeName) + '.\CoreImages.dll'));
 try
  if img <> 0 then
   begin
    ErrorImage1.Picture.Bitmap.LoadFromResourceName(img, 'PAGE_ERROR');
   end
  else
   begin
    Application.Terminate;
   end;
  except
   freelibrary(img);
  end;
end;

procedure TInstantSearchFrame.OnShowTimerTimer(Sender: TObject);
begin
 OnShowTimer.Enabled := false;
 try
  LoadIMGDLL;
  CreateWindowBrowser;
 finally
  Chromium.CreateBrowser(TCEFWindowParent(Self.FindComponent('SearchWindowParent')), '');
  StartSearchTimer.Enabled := true;
 end;
end;

procedure TInstantSearchFrame.SendToTab(link: string);
var
  TempChromium : TChromium;
begin
  if MainForm.SearchChromium(MainForm.AeroTabs.ActiveTabIndex, TempChromium) then
   begin
     TempChromium.LoadURL(link);
     MainForm.InstantSearchCloseTimer.Enabled := false;
   end;
end;

procedure TInstantSearchFrame.ShowErrorMsg(show: Boolean);
begin
 if show = true then
  begin
   ErrorPanel.Top := Height div 2 - ErrorPanel.Height div 2;
   ErrorPanel.left := Width div 2 - ErrorPanel.Width div 2;
   ErrorPanel.Visible := true;
  end
 else
  begin
   ErrorPanel.Visible := false;
  end;
end;

procedure TInstantSearchFrame.StartSearchTimerTimer(Sender: TObject);
begin
 StartSearchTimer.Enabled := false;
 Chromium.LoadURL(Adr);
 PostMessage(Handle, WM_MOVE, 0, 0);
 PostMessage(Handle, WM_MOVING, 0, 0);
end;

procedure TInstantSearchFrame.WMMove(var aMessage: TWMMove);
begin
  inherited;
  if (Chromium <> nil) then
    Chromium.NotifyMoveOrResizeStarted;
end;

procedure TInstantSearchFrame.WMMoving(var aMessage: TMessage);
begin
  inherited;
  if (Chromium <> nil) then
    Chromium.NotifyMoveOrResizeStarted;
end;

end.
