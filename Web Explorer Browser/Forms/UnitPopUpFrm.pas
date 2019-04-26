unit UnitPopUpFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCEFChromium, uCEFInterfaces, Vcl.ExtCtrls, Vcl.StdCtrls,
  AdvSmoothWin8Marquee, uCEFWindowParent, uCEFTypes, AdvGlowButton, Winapi.ShellAPI,
  CurvyControls, Vcl.Mask, AdvDropDown, AdvDetailDropDown, AdvPanel, Vcl.WinXCtrls,
  AdvSmoothPopup, TaskDialog, uCEFStringMultimap, AdvOfficeButtons, Vcl.Buttons,
  AdvFocusHelper, System.StrUtils;

type
  TPopUpFrm = class(TForm)
    Chromium: TChromium;
    ToolBar1: TAdvPanel;
    Image1: TImage;
    Urls: TAdvDetailDropDown;
    URLsBar: TCurvyEdit;
    btnzone: TAdvGlowButton;
    TopStatusPanel: TPanel;
    SepBar_TopStatusPanel: TImage;
    Refresh_bt: TAdvGlowButton;
    Stop_bt: TAdvGlowButton;
    DropDown_BT: TAdvGlowButton;
    Go_bt: TAdvGlowButton;
    AdBlock_Panel: TPanel;
    AdBlock_BT: TAdvGlowButton;
    AllowAdBlock_BT: TAdvGlowButton;
    SpaceBackBT: TAdvGlowButton;
    ToolLineBar1: TPanel;
    ToolLineBar2: TPanel;
    TopToolLineBar1: TPanel;
    OnLoadUrlTimer: TTimer;
    AnimationONTimer: TTimer;
    AnimationOFFTimer: TTimer;
    CertInfo: TListBox;
    ShareCenterPopupFunction: TAdvSmoothPopup;
    ShareCenterPanel: TPanel;
    ExecuteKeyType: TTimer;
    KeyComboReset: TTimer;
    FindBarPanel: TPanel;
    FindBar: TAdvPanel;
    FindBT1: TSpeedButton;
    FindLabel: TLabel;
    FindCount: TLabel;
    FindBT2: TSpeedButton;
    Image2: TImage;
    FindCheckBox1: TAdvOfficeCheckBox;
    FindBT0: TAdvGlowButton;
    FindEdit: TEdit;
    FixWindow: TTimer;
    FocusSearch: TTimer;
    AdvFocusHelper1: TAdvFocusHelper;
    temp_url: TEdit;
    OpenNewTabImg: TTimer;
    ShowShareCenter: TTimer;
    procedure ChromiumLoadError(Sender: TObject; const browser: ICefBrowser;
      const frame: ICefFrame; errorCode: Integer; const errorText,
      failedUrl: ustring);
    procedure OnLoadUrlTimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ChromiumLoadEnd(Sender: TObject; const browser: ICefBrowser;
      const frame: ICefFrame; httpStatusCode: Integer);
    procedure ChromiumLoadStart(Sender: TObject; const browser: ICefBrowser;
      const frame: ICefFrame; transitionType: Cardinal);
    procedure ChromiumTitleChange(Sender: TObject; const browser: ICefBrowser;
      const title: ustring);
    procedure ChromiumAddressChange(Sender: TObject; const browser: ICefBrowser;
      const frame: ICefFrame; const url: ustring);
    procedure Stop_btClick(Sender: TObject);
    procedure Refresh_btClick(Sender: TObject);
    procedure AnimationONTimerTimer(Sender: TObject);
    procedure AnimationOFFTimerTimer(Sender: TObject);
    procedure btnzoneClick(Sender: TObject);
    procedure ShareCenterPopupFunctionBeforeClose(Sender: TObject);
    procedure ShareCenterPopupFunctionButtonClick(Sender: TObject;
      Index: Integer);
    procedure ShareCenterPopupFunctionClose(Sender: TObject);
    procedure ChromiumJsdialog(Sender: TObject; const browser: ICefBrowser;
      const originUrl: ustring; dialogType: TCefJsDialogType; const messageText,
      defaultPromptText: ustring; const callback: ICefJsDialogCallback;
      out suppressMessage, Result: Boolean);
    procedure ChromiumBeforeResourceLoad(Sender: TObject;
      const browser: ICefBrowser; const frame: ICefFrame;
      const request: ICefRequest; const callback: ICefRequestCallback;
      out Result: TCefReturnValue);
    procedure ChromiumBeforeDownload(Sender: TObject;
      const browser: ICefBrowser; const downloadItem: ICefDownloadItem;
      const suggestedName: ustring; const callback: ICefBeforeDownloadCallback);
    procedure ChromiumDownloadUpdated(Sender: TObject;
      const browser: ICefBrowser; const downloadItem: ICefDownloadItem;
      const callback: ICefDownloadItemCallback);
    procedure ChromiumKeyEvent(Sender: TObject; const browser: ICefBrowser;
      const event: PCefKeyEvent; osEvent: PMsg; out Result: Boolean);
    procedure KeyComboResetTimer(Sender: TObject);
    procedure ExecuteKeyTypeTimer(Sender: TObject);
    procedure FixWindowTimer(Sender: TObject);
    procedure FocusSearchTimer(Sender: TObject);
    procedure FindBT0Click(Sender: TObject);
    procedure FindBT2Click(Sender: TObject);
    procedure ChromiumFindResult(Sender: TObject; const browser: ICefBrowser;
      identifier, count: Integer; const selectionRect: PCefRect;
      activeMatchOrdinal: Integer; finalUpdate: Boolean);
    procedure FindBT1Click(Sender: TObject);
    procedure FindEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FindEditKeyPress(Sender: TObject; var Key: Char);
    procedure ChromiumBeforePopup(Sender: TObject; const browser: ICefBrowser;
      const frame: ICefFrame; const targetUrl, targetFrameName: ustring;
      targetDisposition: TCefWindowOpenDisposition; userGesture: Boolean;
      const popupFeatures: TCefPopupFeatures; var windowInfo: TCefWindowInfo;
      var client: ICefClient; var settings: TCefBrowserSettings;
      var noJavascriptAccess, Result: Boolean);
    procedure ChromiumBeforeContextMenu(Sender: TObject;
      const browser: ICefBrowser; const frame: ICefFrame;
      const params: ICefContextMenuParams; const model: ICefMenuModel);
    procedure ChromiumContextMenuCommand(Sender: TObject;
      const browser: ICefBrowser; const frame: ICefFrame;
      const params: ICefContextMenuParams; commandId: Integer;
      eventFlags: Cardinal; out Result: Boolean);
    procedure ChromiumBeforeClose(Sender: TObject; const browser: ICefBrowser);
    procedure ChromiumGetResourceResponseFilter(Sender: TObject;
      const browser: ICefBrowser; const frame: ICefFrame;
      const request: ICefRequest; const response: ICefResponse;
      out Result: ICefResponseFilter);
    procedure AdBlock_BTClick(Sender: TObject);
    procedure OpenNewTabImgTimer(Sender: TObject);
    procedure ShowShareCenterTimer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ChromiumRenderCompMsg(var aMessage: TMessage;
      var aHandled: Boolean);
  protected
    //procedure CreateParams(var Params: TCreateParams); override;
    procedure HandleKeyUp(const aMsg: TMsg; var aHandled: boolean);
    procedure HandleKeyDown(const aMsg : TMsg; var aHandled : boolean);
    Procedure sizeMove (var msg: TWMSize); message WM_SIZE;
  private
    procedure CreateWindowBrowser;
    procedure LoadPageError(FrameID: Int64; BrowserName, CrmErrMsg1, CrmErrMsg2, CrmErrCode: string);
    procedure RefreshStopBts(cmd: SmallInt);
    procedure ChangeAddressInformation(StartingLoading: Boolean; UrlAddress: String);
    procedure GoShareCenter(adr: string);
    procedure Loadlanguage;
    procedure GoTopStatusButton;
    procedure FindText;
    procedure AdblockBtStatusChange(status: SmallInt);
    procedure mousezoom(value: integer);
    procedure ZoomIn;
    Procedure ZoomOut;
    Procedure ApplyZoom;
  public
    procedure AlignAll;
    var
     UrlToLoad: String;
  end;

var
  PopUpFrm: TPopUpFrm;
  PageName, imageurl, searchtext, linkurl: String;
  RefreshStopState, TopStatusButton, AdBlockStatus, ZoomValue: SmallInt;
  ProtocolInfos: array[1..3] of string;
  CertIssuerOrgNames: TStringList;
  LoadBlockedContent, IskeyEditableField: Boolean;

implementation

{$R *.dfm}

uses UnitMainForm, UnitShareCenter, UnitUserLibrary, AppMenuForm;

{ TPopUpFrm }

procedure TPopUpFrm.AdblockBtStatusChange(status: SmallInt);
begin
 case status of
  0: begin
      AllowAdBlock_BT.Visible := false;
      AdBlock_BT.Visible := false;
      AdBlock_Panel.Visible := false;
     end;
  1: begin
      AllowAdBlock_BT.Visible := false;
      AdBlock_BT.Visible := true;
      AdBlock_Panel.Visible := true;
     end;
  2: begin
      AllowAdBlock_BT.Visible := true;
      AdBlock_BT.Visible := false;
      AdBlock_Panel.Visible := true;
     end;
 end;
end;

procedure TPopUpFrm.AdBlock_BTClick(Sender: TObject);
begin
 MainForm.OpenForm('SecurityPermissionHub', '', '', False, 0, false);
end;

procedure TPopUpFrm.AlignAll;
begin
 Urls.Width := ToolBar1.Width - 8;
 URLsBar.Width := URLs.Width;
 TopToolLineBar1.Width := URLsBar.Width;
 AdBlock_Panel.Left := TopStatusPanel.Left -18;
 TopStatusPanel.Left := SpaceBackBT.Left - 45;
 ToolLineBar2.Left := URLsBar.Left + URLsBar.Width - 1;
 if (Chromium <> nil) then
  Chromium.NotifyMoveOrResizeStarted;
end;

procedure TPopUpFrm.AnimationOFFTimerTimer(Sender: TObject);
begin
 AnimationOFFTimer.Enabled := false;
 RefreshStopBts(RefreshStopState);
end;

procedure TPopUpFrm.AnimationONTimerTimer(Sender: TObject);
begin
 AnimationONTimer.Enabled := false;
 RefreshStopBts(RefreshStopState);
 AdblockBtStatusChange(AdBlockStatus);
end;

procedure TPopUpFrm.ApplyZoom;
begin
 case ZoomValue  of
     50: begin
           Chromium.Browser.Host.ZoomLevel := -0.5;
       end;
    100: begin
          Chromium.Browser.Host.ZoomLevel := 0;
       end;
    150: begin
          Chromium.Browser.Host.ZoomLevel := 0.5;
       end;
    200: begin
          Chromium.Browser.Host.ZoomLevel := 1.0;
       end;
    250: begin
          Chromium.Browser.Host.ZoomLevel := 1.5;
       end;
    300: begin
          Chromium.Browser.Host.ZoomLevel := 2.0;
       end;
    350: begin
          Chromium.Browser.Host.ZoomLevel := 2.5;
       end;
    400: begin
          Chromium.Browser.Host.ZoomLevel := 3.0;
       end;
 end;
end;

procedure TPopUpFrm.btnzoneClick(Sender: TObject);
begin
 ShareCenterPopupFunction.Control := ShareCenterPanel;
 ShareCenterPanel.Visible := true;
 ShareCenterPopupFunction.PopupAtControl(btnzone, pdBottomRight);
 GoShareCenter(URLsBar.Text);
end;

procedure TPopUpFrm.ChangeAddressInformation(StartingLoading: Boolean;
  UrlAddress: String);
var
 TempProtocol: string;
 TempCertState: Integer;
begin

  begin
    if StartingLoading then
      begin
        TempProtocol := Copy(UrlAddress, 0, 11);
        if TempProtocol = 'http://ftp.' then
          begin
            ProtocolInfos[1] := 'FTP';
            ProtocolInfos[2] := MainForm.LanguageCache.Lines[105];
            ProtocolInfos[3] := 'IMG3';
            Exit;
          end
        else
          begin
            TempProtocol := Copy(UrlAddress, 0, 7);
            if TempProtocol = 'http://' then
              begin
                btnzone.Caption := 'Internet';
                ProtocolInfos[1] := 'Internet';
                ProtocolInfos[2] := MainForm.LanguageCache.Lines[106];
                ProtocolInfos[3] := 'IMG1';
              end;
            if TempProtocol = 'https:/' then
              begin
                btnzone.Caption := MainForm.LanguageCache.Lines[107];
                ProtocolInfos[1] := MainForm.LanguageCache.Lines[107];
                ProtocolInfos[2] := MainForm.LanguageCache.Lines[108];
                ProtocolInfos[3] := 'IMG2';
              end;
            if (TempProtocol = 'file://') or (TempProtocol = 'system:') then
              begin
                btnzone.Caption := 'Local';
                ProtocolInfos[1] := 'Local';
                ProtocolInfos[2] := MainForm.LanguageCache.Lines[109];
                ProtocolInfos[3] := 'IMG4';
              end;
          end;
      end
    else
      begin
        TempProtocol := Copy(UrlAddress, 0, 11);
        if TempProtocol = 'http://ftp.' then
          begin
            btnzone.Caption := 'FTP';
            ProtocolInfos[1] := 'FTP';
            ProtocolInfos[2] := MainForm.LanguageCache.Lines[105];
            ProtocolInfos[3] := 'IMG3';
            btnzone.ImageIndex := 3;
            Exit;
          end
        else
          begin
            TempProtocol := Copy(UrlAddress, 0, 7);
            if TempProtocol = 'http://' then
              begin
                btnzone.Caption := 'Internet';
                ProtocolInfos[1] := 'Internet';
                ProtocolInfos[2] := MainForm.LanguageCache.Lines[106];
                ProtocolInfos[3] := 'IMG1';
                btnzone.ImageIndex := 1;
              end;
            if TempProtocol = 'https:/' then
              begin
                btnzone.Caption := MainForm.LanguageCache.Lines[107];
                ProtocolInfos[1] := MainForm.LanguageCache.Lines[107];
                ProtocolInfos[2] := MainForm.LanguageCache.Lines[108];
                try
                 TempCertState := StrToInt(CertInfo.Items[6]);
                Except
                 TempCertState := 0;
                end;
                if (TempCertState = 0) or (TempCertState > 65)  then
                 begin
                  ProtocolInfos[3] := 'IMG2';
                  btnzone.ImageIndex := 2;
                 end
                else
                 begin
                  ProtocolInfos[3] := 'IMG5';
                  btnzone.ImageIndex := 4;
                 end;

              end;
            if (TempProtocol = 'file://') or (TempProtocol = 'system:') then
              begin
                btnzone.Caption := 'Local';
                ProtocolInfos[1] := 'Local';
                ProtocolInfos[2] := MainForm.LanguageCache.Lines[109];
                ProtocolInfos[3] := 'IMG4';
                btnzone.ImageIndex := 0;
              end;
          end;
      end;
    if MainForm.privatemode = true then
      begin
        btnzone.Caption := StringReplace(btnzone.Caption, ' ' + MainForm.LanguageCache.Lines[522], '', [rfreplaceall]);
        btnzone.Caption := btnzone.Caption + ' ' + MainForm.LanguageCache.Lines[522];
      end;
  end;
end;

procedure TPopUpFrm.ChromiumAddressChange(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame; const url: ustring);
begin
  if frame.IsMain then
   begin
    LoadBlockedContent := false;
    try
      URLsBar.Text := url;
    Except
    end;
    //AdblockBtStatusChange(AdBlockStatus);
   end;
end;

procedure TPopUpFrm.ChromiumBeforeClose(Sender: TObject;
  const browser: ICefBrowser);
begin
 close;
end;

procedure TPopUpFrm.ChromiumBeforeContextMenu(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame;
  const params: ICefContextMenuParams; const model: ICefMenuModel);
begin
 if params.IsEditable = false then
  begin
   if params.SelectionText = '' then
    begin
     model.Clear;
     model.AddItem(110,MainForm.OpenLink1.Caption);
     model.AddItem(1,MainForm.OpenLinkinNewTab1.Caption);
     model.AddItem(2,MainForm.OpeninNewWindow2.Caption);
     if params.LinkUrl <> '' then
      begin
       model.SetEnabled(110,true);
       model.SetEnabled(1,true);
       model.SetEnabled(2,true);
       model.SetEnabled(3,true);
      end
     else
      begin
       model.SetEnabled(110,false);
       model.SetEnabled(1,false);
       model.SetEnabled(2,false);
       model.SetEnabled(3,false);
      end;
     if params.LinkUrl = '' then
      begin
       model.AddSeparator;
       model.AddItem(4,MainForm.Back2.Caption);
       model.SetEnabled(4,Browser.CanGoBack);
       model.AddItem(5,MainForm.Forward2.Caption);
       model.SetEnabled(5,Browser.CanGoForward);
       model.AddItem(6,MainForm.Refresh2.Caption);
       model.SetEnabled(6,not Browser.IsLoading);
       model.AddItem(7,MainForm.RefreshIgnoreCache1.Caption);
       model.SetEnabled(7,not Browser.IsLoading);
       model.AddItem(8,MainForm.Stop2.Caption);
       model.SetEnabled(8,Browser.IsLoading);
       model.AddSeparator;
       model.AddItem(9,MainForm.AddtoBookmarks2.Caption);
       model.AddSeparator;
       model.AddItem(24,MainForm.NightMode1.Caption);
       model.SetEnabled(24,not Browser.IsLoading);
       model.AddItem(11,MainForm.ViewinReadeMode2.Caption);
       model.SetEnabled(11,not Browser.IsLoading);
       model.AddSeparator;
       model.AddItem(12,MainForm.Print2.Caption);
       model.SetEnabled(12,not Browser.IsLoading);
       model.AddItem(13,MainForm.Share1.Caption);
      end;
     model.AddSeparator;

     model.AddItem(17,MainForm.SelectAll1.Caption);
     model.AddSeparator;
     model.AddItem(23, MainForm.copylink1.Caption);
     if params.LinkUrl <> '' then
      model.SetEnabled(23,true)
     else
      model.SetEnabled(23,false);
     model.AddItem(18,MainForm.SearchContent1.Caption);
     if params.SelectionText <> trim('') then
      begin
       model.SetEnabled(18, true);
       searchtext := params.SelectionText;
      end
     else
      model.SetEnabled(18, false);
     if params.HasImageContents then
      begin
       if params.MediaType = CM_MEDIATYPE_IMAGE then
        begin
         model.AddSeparator;
         model.AddItem(20, MainForm.SaveImage1.Caption);
         model.AddItem(21, MainForm.OpenImage1.Caption);
         imageurl := params.SourceUrl;
        end;
      end;
     model.AddSeparator;
     model.AddItem(19,MainForm.ViewSorce1.Caption);
    end
   else
    begin
     model.AddSeparator;
     model.AddItem(18,MainForm.SearchContent1.Caption);
     if params.SelectionText <> trim('') then
      begin
         model.SetEnabled(18, true);
         searchtext := params.SelectionText;
      end
     else
      model.SetEnabled(18, false);
    end;
  end
 else
  begin
   if Win32MajorVersion >= 10 then
    begin
     model.AddSeparator;
     model.AddItem(126, MainForm.LanguageCache.Lines[553]);
    end;
   model.AddSeparator;
   model.AddItem(18,MainForm.SearchContent1.Caption);
   if params.SelectionText <> trim('') then
    begin
     model.SetEnabled(18, true);
     searchtext := params.SelectionText;
    end
   else
    model.SetEnabled(18, false);
  end;
end;

procedure TPopUpFrm.ChromiumBeforeDownload(Sender: TObject;
  const browser: ICefBrowser; const downloadItem: ICefDownloadItem;
  const suggestedName: ustring; const callback: ICefBeforeDownloadCallback);
var
 DownloadDir1: String;
 UserLibraryFrm: TUserLibrary;
begin
 if copy(downloadItem.Url, 1, 11) = 'filesystem:' then
  begin
   callback.Cont(MainForm.GetUserDesktopPath + suggestedName, True);
   UserLibraryFrm := TUserLibrary.Create(nil);
   with UserLibraryFrm do
    try
     RegisterDownloadFile(suggestedName, AppMenu.opt_downloaddir.Text + suggestedName, MainForm.FormatByteSize(+abs(downloadItem.TotalBytes)) + ' - ' + MainForm.GetDomain(copy(downloadItem.Url, 12, length(downloadItem.Url))) + ' - (' + FormatDateTime('dd/mm - hh:nn', now) + ')');
    finally
     free;
    end;
  end
 else if copy(downloadItem.Url, 1, 5) = 'blob:' then
  begin
   callback.Cont(MainForm.GetUserDesktopPath + suggestedName, True);
   UserLibraryFrm := TUserLibrary.Create(nil);
   with UserLibraryFrm do
    try
     RegisterDownloadFile(suggestedName, AppMenu.opt_downloaddir.Text + suggestedName, MainForm.FormatByteSize(+abs(downloadItem.TotalBytes)) + ' - ' + MainForm.GetDomain(copy(downloadItem.Url, 12, length(downloadItem.Url))) + ' - (' + FormatDateTime('dd/mm - hh:nn', now) + ')');
    finally
     free;
    end;
  end
 else if downloadItem.MimeType = 'application/pdf' then
  begin
   callback.Cont(MainForm.GetUserDesktopPath + suggestedName, True);
  end
 else if suggestedName = 'hbpix' then    //bloquear arquvos de telemetria hbpix
  begin
   exit;
  end
 else
  begin
   MainForm.DownloadTaskDialogEx1.ExpandedText := MainForm.LanguageCache.Lines[445] + ' ' + suggestedName;
   MainForm.DownloadTaskDialogEx1.Execute;
  if CancelDownload = false then
   begin
    MainForm.DownloadName := suggestedName;
    if OtherDownloadFolder = false then
     begin
      MainForm.StartDownloadExplorer('-newdownload', suggestedName, downloadItem.Url, TChromium(sender).Browser.MainFrame.Url);
      UserLibraryFrm := TUserLibrary.Create(nil);
      with UserLibraryFrm do
       try
        RegisterDownloadFile(suggestedName, AppMenu.opt_downloaddir.Text + suggestedName, MainForm.FormatByteSize(+abs(downloadItem.TotalBytes)) + ' - ' + MainForm.GetDomain(downloadItem.Url) + ' - (' + FormatDateTime('dd/mm - hh:nn', now) + ')');
       finally
        free;
       end;
     end
    else
     begin
      MainForm.SaveDialog.FileName := suggestedName;
      if MainForm.SaveDialog.Execute then
       begin
        MainForm.StartDownloadExplorer('-newdownloadfolder', MainForm.SaveDialog.FileName, downloadItem.Url, TChromium(sender).Browser.MainFrame.Url);
        OtherDownloadFolder := false;
        UserLibraryFrm := TUserLibrary.Create(nil);
        with UserLibraryFrm do
         try
          RegisterDownloadFile(ExtractFileName(MainForm.SaveDialog.FileName), MainForm.SaveDialog.FileName, MainForm.FormatByteSize(+abs(downloadItem.TotalBytes)) + ' - ' + MainForm.GetDomain(downloadItem.Url) + ' - (' + FormatDateTime('dd/mm - hh:nn', now) + ')');
         finally
          free;
         end;
       end;
     end;
   end
  else
   begin
    CancelDownload := false;
   end;
  end;
end;

procedure TPopUpFrm.ChromiumBeforePopup(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame; const targetUrl,
  targetFrameName: ustring; targetDisposition: TCefWindowOpenDisposition;
  userGesture: Boolean; const popupFeatures: TCefPopupFeatures;
  var windowInfo: TCefWindowInfo; var client: ICefClient;
  var settings: TCefBrowserSettings; var noJavascriptAccess, Result: Boolean);
begin
  browser.MainFrame.LoadUrl(targetUrl);
  // For simplicity, this demo blocks all popup windows and new tabs
  Result := (targetDisposition in [WOD_NEW_FOREGROUND_TAB, WOD_NEW_BACKGROUND_TAB, WOD_NEW_POPUP, WOD_NEW_WINDOW]);
end;

procedure TPopUpFrm.ChromiumBeforeResourceLoad(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame;
  const request: ICefRequest; const callback: ICefRequestCallback;
  out Result: TCefReturnValue);
var
  mapLID: ICefStringMultimap;
begin
  mapLID :=  TCefStringMultimapOwn.Create;
  request.GetHeaderMap(mapLID);
  case MainForm.WindowsLanguageID of
   0: mapLID.Append('Accept-Language', 'pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4');
   1: mapLID.Append('Accept-Language', 'fr-ca,fr;q=0.8,en-US;q=0.6,en;q=0.4');
   2: mapLID.Append('Accept-Language', 'es-es,es;q=0.8,en-US;q=0.6,en;q=0.4');
   3: mapLID.Append('Accept-Language', 'it-it,it;q=0.8,en-US;q=0.6,en;q=0.4');
  end;
  request.SetHeaderMap(mapLID);

  if MainForm.AdPagesCache2.Lines.IndexOf(MainForm.GetDomain(browser.MainFrame.Url)) < 0 then
   begin
    if MainForm.AdBlockEnabled then
     begin
      Result := RV_CONTINUE;

      if not frame.IsMain then
       begin
        if MainForm.AdPagesCache.Lines.IndexOf(MainForm.GetDomain(frame.Url)) > 0 then
         begin
          Result := RV_CANCEL;
          AdBlockStatus := 1;
         end
        else
         begin
          if (frame.Url = 'about:blank') then
           begin
            Result := RV_CANCEL;
            AdBlockStatus := 1;
           end;
          if (ContainsText(frame.Name, 'ad') = true )then
           begin
            Result := RV_CANCEL;
            AdBlockStatus := 1;
           end;
          if (ContainsText(frame.Name, 'ads') = true )then
           begin
            Result := RV_CANCEL;
            AdBlockStatus := 1;
           end;
          {if (frame.Name = '') then
           begin
            Result := RV_CANCEL;
            AdBlockStatus := 1;
           end;}
         end;
       end;

     end;
   end
  else
   begin
     AdBlockStatus := 2;
   end;

end;

procedure TPopUpFrm.ChromiumContextMenuCommand(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame;
  const params: ICefContextMenuParams; commandId: Integer; eventFlags: Cardinal;
  out Result: Boolean);
begin
 case commandId of
  1: MainForm.OpenNewTab(params.LinkUrl);
  2: MainForm.OpenLinkNewWindow(params.LinkUrl);

  9: MainForm.OpenForm('AddNewLink', Chromium.Browser.MainFrame.Url, PageName, True, 1, false);
  18: MainForm.OpenNewTab(MainForm.SearchaddressProvider + params.SelectionText);
  20: begin MainForm.StartDownloadExplorer('-newdownloadID', MainForm.ExtractUrlFileName(imageurl), imageurl, TChromium(Sender).Browser.MainFrame.Url);  MainForm.DownloadImage(imageurl, TChromium(Sender).Browser.MainFrame.Url);  end;
  21: MainForm.OpenNewTab(imageurl);
  23: begin temp_url.Text := params.LinkUrl; temp_url.SelectAll; temp_url.CopyToClipboard; end;
 end;
 case commandId of
  110: browser.MainFrame.LoadUrl(params.LinkUrl);
  1: MainForm.OpenNewTab(params.LinkUrl);
  2: MainForm.OpenLinkNewWindow(params.LinkUrl);

  4: browser.GoBack;
  5: browser.GoForward;
  6: browser.Reload;
  7: browser.ReloadIgnoreCache;
  8: browser.StopLoad;
  9: MainForm.OpenForm('AddNewLink', Chromium.Browser.MainFrame.Url, PageName, True, 1, false);
//  11: ViewinReadeMode2.Click;
  12: browser.Host.Print;
  13: ShowShareCenter.Enabled := true;
  14: browser.FocusedFrame.Copy;
  15: browser.FocusedFrame.Cut;
  16: browser.FocusedFrame.Paste;
  17: browser.FocusedFrame.SelectAll;
  18: MainForm.OpenNewTab(MainForm.SearchaddressProvider + params.SelectionText);
  19: browser.MainFrame.ViewSource;
  20: begin MainForm.StartDownloadExplorer('-newdownloadID', MainForm.ExtractUrlFileName(imageurl), imageurl, TChromium(Sender).Browser.MainFrame.Url);  MainForm.DownloadImage(imageurl, TChromium(Sender).Browser.MainFrame.Url);  end;
  21: OpenNewTabImg.Enabled := true;
  23: begin temp_url.Text := params.LinkUrl; temp_url.SelectAll; temp_url.CopyToClipboard; end;
//  24: NightMode1.Click;
  126:begin
        keybd_event(vk_LWin, 0, 0, 0);
        keybd_event(186, 0, 0, 0);
        keybd_event(vk_LWin, 0, KEYEVENTF_KEYUP, 0);
        keybd_event(186, 0, KEYEVENTF_KEYUP, 0);
      end;
 end;


end;

procedure TPopUpFrm.ChromiumDownloadUpdated(Sender: TObject;
  const browser: ICefBrowser; const downloadItem: ICefDownloadItem;
  const callback: ICefDownloadItemCallback);
begin
   if (downloadItem.IsInProgress) and (downloadItem.MimeType = 'application/pdf') then
    begin
     if downloadItem.PercentComplete = 1 then
      MainForm.DownloadProgressDialog.Show;
     MainForm.DownloadProgressDialog.Position := downloadItem.PercentComplete;
    end
   else
    MainForm.DownloadProgressDialog.Hide;
  if (downloadItem.IsComplete = true) and (copy(downloadItem.Url, 1, 11) = 'filesystem:') then
   begin
    TChromium(sender).Reload;
    ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + '.\WebExplorer.exe'), '-notification', nil,SW_SHOWNORMAL);
   end;
  if (downloadItem.IsComplete = true) and (copy(downloadItem.Url, 1, 5) = 'blob:') then
   begin
    TChromium(sender).Reload;
    ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + '.\WebExplorer.exe'), '-notification', nil,SW_SHOWNORMAL);
   end;
end;

procedure TPopUpFrm.ChromiumFindResult(Sender: TObject;
  const browser: ICefBrowser; identifier, count: Integer;
  const selectionRect: PCefRect; activeMatchOrdinal: Integer;
  finalUpdate: Boolean);
begin
 if count < 1 then
  begin
    FindEdit.Color := $008888FF;
  end
 else
  begin
    FindEdit.Color := clWindow;
  end;
end;

procedure TPopUpFrm.ChromiumGetResourceResponseFilter(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame;
  const request: ICefRequest; const response: ICefResponse;
  out Result: ICefResponseFilter);
begin
 if AppMenu.opt11.State = tssOn then
  begin
  if response.MimeType = 'application/x-shockwave-flash' then
   begin
    if (frame.IsMain = false) and (LoadBlockedContent = false) then
     begin
      //frame.LoadUrl('about:blank');
      frame.LoadString('<!DOCTYPE html><html><body><center><button onclick="WEFLASHFunction()">' + MainForm.LanguageCache.Lines[515] + '</button></center> <script> function WEFLASHFunction() { window.location.href =' + QuotedStr(frame.Url) + '; alert("WE-EnableFlash"); } </script> </body> </html>', frame.Url);
     end;
   end;
  end;
end;

procedure TPopUpFrm.ChromiumJsdialog(Sender: TObject;
  const browser: ICefBrowser; const originUrl: ustring;
  dialogType: TCefJsDialogType; const messageText, defaultPromptText: ustring;
  const callback: ICefJsDialogCallback; out suppressMessage, Result: Boolean);
begin
 if messageText = 'WE-EnableFlash' then
  begin
   LoadBlockedContent := true;
   suppressMessage := true;
   Result := false;
  end
 else
  begin
   if (dialogType = JSDIALOGTYPE_ALERT) then
    begin
     MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[493] + ' ' + MainForm.GetDomain(originUrl) + ' ' + MainForm.LanguageCache.Lines[494] + #13 + ' ' + #13 + messageText), Pchar(MainForm.LanguageCache.Lines[491]), MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1);
     Result := true;
    end;
   if (dialogType = JSDIALOGTYPE_CONFIRM)  then
    begin
     if MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[493] + ' ' + MainForm.GetDomain(originUrl) + ' ' + MainForm.LanguageCache.Lines[494] + #13 + ' ' + #13 + messageText), Pchar(MainForm.LanguageCache.Lines[491]), MB_ICONQUESTION + MB_OKCANCEL + MB_DEFBUTTON1) = mrOk then
      begin
       callback.Cont(true, '');
       Result := true;
      end
     else
      begin
       callback.Cont(false, '');
       Result := true;
      end;
    end;
   if (dialogType = JSDIALOGTYPE_PROMPT) then
    begin
     with MainForm.AdvInputTaskDialog1 do
      begin
       Title := MainForm.LanguageCache.Lines[492];
       CommonButtons := ([cbOK,cbCancel]);
       DialogPosition := dpOwnerFormCenter;
       Content := Pchar(MainForm.LanguageCache.Lines[493] + ' ' + MainForm.GetDomain(originUrl) + ' ' + MainForm.LanguageCache.Lines[494] + #13 + ' ' + #13 + messageText);
       InputText := defaultPromptText;
       Icon := tiQuestion;
      end;
     case MainForm.AdvInputTaskDialog1.Execute of
      mrOk:     begin
                 callback.Cont(true, MainForm.AdvInputTaskDialog1.InputText);
                end;
      mrCancel: begin
                 callback.Cont(false, '');
                end;
     end;
     Result := true;
    end;
  end;
end;

procedure TPopUpFrm.ChromiumKeyEvent(Sender: TObject;
  const browser: ICefBrowser; const event: PCefKeyEvent; osEvent: PMsg;
  out Result: Boolean);
var
  TempMsg : TMsg;
begin
  try
   Result := false;
   case Event.focus_on_editable_field of
    0: IskeyEditableField := false;
    1: IskeyEditableField := true;
   end;
   if (event <> nil) and (osEvent <> nil) then
    case osEvent.Message of
      WM_KEYUP :
        begin
          TempMsg := osEvent^;
          HandleKeyUp(TempMsg, Result);
        end;
      WM_KEYDOWN :
        begin
          TempMsg := osEvent^;
          HandleKeyDown(TempMsg, Result);
        end;
    end;
  Except
  end;
end;

procedure TPopUpFrm.ChromiumLoadEnd(Sender: TObject; const browser: ICefBrowser;
  const frame: ICefFrame; httpStatusCode: Integer);
begin
 if frame.IsMain then
  begin
   RefreshStopState := 0;
   AnimationOFFTimer.Enabled := true;
   if MainForm.privatemode then
    MainForm.AddToHistory(PageName, frame.Url);
   ChangeAddressInformation(false, browser.MainFrame.Url);
  end;
end;

procedure TPopUpFrm.ChromiumLoadError(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame; errorCode: Integer;
  const errorText, failedUrl: ustring);
var
 TempTitleString: String;
begin
  if errorCode = -101 then
  begin
   //frame.LoadUrl('about:blank');
   TempTitleString := StringReplace(MainForm.LanguageCache.Lines[97], '<h1>', '', [rfreplaceall]);
   TempTitleString := StringReplace(TempTitleString, '</h1>', '', [rfreplaceall]);
   LoadPageError(frame.Identifier, TChromium(sender).Name, TempTitleString, errorText, IntToStr(errorCode));
  end
 else if errorCode = -207 then      //certificado invaldio
  begin


  end
 else if errorCode = -105 then
  begin
   if MainForm.CheckUrl(failedUrl) then
    begin
     TempTitleString := StringReplace(MainForm.LanguageCache.Lines[97], '<h1>', '', [rfreplaceall]);
     TempTitleString := StringReplace(TempTitleString, '</h1>', '', [rfreplaceall]);
     LoadPageError(frame.Identifier, TChromium(sender).Name, TempTitleString, errorText, IntToStr(errorCode));
    end
   else
    begin
     TempTitleString := StringReplace(MainForm.LanguageCache.Lines[101], '<h1>', '', [rfreplaceall]);
     TempTitleString := StringReplace(TempTitleString, '</h1>', '', [rfreplaceall]);
     LoadPageError(frame.Identifier, TChromium(sender).Name, TempTitleString, errorText, IntToStr(errorCode));
    end;

   //frame.LoadUrl('about:blank');
   
  end
 else if errorCode = -118 then      //Timeout
  begin
   //frame.LoadUrl('about:blank');
   TempTitleString := StringReplace(MainForm.LanguageCache.Lines[97], '<h1>', '', [rfreplaceall]);
   TempTitleString := StringReplace(TempTitleString, '</h1>', '', [rfreplaceall]);
   LoadPageError(frame.Identifier, TChromium(sender).Name, TempTitleString, errorText, IntToStr(errorCode));
  end
 else if errorCode = -302 then
  begin
   //frame.LoadUrl('about:blank');
   TempTitleString := StringReplace(MainForm.LanguageCache.Lines[101], '<h1>', '', [rfreplaceall]);
   TempTitleString := StringReplace(TempTitleString, '</h1>', '', [rfreplaceall]);
   LoadPageError(frame.Identifier, TChromium(sender).Name, TempTitleString, errorText, IntToStr(errorCode));
  end
 else if errorCode = -106 then
  begin
   //frame.LoadUrl('about:blank');
   TempTitleString := StringReplace(MainForm.LanguageCache.Lines[103], '<h1>', '', [rfreplaceall]);
   TempTitleString := StringReplace(TempTitleString, '</h1>', '', [rfreplaceall]);
   LoadPageError(frame.Identifier, TChromium(sender).Name, TempTitleString, errorText, IntToStr(errorCode));
  end
 else if errorCode = -330 then
  begin
   //frame.LoadUrl('about:blank');
   TempTitleString := StringReplace(MainForm.LanguageCache.Lines[103], '<h1>', '', [rfreplaceall]);
   TempTitleString := StringReplace(TempTitleString, '</h1>', '', [rfreplaceall]);
   LoadPageError(frame.Identifier, TChromium(sender).Name, TempTitleString, errorText, IntToStr(errorCode));
  end
 else
  begin
   //ShowErrorMsg(false);
  end;

end;

procedure TPopUpFrm.ChromiumLoadStart(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame; transitionType: Cardinal);
var
 TempCertItem1, TempCertItem2: String;
 ad_index: integer;
begin
 if frame.IsMain then
  begin
   RefreshStopState := 1;
   AnimationONTimer.Enabled := true;
    try
     CertInfo.Items[0] := 'false';
     CertInfo.Items[1] := '';
     CertInfo.Items[2] := '';
     CertInfo.Items[6] := inttostr(TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetCertStatus);
     if TChromium(Sender).VisibleNavigationEntry.SSLStatus.IsSecureConnection then
      begin
       CertInfo.Items[0] := 'true';
       CertInfo.Items[1] := TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetX509Certificate.GetIssuer.GetDisplayName;
       CertIssuerOrgNames.Clear;
       TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetX509Certificate.GetIssuer.GetOrganizationNames(CertIssuerOrgNames);
       TempCertItem1 := CertIssuerOrgNames[0];
       CertInfo.Items[2] := TempCertItem1;
       CertIssuerOrgNames.Clear;
       TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetX509Certificate.GetSubject.GetOrganizationNames(CertIssuerOrgNames);
       if CertIssuerOrgNames.Count < 1 then
        CertInfo.Items[3] := MainForm.LanguageCache.Lines[550]
       else
        CertInfo.Items[3] := CertIssuerOrgNames[0];
       if MainForm.languageIndex < 1 then
        begin
         TempCertItem2 := IntToStr( TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetX509Certificate.GetValidStart.month );
         TempCertItem2 := TempCertItem2 + '/' + IntToStr( TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetX509Certificate.GetValidStart.day_of_month );
         TempCertItem2 := TempCertItem2 + '/' + IntToStr( TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetX509Certificate.GetValidStart.year );
        end
       else
        begin
         TempCertItem2 := IntToStr( TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetX509Certificate.GetValidStart.day_of_month );
         TempCertItem2 := TempCertItem2 + '/' + IntToStr( TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetX509Certificate.GetValidStart.month );
         TempCertItem2 := TempCertItem2 + '/' + IntToStr( TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetX509Certificate.GetValidStart.year );
        end;
       CertInfo.Items[4] := TempCertItem2;
       if MainForm.languageIndex < 1 then
        begin
         TempCertItem2 := IntToStr( TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetX509Certificate.GetValidExpiry.month );
         TempCertItem2 := TempCertItem2 + '/' + IntToStr( TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetX509Certificate.GetValidExpiry.day_of_month );
         TempCertItem2 := TempCertItem2 + '/' + IntToStr( TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetX509Certificate.GetValidExpiry.year );
        end
       else
        begin
         TempCertItem2 := IntToStr( TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetX509Certificate.GetValidExpiry.day_of_month );
         TempCertItem2 := TempCertItem2 + '/' + IntToStr( TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetX509Certificate.GetValidExpiry.month );
         TempCertItem2 := TempCertItem2 + '/' + IntToStr( TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetX509Certificate.GetValidExpiry.year );
        end;
       CertInfo.Items[5] := TempCertItem2;
      end
     else
      begin

       CertInfo.Items[0] := 'false';
      end;

    Except
     CertInfo.Items[0] := 'false';
     CertInfo.Items[1] := 'carregando';
     CertInfo.Items[2] := 'carregando';
     CertInfo.Items[3] := 'carregando';
     CertInfo.Items[4] := 'carregando';
     CertInfo.Items[5] := 'carregando';
     CertInfo.Items[6] := '0';
    end;

  end
 else
  begin

     //frame.ExecuteJavaScript('document.documentElement.innerHTML = "";',frame.url,0);

//   if MainForm.AdPagesCache2.Lines.IndexOf(MainForm.GetDomain(TChromium(sender).Browser.MainFrame.Url)) < 0 then
//    begin
//     if (frame.Url = 'about:blank') and (ContainsText(frame.Name, 'ads') = true ) then    //testar isso aqui para eliminar frames em não tem src para bloquear.
//      begin
//       frame.ExecuteJavaScript('document.documentElement.innerHTML = "";',frame.url,0);
//       //frame.ExecuteJavaScript('window.location.href = "about:blank";',frame.url,0);
//       //frame.LoadString('', '');
//       //frame.ExecuteJavaScript('window.location.href = "http://vignette2.wikia.nocookie.net/theartoftrolling/images/7/7a/Trollface-3078_preview.jpg/revision/latest?cb=20101001003650";',frame.Url,0);
//       //frame.ExecuteJavaScript('document.write("");',frame.url,0);
//       //frame.ExecuteJavaScript('window.location.href = "http://vignette2.wikia.nocookie.net/theartoftrolling/images/7/7a/Trollface-3078_preview.jpg/revision/latest?cb=20101001003650";',frame.Url,0);
//       AllowAdBlock_BT.Visible := false;
//       AdBlock_BT.Visible := true;
//       AdBlock_Panel.Visible := true;
//      end;
//     for ad_index := 0 to MainForm.AdPagesCache.Lines.Count -1 do
//      begin
//       if MainForm.GetDomain(frame.Url) = MainForm.AdPagesCache.Lines[ad_index] then
//        begin
//         AllowAdBlock_BT.Visible := false;
//         AdBlock_BT.Visible := true;
//         AdBlock_Panel.Visible := true;
//         //frame.ExecuteJavaScript('window.stop();',frame.Url,0);
//         //frame.ExecuteJavaScript('document.write(''<html><body> </body></html>'');',frame.Url,0);
//         //frame.ExecuteJavaScript('window.location.href = "about:blank";',frame.Url,0);
//
//
//         //frame.ExecuteJavaScript('window.location.href = "about:blank";',frame.Url,0);
//
//         frame.ExecuteJavaScript('window.location.href = "http://vignette2.wikia.nocookie.net/theartoftrolling/images/7/7a/Trollface-3078_preview.jpg/revision/latest?cb=20101001003650";',frame.Url,0);
//         //melhor isso depois//frame.ExecuteJavaScript('setTimeout(function() { $(''img'')[ 0 ].src = ''#googlesyndication#''; console.log($(''img'')[0]);}, 2000);',frame.Url,0);
//        end;
//      end;
//    end
//   else
//    begin
//     AdBlock_Panel.Visible := true;
//     AllowAdBlock_BT.Visible := true;
//     AdBlock_BT.Visible := false;
//    end;

  end;
  AdblockBtStatusChange(AdBlockStatus);
end;

procedure TPopUpFrm.ChromiumRenderCompMsg(var aMessage: TMessage;
  var aHandled: Boolean);
begin
 if aMessage.Msg = WM_MOUSEWHEEL then
  begin
   if not GetKeyState(VK_CONTROL) >= 0 then
    begin
     Mousezoom(aMessage.WParamHi);
     aHandled := true;
    end;
  end;
end;

procedure TPopUpFrm.ChromiumTitleChange(Sender: TObject;
  const browser: ICefBrowser; const title: ustring);
begin
 PageName:= title;
 if MainForm.privatemode then
  begin
   if trim(title) = '' then
    Caption := 'Web Explorer ' + MainForm.LanguageCache.Lines[522] + ' 💼'
   else
    Caption := title + ' - Web Explorer ' + MainForm.LanguageCache.Lines[522] + ' 💼';
   end
 else
  begin
   if trim(title) = '' then
    Caption := 'Web Explorer'
   else
    Caption := title + ' - Web Explorer';
  end;
end;

{procedure TPopUpFrm.CreateParams(var Params: TCreateParams);
begin
inherited CreateParams(Params);
  Params.ExStyle   := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;
end;}

procedure TPopUpFrm.CreateWindowBrowser;
var
 TempWindowParent: TCEFWindowParent;
begin
 try
  TempWindowParent := TCEFWindowParent.Create(Self);
  TempWindowParent.Parent := Self;
  TempWindowParent.Name := 'PopUpWindowParent';
  TempWindowParent.Color := clWhite;
  TempWindowParent.Align := alClient;
  TempWindowParent.BringToFront;
 finally
  OnLoadUrlTimer.Enabled := true;
 end;

end;

procedure TPopUpFrm.ExecuteKeyTypeTimer(Sender: TObject);
begin
 ExecuteKeyType.Enabled := false;
 if KeyTypeExecute = 'tr' then
  MainForm.Trash_bt.Click
 else if KeyTypeExecute = 'd' then
  MainForm.OpenForm('AddNewLink', Chromium.Browser.MainFrame.Url, PageName, True, 1, false)
 else if KeyTypeExecute = 'w' then
  close
 else if KeyTypeExecute = 'j' then
  MainForm.Downloads1.Click
 else if KeyTypeExecute = 'f' then
  FindText
 else if KeyTypeExecute = 'p' then
  Chromium.Print;
end;

procedure TPopUpFrm.FindBT0Click(Sender: TObject);
begin
 FindText;
end;

procedure TPopUpFrm.FindBT1Click(Sender: TObject);
begin
 Chromium.Browser.Host.Find(Chromium.BrowserId,FindEdit.Text,false,FindCheckBox1.Checked,false);
end;

procedure TPopUpFrm.FindBT2Click(Sender: TObject);
begin
 Chromium.Browser.Host.Find(Chromium.BrowserId,FindEdit.Text,true,FindCheckBox1.Checked,false);
end;

procedure TPopUpFrm.FindEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_F3 then
  begin
   FindEdit.SelectAll;
   FindBT2.Click;
  end;
 if Key = VK_F2 then
  begin
   FindEdit.SelectAll;
   FindBT1.Click;
  end;
end;

procedure TPopUpFrm.FindEditKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  begin
   Key := #0;
   FindEdit.Clear;
   FindEdit.Color := clWindow;
   if Trim(FindEdit.Text) = '' then
    FindText;
  end;
 if Key = #13 then
  begin
   Key := #0;
   FindEdit.SelectAll;
   FindBT2.Click;
  end;
end;

procedure TPopUpFrm.FindText;
begin
 if FindBarPanel.Visible = false then
  begin
   FindBarPanel.Visible := true;
   FocusSearch.Enabled := true;
  end
 else
  begin
   Chromium.Browser.Host.StopFinding(true);
   FindEdit.Color := clWindow;
   FindBarPanel.Visible := false;
  end;
end;

procedure TPopUpFrm.FixWindowTimer(Sender: TObject);
begin
 Ttimer(sender).Enabled := false;
 if ToolBar1.Visible = false then
  begin
   Height := Height + 1;
  end;
end;

procedure TPopUpFrm.FocusSearchTimer(Sender: TObject);
begin
 FindEdit.SetFocus;
 FocusSearch.Enabled := false;
end;

procedure TPopUpFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 Chromium.CloseBrowser(true);
{ try
  CanClose := false;
  Chromium.CloseBrowser(true);
 finally
  try
   Free;
  Except
  end;
 end;}
end;

procedure TPopUpFrm.FormCreate(Sender: TObject);
begin
 try
  AdBlockStatus := 0;
  ZoomValue := 100;
  AdvFocusHelper1.Color := MainForm.AdvFocusHelper1.Color;
  CertInfo.Items.Add('');
  CertInfo.Items.Add('');
  CertInfo.Items.Add('');
  CertInfo.Items.Add('');
  CertInfo.Items.Add('');
  CertInfo.Items.Add('');
  CertInfo.Items.Add('0');
  CertIssuerOrgNames := TStringList.Create;
  ShareCenterPopupFunction.ButtonHoverColor := MainForm.ShareCenterPopupFunction.ButtonHoverColor;
  ShareCenterPopupFunction.ButtonDownColor := MainForm.ShareCenterPopupFunction.ButtonDownColor;
  Loadlanguage;
  CreateWindowBrowser;
 finally
  Chromium.CreateBrowser(TCEFWindowParent(Self.FindComponent('PopUpWindowParent')), '');
 end;
end;

procedure TPopUpFrm.FormResize(Sender: TObject);
begin
 AlignAll;
end;

procedure TPopUpFrm.GoShareCenter(adr: string);
var
 ShareCenterFrm: TShareCenterFrame;
begin
 try
  ShareCenterFrm := TShareCenterFrame.Create(ShareCenterPanel);
  ShareCenterFrm.Parent := ShareCenterPanel;
  ShareCenterFrm.Align := alClient;
  ShareCenterFrm.Adr := adr;
  ShareCenterFrm.CertInfoList.Items := CertInfo.Items;
  if ShareCenterFrm.CertInfoList.Items[0] = 'true' then
   begin
    ShareCenterFrm.ExpandPage_Cert.ShowHint := true;
    ShareCenterFrm.CertIssuerOrgNameLabel.Caption := MainForm.LanguageCache.Lines[536] + ': ' + ShareCenterFrm.CertInfoList.Items[2];
    ShareCenterFrm.MoreCertInfoLabel.Caption := MainForm.LanguageCache.Lines[535] + ': ' + ShareCenterFrm.CertInfoList.Items[3];
    ShareCenterFrm.ExpandPage_Cert.Hint := ShareCenterFrm.CertIssuerOrgNameLabel.Caption + #13 + ShareCenterFrm.MoreCertInfoLabel.Caption;
   end
  else
   begin
    ShareCenterFrm.ExpandPage_Cert.ShowHint := false;
    ShareCenterFrm.CertIssuerOrgNameLabel.Caption := MainForm.LanguageCache.Lines[536] + ': ' + MainForm.LanguageCache.Lines[548];
    ShareCenterFrm.MoreCertInfoLabel.Caption := MainForm.LanguageCache.Lines[535] + ': ' + MainForm.LanguageCache.Lines[549];
   end;
  ShareCenterFrm.OnShowFrame;
 Except
 end;
end;

procedure TPopUpFrm.GoTopStatusButton;
begin
 case TopStatusButton of
  1: TopStatusPanel.Width := 16;
  //2: TopStatusPanel.Width := 34;
  2: TopStatusPanel.Width := 40;
  3: TopStatusPanel.Width := 52;
  4: TopStatusPanel.Width := 74;
  5: TopStatusPanel.Width := 92;
 end;
end;

procedure TPopUpFrm.HandleKeyDown(const aMsg: TMsg; var aHandled: boolean);
var
  TempMessage: TMessage;
  TempKeyMsg: TWMKey;
begin
  try
    TempMessage.Msg := aMsg.message;
    TempMessage.wParam := aMsg.wParam;
    TempMessage.lParam := aMsg.lParam;
    TempKeyMsg := TWMKey(TempMessage);

    case TempKeyMsg.CharCode of
     16: KeyComboShift := true;
     17: KeyComboCTRL := true;
    end;
    if KeyComboCTRL or KeyComboShift then
     begin
      aHandled := True;
      KeyComboReset.Enabled := true;
     end;
    if (TempKeyMsg.CharCode = VK_F11) then
     begin
      aHandled := True;
      //MainForm.FullScreen1.Click;
     end;
    if (KeyComboCTRL) and (TempKeyMsg.CharCode = 68) then //Ctrl+D
     begin
      aHandled := True;
     end;
    if (TempKeyMsg.CharCode = VK_F5) then
     begin
      aHandled := True;
      //MainForm.Refresh_bt.Click;
     end;
    if (TempKeyMsg.CharCode = VK_ESCAPE) and (IskeyEditableField = false) then
     begin
      aHandled := True;
      //MainForm.Stop_bt.Click;
     end;
    if (KeyComboCTRL and KeyComboShift) and (TempKeyMsg.CharCode = 84) then //Ctrl+Shift+T
     begin
      aHandled := True;
      //Trash_bt.Click;
     end;
    if (KeyComboCTRL) and (TempKeyMsg.CharCode = 70) then //Ctrl+F
     begin
      aHandled := True;
     end;
    if (KeyComboCTRL) and (TempKeyMsg.CharCode = 87) then //Ctrl+W
     begin
      aHandled := True;
     end;
    if (KeyComboCTRL) and (TempKeyMsg.CharCode = 74) then //Ctrl+J
     begin
      aHandled := True;
     end;
    if (KeyComboCTRL) and (TempKeyMsg.CharCode = 80) then //Ctrl+P
     begin
      aHandled := True;
     end;
  Except
  end;

end;

procedure TPopUpFrm.HandleKeyUp(const aMsg: TMsg; var aHandled: boolean);
var
  TempMessage: TMessage;
  TempKeyMsg: TWMKey;
begin
  TempMessage.Msg := aMsg.message;
  TempMessage.wParam := aMsg.wParam;
  TempMessage.lParam := aMsg.lParam;
  TempKeyMsg := TWMKey(TempMessage);

  if (TempKeyMsg.CharCode = VK_ESCAPE) and (IskeyEditableField = false) then
    begin
     aHandled := True;
     Stop_bt.Click;
    end;
  if (KeyComboCTRL and KeyComboShift) and (TempKeyMsg.CharCode = 80) then //Ctrl+Shift+P
    begin
     aHandled := True;
     ExecuteKeyType.Enabled := true;
     KeyTypeExecute := 'pr';
    end;
  if (KeyComboCTRL) and (TempKeyMsg.CharCode = 70) then //Ctrl+F
   begin
     aHandled := True;
     ExecuteKeyType.Enabled := true;
     KeyTypeExecute := 'f';
   end;
  if (KeyComboCTRL) and (TempKeyMsg.CharCode = 84) then //Ctrl+T
    begin
     aHandled := True;
     if KeyComboShift then //Ctrl+Shift+T
      begin
       KeyTypeExecute := 'tr';
       ExecuteKeyType.Enabled := true;
      end;
    end;
  if (KeyComboCTRL) and (TempKeyMsg.CharCode = 87) then //Ctrl+W
   begin
     aHandled := True;
     ExecuteKeyType.Enabled := true;
     KeyTypeExecute := 'w';
   end;
  if (KeyComboCTRL) and (TempKeyMsg.CharCode = 68) then //Ctrl+D
   begin
     aHandled := True;
     ExecuteKeyType.Enabled := true;
     KeyTypeExecute := 'd';
   end;
  if (KeyComboCTRL) and (TempKeyMsg.CharCode = 74) then //Ctrl+J
   begin
     aHandled := True;
     ExecuteKeyType.Enabled := true;
     KeyTypeExecute := 'j';
   end;
  if (KeyComboCTRL) and (TempKeyMsg.CharCode = 75) then //Ctrl+K
   begin
     aHandled := True;
     ExecuteKeyType.Enabled := true;
     KeyTypeExecute := 'k';
   end;
  if (KeyComboCTRL) and (TempKeyMsg.CharCode = 80) then //Ctrl+P
   begin
     aHandled := True;
     ExecuteKeyType.Enabled := true;
     KeyTypeExecute := 'p';
   end;
  if (TempKeyMsg.CharCode = VK_F5) then
    begin
     aHandled := True;
     Refresh_bt.Click;
    end;
  {if (TempKeyMsg.CharCode = VK_F11) then
    begin
     aHandled := True;
     FullScreen1.Click;
    end;}

end;

procedure TPopUpFrm.KeyComboResetTimer(Sender: TObject);
begin
 KeyComboReset.Enabled := false;
 KeyComboCTRL := false;
 KeyComboShift := false;
end;

procedure TPopUpFrm.Loadlanguage;
begin
 ShareCenterPopupFunction.Buttons[0].Caption := MainForm.LanguageCache.Lines[17];
 ShareCenterPopupFunction.Buttons[1].Caption := MainForm.LanguageCache.Lines[40];
 ShareCenterPopupFunction.Buttons[2].Caption := MainForm.LanguageCache.Lines[42];
 Refresh_bt.Hint := MainForm.LanguageCache.Lines[52];
 Stop_bt.Hint := MainForm.LanguageCache.Lines[53];
 FindLabel.Caption := MainForm.LanguageCache.Lines[28] + ':';
 FindBT1.Caption := MainForm.LanguageCache.Lines[58];
 FindBT2.Caption := MainForm.LanguageCache.Lines[59];
 FindCheckBox1.Caption := MainForm.LanguageCache.Lines[60];
 AdBlock_BT.Hint := MainForm.LanguageCache.Lines[403];
 AllowAdBlock_BT.Hint := MainForm.LanguageCache.Lines[508];
end;

procedure TPopUpFrm.LoadPageError(FrameID: Int64; BrowserName, CrmErrMsg1,
  CrmErrMsg2, CrmErrCode: string);
var
  TempChromium : TChromium;
  TempResourceStream: TResourceStream;
  TempResourceStreamInstance: thandle;
  TempNotificationPage: TStrings;
begin
 TempResourceStreamInstance := loadlibrary(PChar(ExtractFilePath(Application.ExeName) + '.\CoreResources.dll'));
 TempResourceStream := TResourceStream.Create(TempResourceStreamInstance, 'P_NOTIFICATION1', RT_RCDATA);
 try
   TempNotificationPage := TStringList.Create;
   if TempResourceStreamInstance <> 0 then
    begin
     TempNotificationPage.LoadFromStream(TempResourceStream);
     TempNotificationPage.Text := StringReplace(TempNotificationPage.Text, '@WEMSG1@', CrmErrMsg1, [rfreplaceall]);
     TempNotificationPage.Text := StringReplace(TempNotificationPage.Text, '@WEMSG2@', CrmErrMsg2, [rfreplaceall]);
     TempNotificationPage.Text := StringReplace(TempNotificationPage.Text, '@WEMSG3@', CrmErrCode, [rfreplaceall]);
     Chromium.Browser.GetFrameByident(FrameID).ExecuteJavaScript(TempNotificationPage.Text, '', 0);
    end;
 finally
   freelibrary(TempResourceStreamInstance);
   TempResourceStream.Free;
 end;
end;

procedure TPopUpFrm.mousezoom(value: integer);
begin
 if value <= 120 then
  begin
   if (ZoomValue >= 50) and (ZoomValue <= 350) then
    ZoomIn;
  end
 else
  begin
   if (ZoomValue <= 400) and (ZoomValue >= 100) then
    ZoomOut;
  end;
end;

procedure TPopUpFrm.OnLoadUrlTimerTimer(Sender: TObject);
begin
 TTimer(sender).Enabled := false;
 TopStatusButton := 2;
 GoTopStatusButton;
 Chromium.LoadURL(UrlToLoad);
end;

procedure TPopUpFrm.OpenNewTabImgTimer(Sender: TObject);
begin
 TTimer(Sender).Enabled := false;
 MainForm.OpenNewTab(imageurl);
end;

procedure TPopUpFrm.RefreshStopBts(cmd: SmallInt);
begin
 case cmd of
  0: begin
      Stop_bt.Visible := false;
      Refresh_bt.Visible := true;
      Refresh_bt.Left := 200;
     end;
  1: begin
      Stop_bt.Visible := true;
      Refresh_bt.Visible := false;
      Stop_bt.Left := 200;
     end;
 end;
end;

procedure TPopUpFrm.Refresh_btClick(Sender: TObject);
begin
 Chromium.Reload;
end;

procedure TPopUpFrm.ShareCenterPopupFunctionBeforeClose(Sender: TObject);
begin
  ShareCenterPanel.Visible := false;
end;

procedure TPopUpFrm.ShareCenterPopupFunctionButtonClick(Sender: TObject;
  Index: Integer);
var
 ShareCenterFrm: TShareCenterFrame;
begin
  ShareCenterFrm := TShareCenterFrame(ShareCenterPanel.Components[0]);
 case index of
  0: begin
      ShareCenterPopupFunction.ClosePopup;
     end;
  1: ShareCenterFrm.Chromium.Browser.Reload;
  2: begin
      ShareCenterFrm.Chromium.LoadURL('about:blank');
      ShareCenterFrm.BrowserPanel.Visible := false;
      ShareCenterFrm.ScrollBox1.Visible := true;
      ShareCenterFrm.ScrollBox1.BringToFront;
      ShareCenterPopupFunction.Buttons[1].Visible := false;
      ShareCenterPopupFunction.Buttons[2].Visible := false;
      ShareCenterFrm.ShowCertInfo(false);
     end;
 end;
end;

procedure TPopUpFrm.ShareCenterPopupFunctionClose(Sender: TObject);
var
 ShareCenterFrm: TShareCenterFrame;
begin
  try
   ShareCenterFrm := TShareCenterFrame(ShareCenterPanel.Components[0]);
   if ShareCenterFrm.Chromium.Initialized then
    begin
     ShareCenterFrm.Chromium.CloseBrowser(true);
    end;
  finally
   TShareCenterFrame(ShareCenterPanel.Components[0]).Free;
  end;
 TAdvSmoothPopup(sender).Buttons[1].Visible := false;
 TAdvSmoothPopup(sender).Buttons[2].Visible := false;
end;

procedure TPopUpFrm.ShowShareCenterTimer(Sender: TObject);
begin
 TTimer(Sender).Enabled := false;
 btnzone.Click;
end;

procedure TPopUpFrm.sizeMove(var msg: TWMSize);
begin
 inherited;
 if (msg.SizeType = SIZE_MAXIMIZED) OR (msg.SizeType = SIZE_RESTORED)then
  AlignAll;
end;

procedure TPopUpFrm.Stop_btClick(Sender: TObject);
begin
 Chromium.StopLoad;
end;

procedure TPopUpFrm.ZoomIn;
begin
 if ZoomValue <= 400  then
  begin
   Chromium.Browser.Host.ZoomLevel := Chromium.Browser.Host.ZoomLevel + 0.5;
   ZoomValue := ZoomValue + 50;

  end;
  ApplyZoom;
end;

procedure TPopUpFrm.ZoomOut;
begin
 if ZoomValue >= 100  then
  begin
   Chromium.Browser.Host.ZoomLevel := Chromium.Browser.Host.ZoomLevel - 0.5;
   ZoomValue := ZoomValue - 50;

  end;
 ApplyZoom;
end;

end.
