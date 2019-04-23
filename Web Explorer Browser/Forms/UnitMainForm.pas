unit UnitMainForm;

{$I cef.inc}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  uCEFChromium, uCEFWindowParent, uCEFInterfaces, uCEFApplication, uCEFTypes, uCEFConstants, uCEFStringMultimap, MessageDigest_5,
  ChromeTabsClasses, ChromeTabs, ChromeTabsUtils, ChromeTabsGlassForm, AdvGlowButton, Winapi.UxTheme, Vcl.GraphUtil, Vcl.WinXCtrls,
  JvExComCtrls, JvComCtrls, System.Actions, Vcl.ActnList, Vcl.Menus, uXPIcons, System.ImageList, Vcl.ImgList, ExtActns, pngimage, Winapi.ShellAPI, ChromeTabsTypes, PngImageList, CurvyControls,
  Vcl.Mask, AdvDropDown, AdvDetailDropDown, AdvPanel, AdvOfficeButtons, JvExControls, JvGradient, JvExExtCtrls, JvExtComponent, JvPanel, JvComponentBase, JvThreadTimer,
  JvComputerInfoEx, System.Notification, Xml.xmldom, Xml.XMLIntf, System.win.Registry, Winapi.ActiveX, Vcl.OleCtrls, System.Win.ComObj,
  AdvOfficeImage, Xml.Win.msxmldom, Xml.XMLDoc, dwJumpLists, AdvFocusHelper, Vcl.FileCtrl, System.StrUtils, System.RegularExpressions,
  Vcl.AppEvnts, fisHotKey, TaskDialog, TaskDialogEx, JvBalloonHint, IdURI, Winapi.ShlObj, Winapi.WinInet,
  uCEFChromiumWindow, AdvSmoothPopup, JvBaseDlg, JvProgressDialog, Vcl.Shell.ShellCtrls, AdvOfficeHint;


const
  CEFBROWSER_DESTROYWNDPARENT = WM_APP + $200;
  CEFBROWSER_DESTROYTAB       = WM_APP + $201;
  CEFBROWSER_INITIALIZED      = WM_APP + $102;
  CEFBROWSER_CHECKTAGGEDTABS  = WM_APP + $103;
  CUSTOMMENUCOMMAND_INSPECTELEMENT = 7241221;

type
  TTouchCapability = (tcTabletPC,tcIntTouch,tcExtTouch,tcIntPen,tcExtPen,tcMultiTouch,tcReady);
  TTouchCapabilities = set of TTouchCapability;
  TMainForm = class(TChromeTabsGlassForm)
    PanelTabs: TPanel;
    MenuPanel: TPanel;
    BottomLineBar1: TImage;
    MenuButton: TAdvGlowButton;
    LinkCenter_BT: TAdvGlowButton;
    Home_BT: TAdvGlowButton;
    SpeedDial_BT: TAdvGlowButton;
    app_panel: TPanel;
    BottomLineBar2: TImage;
    Trash_bt: TAdvGlowButton;
    download_bt: TAdvGlowButton;
    AeroTabs: TChromeTabs;
    BottomLineBarPanel: TPanel;
    BottomLineBar3: TImage;
    BottomLinePanel1: TPanel;
    BottomLineBar4: TImage;
    MainActionList: TActionList;
    NewTab: TAction;
    CloseTab: TAction;
    FavIcons: TImageList;
    FavIconNone: TImage;
    FavIcon: TImage;
    TabCRMHandle: TListBox;
    ImageList_icons: TImageList;
    Providers_ImageList: TImageList;
    RSSImageList: TImageList;
    ImageListLarge: TPngImageList;
    MenuImages: TPngImageList;
    ToolBar1: TAdvPanel;
    Image1: TImage;
    Urls: TAdvDetailDropDown;
    Tools_bt: TAdvGlowButton;
    ForwardBT: TAdvGlowButton;
    URLsBar: TCurvyEdit;
    btnzone: TAdvGlowButton;
    TopStatusPanel: TPanel;
    SepBar_TopStatusPanel: TImage;
    Refresh_bt: TAdvGlowButton;
    Stop_bt: TAdvGlowButton;
    DropDown_BT: TAdvGlowButton;
    Go_bt: TAdvGlowButton;
    SearchBar: TCurvyEdit;
    SearchBar_PanelCB: TPanel;
    SearchBarButton: TAdvGlowButton;
    BackBT: TAdvGlowButton;
    AdBlock_Panel: TPanel;
    AdBlock_BT: TAdvGlowButton;
    AllowAdBlock_BT: TAdvGlowButton;
    SpaceBackBT: TAdvGlowButton;
    ToolLineBar1: TPanel;
    ToolLineBar2: TPanel;
    ToolLineBar3: TPanel;
    ToolLineBar4: TPanel;
    TopToolLineBar1: TPanel;
    RefreshFavIcon: TTimer;
    StatusHintPanel: TJvPanel;
    HintGradient: TJvGradient;
    HintSizeLabel: TLabel;
    HideHintPanelTimer: TTimer;
    FindBar: TAdvPanel;
    FindBT1: TSpeedButton;
    FindLabel: TLabel;
    FindCount: TLabel;
    FindBT2: TSpeedButton;
    Image2: TImage;
    FindCheckBox1: TAdvOfficeCheckBox;
    FindBT0: TAdvGlowButton;
    FindEdit: TEdit;
    PageMenu: TPopupMenu;
    Abrir1: TMenuItem;
    NewWindow1: TMenuItem;
    OpenPrivateMode1: TMenuItem;
    FullScreen1: TMenuItem;
    N20: TMenuItem;
    OpenFile1: TMenuItem;
    Save1: TMenuItem;
    SaveText1: TMenuItem;
    P1: TMenuItem;
    SaveShortcutonDesktop1: TMenuItem;
    N1: TMenuItem;
    NewTab1: TMenuItem;
    CloseTab1: TMenuItem;
    OpenSpeedDial1: TMenuItem;
    N2: TMenuItem;
    Zoom1: TMenuItem;
    zmenu400: TMenuItem;
    zmenu350: TMenuItem;
    zmenu300: TMenuItem;
    zmenu250: TMenuItem;
    zmenu200: TMenuItem;
    zmenu150: TMenuItem;
    zmenu100: TMenuItem;
    zmenu50: TMenuItem;
    N10: TMenuItem;
    ZoomIn1: TMenuItem;
    ZoomOut1: TMenuItem;
    N16: TMenuItem;
    ZommReset1: TMenuItem;
    Find1: TMenuItem;
    NightMode1: TMenuItem;
    ViewinReaderMode1: TMenuItem;
    N9: TMenuItem;
    AddtoBookmarks1: TMenuItem;
    AddtoSpeedDial1: TMenuItem;
    ManageBookmarks1: TMenuItem;
    N17: TMenuItem;
    Downloads1: TMenuItem;
    OpenWidgets1: TMenuItem;
    N6: TMenuItem;
    Print1: TMenuItem;
    PrintPreview1: TMenuItem;
    N3: TMenuItem;
    Refresh1: TMenuItem;
    Stop1: TMenuItem;
    Back1: TMenuItem;
    Forward1: TMenuItem;
    N4: TMenuItem;
    SecurityPrivacy1: TMenuItem;
    ActiveProtection1: TMenuItem;
    EditAdblockaddresslist1: TMenuItem;
    rustedpagesforopenpopups1: TMenuItem;
    DeveloperTools1: TMenuItem;
    W1: TMenuItem;
    chromenetworkerrors1: TMenuItem;
    httpcache1: TMenuItem;
    chromehistograms1: TMenuItem;
    netinternals1: TMenuItem;
    chromeblobinternals1: TMenuItem;
    chromesystem1: TMenuItem;
    chromewebrtcinternals1: TMenuItem;
    V1: TMenuItem;
    chromeaccessibility1: TMenuItem;
    chromeindexeddbinternals1: TMenuItem;
    N22: TMenuItem;
    K1: TMenuItem;
    N21: TMenuItem;
    ActiveNotepad1: TMenuItem;
    OpenDeveloperTools1: TMenuItem;
    N5: TMenuItem;
    Exit1: TMenuItem;
    EngineEndevor7: TJvThreadTimer;
    HomePageStart: TTimer;
    MENUcenterPanel: TPanel;
    MENUviewerPanel: TPanel;
    menucenter_bevelpanel: TPanel;
    menucenter_bevel: TImage;
    OpenMenu: TAction;
    MN_ShowEffect1: TTimer;
    MN_CloseEffect1: TTimer;
    LanguageCache: TMemo;
    JvComputerInfoEx1: TJvComputerInfoEx;
    AdvFocusHelper1: TAdvFocusHelper;
    JumpLists1: TdwJumpLists;
    NotificationCenter1: TNotificationCenter;
    XMLDoc: TXMLDocument;
    SearchOptionsPanel: TAdvPanel;
    SB_C2: TLabel;
    Bevel1: TBevel;
    SB_C3: TLabel;
    SB_C4: TLabel;
    SearchOptionCaption: TLabel;
    SearchPanel_IMG: TAdvOfficeImage;
    SB_C1: TComboBoxEx;
    SB_C6: TEdit;
    SB_C5: TEdit;
    save_sc: TMemo;
    saveconfigfile: TMemo;
    saveconfigfiletemp: TMemo;
    SessionDir: TFileListBox;
    SessionStore: TMemo;
    Auto_Kill: TTimer;
    CloseMenuHubTimer: TTimer;
    pcMain: TJvPageControl;
    ToolBarBackgroundPanel: TPanel;
    MainPageMenu: TPopupMenu;
    MenuItem1: TMenuItem;
    OpenFile2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    ZommOut1: TMenuItem;
    N7: TMenuItem;
    ZoomReset1: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    N8: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    ClosedPages1: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    RefreshIgnoreCache1: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    ShowDeveloperToolsConsole1: TMenuItem;
    WebExplorerNotePad1: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem33: TMenuItem;
    RecoveryIcon: TImage;
    Popupicon: TImage;
    ApplicationEvents1: TApplicationEvents;
    OpenTabTimer: TTimer;
    OpenSPDTimer: TTimer;
    temp_url: TMemo;
    StartLinkWidget: TTimer;
    StartLinkExt: TTimer;
    AdvTaskDialogEx1: TAdvTaskDialogEx;
    AppHotKey9: TfisHotKey;
    RestoreSessionURL: TMemo;
    LoadSessionTimer: TTimer;
    SessionBalloonHint: TJvBalloonHint;
    SessionTimer: TJvThreadTimer;
    OpenDialog1: TOpenDialog;
    CloseDevToolsTimer: TTimer;
    SearchPopupFunction: TAdvSmoothPopup;
    InstantSearchPopupFunction: TAdvSmoothPopup;
    InstantSearchPanel: TPanel;
    InstantSearchCloseTimer: TTimer;
    SaveDialogPDF: TSaveDialog;
    NewTabProcedures: TTimer;
    INI_ULRNAME: TMemo;
    INI_URL: TMemo;
    SaveDialog: TSaveDialog;
    DownloadProgressDialog: TJvProgressDialog;
    DownloadTaskDialogEx1: TAdvTaskDialogEx;
    BrowserPopUpMenu: TPopupMenu;
    OpenLink1: TMenuItem;
    OpenLinkinNewTab1: TMenuItem;
    OpeninNewWindow2: TMenuItem;
    OpenNewTabinBackground1: TMenuItem;
    N15: TMenuItem;
    Back2: TMenuItem;
    Forward2: TMenuItem;
    Refresh2: TMenuItem;
    MenuItem2: TMenuItem;
    Stop2: TMenuItem;
    N14: TMenuItem;
    AddtoBookmarks2: TMenuItem;
    AddtoSpeedDial2: TMenuItem;
    N13: TMenuItem;
    ViewinReadeMode2: TMenuItem;
    Print2: TMenuItem;
    Share1: TMenuItem;
    copylink1: TMenuItem;
    N12: TMenuItem;
    Copy2: TMenuItem;
    Cut2: TMenuItem;
    Paste2: TMenuItem;
    SelectAll1: TMenuItem;
    N19: TMenuItem;
    SearchContent1: TMenuItem;
    N18: TMenuItem;
    SaveImage1: TMenuItem;
    OpenImage1: TMenuItem;
    N11: TMenuItem;
    ViewSorce1: TMenuItem;
    KeyComboReset: TTimer;
    LinkCenterPanel: TPanel;
    LKViwerPanel: TPanel;
    linkcenter_bevelpanel: TPanel;
    linkcenter_bevel: TImage;
    LC_ShowEffect1: TTimer;
    LC_CloseEffect1: TTimer;
    SPDBackGroundOpenDialog: TOpenDialog;
    ExtensionsDirList: TListBox;
    ExtensionsListView: TShellListView;
    cachedata: TMemo;
    UrlSCR: TListBox;
    ThemeTimer: TJvThreadTimer;
    ShareCenterPopupFunction: TAdvSmoothPopup;
    ShareCenterPanel: TPanel;
    OpenSharePopupTimer: TTimer;
    NotificationPageTimer: TTimer;
    ImgZoneBarBg: TCurvyEdit;
    OnShowFunctions: TTimer;
    ExecuteKeyType: TTimer;
    OpenNewTabImg: TTimer;
    OpenNewTabTimer: TTimer;
    ShowShareCenter: TTimer;
    TrustedPagesEnabler: TTimer;
    TrustedPagesCache: TMemo;
    HandleOpenNewTab: TTimer;
    TimerOpenPopupBrowser: TTimer;
    AdvInputTaskDialog1: TAdvInputTaskDialog;
    S1: TMenuItem;
    N23: TMenuItem;
    OpenWindowTimer: TTimer;
    AdPagesCache: TMemo;
    AdPagesCache2: TMemo;
    AdblockListDefault: TMemo;
    AllowAdblockListDefault: TMemo;
    AdvOfficeHint1: TAdvOfficeHint;
    RegisterDownloadTimer: TTimer;
    InspectDevToolsTimer: TTimer;
    MainFormLoadingPanel: TAdvPanel;
    HideWelcomeScreen: TTimer;
    CloseTabTimer: TTimer;
    ReturnCloseTabTimer: TTimer;
    RefreshFavIconCurrent: TTimer;
    WarningTabTimer: TTimer;
    ShareCenterLoadingPanel: TAdvPanel;
    AutoCloseTimer: TTimer;
    ACloseTab: TAction;
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BackBtnClick(Sender: TObject);
    procedure ForwardBtnClick(Sender: TObject);
    procedure ReloadBtnClick(Sender: TObject);
    procedure StopBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure AeroTabsActiveTabChanged(Sender: TObject; ATab: TChromeTab);
    procedure NewTabExecute(Sender: TObject);
    procedure CloseTabExecute(Sender: TObject);
    procedure AeroTabsButtonAddClick(Sender: TObject; var Handled: Boolean);
    procedure AeroTabsButtonCloseTabClick(Sender: TObject; ATab: TChromeTab;
      var Close: Boolean);
    procedure RefreshFavIconTimer(Sender: TObject);
    procedure HideHintPanelTimerTimer(Sender: TObject);
    procedure Tools_btClick(Sender: TObject);
    procedure NewTab1Click(Sender: TObject);
    procedure CloseTab1Click(Sender: TObject);
    procedure Stop_btClick(Sender: TObject);
    procedure Refresh_btClick(Sender: TObject);
    procedure BackBTClick(Sender: TObject);
    procedure ForwardBTClick(Sender: TObject);
    procedure Go_btClick(Sender: TObject);
    procedure EngineEndevor7Timer(Sender: TObject);
    procedure URLsBarClick(Sender: TObject);
    procedure URLsBarKeyPress(Sender: TObject; var Key: Char);
    procedure HomePageStartTimer(Sender: TObject);
    procedure OpenMenuExecute(Sender: TObject);
    procedure MN_ShowEffect1Timer(Sender: TObject);
    procedure MN_CloseEffect1Timer(Sender: TObject);
    procedure NotificationCenter1ReceiveLocalNotification(Sender: TObject;
      ANotification: TNotification);
    procedure SB_C1Change(Sender: TObject);
    procedure Auto_KillTimer(Sender: TObject);
    procedure CloseMenuHubTimerTimer(Sender: TObject);
    procedure PrintPreview1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure ViewinReaderMode1Click(Sender: TObject);
    procedure NightMode1Click(Sender: TObject);
    procedure MenuButtonClick(Sender: TObject);
    procedure pcMainResize(Sender: TObject);
    procedure Home_BTClick(Sender: TObject);
    procedure FullScreen1Click(Sender: TObject);
    procedure MenuItem27Click(Sender: TObject);
    procedure RefreshIgnoreCache1Click(Sender: TObject);
    procedure MenuItem28Click(Sender: TObject);
    procedure MenuItem29Click(Sender: TObject);
    procedure MenuItem30Click(Sender: TObject);
    procedure Trash_btClick(Sender: TObject);
    procedure ClosedPages1Click(Sender: TObject);
    procedure pcMainMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure OpenTabTimerTimer(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure OpenSpeedDial1Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure OpenSPDTimerTimer(Sender: TObject);
    procedure StartLinkWidgetTimer(Sender: TObject);
    procedure StartLinkExtTimer(Sender: TObject);
    procedure AppHotKey1HotKey(Sender: TObject);
    procedure AppHotKey2HotKey(Sender: TObject);
    procedure AdvTaskDialogEx1DialogButtonClick(Sender: TObject;
      ButtonID: Integer);
    procedure AppHotKey4HotKey(Sender: TObject);
    procedure AppHotKey7HotKey(Sender: TObject);
    procedure AppHotKey8HotKey(Sender: TObject);
    procedure AppHotKey9HotKey(Sender: TObject);
    procedure AppHotKey3HotKey(Sender: TObject);
    procedure LoadSessionTimerTimer(Sender: TObject);
    procedure SessionTimerTimer(Sender: TObject);
    procedure OpenFile2Click(Sender: TObject);
    procedure OpenFile1Click(Sender: TObject);
    procedure ShowDeveloperToolsConsole1Click(Sender: TObject);
    procedure OpenDeveloperTools1Click(Sender: TObject);
    procedure CloseDevToolsTimerTimer(Sender: TObject);
    procedure SearchPopupFunctionShow(Sender: TObject);
    procedure SearchPopupFunctionClose(Sender: TObject);
    procedure SearchBarKeyPress(Sender: TObject; var Key: Char);
    procedure SearchBarButtonClick(Sender: TObject);
    procedure InstantSearchPopupFunctionShow(Sender: TObject);
    procedure InstantSearchPopupFunctionClose(Sender: TObject);
    procedure InstantSearchPopupFunctionBeforeClose(Sender: TObject);
    procedure InstantSearchCloseTimerTimer(Sender: TObject);
    procedure InstantSearchPopupFunctionButtonClick(Sender: TObject;
      Index: Integer);
    procedure zmenu300Click(Sender: TObject);
    procedure zmenu350Click(Sender: TObject);
    procedure zmenu400Click(Sender: TObject);
    procedure zmenu250Click(Sender: TObject);
    procedure zmenu200Click(Sender: TObject);
    procedure zmenu150Click(Sender: TObject);
    procedure zmenu100Click(Sender: TObject);
    procedure zmenu50Click(Sender: TObject);
    procedure NewTabProceduresTimer(Sender: TObject);
    procedure Zoom1Click(Sender: TObject);
    procedure ZoomIn1Click(Sender: TObject);
    procedure ZoomOut1Click(Sender: TObject);
    procedure ZommReset1Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure ZommOut1Click(Sender: TObject);
    procedure ZoomReset1Click(Sender: TObject);
    procedure DropDown_BTClick(Sender: TObject);
    procedure Stop1Click(Sender: TObject);
    procedure DownloadTaskDialogEx1DialogButtonClick(Sender: TObject;
      ButtonID: Integer);
    procedure UrlsSelect(Sender: TObject);
    procedure UrlsDropDownFooterButtonClick(Sender: TObject;
      ButtonIndex: Integer);
    procedure DeveloperTools1Click(Sender: TObject);
    procedure AppHotKey6HotKey(Sender: TObject);
    procedure KeyComboResetTimer(Sender: TObject);
    procedure OpenPrivateMode1Click(Sender: TObject);
    procedure ManageBookmarks1Click(Sender: TObject);
    procedure LC_ShowEffect1Timer(Sender: TObject);
    procedure LC_CloseEffect1Timer(Sender: TObject);
    procedure LinkCenter_BTClick(Sender: TObject);
    procedure AddtoBookmarks1Click(Sender: TObject);
    procedure AddtoBookmarks2Click(Sender: TObject);
    procedure AppHotKey10HotKey(Sender: TObject);
    procedure ThemeTimerTimer(Sender: TObject);
    procedure ShareCenterPopupFunctionClose(Sender: TObject);
    procedure ShareCenterPopupFunctionBeforeClose(Sender: TObject);
    procedure btnzoneClick(Sender: TObject);
    procedure ShareCenterPopupFunctionButtonClick(Sender: TObject;
      Index: Integer);
    procedure OpenSharePopupTimerTimer(Sender: TObject);
    procedure Share1Click(Sender: TObject);
    procedure NotificationPageTimerTimer(Sender: TObject);
    procedure Downloads1Click(Sender: TObject);
    procedure OpenWidgets1Click(Sender: TObject);
    procedure OnShowFunctionsTimer(Sender: TObject);
    procedure ExecuteKeyTypeTimer(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Back1Click(Sender: TObject);
    procedure Forward1Click(Sender: TObject);
    procedure ViewSorce1Click(Sender: TObject);
    procedure OpenNewTabImgTimer(Sender: TObject);
    procedure OpenNewTabTimerTimer(Sender: TObject);
    procedure SelectAll1Click(Sender: TObject);
    procedure Print2Click(Sender: TObject);
    procedure ShowShareCenterTimer(Sender: TObject);
    procedure Back2Click(Sender: TObject);
    procedure Forward2Click(Sender: TObject);
    procedure Refresh2Click(Sender: TObject);
    procedure Stop2Click(Sender: TObject);
    procedure TrustedPagesEnablerTimer(Sender: TObject);
    procedure HandleOpenNewTabTimer(Sender: TObject);
    procedure TimerOpenPopupBrowserTimer(Sender: TObject);
    procedure chromenetworkerrors1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure httpcache1Click(Sender: TObject);
    procedure chromehistograms1Click(Sender: TObject);
    procedure netinternals1Click(Sender: TObject);
    procedure chromeblobinternals1Click(Sender: TObject);
    procedure chromesystem1Click(Sender: TObject);
    procedure chromewebrtcinternals1Click(Sender: TObject);
    procedure V1Click(Sender: TObject);
    procedure chromeaccessibility1Click(Sender: TObject);
    procedure chromeindexeddbinternals1Click(Sender: TObject);
    procedure K1Click(Sender: TObject);
    procedure OpenWindowTimerTimer(Sender: TObject);
    procedure ActiveProtection1Click(Sender: TObject);
    procedure EditAdblockaddresslist1Click(Sender: TObject);
    procedure rustedpagesforopenpopups1Click(Sender: TObject);
    procedure AdBlock_BTClick(Sender: TObject);
    procedure RegisterDownloadTimerTimer(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure InspectDevToolsTimerTimer(Sender: TObject);
    procedure HideWelcomeScreenTimer(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure CloseTabTimerTimer(Sender: TObject);
    procedure ReturnCloseTabTimerTimer(Sender: TObject);
    procedure RefreshFavIconCurrentTimer(Sender: TObject);
    procedure WarningTabTimerTimer(Sender: TObject);
    procedure AutoCloseTimerTimer(Sender: TObject);
    procedure ACloseTabExecute(Sender: TObject);

  protected
    FClosingTab, FCanClose, FClosing: boolean;

    procedure Chromium_OnAfterCreated(Sender: TObject; const browser: ICefBrowser);
    procedure Chromium_OnAddressChange(Sender: TObject; const browser: ICefBrowser; const frame: ICefFrame; const url: ustring);
    procedure Chromium_OnTitleChange(Sender: TObject; const browser: ICefBrowser; const title: ustring);
    procedure Chromium_OnClose(Sender: TObject; const browser: ICefBrowser; out Result: Boolean);
    procedure Chromium_OnBeforeClose(Sender: TObject; const browser: ICefBrowser);
    procedure Chromium_OnBeforePopup(Sender: TObject; const browser: ICefBrowser; const frame: ICefFrame; const targetUrl, targetFrameName: ustring; targetDisposition: TCefWindowOpenDisposition; userGesture: Boolean; const popupFeatures: TCefPopupFeatures; var windowInfo: TCefWindowInfo; var client: ICefClient; var settings: TCefBrowserSettings; var noJavascriptAccess: Boolean; var Result: Boolean);
    procedure Chromium_CertificateError(Sender: TObject; const browser: ICefBrowser; certError: Integer; const requestUrl: ustring; const sslInfo: ICefSslInfo; const callback: ICefRequestCallback; out Result: Boolean);
    procedure Chromium_FavIconUrlChange(Sender: TObject; const browser: ICefBrowser; const iconUrls: TStrings);
    procedure Chromium_LoadStart(Sender: TObject; const browser: ICefBrowser; const frame: ICefFrame; transitionType: Cardinal);
    procedure Chromium_LoadEnd(Sender: TObject; const browser: ICefBrowser; const frame: ICefFrame; httpStatusCode: Integer);
    procedure Chromium_StatusMessage(Sender: TObject; const browser: ICefBrowser; const value: ustring);
    procedure Chromium_LoadingStateChange(Sender: TObject; const browser: ICefBrowser; isLoading, canGoBack, canGoForward: Boolean);
    procedure Chromium_LoadingProgressChange(Sender: TObject; const browser: ICefBrowser; const progress: Double);
    procedure Chromium_FullScreenModeChange(Sender: TObject; const browser: ICefBrowser; fullscreen: Boolean);
    procedure Chromium_KeyEvent(Sender: TObject; const browser: ICefBrowser; const event: PCefKeyEvent; osEvent: PMsg; out Result: Boolean);
    procedure Chromium_BeforeResourceLoad(Sender: TObject; const browser: ICefBrowser; const frame: ICefFrame; const request: ICefRequest; const callback: ICefRequestCallback; out Result: TCefReturnValue);
    procedure Chromium_OpenUrlFromTab(Sender: TObject; const browser: ICefBrowser; const frame: ICefFrame; const targetUrl: ustring; targetDisposition: TCefWindowOpenDisposition; userGesture: Boolean; out Result: Boolean);
    procedure Chromium_Jsdialog(Sender: TObject; const browser: ICefBrowser; const originUrl: ustring; dialogType: TCefJsDialogType; const messageText, defaultPromptText: ustring; const callback: ICefJsDialogCallback; out suppressMessage, Result: Boolean);
    procedure Chromium_ProtocolExecution(Sender: TObject; const browser: ICefBrowser; const url: ustring; out allowOsExecution: Boolean);
    procedure Chromium_BeforeDownload(Sender: TObject; const browser: ICefBrowser; const downloadItem: ICefDownloadItem; const suggestedName: ustring; const callback: ICefBeforeDownloadCallback);
    procedure Chromium_DownloadUpdated(Sender: TObject; const browser: ICefBrowser; const downloadItem: ICefDownloadItem; const callback: ICefDownloadItemCallback);
    procedure Chromium_BeforeContextMenu(Sender: TObject; const browser: ICefBrowser; const frame: ICefFrame; const params: ICefContextMenuParams; const model: ICefMenuModel);
    procedure Chromium_ContextMenuCommand(Sender: TObject; const browser: ICefBrowser; const frame: ICefFrame; const params: ICefContextMenuParams; commandId: Integer; eventFlags: Cardinal; out Result: Boolean);
    procedure Chromium_LoadError(Sender: TObject; const browser: ICefBrowser; const frame: ICefFrame; errorCode: Integer; const errorText, failedUrl: ustring);
    procedure Chromium_RenderCompMsg(var aMessage : TMessage; var aHandled: Boolean);

    procedure BrowserCreatedMsg(var aMessage : TMessage); message CEF_AFTERCREATED;
    procedure BrowserDestroyWindowParentMsg(var aMessage : TMessage); message CEFBROWSER_DESTROYWNDPARENT;
    procedure BrowserDestroyTabMsg(var aMessage : TMessage); message CEFBROWSER_DESTROYTAB;
    procedure BrowserCheckTaggedTabsMsg(var aMessage : TMessage); message CEFBROWSER_CHECKTAGGEDTABS;
    procedure CEFInitializedMsg(var aMessage : TMessage); message CEFBROWSER_INITIALIZED;
    procedure WMMove(var aMessage : TWMMove); message WM_MOVE;
    procedure WMMoving(var aMessage : TMessage); message WM_MOVING;
    procedure WMEnterMenuLoop(var aMessage: TMessage); message WM_ENTERMENULOOP;
    procedure WMExitMenuLoop(var aMessage: TMessage); message WM_EXITMENULOOP;
    procedure WMNCACTIVATE(var M: TWMNCACTIVATE); message WM_NCACTIVATE;
    procedure WMQueryEndSession(var Message: TWMQueryEndSession); message WM_QUERYENDSESSION;
    procedure WMEndSession(var Message: TWMEndSession); message WM_ENDSESSION;

    function  AllTabSheetsAreTagged : boolean;
    procedure CloseAllBrowsers;
    function  GetPageIndex(const aSender : TObject; var aPageIndex : integer) : boolean;
    procedure NotifyMoveOrResizeStarted;

    function  SearchWindowParent(aPageIndex : integer; var aWindowParent : TCEFWindowParent) : boolean;
    procedure HandleKeyDown(const aMsg : TMsg; var aHandled : boolean);
    procedure HandleKeyUp(const aMsg : TMsg; var aHandled : boolean);

  private
    procedure SetMainFormCaption;
    procedure ReturnClosedTab(ClosedTab: Integer);
    procedure check_profile;
    procedure GetFavIcon(URL, Dest: string);
    procedure ChangeFavIcon(IsNoneIcon: Boolean; TabIndex: Integer; CrmFavIconUrl: String);
    function TabIndexByName(TabName: String): Integer;
    procedure AddFavIcon(FIconIndex: integer);
    procedure UpdateFavIcon;
    function GetTabIndexByChromoium(Crm: string): Integer;
    procedure SetTabValues(VarType: string; ValueVar: string);
    procedure CloseFreeTab(TabIndex: integer);
    function GetTabValues(VarType: string): string;
    procedure AlignAll;
    procedure GoTopStatusButton;
    procedure RefreshStopBts(cmd: SmallInt);
    procedure ShowStatusHint(HintText: WideString);
    procedure ShowGoBt(cmd: Boolean);
    procedure GoUrl;
    procedure EnableJumpTask;
    procedure EnableLanguage(LanID: Integer);
    function IsHardwareAccelerated(): Boolean;
    function GetWin32_VideoControllerInfo(): string;
    procedure FullMode(CmdMode: Boolean);
    function FindWindowExtd(partialTitle: string): HWND;
    function GetUWPAppData(): string;
    function IsSPDPage(Url: string): Boolean;
    procedure OpenServices;
    procedure CreateProcessWeService(const FileName: String);
    procedure CheckIsTouchPC;
    function GetTouchCapabilities: TTouchCapabilities;
    procedure StoreSession;
    procedure clearnavigationdata;
    procedure RestoreSession;
    procedure EnableTouchForm;
    procedure ShowDevTools;
    procedure EnableSearchBarSettings;
    procedure GoInstantSearch(adr: string);
    procedure GoShareCenter(adr: string);
    function ReturnZoomVlr(value: integer): integer;
    procedure ApplyBrowserZoom;
    procedure EnableAeroTheme;
    procedure GetHistotyUrlsList;
    procedure SaveHistotyUrlsList;
    procedure ChangeAddressInformation(StartingLoading: Boolean; UrlAddress: String);
    procedure ShowNotificationPage(ParentTabIndex, CrmErrorCode, PageTypeCode: integer; BrowserName, CrmErrMsg, FailedUrl: String);
    procedure LoadPageError(FrameID: Int64; BrowserName, CrmErrMsg1, CrmErrMsg2, CrmErrCode: string);
    function GetWinInetError(ErrorCode:Cardinal): string;
    procedure OpenPopupBrowser(options: TCefWindowOpenDisposition; TargetUrl, BrowserName: string);
    procedure OpenPopupBar(BrowserName, PopUpUrl: string);
    procedure ShowPopUpMode;
    procedure CheckAdblockFile;
    procedure mousezoom(value: integer; FormType: Boolean);
    procedure ViewWarningTabs;
  public
    function SearchChromium(aPageIndex : integer; var aChromium : TChromium) : boolean;
    function WindowsUI: Shortint;
    procedure WindowClient;
    function WindowsLanguageID: Integer;
    function GetDomain(const Domain: string): string;
    procedure NotificationCenterAct(cmd: SmallInt);
    procedure ShowMenuHub(mode: Boolean);
    procedure ShowLinkHub(mode: Boolean);
    procedure OpenConfig;
    procedure SaveConfig;
    procedure StopSessionAndTerminate;
    procedure Legacybrowser(value: Boolean);
    procedure RestartApp;
    function IsSystemPage(URL: string): Boolean;
    function Brighten(AColor: TColor): TColor;
    function BrightenLight(AColor: TColor): TColor;
    function BrightenWinRT(AColor: TColor): TColor;
    function BrightenLightWinRT(AColor: TColor): TColor;
    Function GetAeroColor:TColor;
    function GetCountryCode: Integer;
    procedure AddToHistory(PageName,HURL: String);
    Function ValidXMLAddress(cmd: Integer; Value: String): String;
    procedure CheckHistoryConditions(cachedays: Integer);
    function IsLowerCpu: Boolean;
    procedure OpenNewTab(Url: String);
    function ConvertToURI(text : String) : String;
    procedure OpenSpeedDial;
    procedure DeleteDir(hHandle: THandle; const sPath: String);
    procedure Deletefiles(APath, AFileSpec: string);
    function GetPlataform: String;
    function TaskKill(pid: string): Boolean;
    procedure SavePDFFiles;
    procedure StartDownloadExplorer(cmd1, cmd2, cmd3, cmd4: String);
    function GetUserDesktopPath: string;
    function FormatByteSize(const bytes: Integer): string;
    function ApplicationActive: Boolean;
    function HtmlToColor(s:string;aDefault:Tcolor):TColor;
    function ColorToHtml(DColor:TColor):string;
    function CutSpecialChar(text: String): String;
    procedure ListViewToCSV(theListView: TListView; const FileName: String);
    procedure ListViewFromCSV(theListView: TListView; const FileName: String);
    function ValidCSVFile(cmd: Integer; Value: String): String;
    procedure OpenAddressFromLink(LinkUrl: string);
    procedure UpdateExtensionsDir;
    procedure DownloadImage(chimgurl, MainURL: string);
    procedure ClearOnlyHis;
    procedure ShowSecPermHub(cmdt: SmallInt);
    procedure OpenForm(FormType, Param_2, Param_3: string; ExternalForm: Boolean; Param_1: SmallInt; GlassTypeForm: Boolean);
    procedure HideNotificationPage(BrowserName: String);
    procedure HideBarNotification(BrowserName: String);
    function ErrorCertificateMsg(errorcode: string): String;
    function ExtractUrlFileName(const AUrl: string): string;
    function GetRemoteFileSize(const Url : string): Integer;
    procedure ParseURL(const lpszUrl: string; var Host, Resource: string);
    procedure OpenPopUpWindow(UrlToOpen: String; ShowToolBar: Boolean);
    procedure OpenLinkNewWindow(LinkUrl: string);
    procedure RegisterDownloadFile(DownloadN, DownloadF, DownloadD: String);
    Function CheckUrl(url: string): boolean;
    function GetProfileName: string;
    function GetHashMd5(const Value: AnsiString): string;
    Function AuthenticateUserProfile: Boolean;
    function EnCrypt(sOpcao: Boolean; sDados: String): String;
    procedure CreateGlassBckgForm(opentype: Boolean);
    procedure CloseGlassBckgForm;

    var
      TabsCouter, DownloadIndex, StepProgressBar, DownloadContentLength: Int64;
      languageIndex, mousePointElementX, mousePointElementY, TabToCloseIndex: Integer;
      UserAuthenticate, SystemShuttingDown, AMD64Mode, privatemode, safemode, PopUpModeWindow, Widgetsmode, ClearCache, FullScreen, LegacyWindowsTaskbar, AllowedKeys, KeytoNewWindow, Isbgtab, IsGenericGraphics, WindowsActionCenter, HightCPU, OpeningTab, IsTouchPC, SPDUpdateChecked, ClearAllCache, DevToolFrameSide, OpenSystemTab, RefreshForNewLinkSaved, UseInstantSearch, StartHomePage, NewTabCall, FormActive, DevInspectElement, IskeyEditableField, AdBlockEnabled: Boolean;
      Profile_Pach, UserAgent, DownloadName, SearchNameProvider, SearchaddressProvider, user_name, URLDrop, URLDropFileName, linktemp, NewTabURL, WebExplorerServicePID, WESPDVersion, imageurl, searchtext, TempUrlPage, LastLink, TempUserKeyProfilePsw: String;
      SpellWords, SpellWordsHash, CertIssuerOrgNames: TStringList;
      mousePointElement: TPoint;
      ProtocolInfos, DownloadInfos: array[1..3] of string;
      NotificationStrs: array[1..6] of string;
      UserKeyProfileStrs: array[1..3] of string;
  end;

var
  MainForm: TMainForm;
  BrowserTabCount, TempHubBT_Index, PreTabActiveIndex, ClosedReturnNewTab, WarningTabAnimationIndex, ReturnTabTimer: integer;
  StopSessionFile, OneOpen, SaveBookmarkOption, ClosingDevTools, CancelDownload, OtherDownloadFolder, KeyComboCTRL, KeyComboShift, PopUpFromUser, FirstOpenWindow, PreTabActiveState, TypeCloseReturnTab, CloseCurrentTab, AutoCloseTab: Boolean;
  KeyTypeExecute, TempPopUpTargetUrl, TempPopUpBrowserName, OpenWindowPopupStrings: String;
  //DebugReportStrings: TStringList;
  TempPopUpFeatures: TCefWindowOpenDisposition;

type
 TSSESupport = (sse, sse2, sse3, ssse3, sse4A, sse41, sse42, sse5);
 TSSESupports = set of TSSESupport;

implementation

{$R *.dfm}
{$R JumpListTasks.RES}

uses AppMenuForm, PageTrashForm, UnitInstantSearch, linkcenterform,
  UnitUserLibrary, UnitShareCenter, UnitPageNotification, UnitPopUpBarFrame,
  UnitPopUpFrm, SecurityPermissionHubForm, UnitAuthenticationHubFrm,
  UnitBackgroundGlassForm;

// ************************************************************************
// ************* Valores da Tabela de Varíaveis das Guias *****************
// ************************************************************************
//
// Valor 0: TopStatusButton SmallInt
// Valor 1: NoneFavIcon SmallInt
// Valor 2: TabLoading SmallInt
// Valor 3: TimeToHideHint SmallInt
// Valor 4: ZoomValue SmallInt
// Valor 5: Adblock SmallInt
//
// ************************************************************************
// ************************************************************************
// Add novos shortcut keys edite a procedure HandleKeyDown ou Add APPHotKey
// ************************************************************************





// This is just a simplified demo with tab handling.
// It's not meant to be a complete browser or the best way to implement a tabbed browser.

// In this demo all browsers share the buttons and URL combobox.
// All TChromium components share the same functions for their events sending the
// PageIndex of the Tab where they are included in the Message.lParam parameter if necessary.

// For simplicity the Button panel and the PageControl are disabled while adding or removing tab sheets.
// The Form can't be closed if it's destroying a tab.

// This is the destruction sequence when a user closes a tab sheet:
// 1. RemoveTabBtnClick calls TChromium.CloseBrowser of the selected tab which triggers a TChromium.OnClose event.
// 2. TChromium.OnClose sends a CEFBROWSER_DESTROYWNDPARENT message to destroy TCEFWindowParent in the main thread which triggers a TChromium.OnBeforeClose event.
// 3. TChromium.OnBeforeClose sends a CEFBROWSER_DESTROYTAB message to destroy the tab in the main thread.

// This is the destruction sequence when the user closes the main form
// 1. FormCloseQuery hides the form and calls CloseAllBrowsers which calls TChromium.CloseBrowser in all tabs and triggers the TChromium.OnClose event.
// 2. TChromium.OnClose sends a CEFBROWSER_DESTROYWNDPARENT message to destroy TCEFWindowParent in the main thread which triggers a TChromium.OnBeforeClose event.
// 3. TChromium.OnBeforeClose sends a CEFBROWSER_CHECKTAGGEDTABS message to set the TAG property to 1 in the TabSheet containing the TChromium. Then sends WM_CLOSE in case all tabsheets have a TAG = 1.

procedure GlobalCEFApp_OnContextInitialized;
begin
  if (MainForm <> nil) and MainForm.HandleAllocated then
    PostMessage(MainForm.Handle, CEFBROWSER_INITIALIZED, 0, 0);
end;

procedure TMainForm.ReturnClosedTab(ClosedTab: Integer);
var
  TempChromium : TChromium;
begin
try
 begin
  TypeCloseReturnTab := true;
  if (ClosedTab = 0) and (AeroTabs.ActiveTabIndex > 0) then
   begin
    CloseFreeTab(ClosedTab);
    ClosedReturnNewTab := AeroTabs.ActiveTab.Index - 1;
    ReturnCloseTabTimer.Enabled := true;
    //pcMain.Pages[ClosedTab].Free;
    //pcMain.ActivePageIndex := AeroTabs.ActiveTab.Index - 1;
    //if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
    //ShowMessage('F-A Fechando: ' + inttostr(ClosedTab) + ', Voltando para a guia: ' + inttostr(AeroTabs.ActiveTab.Index - 1));
   end
  else if (ClosedTab = AeroTabs.Tabs.Count - 1) and (AeroTabs.ActiveTabIndex < AeroTabs.Tabs.Count - 1) then
   begin
    CloseFreeTab(ClosedTab);
    ClosedReturnNewTab := AeroTabs.ActiveTab.Index;
    ReturnCloseTabTimer.Enabled := true;
    //pcMain.Pages[ClosedTab].Free;
    //pcMain.ActivePageIndex := AeroTabs.ActiveTab.Index;
    //ShowMessage('F-B Fechando: ' + inttostr(ClosedTab) + ', Voltando para a guia: ' + inttostr(AeroTabs.ActiveTab.Index));
   end
  else
   begin
    if PreTabActiveIndex = 0 then
     begin
      //ShowMessage('A');
      //pcMain.Pages[ClosedTab].Free;
      //pcMain.ActivePageIndex := AeroTabs.ActiveTab.Index;
      CloseFreeTab(ClosedTab);
      ClosedReturnNewTab := AeroTabs.ActiveTab.Index;
      ReturnCloseTabTimer.Enabled := true;

     end
    else if PreTabActiveIndex = pcMain.PageCount -1 then
     begin
      if pcMain.PageCount > 2 then
       begin
        //ShowMessage('B');
        //pcMain.Pages[ClosedTab].Free;
        //pcMain.ActivePageIndex := AeroTabs.ActiveTab.Index -1;
        CloseFreeTab(ClosedTab);
        ClosedReturnNewTab := AeroTabs.ActiveTab.Index -1;
        ReturnCloseTabTimer.Enabled := true;
       end
      else
       begin
        //ShowMessage('C');
        //pcMain.Pages[ClosedTab -1].Free;
        //pcMain.ActivePageIndex := AeroTabs.ActiveTab.Index;
        CloseFreeTab(ClosedTab -1);
        ClosedReturnNewTab := AeroTabs.ActiveTab.Index;
        ReturnCloseTabTimer.Enabled := true;
       end;
     end
    else
     begin
      //ShowMessage(inttostr(PreTabActiveIndex -1) + '-'+inttostr(AeroTabs.Tabs.Count - 1)+'-'+inttostr(ClosedTab));
      if PreTabActiveIndex -1 = AeroTabs.Tabs.Count - 1 then
       begin
        //ShowMessage('D');
        //pcMain.Pages[ClosedTab].Free;
        //pcMain.ActivePageIndex := AeroTabs.ActiveTab.Index;
        CloseFreeTab(ClosedTab);
        ClosedReturnNewTab := AeroTabs.ActiveTab.Index;
        ReturnCloseTabTimer.Enabled := true;
       end
      else
       begin
        //ShowMessage('E');
        //pcMain.Pages[ClosedTab].Free;
        //pcMain.ActivePageIndex := AeroTabs.ActiveTab.Index;
        CloseFreeTab(ClosedTab);
        ClosedReturnNewTab := AeroTabs.ActiveTab.Index;
        ReturnCloseTabTimer.Enabled := true;
       end;
     end;
    {pcMain.ActivePageIndex := AeroTabs.ActiveTab.Index -1;
    BrowserFrame := TWebBrowserFrame(pcMain.Pages[AeroTabs.ActiveTab.Index -1].Components[0]);}
    //ShowMessage('F-C Fechando: ' + inttostr(ClosedTab) + ', Voltando para a guia: ' + inttostr(AeroTabs.ActiveTab.Index -1));
   end;
 end;
Except
end;
end;

procedure TMainForm.ReturnCloseTabTimerTimer(Sender: TObject);
begin
 //Esse contador fornece tempo para retornar a guia ativa em pcs mais lentos
 AeroTabs.Enabled := false;
 if ReturnTabTimer < 20 then
  begin
   Inc(ReturnTabTimer);
   pcMain.ActivePageIndex := ClosedReturnNewTab;
  end
 else
  begin
   AeroTabs.Enabled := true;
   TTimer(Sender).Enabled := false;
   ReturnTabTimer := 0;
   RefreshFavIcon.Enabled := true;
  end;
 {pcMain.ActivePageIndex := ClosedReturnNewTab;
 RefreshFavIcon.Enabled := true;
 TTimer(Sender).Enabled := false;}
end;

function TMainForm.ReturnZoomVlr(value: integer): integer;
begin
 case value of
  0: Result := 400;
  1: Result := 350;
  2: Result := 300;
  3: Result := 250;
  4: Result := 200;
  5: Result := 150;
  6: Result := 100;
  7: Result := 50;
 end;
end;

procedure TMainForm.rustedpagesforopenpopups1Click(Sender: TObject);
begin
 OpenForm('SecurityPermissionHub', '', '', False, 1, false);
end;

function TMainForm.FindWindowExtd(partialTitle: string): HWND;
var
  hWndTemp: hWnd;
  iLenText: Integer;
  cTitletemp: array [0..254] of Char;
  sTitleTemp: string;
begin
  hWndTemp := FindWindow(nil, nil);
  while hWndTemp <> 0 do begin
    iLenText := GetWindowText(hWndTemp, cTitletemp, 255);
    sTitleTemp := cTitletemp;
    sTitleTemp := UpperCase(copy( sTitleTemp, 1, iLenText));
    partialTitle := UpperCase(partialTitle);
    if pos( partialTitle, sTitleTemp ) <> 0 then
      Break;
    hWndTemp := GetWindow(hWndTemp, GW_HWNDNEXT);
  end;
  result := hWndTemp;
end;

function TMainForm.FormatByteSize(const bytes: Integer): string;
const
   B = 1; //byte
   KB = 1024 * B; //kilobyte
   MB = 1024 * KB; //megabyte
   GB = 1024 * MB; //gigabyte
 begin
 try
  if (bytes = -1) or (bytes = 1) then
   Result := LanguageCache.Lines[124]
  else
   begin
   if bytes > GB then
     result := FormatFloat('#.## GB', bytes / GB)
   else
     if bytes > MB then
       result := FormatFloat('#.## MB', bytes / MB)
     else
       if bytes > KB then
         result := FormatFloat('#.## KB', bytes / KB)
       else
         result := FormatFloat('#.## bytes', bytes) ;
   end;
 Except
  Result := LanguageCache.Lines[124];
 end;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
 ExitString: string;
begin
  if FClosingTab then
    CanClose := False
  else
   if SystemShuttingDown then
    begin
      StopSessionAndTerminate;
      CanClose := FCanClose;
    end
   else
   begin
    if ClosingDevTools = True then
     begin
      CanClose := false;
     end
    else
     begin
      if (AeroTabs.Tabs.Count > 1) then
       begin
        CreateGlassBckgForm(false);
        begin
         ExitString := LanguageCache.Lines[125] + ' ' + IntToStr(AeroTabs.Tabs.Count) + ' '+ LanguageCache.Lines[126];
         if FullScreen = true then
          FullScreen1.Click;
         AdvTaskDialogEx1.Content := LanguageCache.Lines[128];
         AdvTaskDialogEx1.Instruction := ExitString;
         AdvTaskDialogEx1.Title := 'Web Explorer ™';
         if ClearCache = true then
          begin
           AdvTaskDialogEx1.FooterIcon := tfiInformation;
           AdvTaskDialogEx1.Footer := LanguageCache.Lines[129];
          end
         else
          begin
           AdvTaskDialogEx1.FooterIcon := tfiBlank;
           AdvTaskDialogEx1.Footer := '';
          end;
         if privatemode = true then
          begin
           if AdvTaskDialogEx1.CustomButtons.Count = 2 then
            AdvTaskDialogEx1.CustomButtons.Delete(1);
           AdvTaskDialogEx1.ExpandedText := '';
           AdvTaskDialogEx1.Content := '';
          end;
         if Auto_Kill.Enabled = false then
          AdvTaskDialogEx1.Execute;
        end;
        CloseGlassBckgForm;
       end
      else
       begin
        if (FClosing = false) then
         begin
          StopSessionAndTerminate;
          CanClose := FCanClose;
         end;
       end;
     CanClose := false;
    {if not(FClosing) then
     begin
      FClosing := True;
      Visible  := False;
      CloseAllBrowsers;
     end;}
     end;
   end;

end;

procedure TMainForm.clearnavigationdata;
var
 indexfolder, index4: integer;
begin

 //$REVIEW_THIS
 {ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + '.\WebExplorerNotification.exe'), '-Intclsh', nil,SW_SHOWNORMAL);
 try
  try
    LinkCenter.FolderPages.Root := 'c:\';
   finally
    LinkCenter.FolderPages.Root := MainForm.Profile_Pach + '\History';
   end;
   for indexfolder := 0 to LinkCenter.FolderPages.Items.Count - 1 do
    begin
     try
      Deletefiles(Pchar(ExtractFileName(ExcludeTrailingPathDelimiter(LinkCenter.FolderPages.Folders[indexfolder].PathName))),'*.ini');
     finally
      DeleteDir(Self.Handle, Pchar(ExtractFileName(ExcludeTrailingPathDelimiter(LinkCenter.FolderPages.Folders[indexfolder].PathName))));
     end;
    end;
  cachedata.Clear;
  cachedata.Lines.SaveToFile(Profile_Pach + '\History\Url.ini');
  cachedata.Lines.SaveToFile(Profile_Pach + '\History\UrlName.ini');
  URLs.Items.Clear;
  Sleep(1800);
 finally

  GetHistotyUrlsList;
  ShellExecute(Application.Handle, 'open', 'taskkill.exe', '/F /IM WebExplorerNotification.exe', nil, SW_HIDE);
 end;}
 StopSessionAndTerminate;
end;

procedure TMainForm.ClearOnlyHis;
var
 indexfolder, index4: integer;
 TempChromium: TChromium;
begin
 ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + '.\WebExplorerNotification.exe'), '-Intclsh', nil,SW_SHOWNORMAL);
 try
  try
    LinkCenter.FolderPages.Root := 'c:\';
   finally
    LinkCenter.FolderPages.Root := MainForm.Profile_Pach + '\History';
   end;
  DeleteDir(Self.Handle, Pchar(Profile_Pach + '\History'));
  CreateDir(Pchar(Profile_Pach + '\History'));
  cachedata.Clear;
  cachedata.Lines.SaveToFile(Profile_Pach + '\History\Url.ini');
  cachedata.Lines.SaveToFile(Profile_Pach + '\History\UrlName.ini');
  Urls.Clear;
  for index4 := 0 to AeroTabs.Tabs.Count - 1 do
    begin
     URLs.Items.Clear;
     if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
      URLs.EditText :=  TempChromium.Browser.MainFrame.Url;
    end;
  Sleep(1800);
 finally
  GetHistotyUrlsList;
  ShellExecute(Application.Handle, 'open', 'taskkill.exe', '/F /IM WebExplorerNotification.exe', nil, SW_HIDE);
 end;
end;

procedure TMainForm.CloseAllBrowsers;
var
  i, j, k : integer;
  TempComponent: TComponent;
  TempSheet: TTabSheet;
  TempCtnue: boolean;
begin
  k := pred(pcMain.PageCount);

  while (k >= 0) do
    begin
      TempSheet := pcMain.Pages[k];
      TempCtnue := True;
      i := 0;
      j := TempSheet.ComponentCount;

      while (i < j) and TempCtnue do
        begin
          TempComponent := TempSheet.Components[i];

          if (TempComponent <> nil) and (TempComponent is TChromium) then
            begin
              TChromium(TempComponent).CloseBrowser(True);
              TempCtnue := False;
            end
           else
            inc(i);
        end;

      dec(k);
    end;
end;

procedure TMainForm.CloseDevToolsTimerTimer(Sender: TObject);
begin
 CloseDevToolsTimer.Enabled := false;
 ClosingDevTools := false;
end;

procedure TMainForm.ClosedPages1Click(Sender: TObject);
begin
 Trash_bt.Click;
end;

procedure TMainForm.CloseFreeTab(TabIndex: integer);
var
 IndexZero, IndexCount: integer;
 TempComponent : TComponent;
 TempSheet : TTabSheet;
 TempCtnue : boolean;
begin
 TabToCloseIndex := TabIndex;
 try
  begin
   TempSheet := PcMain.Pages[TabIndex];
   TempCtnue := True;
   IndexZero := 0;
   IndexCount := TempSheet.ComponentCount;
   while (IndexZero < IndexCount) and TempCtnue do
    begin
     TempComponent := TempSheet.Components[IndexZero];
     if (TempComponent <> nil) and (TempComponent is TChromium) then
      begin
       TChromium(TempComponent).CloseBrowser(True);
       TempCtnue := False;
      end
     else if (TempComponent <> nil) and (TempComponent is TCEFWindowParent) then
      begin
       TCEFWindowParent(TempComponent).Free;
      end
     else
      inc(IndexZero);
    end;
  end;
 finally
 end;
 PreTabActiveState := true;
 CloseTabTimer.Enabled := true;
end;

procedure TMainForm.CloseGlassBckgForm;
var
  h: THandle;
begin
  while (True) do
  begin
    h := FindWindow(nil, PChar('!@WEBEXPLORERGLASSFRAME@!'));

    if (h <> 0) then
    begin
      PostMessage(h, WM_CLOSE, 0, 0);
      Break;
    end;

    if (h = 0) then
      Break;
  end;
end;

procedure TMainForm.CloseMenuHubTimerTimer(Sender: TObject);
begin
 CloseMenuHubTimer.Enabled := false;
 ShowMenuHub(false);
end;

procedure TMainForm.CloseTab1Click(Sender: TObject);
begin
 ACloseTab.Execute;
end;

procedure TMainForm.CloseTabExecute(Sender: TObject);
var
 TempChromium: TChromium;
 TempURL, TempName: String;
begin
  TabToCloseIndex := pcMain.ActivePageIndex;
  if AeroTabs.Tabs.Count = 1 then
   begin
    StopSessionAndTerminate;
    if ClearCache = true then
     begin
      //$REVIEW_THIS
      {cachedata.Lines.SaveToFile(Pchar(Profile_Pach + '\Cache\DeleteCache'));
      if ClearAllCache = true then
       ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + '.\WebExplorerNotification.exe'), '-clshAll', nil,SW_SHOWNORMAL)
      else
       ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + '.\WebExplorerNotification.exe'), '-cloch', nil,SW_SHOWNORMAL);}
     end;
   end
  else
   begin

    if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
     begin
     if TempURL = '' then
      begin
       TempURL := TempChromium.Browser.MainFrame.Url;
       TempName := AeroTabs.Tabs[AeroTabs.ActiveTabIndex].Caption;
      end;
      if TempChromium.IsLoading then
       begin

        TempChromium.LoadURL('about:blank');
        TempChromium.StopLoad;
        AutoCloseTimer.Enabled := true;
       end
      else
       begin

        if (TempURL <> 'about:blank') and (TempURL <> Trim('webexplorer://speeddial')) and (not IsSystemPage(TempURL)) then
         begin
          if (TempURL <> 'webexplorer://speeddial') or (not IsSystemPage(TempURL)) or (trim (TempName) <> '') or (TempURL <> '') then
            begin
             PageTrash.AddPage(TempName, TempURL);
             PageTrash.AddFavIcon(AeroTabs.ActiveTabIndex);
            end;
           TempURL := '';
           TempName := '';
         end;
        AeroTabs.Enabled := false;
        TypeCloseReturnTab := false;
        CloseFreeTab(pcMain.ActivePageIndex);
        RefreshFavIconCurrent.Enabled := true;

       end;
     end;

    
   end;
end;

procedure TMainForm.CloseTabTimerTimer(Sender: TObject);
begin
 TTimer(Sender).Enabled := false;
 if PreTabActiveState then
  begin
   FavIcons.Delete(TabToCloseIndex);
   TabCRMHandle.Items.Delete(TabToCloseIndex);
   if CloseCurrentTab and not AutoCloseTab then
    begin
     pcMain.ActivePageIndex := AeroTabs.ActiveTabIndex;
    end
   else
    begin
     AutoCloseTab := false;
     if not TypeCloseReturnTab then
      AeroTabs.Tabs.DeleteTab(TabToCloseIndex, true)
     else
      TypeCloseReturnTab := false;
    end;
   
   PreTabActiveState := false;
  end;
 AeroTabs.Enabled := true;
end;

function TMainForm.ColorToHtml(DColor: TColor): string;
var
 tmpRGB : TColorRef;
begin
 tmpRGB := ColorToRGB(DColor) ;
 Result:=Format('#%.2x%.2x%.2x',
 [GetRValue(tmpRGB),
 GetGValue(tmpRGB),
 GetBValue(tmpRGB)]);
end;

function TMainForm.ConvertToURI(text: String): String;
begin
 if (text <> '') then
  text := StringReplace(text, '\', '/', [rfreplaceall]);
 text := 'file://' + text;
 text := TIdURI.URLEncode(text);
 Insert('/', text, 7);
 Insert(':', text, 10);
 Result := text;
end;

procedure TMainForm.CreateGlassBckgForm(opentype: Boolean);
begin
 with TBackgroundGlassFrm.Create(nil) do
  begin
    Left := MainForm.Left;
    Top := MainForm.Top;
    Height := MainForm.Height;
    Width := MainForm.Width;
    CallFromMenu := opentype;
    show;
  end;
end;

procedure TMainForm.CreateProcessWeService(const FileName: String);
var
 ProcInfo: TProcessInformation;
 StartInfo: TStartupInfo;
begin
 try
  FillMemory(@StartInfo, sizeof(StartInfo), 0);
  StartInfo.cb := sizeof(StartInfo);
  CreateProcess(nil,PChar(WideString(FileName)),nil, Nil, False,NORMAL_PRIORITY_CLASS,nil, nil,StartInfo,ProcInfo);
 finally
  WebExplorerServicePID := IntToStr(ProcInfo.dwProcessId);
  CloseHandle(ProcInfo.hProcess);
  CloseHandle(ProcInfo.hThread);
 end;
end;

function TMainForm.CutSpecialChar(text: String): String;
begin
 if (text <> '') then
  text := StringReplace(text, '/', '_', [rfreplaceall]);
 if (text <> '') then
  text := StringReplace(text, '\', '_', [rfreplaceall]);
 if (text <> '') then
  text := StringReplace(text, ':', '_', [rfreplaceall]);
 if (text <> '') then
  text := StringReplace(text, '?', '_', [rfreplaceall]);
 if (text <> '') then
  text := StringReplace(text, '*', '_', [rfreplaceall]);
 if (text <> '') then
  text := StringReplace(text, '"', '_', [rfreplaceall]);
 if (text <> '') then
  text := StringReplace(text, '|', '_', [rfreplaceall]);
 if (text <> '') then
  text := StringReplace(text, '>', '_', [rfreplaceall]);
 if (text <> '') then
  text := StringReplace(text, '<', '_', [rfreplaceall]);
 if (text = ' ') or (text = '  ') or (text = '   ') or (text = '    ') or (text = '     ') then
  text := LanguageCache.Lines[115];
 if (text = '') then
  text := LanguageCache.Lines[116];
 Result := text;
end;

procedure TMainForm.DeleteDir(hHandle: THandle; const sPath: String);
var
 OpStruc: TSHFileOpStruct;
 FromBuffer, ToBuffer: Array[0..128] of Char;
begin
 fillChar( OpStruc, Sizeof(OpStruc), 0 );
 FillChar( FromBuffer, Sizeof(FromBuffer), 0 );
 FillChar( ToBuffer, Sizeof(ToBuffer), 0 );
 StrPCopy( FromBuffer, sPath);
 With OpStruc Do
  Begin
   Wnd:= hHandle;
   wFunc:=FO_DELETE;
   pFrom:= @FromBuffer;
   pTo:= @ToBuffer;
   fFlags:= FOF_SILENT or FOF_NOCONFIRMATION;
   fAnyOperationsAborted:=False;
   hNameMappings:=nil;
  End;
 ShFileOperation(OpStruc);
end;

procedure TMainForm.Deletefiles(APath, AFileSpec: string);
var
  lSearchRec:TSearchRec;
  lFind:integer;
  lPath:string;
begin
  lPath := IncludeTrailingPathDelimiter(APath);
  lFind := FindFirst(lPath+AFileSpec,faAnyFile,lSearchRec);
  while lFind = 0 do
  begin
    DeleteFile(lPath+lSearchRec.Name);
    lFind := System.SysUtils.FindNext(lSearchRec);
  end;
  FindClose(lSearchRec);
end;

procedure TMainForm.DeveloperTools1Click(Sender: TObject);
var
 TempChromium: TChromium;
begin
 try
  if SearchChromium(pcMain.ActivePageIndex, TempChromium) then
   begin
    OpenDeveloperTools1.Checked := TPanel(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevPanel', [rfReplaceAll]) )).Visible;
   end;
 Except
 end;

end;

procedure TMainForm.DownloadImage(chimgurl, MainURL: string);
begin
 with TUserLibrary.Create(nil) do
  try
   RegisterDownloadFile(MainForm.ExtractUrlFileName(chimgurl), AppMenu.opt_downloaddir.Text + MainForm.ExtractUrlFileName(chimgurl), MainForm.FormatByteSize(+abs(MainForm.GetRemoteFileSize(chimgurl))) + ' - ' + MainForm.GetDomain(MainURL) + ' - (' + FormatDateTime('dd/mm - hh:nn', now) + ')');
  finally
   Free;
  end;
end;

procedure TMainForm.Downloads1Click(Sender: TObject);
begin
 OpenForm('UserLibrary', '', '', False, 6, false);
end;

procedure TMainForm.DownloadTaskDialogEx1DialogButtonClick(Sender: TObject;
  ButtonID: Integer);
begin
 if ButtonID = 101 then
  OtherDownloadFolder := true;
 if ButtonID = 102 then
  CancelDownload := True;
end;

procedure TMainForm.DropDown_BTClick(Sender: TObject);
begin
 URLs.DropDownWidth := URLsbar.Width;
 if URLs.Showing = true then
  begin
   URLs.Visible := true;
   URLs.SendToBack;
   URLs.ShowDropDown;
  end
 else
  begin
   URLs.HideDropDown();
   URLs.Visible := false;
  end;
end;

procedure TMainForm.EditAdblockaddresslist1Click(Sender: TObject);
begin
 OpenForm('SecurityPermissionHub', '', '', False, 0, false);
end;

procedure TMainForm.EnableAeroTheme;
var
  TempAerocolor: TColor;
begin
 if WindowsUI = 1 then
  begin
   if not privatemode then
    AeroTabs.LookAndFeel.Tabs.Active.Style.StartColor := Brighten(Brighten(GetAeroColor))
   else
    AeroTabs.LookAndFeel.Tabs.Active.Style.StartColor := $00797979;

   TempAerocolor := MainForm.Brighten(MainForm.GetAeroColor);
   LinkCenter_BT.Appearance.Color := TempAerocolor;
   LinkCenter_BT.Appearance.ColorMirror := TempAerocolor;
   Home_BT.Appearance.Color := TempAerocolor;
   Home_BT.Appearance.ColorMirror := TempAerocolor;
   Trash_bt.Appearance.Color := TempAerocolor;
   Trash_bt.Appearance.ColorMirror := TempAerocolor;
   AeroTabs.LookAndFeel.AddButton.PlusSign.Hot.OutlineColor := $00585858;// TempAerocolor;
   AeroTabs.LookAndFeel.AddButton.PlusSign.Hot.StartColor := $00585858; //TempAerocolor;
   AeroTabs.LookAndFeel.AddButton.PlusSign.Hot.StopColor := $00585858; //TempAerocolor;

   TempAerocolor := MainForm.BrightenLight(MainForm.GetAeroColor);
   LinkCenter_BT.Appearance.ColorHot := TempAerocolor;
   LinkCenter_BT.Appearance.ColorMirrorHot := TempAerocolor;
   Home_BT.Appearance.ColorHot := TempAerocolor;
   Home_BT.Appearance.ColorMirrorHot := TempAerocolor;
   Trash_bt.Appearance.ColorHot := TempAerocolor;
   Trash_bt.Appearance.ColorMirrorHot := TempAerocolor;

   TempAerocolor := MainForm.BrightenLightWinRT(MainForm.GetAeroColor);
   LinkCenter_BT.Appearance.ColorDown := TempAerocolor;
   LinkCenter_BT.Appearance.ColorMirrorDown := TempAerocolor;
   Home_BT.Appearance.ColorDown := TempAerocolor;
   Home_BT.Appearance.ColorMirrorDown := TempAerocolor;
   Trash_bt.Appearance.ColorDown := TempAerocolor;
   Trash_bt.Appearance.ColorMirrorDown := TempAerocolor;

   AdvFocusHelper1.Color := BrightenLightWinRT(TempAerocolor);
   ShareCenterPopupFunction.ButtonHoverColor := AeroTabs.LookAndFeel.Tabs.Active.Style.StartColor;
   ShareCenterPopupFunction.ButtonDownColor := TempAerocolor;
   InstantSearchPopupFunction.ButtonHoverColor := AeroTabs.LookAndFeel.Tabs.Active.Style.StartColor;
   InstantSearchPopupFunction.ButtonDownColor := TempAerocolor;

   {HomePanel_bt1.Appearance := Home_BT.Appearance;
   HomePanel_bt2.Appearance := Home_BT.Appearance;}

   //AeroTabs.Options.Display.AddButton.Offsets.Vertical := 12;
   {BrowserFrame.ToolBar1.ColorMirrorTo := GetAeroColor;
   BrowserFrame.BackBT.Appearance.ColorMirrorTo := GetAeroColor;
   BrowserFrame.ForwardBT.Appearance.ColorMirrorTo := GetAeroColor;
   BrowserFrame.Tools_bt.Appearance.ColorMirrorTo := GetAeroColor;}
  end;
end;

procedure TMainForm.EnableJumpTask;
begin
 try
  JumpLists1.Tasks.Clear;
  JumpLists1.Tasks.AddShellLink(LanguageCache.Lines[118], '', Application.ExeName, 0);
  JumpLists1.Tasks.AddShellLink(LanguageCache.Lines[119], '-privatemode', Application.ExeName, 4);
  JumpLists1.Tasks.AddShellLink(LanguageCache.Lines[120], '-safemode', Application.ExeName, 3);
  JumpLists1.Tasks.AddShellLink(LanguageCache.Lines[121], '-widgets', Application.ExeName, 2);
 finally
  JumpLists1.Commit;
 end;
end;

procedure TMainForm.EnableLanguage(LanID: Integer);
begin
 case LanID of
  0: LanguageCache.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + '.\Resources\Language Files\en.wlf');
  1: LanguageCache.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + '.\Resources\Language Files\br.wlf');
  2: LanguageCache.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + '.\Resources\Language Files\es.wlf');
  3: LanguageCache.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + '.\Resources\Language Files\ca.wlf');
  4: LanguageCache.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) + '.\Resources\Language Files\it.wlf');
 end;
 if (Win32MajorVersion = 6) and (Win32MinorVersion > 0) then
   EnableJumpTask;
  if (Win32MajorVersion = 10) and (Win32MinorVersion >= 0) then
   EnableJumpTask;


 AppMenu.GetLanguage;
 PageTrash.GetLanguage;

 Home_BT.OfficeHint.Notes[0] := LanguageCache.Lines[3];
 Home_BT.OfficeHint.Title := LanguageCache.Lines[4];
 LinkCenter_BT.OfficeHint.Notes[0] := LanguageCache.Lines[5];
 LinkCenter_BT.OfficeHint.Title := LanguageCache.Lines[6];
 SpeedDial_BT.OfficeHint.Notes[0] := LanguageCache.Lines[7];
 SpeedDial_BT.OfficeHint.Title := LanguageCache.Lines[8];
 download_bt.OfficeHint.Title := LanguageCache.Lines[9];
 SB_C2.Caption := LanguageCache.Lines[11];
 SB_C3.Caption := LanguageCache.Lines[12];
 SB_C4.Caption := LanguageCache.Lines[13];
 AdvTaskDialogEx1.ExpandedText := LanguageCache.Lines[14];
 AdvTaskDialogEx1.CustomButtons[0] := LanguageCache.Lines[15];
 AdvTaskDialogEx1.CustomButtons[1] := LanguageCache.Lines[16];
 NewWindow1.Caption := LanguageCache.Lines[20];
 OpenFile1.Caption := LanguageCache.Lines[21];
 Save1.Caption := LanguageCache.Lines[22];
 SaveText1.Caption := LanguageCache.Lines[23];
 SaveShortcutonDesktop1.Caption := LanguageCache.Lines[24];
 FullScreen1.Caption := LanguageCache.Lines[25];
 NewTab1.Caption := LanguageCache.Lines[26];
 CloseTab1.Caption := LanguageCache.Lines[27];
 Find1.Caption := LanguageCache.Lines[28];
 Zoom1.Caption := LanguageCache.Lines[29];
 ZoomIn1.Caption := LanguageCache.Lines[30];
 ZommOut1.Caption := LanguageCache.Lines[31];
 ZoomReset1.Caption := LanguageCache.Lines[32];
 AddtoBookmarks1.Caption := LanguageCache.Lines[33];
 AddtoSpeedDial1.Caption := LanguageCache.Lines[34];
 ManageBookmarks1.Caption := LanguageCache.Lines[35];
 Downloads1.Caption := LanguageCache.Lines[36];
 ClosedPages1.Caption := LanguageCache.Lines[37];
 Print1.Caption := LanguageCache.Lines[38];
 PrintPreview1.Caption := LanguageCache.Lines[39];
 Refresh1.Caption := LanguageCache.Lines[40];
 Stop1.Caption := LanguageCache.Lines[41];
 Back1.Caption := LanguageCache.Lines[42];
 Forward1.Caption := LanguageCache.Lines[43];
 ShowDeveloperToolsConsole1.Caption := LanguageCache.Lines[44];
 WebExplorerNotePad1.Caption := LanguageCache.Lines[45];
 Exit1.Caption := LanguageCache.Lines[46];
 ViewinReaderMode1.Caption := LanguageCache.Lines[368];
 RefreshIgnoreCache1.Caption := LanguageCache.Lines[369];
 InstantSearchPopupFunction.Buttons[0].Caption := LanguageCache.Lines[17];
 InstantSearchPopupFunction.Buttons[1].Caption := LanguageCache.Lines[40];

 SearchOptionCaption.Caption := MainForm.LanguageCache.Lines[87];
 NightMode1.Caption := MainForm.LanguageCache.Lines[521];

 URLsBar.EmptyText := MainForm.LanguageCache.Lines[47];

 URLs.DropDownFooter.Buttons[0].Caption := MainForm.LanguageCache.Lines[48];
 URLs.DropDownFooter.Buttons[1].Caption := MainForm.LanguageCache.Lines[49];

 Go_bt.Hint := MainForm.LanguageCache.Lines[51];
 Refresh_bt.Hint := MainForm.LanguageCache.Lines[52];
 Stop_bt.Hint := MainForm.LanguageCache.Lines[53];

 AdBlock_BT.OfficeHint.Notes[0] := MainForm.LanguageCache.Lines[403];
 AllowAdBlock_BT.OfficeHint.Notes[0] := MainForm.LanguageCache.Lines[508];
 DropDown_BT.Hint := MainForm.LanguageCache.Lines[55];

 FindLabel.Caption := MainForm.LanguageCache.Lines[28] + ':';
 FindBT1.Caption := MainForm.LanguageCache.Lines[58];
 FindBT2.Caption := MainForm.LanguageCache.Lines[59];
 FindCheckBox1.Caption := MainForm.LanguageCache.Lines[60];


 OpenLink1.Caption := MainForm.LanguageCache.Lines[62];
 OpenLinkinNewTab1.Caption := MainForm.LanguageCache.Lines[63];
 OpeninNewWindow2.Caption := MainForm.LanguageCache.Lines[64];
 OpenNewTabinBackground1.Caption := MainForm.LanguageCache.Lines[65];
 OpenPrivateMode1.Caption := MainForm.LanguageCache.Lines[143];
 Abrir1.Caption := MainForm.LanguageCache.Lines[276];
 copylink1.Caption := MainForm.LanguageCache.Lines[495];
 Back2.Caption := MainForm.Back1.Caption;
 Forward2.Caption := MainForm.Forward1.Caption;
 Refresh2.Caption := MainForm.Refresh1.Caption;
 Stop2.Caption := MainForm.Stop1.Caption;
 AddtoBookmarks2.Caption := MainForm.AddtoBookmarks1.Caption;
 AddtoSpeedDial2.Caption := MainForm.AddtoSpeedDial1.Caption;
 Print2.Caption := MainForm.Print1.Caption;
 Share1.Caption := MainForm.LanguageCache.Lines[66];
 SelectAll1.Caption := MainForm.LanguageCache.Lines[70];
 ViewSorce1.Caption := MainForm.LanguageCache.Lines[72];
 SearchContent1.Caption := MainForm.LanguageCache.Lines[10];
 ViewinReadeMode2.Caption := MainForm.LanguageCache.Lines[368];
 SaveImage1.Caption := MainForm.LanguageCache.Lines[71];
 OpenImage1.Caption := MainForm.LanguageCache.Lines[131];

 NewWindow1.Caption := MainForm.NewWindow1.Caption;
 OpenFile2.Caption := MainForm.OpenFile1.Caption;
 Save1.Caption := MainForm.Save1.Caption;
 SaveText1.Caption := MainForm.SaveText1.Caption;
 SaveShortcutonDesktop1.Caption := MainForm.SaveShortcutonDesktop1.Caption;
 FullScreen1.Caption := MainForm.FullScreen1.Caption;
 NewTab1.Caption := MainForm.NewTab1.Caption;
 CloseTab1.Caption := MainForm.CloseTab1.Caption;
 OpenSpeedDial1.Caption := MainForm.LanguageCache.Lines[73];
 Zoom1.Caption := MainForm.Zoom1.Caption;
 ZoomIn1.Caption :=  MainForm.ZoomIn1.Caption;
 ZoomOut1.Caption := MainForm.ZommOut1.Caption;
 ZommReset1.Caption := MainForm.ZoomReset1.Caption;
 Find1.Caption := MainForm.Find1.Caption;
 AddtoBookmarks1.Caption := MainForm.AddtoBookmarks1.Caption;
 AddtoSpeedDial1.Caption := MainForm.AddtoSpeedDial1.Caption;
 ManageBookmarks1.Caption := MainForm.ManageBookmarks1.Caption;
 Downloads1.Caption := MainForm.Downloads1.Caption;
 OpenWidgets1.Caption := MainForm.LanguageCache.Lines[74];
 Print1.Caption := MainForm.Print1.Caption;
 PrintPreview1.Caption := MainForm.LanguageCache.Lines[75];
 Back1.Caption := MainForm.Back1.Caption;
 Forward1.Caption := MainForm.Forward1.Caption;
 Refresh1.Caption := MainForm.Refresh1.Caption;
 Stop1.Caption := MainForm.Stop1.Caption;
 ActiveProtection1.Caption := MainForm.LanguageCache.Lines[76];
 DeveloperTools1.Caption := MainForm.LanguageCache.Lines[77];
 ActiveNotepad1.Caption := MainForm.WebExplorerNotePad1.Caption;
 OpenDeveloperTools1.Caption := MainForm.ShowDeveloperToolsConsole1.Caption;
 Exit1.Caption := MainForm.Exit1.Caption;
 RefreshIgnoreCache1.Caption := MainForm.LanguageCache.Lines[369];
 DownloadTaskDialogEx1.Content := MainForm.LanguageCache.Lines[88];
 DownloadTaskDialogEx1.CustomButtons[0] := MainForm.LanguageCache.Lines[89];
 DownloadTaskDialogEx1.CustomButtons[1] := MainForm.LanguageCache.Lines[446];
 DownloadTaskDialogEx1.CustomButtons[2] := MainForm.LanguageCache.Lines[90];
 DownloadTaskDialogEx1.Instruction := MainForm.LanguageCache.Lines[91];
 DownloadProgressDialog.Text := MainForm.LanguageCache.Lines[505];

 SecurityPrivacy1.Caption := MainForm.LanguageCache.Lines[421];
 EditAdblockaddresslist1.Caption := MainForm.LanguageCache.Lines[424];
 rustedpagesforopenpopups1.Caption := MainForm.LanguageCache.Lines[423];
 if btnzone.OfficeHint.Notes.Text.IsEmpty then
  btnzone.OfficeHint.Notes.Add(MainForm.LanguageCache.Lines[457]);
 btnzone.OfficeHint.Title := MainForm.LanguageCache.Lines[458];
 P1.Caption := MainForm.LanguageCache.Lines[504];
 NightMode1.Caption := MainForm.LanguageCache.Lines[521];

 ShareCenterPopupFunction.Buttons[0].Caption := LanguageCache.Lines[17];
 ShareCenterPopupFunction.Buttons[1].Caption := LanguageCache.Lines[40];
 ShareCenterPopupFunction.Buttons[2].Caption := LanguageCache.Lines[42];

end;

procedure TMainForm.EnableSearchBarSettings;
begin
 ///////////////////lembrar de mudar no FrmInstantSearch se alguma url for alterada.
 try
  begin
   case SB_C1.ItemIndex of
    0: begin
        SearchNameProvider := 'Google Search';
        SearchaddressProvider := 'https://www.google.com/search?q=';
       end;
    1: begin
        SearchNameProvider := 'Bing Search';
        SearchaddressProvider := 'http://www.bing.com/search?q=';
       end;
    2: begin
        SearchNameProvider := 'Yahoo Search';
        SearchaddressProvider := 'http://search.yahoo.com/search?p=';
       end;
    3: begin
        SearchNameProvider := 'YouTube Search';
        SearchaddressProvider := 'http://www.youtube.com/results?search_query=';
       end;
    4: begin
        SearchNameProvider := 'Wikipedia Search';
        SearchaddressProvider := 'http://wikipedia.org/wiki/';
       end;
    5: begin
        SearchNameProvider := 'eBay Search';
        SearchaddressProvider := 'https://www.ebay.com/sch/i.html?_nkw=';
       end;
    6: begin
        SearchNameProvider := 'Dailymotion Search';
        SearchaddressProvider := 'https://www.dailymotion.com/search/';
       end;
    7: begin
        SearchNameProvider := 'Vimeo Search';
        SearchaddressProvider := 'http://vimeo.com/search?q=';
       end;
    8: begin
        SearchNameProvider := SB_C5.text;
        SearchaddressProvider := SB_C6.text;
        if (trim(SB_C5.text) = '') or (trim(SB_C6.text) = '') then
         begin
          MessageBox(Application.Handle, Pchar(LanguageCache.Lines[122]), PChar(LanguageCache.Lines[123] + ' - Web Explorer'), MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
          SB_C1.itemindex := 0;
          EnableSearchBarSettings;
         end;
       end;
   end;
   SearchBar.TextHint := SearchNameProvider;
   SaveConfig;
  end;
 Except
 end;
end;

procedure TMainForm.EnableTouchForm;
begin
 AeroTabs.Options.Display.AddButton.Width := 32;
 AeroTabs.Options.Display.CloseButton.Width := 17;
 AeroTabs.Options.Display.CloseButton.Height := 17;
 AeroTabs.Options.Display.CloseButton.Offsets.Vertical := 6;
 AeroTabs.Options.Display.AddButton.Offsets.Vertical := 6;
end;

function TMainForm.EnCrypt(sOpcao: Boolean; sDados: String): String;
var
  I : Integer;
  Key : Word;
  sRes, sHex: String;
const
  C1    = 93598;
  C2    = 24459;
  Chave = 19854;
function HexToString(H: String): String;
var I: Integer;
begin
  Result:= '';
  for I := 1 to length (H) div 2 do
    Result:= Result+Char(StrToInt('$'+Copy(H,(I-1)*2+1,2)));
end;
begin
  if sOpcao = false then
  begin
   sHex := HexToString(sDados);
   sDados := sHex;
  end;
  Key := Chave;
  for I := 1 to length(sDados) do
    begin
      sRes := sRes + Char(Byte(sDados[I]) xor (Key shr 8));
      if sOpcao = true then
        Key := (Byte(sRes[I]) + Chave) * C1 + C2;
      if sOpcao = false then
        Key := (Byte(sDados[I]) + Chave) * C1 + C2;
    end;
  if sOpcao = true then
  begin
    for I := 1 to length(sRes) do
      sHex := sHex + IntToHex(Ord(sRes[i]), 2);
      Result := sHex;
  end
  else
    Result := sRes;
end;

procedure TMainForm.EngineEndevor7Timer(Sender: TObject);
var
  TempChromium : TChromium;
begin
 //if not CloseTabTimer.Enabled then
  begin

   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
    begin
     try
      begin
       if GetTabIndexByChromoium(TempChromium.Name) = AeroTabs.ActiveTabIndex then
        begin
          BackBT.Enabled := TempChromium.browser.CanGoBack;
          ForwardBT.Enabled := TempChromium.browser.CanGoForward;
        end;
      end;
     Except
     end;
    end;

  end;
end;

function TMainForm.ErrorCertificateMsg(errorcode: string): String;
var
 ConvertedCodeError: Integer;
begin
 try
  ConvertedCodeError := StrToInt(errorcode);
 Except
  ConvertedCodeError := 0;
 end;
 if ConvertedCodeError = 0  then
  Result := MainForm.LanguageCache.Lines[542]
 else if ConvertedCodeError = 1  then
  Result := MainForm.LanguageCache.Lines[543]
 else if ConvertedCodeError = 2  then
  Result := MainForm.LanguageCache.Lines[544]
 else if ConvertedCodeError = 4  then
  Result := MainForm.LanguageCache.Lines[545]
 else if ConvertedCodeError = 64  then
  Result := MainForm.LanguageCache.Lines[546]
 else
  Result := MainForm.LanguageCache.Lines[547];
end;

procedure TMainForm.ExecuteKeyTypeTimer(Sender: TObject);
begin
 ExecuteKeyType.Enabled := false;
 if KeyTypeExecute = 't' then
  NewTab.Execute
 else if KeyTypeExecute = 'tr' then
  Trash_bt.Click
 else if KeyTypeExecute = 'd' then
  AddtoBookmarks1.Click
 else if KeyTypeExecute = 'pr' then
  OpenPrivateMode1.Click
 else if KeyTypeExecute = 'w' then
  ACloseTab.Execute
 else if KeyTypeExecute = 's' then
  OpenSpeedDial1.Click
 else if KeyTypeExecute = 'j' then
  Downloads1.Click
 else if KeyTypeExecute = 'k' then
  OpenWidgets1.Click
 else if KeyTypeExecute = 'r' then
  ViewinReaderMode1.Click
 else if KeyTypeExecute = 'p' then
  Print1.click
 else if KeyTypeExecute = 'n' then
  NightMode1.Click
 else if KeyTypeExecute = 'o' then
  OpenFile1.Click;
end;

function TMainForm.ExtractUrlFileName(const AUrl: string): string;
var
  i: Integer;
begin
  i := LastDelimiter('/', AUrl);
  Result := Copy(AUrl, i + 1, Length(AUrl) - (i));
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  UserAuthenticate := false;
  FirstOpenWindow := true;
  MainFormLoadingPanel.Visible := true;
  MainFormLoadingPanel.Align := alNone;
  MainFormLoadingPanel.Top := BottomLinePanel1.Top + 10;
  MainFormLoadingPanel.Left := 0;
  MainFormLoadingPanel.Width := Screen.Width;
  MainFormLoadingPanel.Height := Screen.Height - BottomLinePanel1.Top -10;
  MainFormLoadingPanel.BringToFront;
  SystemShuttingDown := false;
  {$IFDEF DEBUG}
  TabCRMHandle.Visible := true;
  TabCRMHandle.Left := 10;
  {$ELSE}
  SetErrorMode(SEM_FAILCRITICALERRORS);
  SetErrorMode(SEM_NOOPENFILEERRORBOX);
  SetErrorMode(SEM_NOGPFAULTERRORBOX);
  SetErrorMode(SEM_FAILCRITICALERRORS);
  {$ENDIF}
  if Win32MajorVersion < 10 then
   AdvFocusHelper1.Active := false;
  BrowserTabCount := -1;
  LegacyWindowsTaskbar := false;
  if (Win32MajorVersion = 5) and (Win32MinorVersion <= 2) or (Win32MajorVersion = 6) and (Win32MinorVersion = 0) then
  begin
   //Taskbar1.Free; //Desativado enquanto o download for externo
   LegacyWindowsTaskbar := true;
  end;
  WindowsActionCenter := true;
  if (Win32MajorVersion <= 6) and (Win32MinorVersion <= 2) then
  begin
   WindowsActionCenter := false;
  end;
  ClearAllCache := false;
  if IsLowerCpu = false then
    HightCPU := true
  else
    HightCPU := false;
  //trocar isso somente quando tiver alterações no html do SPD!
  WESPDVersion := 'WebExplorerSPD/14.5.0_Version_File';
  GetPlataform;
  check_profile;
  OpenConfig;
  CheckIsTouchPC;
  OpenServices;
  FClosingTab := False;
  FCanClose := False;
  FClosing := False;
  RefreshForNewLinkSaved := true;
  CertIssuerOrgNames := TStringList.Create;
  //DebugReportStrings := TStringList.Create;
end;

procedure TMainForm.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
 if not GetKeyState(VK_CONTROL) >= 0 then
  Mousezoom(WheelDelta, true);
end;

procedure TMainForm.FormResize(Sender: TObject);
begin
 AlignAll;
 WindowClient;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  if (GlobalCEFApp <> nil) and GlobalCEFApp.GlobalContextInitialized and not(Toolbar1.Enabled) then
    begin
      Toolbar1.Enabled := True;
      Caption := 'Web Explorer';
      cursor  := crDefault;
      try
        OpenConfig;
        begin
         try
          GetHistotyUrlsList;
         Except
         end;
         StopSessionFile := false;
         MainForm.UserAgent := GlobalCEFApp.UserAgent;
         if (ParamStr(1) <> '-widgets') and (ParamStr(1) <> '-library') and (ParamStr(1) <> '-notification') and (ParamStr(1) <> '-popup') and (ParamStr(1) <> '-restore') then
          begin
           try
            StoreSession;
           finally
            if AMD64Mode = true then
              begin
                if privatemode = true then
                 CreateProcessWeService('"'+ExtractFilePath(Application.ExeName) + 'WebExplorerService.exe' + '" ' + '-WebExplorerAgent:Call_Rooster ' + InttoStr(GetCurrentProcessId) + ' -privatemode')
                else
                 CreateProcessWeService('"'+ExtractFilePath(Application.ExeName) + 'WebExplorerService.exe' + '" ' + '-WebExplorerAgent:Call_Rooster ' + InttoStr(GetCurrentProcessId));
              end
            else
              begin
                if privatemode = true then
                 CreateProcessWeService('"'+ExtractFilePath(Application.ExeName) + 'WebExplorerService_x86.exe' + '" ' + '-WebExplorerAgent:Call_Rooster ' + InttoStr(GetCurrentProcessId) + ' -privatemode')
                else
                 CreateProcessWeService('"'+ExtractFilePath(Application.ExeName) + 'WebExplorerService_x86.exe' + '" ' + '-WebExplorerAgent:Call_Rooster ' + InttoStr(GetCurrentProcessId));
              end;
           end;
          end;
          if IsTouchPC = true then
            EnableTouchForm;
          if not IsGenericGraphics then
            EnableAeroTheme
          else
           AeroTabs.LookAndFeel.Tabs.Active.Style.StartColor := $00797979;
        end;
      finally
        ShareCenterLoadingPanel.Background := MainFormLoadingPanel.Background;
        if (pcMain.PageCount = 0) then
          NewTab.Execute;
      end;
    end;
end;

procedure TMainForm.Forward1Click(Sender: TObject);
begin
 ForwardBT.Click;
end;

procedure TMainForm.Forward2Click(Sender: TObject);
begin
 ForwardBT.Click;
end;

procedure TMainForm.ForwardBTClick(Sender: TObject);
var
  TempChromium : TChromium;
begin
 try
  if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
   TempChromium.GoForward;
 Except

 end;
end;

procedure TMainForm.ForwardBtnClick(Sender: TObject);
var
  TempChromium: TChromium;
begin
  if SearchChromium(pcMain.TabIndex, TempChromium) then
    TempChromium.GoForward;
end;

procedure TMainForm.FullMode(CmdMode: Boolean);
var
 TempChromium : TChromium;
 MonitorNumberIndex: ShortInt;
begin
 if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
  if CmdMode = true then
  begin
   MainForm.BorderStyle := bsNone;
   ToolBar1.Visible := false;
   ToolBarBackgroundPanel.Visible := ToolBar1.Visible;
   MenuPanel.Visible := ToolBar1.Visible;
   app_panel.Visible := ToolBar1.Visible;
   if Screen.MonitorCount > 1 then
    begin
     MonitorNumberIndex := Screen.MonitorFromWindow(FindWindowExtd(MainForm.Caption)).MonitorNum;
     if MonitorNumberIndex > 0 then
      begin
       with Screen.monitors[MonitorNumberIndex] do
        begin
         MainForm.Top := -2;
         MainForm.Left := 0;
         MainForm.Width := Screen.Monitors[MonitorNumberIndex].Width;
         MainForm.Height := Screen.Monitors[MonitorNumberIndex].Height - 38;
         MainForm.Top := Screen.Monitors[MonitorNumberIndex].top -2;
         MainForm.Left := Screen.Monitors[MonitorNumberIndex].Left;
        end;
      end
     else
      begin
       MainForm.Top := -2;
       MainForm.Left := 0;
       MainForm.Width := Screen.Width;
       MainForm.Height := Screen.Height +2;
      end;
    end
   else
    begin
     MainForm.Top := -2;
     MainForm.Left := 0;
     MainForm.Width := Screen.Width;
     MainForm.Height := Screen.Height +2;
    end;
   PanelTabs.Visible := false;
   MainForm.GlassFrame.Enabled := false;
   AeroTabs.Visible := false;
   ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + '.\WebExplorerNotification.exe'), Pchar('-fullscreen ' + '"' + self.Caption + '"'), nil,SW_SHOWNORMAL);
   FullScreen := true;
  end
 else
  begin
   ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_SHOW);
   MainForm.BorderStyle := bsSizeable;
   PanelTabs.Visible := true;
   MainForm.GlassFrame.Enabled := true;
   AeroTabs.Visible := true;
   ToolBar1.Visible := true;
   MenuPanel.Visible := ToolBar1.Visible;
   app_panel.Visible := ToolBar1.Visible;
   ToolBarBackgroundPanel.Visible := ToolBar1.Visible;
   TempChromium.Browser.MainFrame.ExecuteJavaScript('document.webkitExitFullscreen();', '', 0);
   FullScreen := false;
  end;
 WindowClient;
end;

procedure TMainForm.FullScreen1Click(Sender: TObject);
begin
 if FullScreen = false then
  FullMode(true)
 else
  FullMode(false);
end;

procedure TMainForm.GoInstantSearch(adr: string);
var
 SearchFrame: TInstantSearchFrame;
begin
 try
  SearchFrame := TInstantSearchFrame.Create(InstantSearchPanel);
  SearchFrame.Parent := InstantSearchPanel;
  SearchFrame.Align := alClient;
  SearchFrame.Adr := adr;
 Except
 end;
end;

procedure TMainForm.GoShareCenter(adr: string);
var
 ShareCenterFrm: TShareCenterFrame;
 TempChromium : TChromium;
begin
 try
  ShareCenterFrm := TShareCenterFrame.Create(ShareCenterPanel);
  ShareCenterFrm.Parent := ShareCenterPanel;
  ShareCenterFrm.Align := alClient;
  ShareCenterFrm.Adr := adr;
  if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
   begin
    ShareCenterFrm.CertInfoList.Items := TListBox(pcMain.ActivePage.FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'CertInfo', [rfReplaceAll]) )).Items;
   end;
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

procedure TMainForm.GoTopStatusButton;
begin
 try
 case StrToInt(GetTabValues('TopStatusButton')) of
  1: TopStatusPanel.Width := 16;
  //2: TopStatusPanel.Width := 34;
  2: TopStatusPanel.Width := 40;
  3: TopStatusPanel.Width := 52;
  4: TopStatusPanel.Width := 74;
  5: TopStatusPanel.Width := 92;
 end;
 Except
   TopStatusPanel.Width := 40;
 end;

end;

procedure TMainForm.GoUrl;
var
  TempChromium : TChromium;
begin
 ShowGoBt(false);
 if URLsBar.Text <> 'webexplorer://speeddial' then
  begin
   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
    TempChromium.LoadURL(URLsbar.Text);
   //$REVIEW_THIS
   {if SPD_Visible = true then
    begin
     ShowSPD;
    end;}
  end
 else
  begin
   //$REVIEW_THIS
   //ShowSPD;
  end;
end;

procedure TMainForm.Go_btClick(Sender: TObject);
var
  TempChromium : TChromium;
begin
  if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
   begin
    if URLsBar.Text = 'webexplorer://speeddial' then
     OpenSpeedDial1.Click
    else
     TempChromium.LoadURL(URLsbar.Text);
   end;
  ShowGoBt(false);
end;

procedure TMainForm.HandleKeyDown(const aMsg: TMsg; var aHandled: boolean);
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
    if (KeyComboCTRL) and (TempKeyMsg.CharCode = 83) then //Ctrl+S
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
    if (TempKeyMsg.CharCode = VK_F12) then
     begin
      aHandled := True;
      //ShowDevTools;
     end;
    if (KeyComboCTRL and KeyComboShift) and (TempKeyMsg.CharCode = 84) then //Ctrl+Shift+T
     begin
      aHandled := True;
      //Trash_bt.Click;
     end;
    if (KeyComboCTRL and KeyComboShift) and (TempKeyMsg.CharCode = 80) then //Ctrl+Shift+P
     begin
      aHandled := True;
      //OpenPrivateMode1.Click;
     end;
    if (KeyComboCTRL) and (TempKeyMsg.CharCode = 87) then //Ctrl+W
     begin
      aHandled := True;
     end;
    if (KeyComboCTRL) and (TempKeyMsg.CharCode = 74) then //Ctrl+J
     begin
      aHandled := True;
     end;
    if (KeyComboCTRL) and (TempKeyMsg.CharCode = 75) then //Ctrl+K
     begin
      aHandled := True;
     end;
    if (KeyComboCTRL) and (TempKeyMsg.CharCode = 82) then //Ctrl+R
     begin
      aHandled := True;
     end;
    if (KeyComboCTRL) and (TempKeyMsg.CharCode = 80) then //Ctrl+P
     begin
      aHandled := True;
     end;
    if (KeyComboCTRL) and (TempKeyMsg.CharCode = 79) then //Ctrl+O
     begin
      aHandled := True;
     end;
    if (KeyComboCTRL) and (TempKeyMsg.CharCode = 78) then //Ctrl+N
     begin
      aHandled := True;
     end;
  Except
  end;

end;

procedure TMainForm.HandleKeyUp(const aMsg: TMsg; var aHandled: boolean);
var
  TempMessage: TMessage;
  TempKeyMsg: TWMKey;
begin
  TempMessage.Msg := aMsg.message;
  TempMessage.wParam := aMsg.wParam;
  TempMessage.lParam := aMsg.lParam;
  TempKeyMsg := TWMKey(TempMessage);

  if (TempKeyMsg.CharCode = VK_F12) then
    begin
     aHandled := True;
     ShowDevTools;
    end;
  if (TempKeyMsg.CharCode = VK_ESCAPE) and (IskeyEditableField = false) then
    begin
     aHandled := True;
     MainForm.Stop_bt.Click;
    end;
  if (KeyComboCTRL and KeyComboShift) and (TempKeyMsg.CharCode = 80) then //Ctrl+Shift+P
    begin
     aHandled := True;
     ExecuteKeyType.Enabled := true;
     KeyTypeExecute := 'pr';
    end;
  if (KeyComboCTRL) and (TempKeyMsg.CharCode = 84) then //Ctrl+T
    begin
     aHandled := True;
     if KeyComboShift then //Ctrl+Shift+T
      begin
       KeyTypeExecute := 'tr';
       ExecuteKeyType.Enabled := true;
      end
     else
      begin
       ExecuteKeyType.Enabled := true;
       KeyTypeExecute := 't';
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
  if (KeyComboCTRL) and (TempKeyMsg.CharCode = 82) then //Ctrl+R
   begin
     aHandled := True;
     ExecuteKeyType.Enabled := true;
     KeyTypeExecute := 'r';
   end;
  if (KeyComboCTRL) and (TempKeyMsg.CharCode = 80) then //Ctrl+P
   begin
     aHandled := True;
     ExecuteKeyType.Enabled := true;
     KeyTypeExecute := 'p';
   end;
  if (KeyComboCTRL) and (TempKeyMsg.CharCode = 79) then //Ctrl+O
   begin
     aHandled := True;
     ExecuteKeyType.Enabled := true;
     KeyTypeExecute := 'o';
   end;
  if (KeyComboCTRL) and (TempKeyMsg.CharCode = 83) then //Ctrl+S
   begin
     aHandled := True;
     ExecuteKeyType.Enabled := true;
     KeyTypeExecute := 's';
   end;
  if (KeyComboCTRL) and (TempKeyMsg.CharCode = 78) then //Ctrl+N
   begin
     aHandled := True;
     ExecuteKeyType.Enabled := true;
     KeyTypeExecute := 'n';
   end;
  if (TempKeyMsg.CharCode = VK_F5) then
    begin
     aHandled := True;
     MainForm.Refresh_bt.Click;
    end;
  if (TempKeyMsg.CharCode = VK_F11) then
    begin
     aHandled := True;
     MainForm.FullScreen1.Click;
    end;
end;

procedure TMainForm.HandleOpenNewTabTimer(Sender: TObject);
begin
 TTimer(sender).Enabled := false;
 OpenNewTab(TempUrlPage);
end;

procedure TMainForm.HideBarNotification(BrowserName: String);
var
 TempPanelName: string;
 TempPageNotificationFrame: TPopUpBarFrame;
begin
 try
  TempPanelName := StringReplace(BrowserName, 'Chromium', 'PanelNotificationBar', [rfReplaceAll]);
  with TPanel( pcMain.Pages[GetTabIndexByChromoium( BrowserName )].FindComponent( TempPanelName )) do
   begin
    Visible := false;
    if ComponentCount > 0 then
     begin
      TempPageNotificationFrame := TPopUpBarFrame(Components[0]);
      TempPageNotificationFrame.Free;
     end;
   end;
 Except

 end;
end;

procedure TMainForm.HideHintPanelTimerTimer(Sender: TObject);
var
 TempTimeToHideHint: SmallInt;
begin
  try
  TempTimeToHideHint := StrToInt(GetTabValues('TimeToHideHint'));
  if TempTimeToHideHint >= 4 then
  begin
   StatusHintPanel.Visible := false;
   HideHintPanelTimer.Enabled := false;
  end
 else
  begin
    Inc(TempTimeToHideHint);
    SetTabValues('TimeToHideHint', IntToStr(TempTimeToHideHint));
  end;
  Except
  end;
end;

procedure TMainForm.HideNotificationPage(BrowserName: String);
var
 TempPanelName: string;
 TempPageNotificationFrame: TPageNotificationFrame;
begin
 try
  TempPanelName := StringReplace(BrowserName, 'Chromium', 'PanelNotification', [rfReplaceAll]);
  with TPanel( pcMain.Pages[GetTabIndexByChromoium( BrowserName )].FindComponent( TempPanelName )) do
   begin
    Visible := false;
    if ComponentCount > 0 then
     begin
      TempPageNotificationFrame := TPageNotificationFrame(Components[0]);
      TempPageNotificationFrame.Free;
     end;
   end;
 Except

 end;

end;

procedure TMainForm.HideWelcomeScreenTimer(Sender: TObject);
begin
 TTimer(Sender).Enabled := false;
 MainFormLoadingPanel.Visible := false;
 MainFormLoadingPanel.Parent := ToolBar1;
 MainFormLoadingPanel.Width := 0;
 MainFormLoadingPanel.Height := 0;
 if not privatemode then
  begin
   UserAuthenticate := AuthenticateUserProfile;
   if not UserAuthenticate then
    begin
     MessageBox(Application.Handle, Pchar( LanguageCache.Lines[557] + #13 + '' + #13 +  LanguageCache.Lines[558]), Pchar( 'Web Explorer - ' + LanguageCache.Lines[556]), MB_ICONSTOP + MB_OK + MB_DEFBUTTON1);
     StopSessionAndTerminate;
    end;
  end;
end;

procedure TMainForm.HomePageStartTimer(Sender: TObject);
var
  TempChromium : TChromium;
  ParamIndex: SmallInt;
  TempPageToLoad: string;
begin
  HomePageStart.Enabled := false;
  StartHomePage := true;
  if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
   begin
    if ParamCount > 0 then
     begin
      TempPageToLoad := AppMenu.opt_homepage_adr.Text;
      for ParamIndex := 1 to ParamCount do
       begin 
        if CheckUrl(ParamStr(ParamIndex)) then
         begin        
          TempPageToLoad := ParamStr(ParamIndex);
         end;         
       end;
      TempChromium.LoadURL(TempPageToLoad);      
     end
    else
     TempChromium.LoadURL(AppMenu.opt_homepage_adr.Text);
   end;
 if (FirstOpenWindow) then
  begin
   FirstOpenWindow := false;
   HideWelcomeScreen.Enabled := true;
  end;
end;

procedure TMainForm.Home_BTClick(Sender: TObject);
var
  TempChromium : TChromium;
begin
  if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
   TempChromium.LoadURL(AppMenu.opt_homepage_adr.Text);
end;

function TMainForm.HtmlToColor(s: string; aDefault: Tcolor): TColor;
begin
 if copy(s, 1, 1) = '#' then
  begin
   s := '$' + copy(s, 6, 2) + copy(s, 4, 2) + copy(s, 2, 2);
  end
 else
  s := 'clNone';
 try
  result := StringToColor(s);
 except
  result := aDefault;
 end;
end;

procedure TMainForm.httpcache1Click(Sender: TObject);
begin
 OpenPopUpWindow('chrome://view-http-cache', false);
end;

procedure TMainForm.InspectDevToolsTimerTimer(Sender: TObject);
begin
 TTimer(sender).Enabled := false;
 ShowDevTools;
end;

procedure TMainForm.InstantSearchCloseTimerTimer(Sender: TObject);
begin
 InstantSearchCloseTimer.Enabled := false;
 InstantSearchPopupFunction.ClosePopup;
end;

procedure TMainForm.InstantSearchPopupFunctionBeforeClose(Sender: TObject);
begin
 InstantSearchPanel.Visible := false;
end;

procedure TMainForm.InstantSearchPopupFunctionButtonClick(Sender: TObject;
  Index: Integer);
var
 SearchFrame: TInstantSearchFrame;
begin
  try
   SearchFrame := TInstantSearchFrame(InstantSearchPanel.Components[0]);
  Except
  end;
 case index of
  0: InstantSearchPopupFunction.ClosePopup;
  1: SearchFrame.Chromium.Browser.Reload;
 end;
end;

procedure TMainForm.InstantSearchPopupFunctionClose(Sender: TObject);
var
 SearchFrame: TInstantSearchFrame;
begin
  try
   SearchFrame := TInstantSearchFrame(InstantSearchPanel.Components[0]);
   SearchFrame.Chromium.CloseBrowser(true);
  finally
   TInstantSearchFrame(InstantSearchPanel.Components[0]).Free;
  end;
end;

procedure TMainForm.InstantSearchPopupFunctionShow(Sender: TObject);
begin
 InstantSearchPopupFunction.FooterCaption := SearchNameProvider;
end;

function TMainForm.IsHardwareAccelerated: Boolean;
begin
 try
  CoInitialize(nil);
  try
   if copy(GetWin32_VideoControllerInfo, 1, 3) = Trim('AMD') then
    Result := true
   else if copy(GetWin32_VideoControllerInfo, 1, 3) = Trim('ATI') then
    Result := true
   else if copy(GetWin32_VideoControllerInfo, 1, 3) = Trim('NVI') then
    Result := true
   else
    Result := false;
  finally
   CoUninitialize;
  end;
 except
   Result := false;
 end;
end;

function TMainForm.IsLowerCpu: Boolean;
var
  Value: TSSESupports;
begin
 if ((sse42 in Value) or (sse4A in Value)) and (JvComputerInfoEx1.CPU.L3Cache > 0) and (JvComputerInfoEx1.CPU.DEPCapable = true) and (JvComputerInfoEx1.CPU.ProcessorCount >= 4) and (JvComputerInfoEx1.CPU.NormFreq >= 1600) then
  Result := false
 else
  Result := true;
end;

function TMainForm.IsSPDPage(Url: string): Boolean;
begin
 if url = ConvertToURI(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html')) then
  Result := true
 else
  Result := false;
end;

function TMainForm.IsSystemPage(URL: string): Boolean;
begin
 if URL = ConvertToURI(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html')) then
  Result := true
 else if URL = ConvertToURI(Pchar(MainForm.Profile_Pach + '\Pages\Error.html')) then
  Result := true
 else
  Result := false;
end;

procedure TMainForm.K1Click(Sender: TObject);
var
  TempChromium : TChromium;
begin
 if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
  begin
    TempChromium.LoadURL('chrome://kill');
  end;
end;

procedure TMainForm.KeyComboResetTimer(Sender: TObject);
begin
 KeyComboReset.Enabled := false;
 KeyComboCTRL := false;
 KeyComboShift := false;
end;

procedure TMainForm.LC_CloseEffect1Timer(Sender: TObject);
var
 finalposition: integer;
begin
 finalposition := -385;
 if LinkCenterPanel.left >= finalposition then
  begin
    if LinkCenterPanel.left >= finalposition + 80 then
     LinkCenterPanel.left := LinkCenterPanel.left - 20
    else if LinkCenterPanel.left >= finalposition + 40 then
     LinkCenterPanel.left := LinkCenterPanel.left - 10
    else
     LinkCenterPanel.left := LinkCenterPanel.left - 5;
  end
 else
  begin
   LC_CloseEffect1.Enabled := false;
   LKViwerPanel.Visible := false;
   LinkCenter.Close;
  end;
LC_ShowEffect1.Enabled := false;
end;

procedure TMainForm.LC_ShowEffect1Timer(Sender: TObject);
var
 finalposition: integer;
begin
 finalposition := 0;
 if LinkCenterPanel.left < finalposition then
  begin
    if LinkCenterPanel.left <= finalposition - 80 then
     begin
      LinkCenterPanel.left := LinkCenterPanel.left + 40;
     end
    else if LinkCenterPanel.left <= finalposition - 40 then
     begin
      LinkCenterPanel.left := LinkCenterPanel.left + 10;
     end
    else
     begin
      LinkCenterPanel.left := LinkCenterPanel.left + 5;
     end;
  end
 else
  begin
   LC_ShowEffect1.Enabled := false;
  end;
 LC_CloseEffect1.Enabled := false;
end;

procedure TMainForm.Legacybrowser(value: Boolean);
var
 LegacyString: TStringList;
begin
 if value = true then
  begin
   LegacyString := TStringList.Create;
   LegacyString.Add(UserAgent);
   LegacyString.SaveToFile(pChar(Profile_Pach + '\LegacyBrowser.ini'));
   LegacyString.Free;
  end
 else
  begin
   if FileExists(Pchar(MainForm.Profile_Pach + '\LegacyBrowser.ini')) = true then
    DeleteFile(pChar(Profile_Pach + '\LegacyBrowser.ini'));
  end;
end;

procedure TMainForm.LinkCenter_BTClick(Sender: TObject);
begin
 if LKViwerPanel.Visible = false then
  ShowLinkHub(true)
 else
  ShowLinkHub(false);
end;

procedure TMainForm.ListViewFromCSV(theListView: TListView;
  const FileName: String);
var item: TListItem;
    index,
    comPos,
    subIndex: Integer;
    theFile: TStringList;
    Line: String;
begin
     theFile := TStringList.Create;
     theFile.LoadFromFile(FileName);
     for index := 0 to theFile.Count -1 do begin
         Line := theFile[index];
         item := theListView.Items.Add;
         comPos := Pos(',', Line);
         item.Caption := ValidCSVFile(1,Copy(Line, 1, comPos -1));
         Delete(Line, 1, comPos);
         comPos := Pos(',', Line);
         while comPos > 0 do begin
               item.SubItems.Add(ValidCSVFile(1,Copy(Line, 1, comPos -1)));
               Delete(Line, 1, comPos);
               comPos := Pos(',', Line);
         end;
         item.SubItems.Add(ValidCSVFile(1,Line));
     end;
     FreeAndNil(theFile);
end;

procedure TMainForm.ListViewToCSV(theListView: TListView;
  const FileName: String);
var item: TListItem;
    index, index2,
    subIndex: Integer;
    theFile: TStringList;
    Line: String;
begin
     theFile := TStringList.Create;
     for index := 0 to theListView.Items.Count -1 do
      begin
         item := theListView.Items[index];
         for index2 := 0 to item.SubItems.Count -1 do
          begin
           item.SubItems[index2] := ValidCSVFile(0,item.SubItems[index2]);
          end;
         Line := Format('%s,%s', [ValidCSVFile(0,item.Caption), item.SubItems.CommaText ]);
         theFile.Add(Line);
      end;
     theFile.SaveToFile(FileName);
     FreeAndNil(theFile);
end;

procedure TMainForm.LoadPageError(FrameID: Int64; BrowserName, CrmErrMsg1, CrmErrMsg2, CrmErrCode: string);
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
     TChromium( pcMain.Pages[GetTabIndexByChromoium(BrowserName)].FindComponent(BrowserName)).Browser.GetFrameByident(FrameID).ExecuteJavaScript(TempNotificationPage.Text, '', 0);
    end;
 finally
   freelibrary(TempResourceStreamInstance);
   TempResourceStream.Free;
 end;
end;

procedure TMainForm.LoadSessionTimerTimer(Sender: TObject);
var
 RestoreIndex: SmallInt;
begin
 LoadSessionTimer.Enabled := false;
 try
  SessionBalloonHint.DefaultHeader :=  LanguageCache.Lines[365];
  SessionBalloonHint.ActivateHint(Trash_bt, LanguageCache.Lines[366] , ikInformation, LanguageCache.Lines[365], 3500);
  for RestoreIndex := 0 to RestoreSessionURL.Lines.Count -1 do
   begin
    if Trim(RestoreSessionURL.Lines[RestoreIndex]) <> '' then
     if RestoreSessionURL.Lines[RestoreIndex] <> Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html') then
      PageTrash.AddPage(LanguageCache.Lines[367], RestoreSessionURL.Lines[RestoreIndex]);
   end;
  DeleteFile(Pchar(ParamStr(2)));
 Except
 end;
end;

procedure TMainForm.ManageBookmarks1Click(Sender: TObject);
begin
 OpenForm('UserLibrary', '', '', False, 3, false);
end;

procedure TMainForm.MenuButtonClick(Sender: TObject);
begin
 OpenMenu.Execute;
end;

procedure TMainForm.MenuItem10Click(Sender: TObject);
begin
 OpenSpeedDial1.Click
end;

procedure TMainForm.MenuItem14Click(Sender: TObject);
begin
 ZoomIn1.Click;
end;

procedure TMainForm.MenuItem27Click(Sender: TObject);
begin
 Refresh_bt.Click;
end;

procedure TMainForm.MenuItem28Click(Sender: TObject);
begin
 Stop1.Click;
end;

procedure TMainForm.MenuItem29Click(Sender: TObject);
begin
 BackBT.Click;
end;

procedure TMainForm.OpenFile1Click(Sender: TObject);
var
  TempChromium : TChromium;
begin
  if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
   if OpenDialog1.Execute then
    TempChromium.LoadURL('file:///' + OpenDialog1.FileName);
end;

procedure TMainForm.OpenFile2Click(Sender: TObject);
begin
 OpenFile1.Click
end;

procedure TMainForm.OpenForm(FormType, Param_2, Param_3: string; ExternalForm: Boolean; Param_1: SmallInt; GlassTypeForm: Boolean);
var
 CreateWindowWENetID: procedure(Language: Pchar); stdcall;
 CreateWindowAddNewLink: procedure(Language, UrlLink, UrlPageName, WEProfile_Pach, StringAeroColorN, StringAeroColorH, StringAeroColorD: Pchar); stdcall;
 CreateWindowQrCode: procedure(Language, UrlLink: Pchar); stdcall;
 Dllhandle: THandle;
begin
 if ExternalForm = false then
  begin
   if privatemode and not UserAuthenticate then
    begin
     UserAuthenticate := AuthenticateUserProfile;
     if not UserAuthenticate then
      begin
        MessageBox(Application.Handle, Pchar( LanguageCache.Lines[557] + #13 + '' + #13 +  LanguageCache.Lines[577]), Pchar( 'Web Explorer - ' + LanguageCache.Lines[556]), MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
        Abort;
      end;
    end;

   if FormType = 'UserLibrary' then //Library
    begin
     with TUserLibrary.Create(nil) do
      begin
       try
        RefreshForNewLinkSaved := true;
        LinkCenter.AddBtClicked := true;
        ListViewSelect1.ItemIndex := Param_1;
        ShowModal;
       finally
        Free;
       end;
      end;
    end;
   if FormType = 'SecurityPermissionHub' then //SecurityPermissionHub
    begin
     with TSecurityPermissionHubFrm.Create(nil) do
      try
       ListViewSelect1.ItemIndex := Param_1;
       ShowModal;
      finally
       Free;
      end;
    end;
  end
 else
  begin
   Dllhandle := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + 'CoreResources.dll'));
   if FormType = 'WENetID' then //WENetID
    begin
     if Handle <> 0 then
      begin
       @CreateWindowWENetID := GetProcAddress(Dllhandle, 'CreateWindowWENetID');
       if @CreateWindowWENetID <> nil then
        begin
         CreateGlassBckgForm(GlassTypeForm);
         CreateWindowWENetID(Pchar(LanguageCache.Text));
        end;
       FreeLibrary(Dllhandle);
       CloseGlassBckgForm;
      end;
    end;
   if FormType = 'QrCode' then //QrCode
    begin
     if Handle <> 0 then
      begin
       @CreateWindowQrCode := GetProcAddress(Dllhandle, 'CreateWindowQrCode');
       if @CreateWindowQrCode <> nil then
        begin
         CreateGlassBckgForm(GlassTypeForm);
         if Param_2 = '' then
          CreateWindowQrCode(Pchar(LanguageCache.Text),Pchar(URLsBar.Text))
         else
          CreateWindowQrCode(Pchar(LanguageCache.Text),Pchar(Param_2));
        end;
       FreeLibrary(Dllhandle);
       CloseGlassBckgForm;
      end;
    end;

   if privatemode and not UserAuthenticate then
    begin
     UserAuthenticate := AuthenticateUserProfile;
     if not UserAuthenticate then
      begin
        MessageBox(Application.Handle, Pchar( LanguageCache.Lines[557] + #13 + '' + #13 +  LanguageCache.Lines[577]), Pchar( 'Web Explorer - ' + LanguageCache.Lines[556]), MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
        Abort;
      end;
    end;


   if FormType = 'AddNewLink' then //AddNewLink
    begin
     if Handle <> 0 then
      begin
       @CreateWindowAddNewLink := GetProcAddress(Dllhandle, 'CreateWindowAddNewLink');
       if @CreateWindowAddNewLink <> nil then
        begin
         CreateGlassBckgForm(GlassTypeForm);
         RefreshForNewLinkSaved := true;
         LinkCenter.AddBtClicked := true;
         if Param_1 = 0 then
          CreateWindowAddNewLink(Pchar(LanguageCache.Text), Pchar(URLsBar.Text), Pchar(AeroTabs.Tabs[AeroTabs.ActiveTabIndex].Caption), Pchar(Profile_Pach), PChar(ColorToString(MainForm.GetAeroColor)), PChar(ColorToString(BrightenLight(MainForm.GetAeroColor))), PChar(ColorToString(BrightenLightWinRT(MainForm.GetAeroColor))) )
         else
          CreateWindowAddNewLink(Pchar(LanguageCache.Text), Pchar(Param_2), Pchar(Param_3), Pchar(Profile_Pach), PChar(ColorToString(MainForm.GetAeroColor)), PChar(ColorToString(BrightenLight(MainForm.GetAeroColor))), PChar(ColorToString(BrightenLightWinRT(MainForm.GetAeroColor))) );
        end;
       FreeLibrary(Dllhandle);
       CloseGlassBckgForm;
      end;
    end;

  end;
end;

procedure TMainForm.OpenLinkNewWindow(LinkUrl: string);
begin
 LastLink := LinkUrl;
 OpenWindowTimer.Enabled := true;
end;

procedure TMainForm.MenuItem30Click(Sender: TObject);
begin
 ForwardBT.Click;
end;

procedure TMainForm.MN_CloseEffect1Timer(Sender: TObject);
var
 finalposition: integer;
begin
 finalposition := -480;
 if MenuCenterPanel.left >= finalposition then
  begin
    if MenuCenterPanel.left >= finalposition + 80 then
     MenuCenterPanel.left := MenuCenterPanel.left - 20
    else if MenuCenterPanel.left >= finalposition + 40 then
     MenuCenterPanel.left := MenuCenterPanel.left - 10
    else
     MenuCenterPanel.left := MenuCenterPanel.left - 5;
  end
 else
  begin
   MN_CloseEffect1.Enabled := false;
   MENUviewerPanel.Visible := false;
   Appmenu.Close;
  end;
 MN_ShowEffect1.Enabled := false;
end;

procedure TMainForm.MN_ShowEffect1Timer(Sender: TObject);
var
 finalposition: integer;
begin
 finalposition := 0;
 if MenuCenterPanel.left < finalposition then
  begin
    if MenuCenterPanel.left <= finalposition - 80 then
     begin
      MenuCenterPanel.left := MenuCenterPanel.left + 40;
     end
    else if MenuCenterPanel.left <= finalposition - 40 then
     begin
      MenuCenterPanel.left := MenuCenterPanel.left + 10;
     end
    else
     begin
      MenuCenterPanel.left := MenuCenterPanel.left + 5;
     end;
  end
 else
  begin
   MN_ShowEffect1.Enabled := false;
  end;
 MN_CloseEffect1.Enabled := false;
end;

procedure TMainForm.mousezoom(value: integer; FormType: Boolean);
begin
 if FormType = false then
  begin
   if value <= 120 then
    begin
     if (StrtoInt(GetTabValues('BrowserZoom')) >= 50) and (StrtoInt(GetTabValues('BrowserZoom')) <= 350) then
       ZoomIn1.Click;
    end
   else
    begin
     if (StrtoInt(GetTabValues('BrowserZoom')) <= 400) and (StrtoInt(GetTabValues('BrowserZoom')) >= 100) then
      ZoomOut1.Click;
    end;
  end
 else
  begin
   if value >= 0 then
    begin
     if (StrtoInt(GetTabValues('BrowserZoom')) >= 50) and (StrtoInt(GetTabValues('BrowserZoom')) <= 350) then
       ZoomIn1.Click;
    end
   else
    begin
     if (StrtoInt(GetTabValues('BrowserZoom')) <= 400) and (StrtoInt(GetTabValues('BrowserZoom')) >= 100) then
      ZoomOut1.Click;
    end;
  end;
end;

procedure TMainForm.netinternals1Click(Sender: TObject);
begin
 OpenPopUpWindow('chrome://net-internals', false);
end;

procedure TMainForm.Refresh1Click(Sender: TObject);
var
  TempChromium : TChromium;
begin
 if Go_bt.Visible then
  begin
   ShowGoBt(false);
   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
    begin
     URLs.EditText := TempChromium.Browser.MainFrame.Url;
     URLsBar.Text := TempChromium.Browser.MainFrame.Url;
    end;
  end
 else
  begin
   Refresh_bt.Click;
  end;
end;

procedure TMainForm.Refresh2Click(Sender: TObject);
begin
 Refresh_bt.Click;
end;

procedure TMainForm.RefreshFavIconCurrentTimer(Sender: TObject);
begin
 TTimer(Sender).Enabled := false;
 RefreshFavIcon.Enabled := true;
end;

procedure TMainForm.RefreshFavIconTimer(Sender: TObject);
begin
 RefreshFavIcon.Enabled := false;
 try
  UpdateFavIcon;
 Except
  RefreshFavIcon.Enabled := true;
 end;
end;

procedure TMainForm.RefreshIgnoreCache1Click(Sender: TObject);
var
  TempChromium : TChromium;
begin
  if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
   TempChromium.ReloadIgnoreCache;
end;

procedure TMainForm.RefreshStopBts(cmd: SmallInt);
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

procedure TMainForm.Refresh_btClick(Sender: TObject);
var
  TempChromium : TChromium;
begin
  if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
   TempChromium.Reload;
end;

procedure TMainForm.RegisterDownloadFile(DownloadN, DownloadF,
  DownloadD: String);
begin
 DownloadInfos[1] := DownloadN;
 DownloadInfos[2] := DownloadF;
 DownloadInfos[3] := DownloadD;
 RegisterDownloadTimer.Enabled := true;
end;

procedure TMainForm.RegisterDownloadTimerTimer(Sender: TObject);
var
 UserLibraryFrm: TUserLibrary;
begin
 TTimer(sender).Enabled := false;
 UserLibraryFrm := TUserLibrary.Create(nil);
 with UserLibraryFrm do
  try
   RegisterDownloadFile(DownloadInfos[1], DownloadInfos[2], DownloadInfos[3]);
  finally
   free;
  end;
end;

procedure TMainForm.ReloadBtnClick(Sender: TObject);
var
  TempChromium : TChromium;
begin
  if SearchChromium(pcMain.TabIndex, TempChromium) then
   TempChromium.Reload;
end;

procedure TMainForm.RestartApp;
begin
 if MessageBox(Application.Handle, Pchar(LanguageCache.Lines[361]), PChar(LanguageCache.Lines[362] + ' - Web Explorer'), MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = mrYes then
  begin
   {if (download_bt.Visible = true) and (DownloadForm.OnDownload = true) then
    MessageBox(Application.Handle, Pchar(LanguageCache.Lines[363]), PChar(LanguageCache.Lines[362] + ' - Web Explorer'), MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1)
   else}
    try
     //$REVIEW_THIS
     {SaveHistotyUrlsList;
     SessionTimer.Enabled := false;}
     try
      DeleteFile(Profile_Pach + '\PID' + inttostr(GetCurrentProcessId) + '.Session');
     Except
     end;
    finally
     ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchWindow'), NIL, SW_HIDE);
     StopSessionAndTerminate;
    end;
  end;
end;

procedure TMainForm.RestoreSession;
begin
 try
  RestoreSessionURL.Lines.LoadFromFile(ParamStr(2));
 finally
   LoadSessionTimer.enabled := true;
 end;
end;

procedure TMainForm.Back1Click(Sender: TObject);
begin
 BackBT.Click;
end;

procedure TMainForm.Back2Click(Sender: TObject);
begin
 BackBT.Click;
end;

procedure TMainForm.BackBTClick(Sender: TObject);
var
  TempChromium : TChromium;
begin
  if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
   begin
    try
     try
      TempChromium.GoBack;
     finally
      if GetTabIndexByChromoium(TChromium(sender).Name) = AeroTabs.ActiveTabIndex then
       begin
        BackBT.Enabled := TempChromium.browser.CanGoBack;
        ForwardBT.Enabled := TempChromium.browser.CanGoForward;
       end;
     end;
    Except

    end;
   end;
end;

procedure TMainForm.BackBtnClick(Sender: TObject);
var
  TempChromium : TChromium;
begin
  if SearchChromium(pcMain.TabIndex, TempChromium) then
   TempChromium.GoBack;
end;

procedure TMainForm.StartDownloadExplorer(cmd1, cmd2, cmd3, cmd4: String);
var
 DownloadContentFile: TextFile;
 DownloadContenString: string;
 DownloadContenteNunber: SmallInt;
begin
 DownloadContenteNunber := Random(999);
 if cmd1 = '-newdownload' then
  begin
    try
     AssignFile(DownloadContentFile, PChar(Profile_Pach + '\History\Download_' + InttoStr(DownloadContenteNunber) + '.tmp'));
     Rewrite(DownloadContentFile);
     WriteLn(DownloadContentFile, cmd2);
     WriteLn(DownloadContentFile, cmd3);
     WriteLn(DownloadContentFile, cmd4);
     CloseFile(DownloadContentFile);
    finally
     if privatemode = false then
      ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchDownload -newdownload' + ' ' + 'Download_' + InttoStr(DownloadContenteNunber) + '.tmp -realtime'), NIL, SW_HIDE)
     else
      ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchDownload -newdownload' + ' ' + 'Download_' + InttoStr(DownloadContenteNunber) + '.tmp -privatemode'), NIL, SW_HIDE);
    end;
  end;
 if cmd1 = '-newdownloadfolder' then
  begin
    try
     AssignFile(DownloadContentFile, PChar(Profile_Pach + '\History\Download_' + InttoStr(DownloadContenteNunber) + '.tmp'));
     Rewrite(DownloadContentFile);
     WriteLn(DownloadContentFile, cmd2);
     WriteLn(DownloadContentFile, cmd3);
     WriteLn(DownloadContentFile, cmd4);
     CloseFile(DownloadContentFile);
    finally
     if privatemode = false then
      ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchDownload -newdownloadfolder' + ' ' + 'Download_' + InttoStr(DownloadContenteNunber) + '.tmp -realtime'), NIL, SW_HIDE)
     else
      ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchDownload -newdownloadfolder' + ' ' + 'Download_' + InttoStr(DownloadContenteNunber) + '.tmp -privatemode'), NIL, SW_HIDE);
    end;
  end;
 if cmd1 = '-newdownloadID' then
  begin
    try
     AssignFile(DownloadContentFile, PChar(Profile_Pach + '\History\Download_' + InttoStr(DownloadContenteNunber) + '.tmp'));
     Rewrite(DownloadContentFile);
     WriteLn(DownloadContentFile, cmd2);
     WriteLn(DownloadContentFile, cmd3);
     CloseFile(DownloadContentFile);
    finally
     if privatemode = false then
      ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchDownload -newdownloadID' + ' ' + 'Download_' + InttoStr(DownloadContenteNunber) + '.tmp -realtime'), NIL, SW_HIDE)
     else
      ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchDownload -newdownloadID' + ' ' + 'Download_' + InttoStr(DownloadContenteNunber) + '.tmp -privatemode'), NIL, SW_HIDE);
    end;
  end;
end;

procedure TMainForm.StartLinkExtTimer(Sender: TObject);
begin
 StartLinkExt.Enabled := false;
 //$REVIEW_THIS
 {NewExtensions.NewResourceLink := MainForm.linktemp;
 NewExtensions.ShowModal;}
end;

procedure TMainForm.StartLinkWidgetTimer(Sender: TObject);
begin
 StartLinkWidget.Enabled := false;
 //$REVIEW_THIS
 {Chromium1.Browser.StopLoad;
 NewResources.ShowModal;}
end;

procedure TMainForm.Stop1Click(Sender: TObject);
var
  TempChromium : TChromium;
begin
 if Go_bt.Visible then
  begin
   ShowGoBt(false);
   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
    begin
     URLs.EditText := TempChromium.Browser.MainFrame.Url;
     URLsBar.Text := TempChromium.Browser.MainFrame.Url;
    end;
  end
 else
  begin
   Stop_bt.Click;
  end;
end;

procedure TMainForm.Stop2Click(Sender: TObject);
begin
 Stop_bt.Click;
end;

procedure TMainForm.StopBtnClick(Sender: TObject);
var
  TempChromium : TChromium;
begin
  if SearchChromium(pcMain.TabIndex, TempChromium) then TempChromium.StopLoad;
end;

procedure TMainForm.StopSessionAndTerminate;
begin
  AdvTaskDialogEx1.Close;
 StopSessionFile := true;
 SessionTimer.Enabled := false;
 MainForm.Hide;
 if not privatemode then
  SaveHistotyUrlsList;
 try
  CloseAllBrowsers;
 finally
  Auto_Kill.Enabled := true;
  try
   DeleteFile(Profile_Pach + '\PID' + inttostr(GetCurrentProcessId) + '.Session');
   Except
  end;
  try
   DeleteFile(Profile_Pach + '\PID' + inttostr(GetCurrentProcessId) + '.Session');
  Except
  end;
  TaskKill(WebExplorerServicePID);
  //shellExecute(Application.Handle, 'open', 'taskkill.exe', Pchar('/F /PID ' + WebExplorerServicePID), nil, SW_HIDE);
  try
   DeleteFile(Profile_Pach + '\PID' + inttostr(GetCurrentProcessId) + '.Session');
  Except
  end;
  try
   DeleteFile(Profile_Pach + '\PID' + inttostr(GetCurrentProcessId) + '.Session');
  Except
  end;
 end;
end;

procedure TMainForm.Stop_btClick(Sender: TObject);
var
  TempChromium : TChromium;
begin
  if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
   TempChromium.StopLoad;
end;

procedure TMainForm.StoreSession;
var
 SesionIndex: integer;
 TempChromium : TChromium;
begin
 if not ((ParamStr(1) = '-library') or (ParamStr(1) = '-notification') or (ParamStr(1) = '-widgets')) then
  begin
 try
  SessionStore.Clear;
  for SesionIndex := 0 to AeroTabs.Tabs.Count - 1 do
   begin
    if SearchChromium(SesionIndex, TempChromium) then
     begin
      try
       SessionStore.Lines.Add(TempChromium.Browser.MainFrame.Url);
      Except
      end;
     end;
   end;
   SessionStore.Lines.SaveToFile(Profile_Pach + '\PID' + InttoStr(GetCurrentProcessId) + '.Session');
 Except
 end;
 end;
end;

function TMainForm.TabIndexByName(TabName: String): Integer;
var
 SIndexTab, TIndexTab: integer;
begin
 TIndexTab := -1;
 for SindexTab := 0 to AeroTabs.Tabs.Count -1 do
  begin
   if AeroTabs.Tabs[SindexTab].Caption = TabName then
    TIndexTab := AeroTabs.Tabs[SindexTab].Index;
  end;
  Result := TIndexTab;
end;

function TMainForm.TaskKill(pid: string): Boolean;
var
  killer: THandle;
begin
 try
  killer := OpenProcess(PROCESS_TERMINATE, FALSE, StrToInt(pid));
  if TerminateProcess(killer, 0) then
   begin
    Result := true;
   end
  else
   begin
    Result := false;
   end; 
 Except

 end;

end;

procedure TMainForm.ThemeTimerTimer(Sender: TObject);
begin
 if not WarningTabTimer.Enabled then
  begin
   if not IsGenericGraphics then
    EnableAeroTheme
   else
    ThemeTimer.Enabled := IsGenericGraphics;
  end;
end;

procedure TMainForm.TimerOpenPopupBrowserTimer(Sender: TObject);
begin
 TTimer(sender).Enabled := false;
 OpenPopupBrowser(TempPopUpFeatures, TempPopUpTargetUrl, TempPopUpBrowserName);
end;

procedure TMainForm.Tools_btClick(Sender: TObject);
var
  P1, P2: TPoint;
begin
 case WindowState of
   TWindowState.wsNormal:    begin
                              P1.X := Tools_bt.Left + 2;
                              P1.Y := Tools_bt.Top + Tools_bt.Height + ToolBar1.Height + 12;
                              P2 := ClientToScreen(P1);
                             end;
   TWindowState.wsMaximized: begin
                              P1.X := Tools_bt.Left;
                              P1.Y := Tools_bt.Top + Tools_bt.Height + ToolBar1.Height + 4;
                              P2 := ClientToScreen(P1);
                             end;
 end;
 PageMenu.PopUp(P2.X, P2.Y);
end;

procedure TMainForm.Trash_btClick(Sender: TObject);
begin
  PageTrash.ShowModal;
end;

procedure TMainForm.TrustedPagesEnablerTimer(Sender: TObject);
begin
 if FileExists(Profile_Pach + '\TrustedPages.ini') = false then
  begin
   TrustedPagesCache.Lines.Add('www.google.com');
   TrustedPagesCache.Lines.Add('www.facebook.com');
   TrustedPagesCache.Lines.Add('www.bing.com');
   TrustedPagesCache.Lines.Add('www.youtube.com');
   TrustedPagesCache.Lines.Add('onedrive.live.com');
   TrustedPagesCache.Lines.Add('drive.google.com');
   TrustedPagesCache.Lines.SaveToFile(Profile_Pach + '\TrustedPages.ini');
  end
 else
  begin
   TrustedPagesCache.Lines.LoadFromFile(Profile_Pach + '\TrustedPages.ini');
  end;
 TTimer(sender).Enabled := false;
end;

procedure TMainForm.UpdateExtensionsDir;
var
 index: SmallInt;
begin
{$IFDEF STORE}
  try
   if DirectoryExists(GetUWPAppData + '\Extensions') = false then
    CreateDir(GetUWPAppData + '\Extensions');
  finally
   ExtensionsListView.Root := Pchar(GetUWPAppData + '\Extensions');
  end;
  ExtensionsDirList.Clear;
  for index := 0 to ExtensionsListView.Items.Count - 1 do
   begin
    ExtensionsDirList.Items.Add(ExtensionsListView.Folders[index].PathName);
   end;
{$ELSE}
  try
   if DirectoryExists(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Extensions') = false then
    CreateDir(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Extensions');
  finally
   ExtensionsListView.Root := Pchar(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Extensions');
  end;
  ExtensionsDirList.Clear;
  for index := 0 to ExtensionsListView.Items.Count - 1 do
   begin
    ExtensionsDirList.Items.Add( ExtensionsListView.Folders[index].PathName);
   end;
{$ENDIF}
end;

procedure TMainForm.UpdateFavIcon;
var
 IndexFav: integer;
begin
 for IndexFav := 0 to AeroTabs.Tabs.Count - 1 do
  begin
   try
    AeroTabs.BeginUpdate;
    AeroTabs.Tabs[IndexFav].ImageIndex := IndexFav;
   finally
    AeroTabs.EndUpdate;
   end;
  end;
end;

procedure TMainForm.URLsBarClick(Sender: TObject);
begin
 if URLsBar.Edit.SelLength = 0 then
  URLsBar.Edit.SelectAll;
end;

procedure TMainForm.URLsBarKeyPress(Sender: TObject; var Key: Char);
var
  TempChromium : TChromium;
begin
 if Key = #27 then
  begin
   ShowGoBt(false);
   key := #0;
   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
    begin
     URLs.EditText := TempChromium.Browser.MainFrame.Url;
     URLsBar.Text := TempChromium.Browser.MainFrame.Url;
    end;
  end
 else if Key = #13 then
  begin
    Key := #0;
    GoUrl;
  end
 else
  ShowGoBt(true);
end;

procedure TMainForm.UrlsDropDownFooterButtonClick(Sender: TObject;
  ButtonIndex: Integer);
begin
 case ButtonIndex of
  0: MainForm.clearnavigationdata;
  1: AddtoBookmarks1.Click;
 end;
end;

procedure TMainForm.UrlsSelect(Sender: TObject);
begin
 URLsBar.Text := Urls.Items[Urls.ItemIndex].Caption;
 Go_bt.Click;
end;

procedure TMainForm.V1Click(Sender: TObject);
begin
 OpenPopUpWindow('chrome://appcache-internals', false);
end;

function TMainForm.ValidCSVFile(cmd: Integer; Value: String): String;
var
 tempQTR: string;
begin
 if cmd = 0 then
  begin
   if (Value <> '') then
    Value := StringReplace(Value, ' ', '{§', [rfreplaceall]);
   if (Value <> '') then
    Value := StringReplace(Value, ',', '}§', [rfreplaceall]);
   Result := Value;
  end
 else
  begin
   if (Value <> '') then
    Value := StringReplace(Value, '{§', ' ', [rfreplaceall]);
   if (Value <> '') then
    Value := StringReplace(Value, '}§', ',', [rfreplaceall]);
   Result := Value;
  end;
end;

function TMainForm.ValidXMLAddress(cmd: Integer; Value: String): String;
begin
 if cmd = 0 then
  begin
   if (Value <> '') then
    Value := StringReplace(Value, '/', '@', [rfreplaceall]);
   if (Value <> '') then
    Value := StringReplace(Value, '&', '[', [rfreplaceall]);
   if (Value <> '') then
    Value := StringReplace(Value, ':', '$', [rfreplaceall]);
   Result := Value;
  end
 else
  begin
   if (Value <> '') then
    Value := StringReplace(Value, '@', '/', [rfreplaceall]);
   if (Value <> '') then
    Value := StringReplace(Value, '[', '&', [rfreplaceall]);
   if (Value <> '') then
    Value := StringReplace(Value, '$', ':', [rfreplaceall]);
   Result := Value;
  end;
end;

procedure TMainForm.ViewinReaderMode1Click(Sender: TObject);
begin
 Showmessage('Under Construction!');
end;

procedure TMainForm.ViewSorce1Click(Sender: TObject);
var
  TempChromium : TChromium;
begin
 if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
  TempChromium.Browser.MainFrame.ViewSource;
end;

procedure TMainForm.ViewWarningTabs;
begin
 WarningTabAnimationIndex := 0;
 WarningTabTimer.Enabled := true;
end;

procedure TMainForm.BrowserCreatedMsg(var aMessage : TMessage);
var
  TempWindowParent: TCEFWindowParent;
  TempChromium: TChromium;
begin
  Toolbar1.Enabled := True;
  pcMain.Enabled := True;

  if SearchWindowParent(aMessage.lParam, TempWindowParent) then
    TempWindowParent.UpdateSize;
  //$REVIEW_THIS
  if StartHomePage then
   begin
    if SearchChromium(aMessage.lParam, TempChromium) then
      begin
        if NewTabCall = true then
         begin
          TempChromium.LoadURL(NewTabURL);
          NewTabCall := false;
         end
        else
         TempChromium.LoadURL(AppMenu.opt_homepage_adr.Text);
      end;

   end
  else
   HomePageStart.enabled := true;

end;

procedure TMainForm.BrowserDestroyWindowParentMsg(var aMessage : TMessage);
var
  TempWindowParent : TCEFWindowParent;
begin
  if SearchWindowParent(aMessage.lParam, TempWindowParent) then
   TempWindowParent.Free;
end;

procedure TMainForm.btnzoneClick(Sender: TObject);
begin
 MainForm.ShareCenterPopupFunction.Control := ShareCenterPanel;
 ShareCenterPanel.Visible := true;
 MainForm.ShareCenterPopupFunction.PopupAtControl(btnzone, pdBottomRight);
 GoShareCenter(URLsBar.Text);
end;

procedure TMainForm.BrowserDestroyTabMsg(var aMessage : TMessage);
begin
  if (aMessage.lParam >= 0) and (aMessage.lParam < pcMain.PageCount) then
    begin
     pcMain.Pages[aMessage.lParam].Free;
    end;
  FClosingTab := False;
  Toolbar1.Enabled := True;
  pcMain.Enabled := True;
end;

function TMainForm.Brighten(AColor: TColor): TColor;
var
  H, S, L: Word;
begin
  ColorRGBToHLS(AColor, H, L, S);
  Result := ColorHLSToRGB(H, 200, S);
end;

function TMainForm.BrightenLight(AColor: TColor): TColor;
var
  H, S, L: Word;
begin
  ColorRGBToHLS(AColor, H, L, S);
  Result := ColorHLSToRGB(H, 215, S);
end;

function TMainForm.BrightenLightWinRT(AColor: TColor): TColor;
var
  H, S, L: Word;
begin
  ColorRGBToHLS(AColor, H, L, S);
  Result := ColorHLSToRGB(H, 110, S);
end;

function TMainForm.BrightenWinRT(AColor: TColor): TColor;
var
  H, S, L: Word;
begin
  ColorRGBToHLS(AColor, H, L, S);
  if WindowsUI = 1 then
   Result := ColorHLSToRGB(H, 90, S)
  else
   Result := $008C4600;
end;

procedure TMainForm.BrowserCheckTaggedTabsMsg(var aMessage : TMessage);
begin
  if (aMessage.lParam >= 0) and
     (aMessage.lParam < pcMain.PageCount) then
    begin
      pcMain.Pages[aMessage.lParam].Tag := 1;

      if pcMain.PageCount < 1 then

      if AllTabSheetsAreTagged then
        begin
          FCanClose := True;
          PostMessage(Handle, WM_CLOSE, 0, 0);
        end;
    end;
end;

procedure TMainForm.ACloseTabExecute(Sender: TObject);
var
 TempChromium: TChromium;
begin
//repete o comando closetab do aerotabs
PreTabActiveIndex := AeroTabs.ActiveTabIndex;
CloseCurrentTab := false;
    if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
     begin
      if TempChromium.IsLoading then
       begin
        TempChromium.StopLoad;
        AutoCloseTimer.Enabled := true;
       end
      else
       begin

        if (URLsBar.Text <> 'about:blank') and (URLsBar.Text <> Trim('webexplorer://speeddial')) and (not IsSystemPage(TempChromium.Browser.MainFrame.Url)) then
         begin
          if (trim (AeroTabs.Tabs[AeroTabs.ActiveTabIndex].Caption) <> '') or (URLsBar.Text <> '') then
            begin
             PageTrash.AddPage(AeroTabs.Tabs[AeroTabs.ActiveTabIndex].Caption, URLsBar.Text);
             PageTrash.AddFavIcon(AeroTabs.ActiveTabIndex);
            end;
         end;
        AeroTabs.Enabled := false;
        TypeCloseReturnTab := false;
        CloseFreeTab(pcMain.ActivePageIndex);
        RefreshFavIconCurrent.Enabled := true;

       end;
     end;
end;

procedure TMainForm.ActiveProtection1Click(Sender: TObject);
begin
 OpenForm('SecurityPermissionHub', '', '', False, 2, false);
end;

procedure TMainForm.AdBlock_BTClick(Sender: TObject);
begin
 OpenForm('SecurityPermissionHub', '', '', False, 0, false);
end;

procedure TMainForm.AddFavIcon(FIconIndex: integer);
var
 TempIcon: TIcon;
begin
  TempIcon := TIcon.Create;
  TempIcon.Width := 16;
  TempIcon.Height := 16;
  TempIcon := FavIconNone.Picture.Icon;
  FavIcon.Canvas.Draw(16,16,TempIcon);
  MainForm.FavIcons.AddIcon(TempIcon);
  UpdateFavIcon;
end;

procedure TMainForm.AddtoBookmarks1Click(Sender: TObject);
begin
 MainForm.OpenForm('AddNewLink', '', '', True, 0, false);
end;

procedure TMainForm.AddtoBookmarks2Click(Sender: TObject);
begin
 AddtoBookmarks1.Click;
end;

procedure TMainForm.AddToHistory(PageName, HURL: String);
var
 NUrl, DataString: string;
 AddIntemURLbar: TDetailItem;
 index: integer;
 SaveFiles: Boolean;
begin
 if HUrl = 'about:blank' then
  exit;
 if HURL = 'chrome-error://chromewebdata/' then
  exit;
 if PageName <> '' then
  NUrl := PageName;
 if (copy(NUrl,1,7) = LanguageCache.Lines[93]) or (trim(NUrl) = '') then
  NUrl := GetDomain(HUrl);
 if URLs.Items.IndexOf(HURL) < 0 then
  begin
   AddIntemURLbar := URLs.Items.Add;
   AddIntemURLbar.Caption := HURL;
   AddIntemURLbar.Notes := NUrl;
   if copy(HURL, 1, 5) = 'https' then
    AddIntemURLbar.ImageIndex := 20
   else
    AddIntemURLbar.ImageIndex := 19;
  end;
   if (Copy(inttostr(GetCountryCode), 1 , 1) = '5') or (Copy(inttostr(GetCountryCode), 1 , 1) = '3') or
      (Copy(inttostr(GetCountryCode), 1 , 1) = '7') or (Copy(inttostr(GetCountryCode), 1 , 1) = '2') then
       DataString := FormatDateTime('dd-mm-yyyy - dddd', Now);
   if (Copy(inttostr(GetCountryCode), 1 , 1) = '1') or (Copy(inttostr(GetCountryCode), 1 , 1) = '4') or
      (Copy(inttostr(GetCountryCode), 1 , 1) = '6') or (Copy(inttostr(GetCountryCode), 1 , 1) = '8') or
      (Copy(inttostr(GetCountryCode), 1 , 1) = '9') then
        DataString := FormatDateTime('mm-dd-yyyy - dddd', Now);
   if DirectoryExists(Profile_Pach + '\History\' + DataString) = false then
    CreateDir(Profile_Pach + '\History\' + DataString);
   try
    save_sc.Clear;
    if FileExists(Profile_Pach + '\History\' + DataString + '\URL.ini') = true then
     save_sc.Lines.LoadFromFile(Profile_Pach + '\History\' + DataString + '\URL.ini')
    else
     save_sc.Lines.SaveToFile(Profile_Pach + '\History\' + DataString + '\URL.ini');
    UrlSCR.Clear;
    UrlSCR.Items.LoadFromFile(Profile_Pach + '\History\' + DataString + '\URL.ini');
    SaveFiles := false;

    if UrlSCR.Items.IndexOf(HURL) < 0 then
     begin
      save_sc.Lines.Add(HURL);
      save_sc.Lines.SaveToFile(Profile_Pach + '\History\' + DataString + '\URL.ini');
      SaveFiles := true;
     end;
   finally
    save_sc.Clear;
    if FileExists(Profile_Pach + '\History\' + DataString + '\URLName.ini') = true then
     save_sc.Lines.LoadFromFile(Profile_Pach + '\History\' + DataString + '\URLName.ini')
    else
     save_sc.Lines.SaveToFile(Profile_Pach + '\History\' + DataString + '\URLName.ini');
    if UrlSCR.Items.IndexOf(HURL) < 0 then
     begin
      save_sc.Lines.Add(NURL);
      save_sc.Lines.SaveToFile(Profile_Pach + '\History\' + DataString + '\URLName.ini');
     end;
   end;
end;

procedure TMainForm.AdvTaskDialogEx1DialogButtonClick(Sender: TObject;
  ButtonID: Integer);
begin
 if ButtonID = 100 then
  StopSessionAndTerminate;
 if ButtonID = 101 then
  clearnavigationdata;
 if ButtonID = 2 then
  FCanClose := false;
end;

procedure TMainForm.AeroTabsActiveTabChanged(Sender: TObject; ATab: TChromeTab);
var
  TempChromium : TChromium;
begin
  ToolBar1.Width := ToolBarBackgroundPanel.Width;
  ToolBar1.Top := ToolBarBackgroundPanel.Top;
  pcMain.ActivePageIndex := AeroTabs.ActiveTab.Index;
  try
   if (AeroTabs.Tabs.Count > 0) and (SearchChromium(pcMain.ActivePageIndex, TempChromium)) then
     begin
      URLs.Text := TempChromium.DocumentURL;
      URLsBar.Text := TempChromium.DocumentURL;
      ApplyBrowserZoom;
      ChangeAddressInformation(false, TempChromium.Browser.MainFrame.Url);
      if TempChromium.DocumentURL <> '' then
        begin
         if not IsSPDPage(TempChromium.DocumentURL) then
          begin
           URLsBar.Text := TempChromium.DocumentURL;
           URLs.Text := TempChromium.DocumentURL;
          end
         else
          begin
           URLsBar.Text := 'webexplorer://speeddial';
           URLs.Text := 'webexplorer://speeddial';
          end;
        end;
     end;
  Except
  end;
  StatusHintPanel.Visible := false;
  HideHintPanelTimer.Enabled := false;
  try
     RefreshStopBts(StrToInt(GetTabValues('TabLoading')));
  Except
  end;
  SetMainFormCaption;
end;

procedure TMainForm.AeroTabsButtonAddClick(Sender: TObject;
  var Handled: Boolean);
begin
  Handled := true;
  NewTab.Execute;
end;

procedure TMainForm.AeroTabsButtonCloseTabClick(Sender: TObject;
  ATab: TChromeTab; var Close: Boolean);
var
  TempChromium : TChromium;
begin
 PreTabActiveIndex := AeroTabs.ActiveTabIndex;
 CloseCurrentTab := false;
 if AeroTabs.Tabs.Count = 1  then
  begin
    if ClearCache = true then
      begin
        //$REVIEW_THIS
        {cachedata.Lines.SaveToFile(Pchar(Profile_Pach + '\Cache\DeleteCache'));
        if ClearAllCache = true then
          ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + '.\WebExplorerNotification.exe'), '-clshAll', nil,SW_SHOWNORMAL)
        else
          ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + '.\WebExplorerNotification.exe'), '-cloch', nil,SW_SHOWNORMAL);}
      end;
    StopSessionAndTerminate;
  end
 else if ATab.Index = AeroTabs.ActiveTabIndex then
  begin
   HandleNeeded;
   FClosing := false;
   CloseCurrentTab := true;
   //Close := false;
   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
     begin

      if TempChromium.IsLoading then
       begin
        Close := false;

        TempChromium.StopLoad;
        AutoCloseTimer.Enabled := true;
       end
      else
       begin
        try
         AutoCloseTab := false;
         RefreshFavIcon.Enabled := true;
         CloseTab.Execute;
        Except
        end;
       end;

     end;

   

  end
 else
  begin
   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) and (not TempChromium.IsLoading) then
    begin
     AeroTabs.Enabled := false;
     if SearchChromium(ATab.Index, TempChromium) then
      begin
       try
        if (TempChromium.Browser.MainFrame.Url <> 'about:blank') and (URLsBar.Text <> Trim('webexplorer://speeddial')) and (not IsSystemPage(TempChromium.Browser.MainFrame.Url)) then
          begin
          if (URLsBar.Text <> 'webexplorer://speeddial') or (not IsSystemPage(TempChromium.Browser.MainFrame.Url)) or (TempChromium.Browser.MainFrame.Url <> ConvertToURI(Pchar(ExtractFilePath(Application.ExeName) + 'Resources\Pages\Error.html'))) or (trim (AeroTabs.Tabs[GetTabIndexByChromoium(TempChromium.Name)].Caption) <> '') or (TempChromium.Browser.MainFrame.Url <> '') then
            begin
             PageTrash.AddPage(AeroTabs.Tabs[ATab.Index].Caption, TempChromium.Browser.MainFrame.Url);
             PageTrash.AddFavIcon(ATab.Index);
            end;
          end;
       except
       end;
       //HandleNeeded;
       FClosing := false;
       //TabCRMHandle.Items.Delete(ATab.Index);
       //FavIcons.Delete(ATab.Index);
       //ShowMessage('função');
       ReturnClosedTab(ATab.Index);
       RefreshFavIcon.Enabled := true;
      end;
    end
   else
    begin
     Close := false;
     ViewWarningTabs;
    end;
  end;

end;

procedure TMainForm.AlignAll;
begin
 ToolBar1.Width := ToolBarBackgroundPanel.Width;
 ToolBar1.Top := ToolBarBackgroundPanel.Top;
 Tools_bt.Left := ToolBar1.Width - 38;
 //$REVIEW_THIS
 //if SPD_Visible = false then
  begin
   Tools_bt.Visible := true;
   SearchBar.Visible := true;
   SearchBar_PanelCB.Visible := true;
   SearchBar.Left := Tools_bt.Left - 262;
   SearchBar_panelCB.Left := SearchBar.Left + 4;
   URLs.Width := SearchBar.Left - 65;
   TopStatusPanel.Left := SearchBar.Left - 46;
   ToolLineBar3.Visible := true;
   ToolLineBar4.Visible := true;
 //$REVIEW_THIS
 { end

 {else
  begin
   Tools_bt.Visible := false;
   SearchBar.Visible := false;
   SearchBar_PanelCB.Visible := false;
   URLs.Width := Tools_bt.Left - 28;
   TopStatusPanel.Left := Tools_bt.Left - 10;
   ToolLineBar3.Visible := false;
   ToolLineBar4.Visible := false;        }
   //$REVIEW_THIS
   //URLs.DropDownWidth := URLsbar.Width;
  end;
 URLsBar.Width := URLs.Width;
 GoTopStatusButton;
 AdBlock_Panel.Left := TopStatusPanel.Left -18;
 //$REVIEW_THIS
 {activeprotection_bar.Left := (self.Width div 2) - (activeprotection_bar.width div 2);
 popupbar.Left := (self.Width div 2) - (popupbar.width div 2);
 ErrorPanelPopup.Left := (self.Width div 2) - (ErrorPanelPopup.width div 2);
 SubprocessCrashPanel.Left := (self.Width div 2) - (SubprocessCrashPanel.width div 2);}
 ToolLineBar2.Left := URLsBar.Left + URLsBar.Width - 1;
 ToolLineBar3.Left := SearchBar.Left;
 ToolLineBar4.Left := SearchBar.Left + SearchBar.Width - 1;
 TopToolLineBar1.Width := URLs.Width + SearchBar.Width + 4;
 //$REVIEW_THIS
 {if Dev_Panel1.Visible = true then
  begin
   DevTools_BTPanel1.Left := Dev_Panel1.Width - 80;
  end;}
end;

function TMainForm.AllTabSheetsAreTagged : boolean;
var
  i : integer;
begin
  Result := True;
  i := pred(pcMain.PageCount);

  while (i >= 0) and Result do
    if (pcMain.Pages[i].Tag <> 1) then
      Result := False
     else
      dec(i);
end;

procedure TMainForm.AppHotKey10HotKey(Sender: TObject);
begin
 if ApplicationActive then
  begin
   HandleNeeded;
   AddtoBookmarks1.Click;
  end;
end;

procedure TMainForm.AppHotKey1HotKey(Sender: TObject);
begin
 if FormActive then
  begin
   HandleNeeded;
   NewTab.Execute;
  end;
end;

procedure TMainForm.AppHotKey2HotKey(Sender: TObject);
begin
 if ApplicationActive then
  begin
   HandleNeeded;
   ACloseTab.Execute;
  end;
end;

procedure TMainForm.AppHotKey3HotKey(Sender: TObject);
begin
 if ApplicationActive then
  begin
   HandleNeeded;
   Trash_bt.Click;
  end;
end;

procedure TMainForm.AppHotKey4HotKey(Sender: TObject);
begin
 if ApplicationActive then
  begin
    HandleNeeded;
    Print1.Click;
  end;
end;

procedure TMainForm.AppHotKey6HotKey(Sender: TObject);
begin
 if ApplicationActive then
  FullScreen1.Click;
end;

procedure TMainForm.AppHotKey7HotKey(Sender: TObject);
var
  TempChromium : TChromium;
begin
 if ApplicationActive then
  if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
   begin
    HandleNeeded;
    TempChromium.ReloadIgnoreCache;
   end;
end;

procedure TMainForm.AppHotKey8HotKey(Sender: TObject);
begin
 if ApplicationActive then
  begin
    HandleNeeded;
    OpenSpeedDial1.Click;
  end;
end;

procedure TMainForm.AppHotKey9HotKey(Sender: TObject);
begin
 if ApplicationActive then
  begin
   HandleNeeded;
   BackBT.Click;
  end;
end;

function TMainForm.ApplicationActive: Boolean;
begin
 if MainForm.Visible = true then
  begin
   if GetActiveWindow() = self.Handle then
    Result := true
   else
    Result := false;
  end
 else
  Result := false;
end;

procedure TMainForm.ApplicationEvents1Exception(Sender: TObject; E: Exception);
begin
 {DebugReportStrings.Add(E.Message);
 DebugReportStrings.SaveToFile(Pchar(Profile_Pach + '\Debug.txt'));}
end;

procedure TMainForm.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
var
 Key : Word;
 Shift : TShiftState;
begin
  {case Msg.message of
    WM_KEYUP: HandleKeyUp(Msg, Handled);
    WM_KEYDOWN: HandleKeyDown(Msg, Handled);
  end;}

If Screen.ActiveForm = Self Then
  Case Msg.Message Of
   WM_KeyDown, WM_SysKeyDown, WM_LBUTTONDOWN : Begin
                                Key := Msg.wParam;
                                Shift := KeyDataToShiftState( Msg.lParam );
                                If (Shift = [ssCtrl, ssShift]) And (Key = Ord('T')) Then
                                 Begin
                                  ClosedPages1.Click;
                                  Handled := True;
                                 End;
                                If (Shift = [ssCtrl, ssShift]) And (Key = Ord('P')) Then
                                 Begin
                                  ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchWindow -privatemode'), NIL, SW_HIDE);
                                  Handled := True;
                                 End;
                               End;
  End;
 if MENUviewerPanel.Visible and
      (Msg.message >= WM_LBUTTONDOWN) and (Msg.message <= WM_MBUTTONDBLCLK) and
      not PtInRect(MENUviewerPanel.ClientRect, MENUviewerPanel.ScreenToClient(Msg.pt)) then
      begin
       ShowMenuHub(false);
      end;
end;

procedure TMainForm.ApplyBrowserZoom;
var
  TempChromium : TChromium;
begin
 try
  begin
   case StrtoInt(GetTabValues('BrowserZoom'))  of
     50: begin
          if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
           TempChromium.Browser.Host.ZoomLevel := -0.5;
       end;
    100: begin
          if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
           TempChromium.Browser.Host.ZoomLevel := 0;
       end;
    150: begin
          if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
           TempChromium.Browser.Host.ZoomLevel := 0.5;
       end;
    200: begin
          if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
           TempChromium.Browser.Host.ZoomLevel := 1.0;
       end;
    250: begin
          if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
           TempChromium.Browser.Host.ZoomLevel := 1.5;
       end;
    300: begin
          if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
           TempChromium.Browser.Host.ZoomLevel := 2.0;
       end;
    350: begin
          if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
           TempChromium.Browser.Host.ZoomLevel := 2.5;
       end;
    400: begin
          if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
           TempChromium.Browser.Host.ZoomLevel := 3.0;
       end;
   end;
  end;
 Except
 end;
end;

function TMainForm.AuthenticateUserProfile: Boolean;
var
 UserKeyProfile: TStringList;
begin
 //UserAuthenticate
 if FileExists(MainForm.Profile_Pach + '\' + GetHashMd5('UserKeys_' + GetProfileName + '@webexplorer') ) = true then
  begin
    try
     UserKeyProfile := TStringList.Create();
     UserKeyProfile.LoadFromFile(Pchar(MainForm.Profile_Pach + '\' + GetHashMd5('UserKeys_' + GetProfileName + '@webexplorer')));
     try
      UserKeyProfile.Text := EnCrypt(false, Trim(UserKeyProfile.Text));
      if  UserKeyProfile.Strings[0] = GetHashMd5(GetProfileName + '@webexplorer') then
       begin
        if UserKeyProfile.Strings[2] <> 'W36DJD4MABA2BZT' then  //se for <> ao secret token padrão do WE o usuário ativou o controle de autenticação
         begin

          with TAuthenticationHubFrm.Create(nil) do
           begin
            try
             UserKeyProfileStrs[1] := UserKeyProfile.Strings[0];
             UserKeyProfileStrs[2] := UserKeyProfile.Strings[1];
             UserKeyProfileStrs[3] := UserKeyProfile.Strings[2];
             {PswSecret := UserKeyProfile.Strings[1];
             PswSecretOTP := UserKeyProfile.Strings[2];}
             if ShowModal = mrOk then
              Result := true
             else
              begin
               Result := false;
              end;
            finally
             Free;
            end;

           end;

         end
        else
         Result := true;

       end
      else
       Result := false;
     finally
      //Result := false;
     end;

    finally
     UserKeyProfile.Free;
    end;
  end
 else
  Result := false;
end;

procedure TMainForm.AutoCloseTimerTimer(Sender: TObject);
begin
 TTimer(Sender).Enabled := false;
 AutoCloseTab := true;
 CloseTab.Execute;
end;

procedure TMainForm.Auto_KillTimer(Sender: TObject);
begin
 Auto_Kill.Enabled := false;
 try
  CloseAllBrowsers;
 finally
  ShellExecute(Application.Handle, 'open', 'taskkill.exe', Pchar('/F /T /PID ' + InttoStr(GetCurrentProcessId)), nil, SW_HIDE);
  //TaskKill(InttoStr(GetCurrentProcessId));
 end;
end;

procedure TMainForm.Chromium_OnAfterCreated(Sender: TObject; const browser: ICefBrowser);
var
  TempPageIndex : integer;
begin
  try
   ChangeFavIcon(true, GetTabIndexByChromoium(TChromium(sender).Name), '');
  Except
  end;
  if GetPageIndex(Sender, TempPageIndex) then
    PostMessage(Handle, CEF_AFTERCREATED, 0, TempPageIndex);
end;

procedure TMainForm.ChangeAddressInformation(StartingLoading: Boolean;
  UrlAddress: String);
var
 TempChromium : TChromium;
 TempProtocol: string;
 TempCertState: Integer;
begin
 if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
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
                 TempCertState := StrToInt(TListBox(pcMain.ActivePage.FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'CertInfo', [rfReplaceAll]) )).Items[6]);
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

procedure TMainForm.ChangeFavIcon(IsNoneIcon: Boolean; TabIndex: integer; CrmFavIconUrl: String);
var
 TempIcon: TIcon;
 png: TPNGImage;
 bmp: TBitmap;
 ico: TIcon;
 ImageListTemp: TImageList;
 TempFavIconUrl: string;
begin
 if IsNoneIcon then
  begin
   FavIcons.ReplaceIcon(TabIndex,FavIconNone.Picture.Icon);
   UpdateFavIcon;
  end
 else
  begin
   try
       begin
        TempFavIconUrl := Copy(CrmFavIconUrl, length(CrmFavIconUrl) - 3, length(CrmFavIconUrl));
        if TempFavIconUrl = '.png' then
         begin
          GetFavIcon(CrmFavIconUrl, MainForm.Profile_Pach + '\Cache\favicon.png');
          png := TPNGImage.Create;
          try
           png.LoadFromFile(Pchar(MainForm.Profile_Pach + '\Cache\favicon.png'));
           bmp := TBitmap.Create;
           try
            bmp.Width := png.Width;
            bmp.Height := png.Height;
            png.AssignTo(bmp);
            bmp.AlphaFormat := afIgnored;
             try
              ico := TIcon.Create;
              try
               ImageListTemp := TImageList.CreateSize(Bmp.Width, Bmp.Height);
               ImageListTemp.AddMasked(Bmp, clFuchsia);
               ImageListTemp.GetIcon(0, Ico);
               TempIcon := TIcon.Create;
               TempIcon.Width := 16;
               TempIcon.Height := 16;
               TempIcon := ico;
               FavIcon.Canvas.Draw(16,16,TempIcon);
               MainForm.FavIcons.ReplaceIcon(TabIndex,TempIcon);
               DeleteFile(Pchar(MainForm.Profile_Pach + '\Cache\favicon.png'));
               MainForm.AeroTabs.Refresh;
               MainForm.UpdateFavIcon;
               SetTabValues('NoneFavIcon', '0');
              finally
               ImageListTemp.Free;
              end;
             finally
              ico.Free;
             end;
           finally
            bmp.Free;
           end;
          finally
           png.Free;
          end;
         end
        else if TempFavIconUrl = '.ico' then
         begin
          try
           begin
            GetFavIcon(CrmFavIconUrl, MainForm.Profile_Pach + '\Cache\favicon.ico');
            TempIcon := TIcon.Create;
            TempIcon.Width := 16;
            TempIcon.Height := 16;
            TempIcon.LoadFromFile(MainForm.Profile_Pach + '\Cache\favicon.ico');
            FavIcon.Canvas.Draw(16,16,TempIcon);
            MainForm.FavIcons.ReplaceIcon(TabIndex,TempIcon);
            DeleteFile(Pchar(MainForm.Profile_Pach + '\Cache\favicon.ico'));
            MainForm.AeroTabs.Refresh;
            MainForm.UpdateFavIcon;
            SetTabValues('NoneFavIcon', '0');
           end;
          Except
           begin
            try
             begin
              GetFavIcon('http://' + MainForm.GetDomain(URLs.Text) + '/favicon.ico',MainForm.Profile_Pach + '\Cache\favicon.ico');
              TempIcon := TIcon.Create;
              TempIcon.Width := 16;
              TempIcon.Height := 16;
              TempIcon.LoadFromFile(MainForm.Profile_Pach + '\Cache\favicon.ico');
              FavIcon.Canvas.Draw(16,16,TempIcon);
              MainForm.FavIcons.ReplaceIcon(TabIndex,TempIcon);
              DeleteFile(Pchar(MainForm.Profile_Pach + '\Cache\favicon.ico'));
              MainForm.AeroTabs.Refresh;
              MainForm.UpdateFavIcon;
              SetTabValues('NoneFavIcon', '0');
             end;
            Except
             begin
              TempIcon := TIcon.Create;
              TempIcon.Width := 16;
              TempIcon.Height := 16;
              TempIcon := FavIconNone.Picture.Icon;
              FavIcon.Canvas.Draw(16,16,TempIcon);
              MainForm.FavIcons.ReplaceIcon(TabIndex,TempIcon);
              MainForm.AeroTabs.Refresh;
              MainForm.UpdateFavIcon;
              SetTabValues('NoneFavIcon', '0');
             end;
            end;
           end;
          end;
         end
        else if (TempFavIconUrl = '.svg') or (TempFavIconUrl = '.jpg') or (TempFavIconUrl = '.gif') then
         begin
          try
           begin
            GetFavIcon('http://' + MainForm.GetDomain(URLs.Text) + '/favicon.ico',MainForm.Profile_Pach + '\Cache\favicon.ico');
            TempIcon := TIcon.Create;
            TempIcon.Width := 16;
            TempIcon.Height := 16;
            TempIcon.LoadFromFile(MainForm.Profile_Pach + '\Cache\favicon.ico');
            FavIcon.Canvas.Draw(16,16,TempIcon);
            MainForm.FavIcons.ReplaceIcon(TabIndex,TempIcon);
            DeleteFile(PChar(MainForm.Profile_Pach + '\Cache\favicon.ico'));
            MainForm.AeroTabs.Refresh;
            MainForm.UpdateFavIcon;
            SetTabValues('NoneFavIcon', '0');
           end;
          Except
           begin
            TempIcon := TIcon.Create;
            TempIcon.Width := 16;
            TempIcon.Height := 16;
            TempIcon := FavIconNone.Picture.Icon;
            FavIcon.Canvas.Draw(16,16,TempIcon);
            MainForm.FavIcons.ReplaceIcon(TabIndex,TempIcon);
            MainForm.AeroTabs.Refresh;
            MainForm.UpdateFavIcon;
            SetTabValues('NoneFavIcon', '0');
           end;
          end;
         end
        else
         begin
          TempIcon := TIcon.Create;
          TempIcon.Width := 16;
          TempIcon.Height := 16;
          TempIcon := FavIconNone.Picture.Icon;
          MainForm.FavIcons.ReplaceIcon(TabIndex,TempIcon);
          MainForm.AeroTabs.Refresh;
          MainForm.UpdateFavIcon;
          SetTabValues('NoneFavIcon', '0');
         end;
       end;
      Except
       begin
        TempIcon := TIcon.Create;
        TempIcon.Width := 16;
        TempIcon.Height := 16;
        TempIcon := FavIconNone.Picture.Icon;
        MainForm.FavIcons.ReplaceIcon(TabIndex,TempIcon);
        MainForm.AeroTabs.Refresh;
        MainForm.UpdateFavIcon;
        SetTabValues('NoneFavIcon', '0');
       end;
      end;
     end;
end;


procedure TMainForm.CheckAdblockFile;
begin
 if FileExists(MainForm.Profile_Pach + '\AdblockPages.ini') = false then
  begin
   AdblockListDefault.Lines.SaveToFile(MainForm.Profile_Pach + '\AdblockPages.ini');
  end;
 AdPagesCache.Lines.LoadFromFile(MainForm.Profile_Pach + '\AdblockPages.ini');
 if FileExists(MainForm.Profile_Pach + '\AllowAdblockPages.ini') = false then
  begin
   AllowAdblockListDefault.Lines.SaveToFile(MainForm.Profile_Pach + '\AllowAdblockPages.ini');
  end;
 AdPagesCache2.Lines.LoadFromFile(MainForm.Profile_Pach + '\AllowAdblockPages.ini');
end;

procedure TMainForm.CheckHistoryConditions(cachedays: Integer);
begin
 //$REVIEW_THIS
 {try
  LinkCenter.GetHistotyPagesList;
 finally
  if (ParamStr(1) <> '-privatemode') or (ParamStr(3) <> '-privatemode') then
   begin
    if LinkCenter.FolderPages.Items.Count > cachedays then
     MainForm.ClearCache := true;
   end;
 end;}
end;

procedure TMainForm.CheckIsTouchPC;
var
 ATouchSupport : TTouchCapabilities;
begin
{if (tcTabletPC in ATouchSupport) then Memo1.Lines.Add('tcTabletPC');   //Teste de outras opções
if (tcIntTouch in ATouchSupport) then Memo1.Lines.Add('tcIntTouch');
if (tcExtTouch in ATouchSupport) then Memo1.Lines.Add('tcExtTouch');
if (tcIntPen in ATouchSupport) then Memo1.Lines.Add('tcIntPen');
if (tcExtPen in ATouchSupport) then Memo1.Lines.Add('tcExtPen');
if (tcMultiTouch in ATouchSupport) then Memo1.Lines.Add('tcMultiTouch');
if (tcReady in ATouchSupport) then Memo1.Lines.Add('tcReady'); }
 try
  ATouchSupport := GetTouchCapabilities;
  if (tcTabletPC in ATouchSupport) and (tcReady in ATouchSupport) then
   IsTouchPC := true
  else
   IsTouchPC := false;
 Except
  IsTouchPC := false;
 end;
end;

function TMainForm.CheckUrl(url: string): boolean;
var
 RegularExpression : TRegEx;
 Match : TMatch;
begin
 RegularExpression.Create('^(?:http(s)?:\/\/)?[\w.-]+(?:\.[\w\.-]+)+[\w\-\._~:/?#[\]@!\$&''\(\)\*\+,;=.]+$');
 Match := RegularExpression.Match(url);
 Result := Match.Success;
end;

procedure TMainForm.check_profile;
var
 buff : PCHAR;
begin
 try
  buff:= StrAlloc(500);
  if GetEnvironmentVariable('USERNAME', BUFF, 500) > 0 then
   User_Name := string(buff);
  {$IFDEF STORE}
  if DirectoryExists(GetUWPAppData + '\Profiles\' + user_name + '\History') = false then
   begin
    ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchAppProfile'), NIL, SW_HIDE);
    StopSessionAndTerminate;
   end;
  Profile_Pach := GetUWPAppData + '\Profiles\' + user_name;
  {$ELSE}
  if DirectoryExists(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Profiles\' + user_name + '\History') = false then
   begin
    //$REVIEW_THIS
    {ShellExecute(handle,'open',PChar(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Profiles\ProfileWizard.exe'), nil,nil,SW_SHOWNORMAL);
    StopSessionAndTerminate;}
   end;
  Profile_Pach := ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\' + user_name;
  {$ENDIF}
 except
  if DirectoryExists(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Profiles\Usr') = false then
   begin
    Profile_Pach := ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\Usr';
    CreateDir(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Profiles\Usr');
    CreateDir(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Profiles\Usr\History');
    CreateDir(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Profiles\Usr\Cache\History');
    CreateDir(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Profiles\Usr\SpeedDial');
    CopyFile(Pchar(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '.\Profiles\Global_Config.xml'),Pchar(Profile_Pach + '\Global_Config.xml'), true);
    buff := Pchar('"' + ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\Bookmarks\*.*" "' + ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\Usr\Bookmarks\*.*" /S /Y');
    shellExecute(handle, '', 'xCopy', buff, '', SW_HIDE);
   end;
  Profile_Pach := ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\Usr';
 end;
 //$REVIEW_THIS
 {if (DirectoryExists(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\Cache') = true) and (DirectoryExists(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\Cache\UpdateInProgress') = false) then
  DeleteDir(Self.Handle, Pchar(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Profiles\Cache'));}
 TrustedPagesEnabler.Enabled := true;
 CheckAdblockFile;
 //$REVIEW_THIS
 {if FileExists(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html')) = true then
  begin
   ReportFileTimesOpen(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
   ReportFileTimes(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
  end;}
end;

procedure TMainForm.chromeaccessibility1Click(Sender: TObject);
begin
 OpenPopUpWindow('chrome://accessibility', false);
end;

procedure TMainForm.chromeblobinternals1Click(Sender: TObject);
begin
 OpenPopUpWindow('chrome://blob-internals/', false);
end;

procedure TMainForm.chromehistograms1Click(Sender: TObject);
begin
 OpenPopUpWindow('chrome://histograms/', false);
end;

procedure TMainForm.chromeindexeddbinternals1Click(Sender: TObject);
begin
 OpenPopUpWindow('chrome://indexeddb-internals/', false);
end;

procedure TMainForm.chromenetworkerrors1Click(Sender: TObject);
begin
 OpenPopUpWindow('chrome://network-errors/', false);
end;

procedure TMainForm.chromesystem1Click(Sender: TObject);
begin
 OpenPopUpWindow('chrome://system/', false);
end;

procedure TMainForm.chromewebrtcinternals1Click(Sender: TObject);
begin
 OpenPopUpWindow('chrome://webrtc-internals/', false);
end;

procedure TMainForm.Chromium_BeforeContextMenu(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame;
  const params: ICefContextMenuParams; const model: ICefMenuModel);
begin
 if params.IsEditable = false then
  begin
   if params.SelectionText = '' then
    begin
     model.Clear;
     model.AddItem(110,OpenLink1.Caption);
     model.AddItem(1,OpenLinkinNewTab1.Caption);
     model.AddItem(2,OpeninNewWindow2.Caption);
     //model.AddItem(3,OpenNewTabinBackground1.Caption);
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
       model.AddItem(4,Back2.Caption);
       model.SetEnabled(4,Browser.CanGoBack);
       model.AddItem(5,Forward2.Caption);
       model.SetEnabled(5,Browser.CanGoForward);
       model.AddItem(6,Refresh2.Caption);
       model.SetEnabled(6,not Browser.IsLoading);
       model.AddItem(7,RefreshIgnoreCache1.Caption);
       model.SetEnabled(7,not Browser.IsLoading);
       model.AddItem(8,Stop2.Caption);
       model.SetEnabled(8,Browser.IsLoading);
       model.AddSeparator;
       model.AddItem(9,AddtoBookmarks2.Caption);
       model.AddItem(10,AddtoSpeedDial2.Caption);
       model.AddSeparator;
       model.AddItem(24,NightMode1.Caption);
       model.SetEnabled(24,not Browser.IsLoading);
       model.AddItem(11,ViewinReadeMode2.Caption);
       model.SetEnabled(11,not Browser.IsLoading);
       model.AddSeparator;
       model.AddItem(12,Print2.Caption);
       model.SetEnabled(12,not Browser.IsLoading);
       model.AddItem(13,Share1.Caption);
       if IsSystemPage(browser.MainFrame.Url) then
        model.SetEnabled(13,false)
       else
        model.SetEnabled(13,true);
       {if FormMagnifier.IsVisible then
        model.AddItem(22,MainForm.LanguageCache.Lines[489])
       else
        model.AddItem(22,MainForm.LanguageCache.Lines[488]);}
      end;
     model.AddSeparator;
     {model.AddItem(14,Copy2.Caption);
     if params.SelectionText = trim('') then
     model.SetEnabled(14, false);
     model.AddItem(15,Cut2.Caption);
     model.AddItem(16,Paste2.Caption);
     if params.IsEditable = false then
      begin
       model.SetEnabled(15, false);
       model.SetEnabled(16, false);
      end;}
     model.AddItem(17,SelectAll1.Caption);
     model.AddSeparator;
     model.AddItem(23, copylink1.Caption);
     if params.LinkUrl <> '' then
      model.SetEnabled(23,true)
     else
      model.SetEnabled(23,false);
     model.AddItem(18,SearchContent1.Caption);
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
         model.AddItem(20, SaveImage1.Caption);
         model.AddItem(21, OpenImage1.Caption);
         imageurl := params.SourceUrl;
        end;
      end;
     model.AddSeparator;
     if MainForm.PopUpModeWindow = false then
      model.AddItem(CUSTOMMENUCOMMAND_INSPECTELEMENT, MainForm.LanguageCache.Lines[469]);
     model.AddItem(19,ViewSorce1.Caption);
      if IsSystemPage(browser.MainFrame.Url) then
        model.Clear;
    end
   else
    begin
     if params.SelectionText <> trim('') then
      begin
       if CheckUrl(params.SelectionText) then
        begin
         model.AddSeparator;
         model.AddItem(111,OpenLinkinNewTab1.Caption);
        end;
      end;
     if not IsSystemPage(browser.MainFrame.Url) then
      begin
       model.AddSeparator;
       model.AddItem(18,SearchContent1.Caption);
       if params.SelectionText <> trim('') then
        begin
         model.SetEnabled(18, true);
         searchtext := params.SelectionText;
        end
       else
        model.SetEnabled(18, false);
       if MainForm.PopUpModeWindow = false then
        model.AddItem(CUSTOMMENUCOMMAND_INSPECTELEMENT, MainForm.LanguageCache.Lines[469]);
      end;
    end;
  end
 else
  begin
   if not IsSystemPage(browser.MainFrame.Url) then
    begin

     if params.SelectionText <> trim('') then
      begin
       if CheckUrl(params.SelectionText) then
        begin
         model.AddSeparator;
         model.AddItem(111,OpenLinkinNewTab1.Caption);
        end;
      end;
     if Win32MajorVersion >= 10 then
      begin
       model.AddSeparator;
       model.AddItem(126, MainForm.LanguageCache.Lines[553]);
      end;
     model.AddSeparator;
     model.AddItem(18,SearchContent1.Caption);
     if params.SelectionText <> trim('') then
      begin
       model.SetEnabled(18, true);
       searchtext := params.SelectionText;
      end
     else
      model.SetEnabled(18, false);
     if MainForm.PopUpModeWindow = false then
      model.AddItem(CUSTOMMENUCOMMAND_INSPECTELEMENT, MainForm.LanguageCache.Lines[469]);
    end;
  end;
end;

procedure TMainForm.Chromium_BeforeDownload(Sender: TObject;
  const browser: ICefBrowser; const downloadItem: ICefDownloadItem;
  const suggestedName: ustring; const callback: ICefBeforeDownloadCallback);
var
 DownloadDir1: String;
begin
 if copy(downloadItem.Url, 1, 11) = 'filesystem:' then
  begin
   callback.Cont(MainForm.GetUserDesktopPath + suggestedName, True);
   RegisterDownloadFile(suggestedName, AppMenu.opt_downloaddir.Text + suggestedName, MainForm.FormatByteSize(+abs(downloadItem.TotalBytes)) + ' - ' + MainForm.GetDomain(copy(downloadItem.Url, 12, length(downloadItem.Url))) + ' - (' + FormatDateTime('dd/mm - hh:nn', now) + ')');
  end
 else if copy(downloadItem.Url, 1, 5) = 'blob:' then
  begin
   callback.Cont(MainForm.GetUserDesktopPath + suggestedName, True);
   RegisterDownloadFile(suggestedName, AppMenu.opt_downloaddir.Text + suggestedName, MainForm.FormatByteSize(+abs(downloadItem.TotalBytes)) + ' - ' + MainForm.GetDomain(copy(downloadItem.Url, 12, length(downloadItem.Url))) + ' - (' + FormatDateTime('dd/mm - hh:nn', now) + ')');
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
  DownloadTaskDialogEx1.ExpandedText := MainForm.LanguageCache.Lines[445] + ' ' + suggestedName;
  DownloadTaskDialogEx1.Execute;
  if CancelDownload = false then
   begin
    MainForm.DownloadName := suggestedName;
    if OtherDownloadFolder = false then
     begin
      MainForm.StartDownloadExplorer('-newdownload', suggestedName, downloadItem.Url, TChromium(sender).Browser.MainFrame.Url);
      RegisterDownloadFile(suggestedName, AppMenu.opt_downloaddir.Text + suggestedName, MainForm.FormatByteSize(+abs(downloadItem.TotalBytes)) + ' - ' + MainForm.GetDomain(downloadItem.Url) + ' - (' + FormatDateTime('dd/mm - hh:nn', now) + ')');
     end
    else
     begin
      SaveDialog.FileName := suggestedName;
      if SaveDialog.Execute then
       begin
        MainForm.StartDownloadExplorer('-newdownloadfolder', SaveDialog.FileName, downloadItem.Url, TChromium(sender).Browser.MainFrame.Url);
        OtherDownloadFolder := false;
        RegisterDownloadFile(ExtractFileName(SaveDialog.FileName), SaveDialog.FileName, MainForm.FormatByteSize(+abs(downloadItem.TotalBytes)) + ' - ' + MainForm.GetDomain(downloadItem.Url) + ' - (' + FormatDateTime('dd/mm - hh:nn', now) + ')');
       end;
     end;
   end
  else
   begin
    CancelDownload := false;
   end;
  end;
end;

procedure TMainForm.Chromium_BeforeResourceLoad(Sender: TObject; const browser: ICefBrowser; const frame: ICefFrame; const request: ICefRequest; const callback: ICefRequestCallback; out Result: TCefReturnValue);
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
end;

procedure TMainForm.Chromium_CertificateError(Sender: TObject;
  const browser: ICefBrowser; certError: Integer; const requestUrl: ustring;
  const sslInfo: ICefSslInfo; const callback: ICefRequestCallback;
  out Result: Boolean);
begin
  callback.Cont(false);
  Result := True;
end;

procedure TMainForm.Chromium_ContextMenuCommand(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame;
  const params: ICefContextMenuParams; commandId: Integer; eventFlags: Cardinal;
  out Result: Boolean);
begin
 case commandId of
  110: OpenLink1.Click;
  111: OpenNewTab(params.SelectionText);
  1: OpenNewTab(params.LinkUrl);
  2: OpenLinkNewWindow(params.LinkUrl);
  3: OpenNewTabinBackground1.Click;
  4: Back2.Click;
  5: Forward2.Click;
  6: Refresh2.Click;
  7: RefreshIgnoreCache1.Click;
  8: Stop2.Click;
  9: MainForm.AddtoBookmarks1.Click;
  10: AddtoSpeedDial2.Click;
  11: ViewinReadeMode2.Click;
  12: Print2.Click;
  13: Share1.Click;
  14: Copy2.Click;
  15: Cut2.Click;
  16: Paste2.Click;
  17: SelectAll1.Click;
  18: begin
       if (ParamStr(1) = '-popup') then
         begin
          if MainForm.privatemode = false then
           ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchWindow ' + MainForm.SearchaddressProvider + params.SelectionText), NIL, SW_HIDE)
          else
           ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchWindow -privatemode ' + MainForm.SearchaddressProvider + params.SelectionText), NIL, SW_HIDE);
         end
         else
         MainForm.OpenNewTab(MainForm.SearchaddressProvider + params.SelectionText);
       end;
  19: ViewSorce1.Click;
  20: begin MainForm.StartDownloadExplorer('-newdownloadID', MainForm.ExtractUrlFileName(imageurl), imageurl, TChromium(Sender).Browser.MainFrame.Url);  DownloadImage(imageurl, TChromium(Sender).Browser.MainFrame.Url);  end;
  21: OpenNewTabImg.Enabled := true;
  //22: ShowMagnifier1.Click;
  23: begin temp_url.Text := params.LinkUrl; temp_url.SelectAll; temp_url.CopyToClipboard; end;
  24: NightMode1.Click;
  126:begin
        keybd_event(vk_LWin, 0, 0, 0);
        keybd_event(186, 0, 0, 0);
        keybd_event(vk_LWin, 0, KEYEVENTF_KEYUP, 0);
        keybd_event(186, 0, KEYEVENTF_KEYUP, 0);
      end;
  //190:browser.Host.AddWordToDictionary(TempSpellWord);
 end;
 if (commandId = CUSTOMMENUCOMMAND_INSPECTELEMENT) then
  begin
   mousePointElementX := params.XCoord -1;
   mousePointElementY := params.YCoord -1;
   DevInspectElement := true;
   //if not TPanel(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TChromium(Sender), 'Chromium', 'DevPanel', [rfReplaceAll]) )).Visible then
   //if TPanel(pcMain.ActivePage.FindComponent('DevPanel' + IntToStr(GetTabIndexByChromoium(TChromium(Sender).Name)))).Visible = true then
   if TPanel(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TChromium(Sender).Name, 'Chromium', 'DevPanel', [rfReplaceAll]) )).Visible = true then
    begin
     try
      ShowDevTools;
     finally
      DevInspectElement := true;
      InspectDevToolsTimer.enabled := true;
     end;

    end
   else
    ShowDevTools;
   Result := True;
  end;
end;

procedure TMainForm.Chromium_DownloadUpdated(Sender: TObject;
  const browser: ICefBrowser; const downloadItem: ICefDownloadItem;
  const callback: ICefDownloadItemCallback);
begin
   if (downloadItem.IsInProgress) and (downloadItem.MimeType = 'application/pdf') then
    begin
     if downloadItem.PercentComplete = 1 then
      DownloadProgressDialog.Show;
     DownloadProgressDialog.Position := downloadItem.PercentComplete;
    end
   else
    DownloadProgressDialog.Hide;
  if (downloadItem.IsComplete = true) and (copy(downloadItem.Url, 1, 11) = 'filesystem:') then
   begin
    TChromium(sender).Reload;
    ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchWindow -notification'), NIL, SW_HIDE);
   end;
  if (downloadItem.IsComplete = true) and (copy(downloadItem.Url, 1, 5) = 'blob:') then
   begin
    TChromium(sender).Reload;
    ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchWindow -notification'), NIL, SW_HIDE);
   end;
end;

procedure TMainForm.Chromium_FavIconUrlChange(Sender: TObject; const browser: ICefBrowser; const iconUrls: TStrings);
var
 TempFavIconUrl, CrmFavIconUrl: string;
 TempFavIconUrlIndex: ShortInt;
begin
try
 begin
 CrmFavIconUrl := '';
 //$REVIEW_THIS
 {if SPD_Visible = false then
  begin}
   CrmFavIconUrl := iconUrls.Strings[iconUrls.Count -1];
   TempFavIconUrl := Copy(CrmFavIconUrl, length(CrmFavIconUrl) - 3, length(CrmFavIconUrl));
   if (TempFavIconUrl = '.svg') or (TempFavIconUrl = '.jpg') or (TempFavIconUrl = '.gif') then
    begin
     try
      TempFavIconUrlIndex := 1;
      while (TempFavIconUrl = '.svg') or (TempFavIconUrl = '.jpg') or (TempFavIconUrl = '.gif') do
       begin
        inc(TempFavIconUrlIndex);
        CrmFavIconUrl := iconUrls.Strings[iconUrls.Count - TempFavIconUrlIndex];
        TempFavIconUrl := Copy(CrmFavIconUrl, length(CrmFavIconUrl) - 3, length(CrmFavIconUrl));
       end;
     Except
      ChangeFavIcon(true, GetTabIndexByChromoium(TChromium(sender).Name), '');
     end;
    end
   else
    begin
      if browser.MainFrame.IsValid then
        ChangeFavIcon(false, GetTabIndexByChromoium(TChromium(sender).Name), CrmFavIconUrl)
      else
        ChangeFavIcon(true, GetTabIndexByChromoium(TChromium(sender).Name), '');
    end;
  //$REVIEW_THIS
  {end
 else
  begin
   ChangeFavIcon(true, nil, nil);
  end;}
 end;
Except
end;

end;

procedure TMainForm.Chromium_FullScreenModeChange(Sender: TObject;
  const browser: ICefBrowser; fullscreen: Boolean);
begin
 try
  begin
     if GetTabIndexByChromoium(TChromium(sender).Name) = AeroTabs.ActiveTabIndex then
      FullMode(fullscreen);
  end;
 Except

 end;
end;

procedure TMainForm.Chromium_Jsdialog(Sender: TObject;
  const browser: ICefBrowser; const originUrl: ustring;
  dialogType: TCefJsDialogType; const messageText, defaultPromptText: ustring;
  const callback: ICefJsDialogCallback; out suppressMessage, Result: Boolean);
begin
 if IsSPDPage(browser.MainFrame.Url) then
  begin
    suppressMessage := true;
    MainForm.SPDUpdateChecked := true;
    if messageText <> WESPDVersion then
     begin
      Result := false;
      //$REVIEW_THIS
      //UpdateSPDFile;
      end;
  end
 else
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
end;

procedure TMainForm.Chromium_KeyEvent(Sender: TObject;
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

procedure TMainForm.Chromium_LoadEnd(Sender: TObject; const browser: ICefBrowser; const frame: ICefFrame; httpStatusCode: Integer);
begin
 if frame.IsMain then
  begin
    SetTabValues('TabLoading', '0');
    if GetTabIndexByChromoium(TChromium(sender).Name) = pcMain.ActivePageIndex then
     begin
      RefreshStopBts(0);
      BackBT.Enabled := browser.CanGoBack;
      ForwardBT.Enabled := browser.CanGoForward;
     end;
    if not privatemode then
     begin
      if not IsSystemPage(frame.Url) then
        AddToHistory(pcMain.Pages[GetTabIndexByChromoium(TChromium(sender).Name)].Caption, frame.Url);
     end;
    MainForm.AeroTabs.Tabs[GetTabIndexByChromoium(TChromium(sender).Name)].SpinnerState := tssNone;
    ChangeAddressInformation(false, browser.MainFrame.Url);
    if (TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetCertStatus > 0) and (TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetCertStatus < 65) then
     begin

      ShowNotificationPage(GetTabIndexByChromoium(TChromium(sender).Name), StrToInt( TListBox( pcMain.Pages[GetTabIndexByChromoium(TChromium(sender).Name)].FindComponent( StringReplace(TChromium(sender).Name, 'Chromium', 'CertInfo', [rfReplaceAll]  )) ).Items[6] ), 0, TChromium(sender).Name, 'errorText', GetDomain(browser.MainFrame.Url));
     end;
  end;
  if not privatemode then
   begin
    if not IsSystemPage(browser.MainFrame.Url) then
     AddToHistory(pcMain.Pages[GetTabIndexByChromoium(TChromium(sender).Name)].Caption, browser.MainFrame.Url);
   end;

end;

procedure TMainForm.Chromium_LoadError(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame; errorCode: Integer;
  const errorText, failedUrl: ustring);
var
 TempTitleString: String;
begin
  if errorCode = -101 then
  begin
   if frame.IsMain = true then
    begin
     frame.LoadUrl('about:blank');
     ShowNotificationPage(GetTabIndexByChromoium(TChromium(sender).Name), errorCode, 3, TChromium(sender).Name, errorText, failedUrl);
    end
   else
    begin
     frame.LoadUrl('about:blank');
     TempTitleString := StringReplace(MainForm.LanguageCache.Lines[97], '<h1>', '', [rfreplaceall]);
     TempTitleString := StringReplace(TempTitleString, '</h1>', '', [rfreplaceall]);
     LoadPageError(frame.Identifier, TChromium(sender).Name, TempTitleString, errorText, IntToStr(errorCode));
    end;
  end
 else if errorCode = -207 then      //certificado invaldio
  begin


  end
 else if errorCode = -105 then
  begin
   if frame.IsMain = true then
    begin
     frame.LoadUrl('about:blank');
     ShowNotificationPage(GetTabIndexByChromoium(TChromium(sender).Name), errorCode, 3, TChromium(sender).Name, errorText, failedUrl);
    end
   else
    begin
     frame.LoadUrl('about:blank');
     if CheckUrl(failedUrl) then
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
    end;
  end
 else if errorCode = -118 then      //Timeout
  begin
   if frame.IsMain = true then
    begin
     frame.LoadUrl('about:blank');
     ShowNotificationPage(GetTabIndexByChromoium(TChromium(sender).Name), errorCode, 3, TChromium(sender).Name, errorText, failedUrl);
    end
   else
    begin
     frame.LoadUrl('about:blank');
     TempTitleString := StringReplace(MainForm.LanguageCache.Lines[97], '<h1>', '', [rfreplaceall]);
     TempTitleString := StringReplace(TempTitleString, '</h1>', '', [rfreplaceall]);
     LoadPageError(frame.Identifier, TChromium(sender).Name, TempTitleString, errorText, IntToStr(errorCode));
    end;
  end
 else if errorCode = -302 then
  begin
   if frame.IsMain = true then
    begin
     ShowNotificationPage(GetTabIndexByChromoium(TChromium(sender).Name), errorCode, 3, TChromium(sender).Name, errorText, failedUrl);
     {TempTitleString := MainForm.LanguageCache.Lines[101];
     TempTitleString := StringReplace(TempTitleString, '</title>', '', [rfreplaceall]);
     TempTitleString := StringReplace(TempTitleString, '<title>', '', [rfreplaceall]);
     TChromium(Sender).ExecuteJavaScript('document.title = "' + TempTitleString + '";', '', 0);}
     {ErrorTitlePopup.Caption := MainForm.LanguageCache.Lines[101];
     ErrorTitlePopup.Caption := StringReplace(ErrorTitlePopup.Caption, '<h1>', '', [rfreplaceall]);
     ErrorTitlePopup.Caption := StringReplace(ErrorTitlePopup.Caption, '</h1>', '', [rfreplaceall]);}
    end
   else
    begin
     frame.LoadUrl('about:blank');
     TempTitleString := StringReplace(MainForm.LanguageCache.Lines[101], '<h1>', '', [rfreplaceall]);
     TempTitleString := StringReplace(TempTitleString, '</h1>', '', [rfreplaceall]);
     LoadPageError(frame.Identifier, TChromium(sender).Name, TempTitleString, errorText, IntToStr(errorCode));
    end;
   //Frame.LoadUrl('about:blank');
   //ShowErrorMsg(true);
  end
 else if errorCode = -106 then
  begin
   if frame.IsMain = true then
    begin
     ShowNotificationPage(GetTabIndexByChromoium(TChromium(sender).Name), errorCode, 3, TChromium(sender).Name, errorText, failedUrl);
     {ErrorTitlePopup.Caption := MainForm.LanguageCache.Lines[103];
     ErrorTitlePopup.Caption := StringReplace(ErrorTitlePopup.Caption, '<h1>', '', [rfreplaceall]);
     ErrorTitlePopup.Caption := StringReplace(ErrorTitlePopup.Caption, '</h1>', '', [rfreplaceall]);}
    end;
   //Frame.LoadUrl('about:blank');
   //ShowErrorMsg(true);
  end
 else if errorCode = -330 then
  begin
   if frame.IsMain = true then
    begin
     ShowNotificationPage(GetTabIndexByChromoium(TChromium(sender).Name), errorCode, 3, TChromium(sender).Name, errorText, failedUrl);
     {ErrorTitlePopup.Caption := MainForm.LanguageCache.Lines[103];
     ErrorTitlePopup.Caption := StringReplace(ErrorTitlePopup.Caption, '<h1>', '', [rfreplaceall]);
     ErrorTitlePopup.Caption := StringReplace(ErrorTitlePopup.Caption, '</h1>', '', [rfreplaceall]);}
    end;
   //Frame.LoadUrl('about:blank');
   //ShowErrorMsg(true);
  end
 else
  begin
   //ShowErrorMsg(false);
  end;
end;

procedure TMainForm.Chromium_LoadingProgressChange(Sender: TObject;
  const browser: ICefBrowser; const progress: Double);
begin

end;

procedure TMainForm.Chromium_LoadingStateChange(Sender: TObject;
  const browser: ICefBrowser; isLoading, canGoBack, canGoForward: Boolean);
begin
 if (GetTabIndexByChromoium(TChromium(sender).Name) = pcMain.ActivePageIndex) and (isLoading = false) then
  begin

  end;
end;

procedure TMainForm.Chromium_LoadStart(Sender: TObject; const browser: ICefBrowser; const frame: ICefFrame; transitionType: Cardinal);
var
 TempCertItem1, TempCertItem2: String;
 ad_index: integer;
begin
 if frame.IsMain then
  begin
    try
     try
      //HideBarNotification(TChromium(sender).Name);
     Except
     end;
     TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[0] := 'false';
     TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[1] := '';
     TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[2] := '';
     TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[6] := inttostr(TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetCertStatus);
     if TChromium(Sender).VisibleNavigationEntry.SSLStatus.IsSecureConnection then
      begin
       TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[0] := 'true';
       TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[1] := TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetX509Certificate.GetIssuer.GetDisplayName;
       CertIssuerOrgNames.Clear;
       TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetX509Certificate.GetIssuer.GetOrganizationNames(CertIssuerOrgNames);
       TempCertItem1 := CertIssuerOrgNames[0];
       TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[2] := TempCertItem1;
       CertIssuerOrgNames.Clear;
       TChromium(Sender).VisibleNavigationEntry.SSLStatus.GetX509Certificate.GetSubject.GetOrganizationNames(CertIssuerOrgNames);
       if CertIssuerOrgNames.Count < 1 then
        TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[3] := LanguageCache.Lines[550]
       else
        TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[3] := CertIssuerOrgNames[0];
       if languageIndex < 1 then
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
       TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[4] := TempCertItem2;
       if languageIndex < 1 then
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
       TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[5] := TempCertItem2;
      end
     else
      begin
       TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[0] := 'false';
      end;

    Except
     TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[0] := 'false';
     TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[1] := 'carregando';
     TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[2] := 'carregando';
     TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[3] := 'carregando';
     TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[4] := 'carregando';
     TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[5] := 'carregando';
     TListBox(pcMain.Pages[GetTabIndexByChromoium(TChromium(Sender).Name)].FindComponent('CertInfo' +  StringReplace(TChromium(Sender).Name , 'Chromium', '', [rfReplaceAll]))).Items[6] := '0';
    end;


    SetTabValues('NoneFavIcon', '1');
    SetTabValues('TabLoading', '1');
    ChangeFavIcon(true, GetTabIndexByChromoium(TChromium(sender).Name), '');
    MainForm.AeroTabs.Tabs[GetTabIndexByChromoium(TChromium(sender).Name)].SpinnerState := tssRenderedDownload;
    if Trim(GetDomain(browser.MainFrame.Url)) <> '' then
     begin
      pcMain.Pages[GetTabIndexByChromoium(TChromium(sender).Name)].Caption := GetDomain(browser.MainFrame.Url);
      AeroTabs.Tabs[GetTabIndexByChromoium(TChromium(sender).Name)].Caption := GetDomain(browser.MainFrame.Url);
     end;
    if GetTabIndexByChromoium(TChromium(sender).Name) = pcMain.ActivePageIndex then
      begin
        RefreshStopBts(1);
        SetMainFormCaption;
      end;
    ChangeAddressInformation(true, browser.MainFrame.Url);
    try
     if frame.Url <> 'about:blank' then
      with TPanel( pcMain.Pages[GetTabIndexByChromoium( TChromium(sender).Name )].FindComponent( StringReplace(TChromium(sender).Name, 'Chromium', 'PanelNotification', [rfReplaceAll]) )) do
       begin
        Visible := false;
       end;
      {with TPanel( pcMain.Pages[GetTabIndexByChromoium(TChromium(sender).Name)].FindComponent( 'PanelNotification' )) do
       begin
        free;
       end;}
    Except
    end;

  end;
end;

procedure TMainForm.Chromium_OnAddressChange(Sender: TObject; const browser: ICefBrowser; const frame: ICefFrame; const url: ustring);
var
  TempPageIndex : integer;
begin
  try
   //MainForm.HideNotificationPage(TChromium(sender).Name);
   LoadBlockedContent := false;
   if GetTabIndexByChromoium(TChromium(sender).Name) = AeroTabs.ActiveTabIndex then
    begin
      if not IsSPDPage(url) then
       begin
        URLsBar.Text := url;
        URLs.Text := url;
       end
      else
       begin
        URLsBar.Text := 'webexplorer://speeddial';
        URLs.Text := 'webexplorer://speeddial';
       end;
    end
  Except
  end;
  if not(FClosing) and (pcMain.TabIndex >= 0) and GetPageIndex(Sender, TempPageIndex) and (pcMain.TabIndex = TempPageIndex) then
   begin
    if not IsSPDPage(url) then
      URLs.Text := url
    else
      URLs.Text := 'webexplorer://speeddial';
   end;
end;

function TMainForm.GetAeroColor: TColor;
var
 Reg: TRegistry;
 AeroColor: String;
begin
if WindowsUI = 1 then
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

function TMainForm.GetCountryCode: Integer;
var
 Buffer : PChar;
 Size : integer;
begin
 Size := GetLocaleInfo (LOCALE_USER_DEFAULT, LOCALE_IDEFAULTCOUNTRY, nil, 0);
 GetMem(Buffer, Size);
 try
  GetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_IDEFAULTCOUNTRY, Buffer, Size);
  Result := StrToInt(Buffer);
 finally
  FreeMem(Buffer);
 end
end;

function TMainForm.GetDomain(const Domain: string): string;
var
 Http,Slash : integer;
 Url, Domain2:String ;
begin
 if copy(Domain, 1, 5) = 'https' then
  Domain2 := StringReplace(Domain, 'https', 'http', [rfReplaceAll, rfIgnoreCase])
 else
  Domain2 := Domain;
 Http := Pos('http://', Domain2);
 Url := Copy(Domain2, Http + 7, Length(Domain2) - Http);
 Slash:= Pos('/',url);
 Url:= Copy(Url,0,Slash -1);
 http:=0;
 Http:= pos(':443',Url);
 if http <> 0 then
  Url:= Copy(url,2,http - 2);
 Result := URL ;
end;

procedure TMainForm.GetFavIcon(URL, Dest: string);
var
  dl: TDownloadURL;
begin
  dl := TDownloadURL.Create(self);
  try
    if copy(url, 1,5) = 'https' then
     URL := StringReplace(URL, 'https', 'http', [rfReplaceAll, rfIgnoreCase]);
    dl.URL := URL;
    dl.FileName := Dest;
    dl.ExecuteTarget(nil);
    dl.Free;
  except
    dl.Free;
  end;

end;

procedure TMainForm.GetHistotyUrlsList;
var
 AddIntemURLbar: TDetailItem;
 index: Integer;
begin
 if FileExists(Profile_Pach + '\History\Url.ini') = true then
  begin
   INI_URL.Lines.LoadFromFile(Profile_Pach + '\History\Url.ini');
   INI_ULRNAME.Lines.LoadFromFile(Profile_Pach + '\History\UrlName.ini');
   URLs.Items.Clear;
   if INI_URL.Text <> '' then
    begin
     for index := 0 to INI_URL.Lines.Count - 1 do
      begin
       AddIntemURLbar:= URLs.Items.Add;
       AddIntemURLbar.Caption := INI_URL.Lines[index];
       AddIntemURLbar.Notes := INI_ULRNAME.Lines[index];
       if copy(INI_URL.Lines[index], 1, 5) = 'https' then
        AddIntemURLbar.ImageIndex := 20
       else
        AddIntemURLbar.ImageIndex := 19;
      end;
     INI_URL.Clear;
     INI_ULRNAME.Clear;
    end;
  end;
end;

function TMainForm.GetHashMd5(const Value: AnsiString): string;
var
 hash: MessageDigest_5.IMD5;
begin
 hash := MessageDigest_5.GetMD5();
 hash.Update(Value);
 Result := hash.AsString();
end;

function TMainForm.GetPageIndex(const aSender : TObject; var aPageIndex : integer) : boolean;
begin
  Result := False;
  aPageIndex := -1;

  if (aSender <> nil) and (aSender is TComponent) and (TComponent(aSender).Owner <> nil) and (TComponent(aSender).Owner is TTabSheet) then
    begin
      aPageIndex := TTabSheet(TComponent(aSender).Owner).PageIndex;
      Result := True;
    end;
end;

function TMainForm.GetPlataform: String;
var
 buff : PCHAR;
 WinServicePack: string;
begin
 if Win32CSDVersion <> '' then
  WinServicePack := '(' + Win32CSDVersion + ')'
 else
  WinServicePack := '';
buff:= StrAlloc(500);
if GetEnvironmentVariable('PROCESSOR_ARCHITEW6432', BUFF, 500) > 0 then
 begin
  if (string(buff) = 'AMD64') then
   begin
    if (Win32MajorVersion = 5) and (Win32MinorVersion = 2) then
     Result := 'Windows XP 64-Bits ' + WinServicePack;
    if (Win32MajorVersion = 5) and (Win32MinorVersion = 2) and (FileExists('C:\Windows\system32\tsmmc.msc') = true) then
     Result := 'Windows Server 2003 64-Bits ' + WinServicePack;
    if (Win32MajorVersion = 5) and (Win32MinorVersion = 2) and (FileExists('C:\Windows\Syswow64\r2repair.exe') = true) or (FileExists('C:\Windows\system32\r2repair.exe') = true) then
     Result := 'Windows Server 2003 R2 64-Bits ' + WinServicePack;
    if (Win32MajorVersion = 6) and (Win32MinorVersion = 0) then
     Result := 'Windows Vista x64 ' + WinServicePack;
    if (Win32MajorVersion = 6) and (Win32MinorVersion = 0) and (FileExists('C:\Windows\system32\tsmmc.msc') = true) then
     Result := 'Windows Server 2008 x64 ' + WinServicePack;
    if (Win32MajorVersion = 6) and (Win32MinorVersion = 1) then
     Result := 'Windows 7 x64 ' + WinServicePack;
    if (Win32MajorVersion = 6) and (Win32MinorVersion = 1) and (DirectoryExists('c:\Windows\embedded') = true) then
     Result := 'Windows Embedded Standard 7 x64 ' + WinServicePack;
    if (Win32MajorVersion = 6) and (Win32MinorVersion = 1) and (FileExists('C:\Windows\system32\tsmmc.msc') = true) then
     Result := 'Windows Server 2008 R2 x64 ' + WinServicePack;
    if (Win32MajorVersion = 6) and (Win32MinorVersion = 2) then
     Result := 'Windows 8 x64 ' + WinServicePack;
    if (Win32MajorVersion = 6) and (Win32MinorVersion = 2) and (FileExists('C:\Windows\system32\tsmmc.msc') = true) then
     Result := 'Windows Server 2012 ' + WinServicePack;
    if (Win32MajorVersion = 6) and (Win32MinorVersion = 3) then
     Result := 'Windows 8.1 x64 ' + WinServicePack;
    if (Win32MajorVersion = 6) and (Win32MinorVersion = 3) and (FileExists('C:\Windows\system32\tsmmc.msc') = true) then
     Result := 'Windows Server 2012 R2 ' + WinServicePack;
    if (Win32MajorVersion = 6) and (Win32MinorVersion = 4) then
     Result := 'Windows 10 x64 ' + WinServicePack;
    if (Win32MajorVersion = 10) and (Win32MinorVersion = 0) then
     Result := 'Windows 10 x64 ' + WinServicePack;
    if (Win32MajorVersion = 10) and (Win32MinorVersion = 0) and (FileExists('C:\Windows\system32\tsmmc.msc') = true) then
     Result := 'Windows Server 2016' + WinServicePack;
    AMD64Mode := true;
   end
  else
   begin
    if (Win32MajorVersion = 5) and (Win32MinorVersion = 1) then
     Result := 'Windows XP ' + WinServicePack;
    if (Win32MajorVersion = 5) and (Win32MinorVersion = 2) and (FileExists('C:\Windows\system32\tsmmc.msc') = true) then
     Result := 'Windows Server 2003 ' + WinServicePack;
    if (Win32MajorVersion = 5) and (Win32MinorVersion = 2) and (FileExists('C:\Windows\system32\r2repair.exe') = true) and (FileExists('C:\Windows\system32\tsmmc.msc') = true) then
     Result := 'Windows Server 2003 R2 ' + WinServicePack;
    if (Win32MajorVersion = 6) and (Win32MinorVersion = 0) then
     Result := 'Windows Vista ' + WinServicePack;
    if (Win32MajorVersion = 6) and (Win32MinorVersion = 0) and (FileExists('C:\Windows\system32\tsmmc.msc') = true) then
     Result := 'Windows Server 2008 ' + WinServicePack;
    if (Win32MajorVersion = 6) and (Win32MinorVersion = 1) then
     Result := 'Windows 7 ' + WinServicePack;
    if (Win32MajorVersion = 6) and (Win32MinorVersion = 1) and (DirectoryExists('c:\Windows\embedded') = true) then
     Result := 'Windows Embedded Standard 7 ' + WinServicePack;
    if (Win32MajorVersion = 6) and (Win32MinorVersion = 2) then
     Result := 'Windows 8 ' + WinServicePack;
    if (Win32MajorVersion = 6) and (Win32MinorVersion = 3) then
     Result := 'Windows 8.1 ' + WinServicePack;
    if (Win32MajorVersion = 6) and (Win32MinorVersion = 4) then
     Result := 'Windows 10 Beta' + WinServicePack;
    if (Win32MajorVersion = 10) and (Win32MinorVersion = 0) then
     Result := 'Windows 10 ' + WinServicePack;
    AMD64Mode := false;
   end;
 end
else
 begin
  if (Win32MajorVersion = 5) and (Win32MinorVersion = 1) then
   Result := 'Windows XP ' + WinServicePack;
  if (Win32MajorVersion = 5) and (Win32MinorVersion = 2) and (FileExists('C:\Windows\system32\tsmmc.msc') = true) then
   Result := 'Windows Server 2003 ' + WinServicePack;
  if (Win32MajorVersion = 5) and (Win32MinorVersion = 2) and (FileExists('C:\Windows\system32\r2repair.exe') = true) and (FileExists('C:\Windows\system32\tsmmc.msc') = true) then
   Result := 'Windows Server 2003 R2 ' + WinServicePack;
  if (Win32MajorVersion = 6) and (Win32MinorVersion = 0) then
   Result := 'Windows Vista ' + WinServicePack;
  if (Win32MajorVersion = 6) and (Win32MinorVersion = 0) and (FileExists('C:\Windows\system32\tsmmc.msc') = true) then
   Result := 'Windows Server 2008 ' + WinServicePack;
  if (Win32MajorVersion = 6) and (Win32MinorVersion = 1) then
   Result := 'Windows 7 ' + WinServicePack;
  if (Win32MajorVersion = 6) and (Win32MinorVersion = 1) and (DirectoryExists('c:\Windows\embedded') = true) then
     Result := 'Windows Embedded Standard 7 ' + WinServicePack;
  if (Win32MajorVersion = 6) and (Win32MinorVersion = 2) then
   Result := 'Windows 8 ' + WinServicePack;
  if (Win32MajorVersion = 6) and (Win32MinorVersion = 3) then
   Result := 'Windows 8.1 ' + WinServicePack;
  if (Win32MajorVersion = 6) and (Win32MinorVersion = 4) then
   Result := 'Windows 10 Beta' + WinServicePack;
  if (Win32MajorVersion = 10) and (Win32MinorVersion = 0) then
   Result := 'Windows 10 ' + WinServicePack;
  AMD64Mode := false;
 end;
end;

function TMainForm.GetProfileName: string;
var
 user_name: string;
 buff : PCHAR;
begin
 try
  buff:= StrAlloc(500);
  if GetEnvironmentVariable('USERNAME', BUFF, 500) > 0 then
   User_Name := string(buff);
 finally
  Result := user_name;
 end;
end;

function TMainForm.GetRemoteFileSize(const Url: string): Integer;
var
  hInet: HINTERNET;
  hConnect: HINTERNET;
  hRequest: HINTERNET;
  lpdwBufferLength: DWORD;
  lpdwReserved: DWORD;
  ServerName: string;
  Resource: string;
  ErrorCode: Cardinal;
begin
  ParseURL(Url,ServerName,Resource);
  Result:=0;

  hInet := InternetOpen(PChar(UserAgent), INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  if hInet=nil then
  begin
    ErrorCode:=GetLastError;
    raise Exception.Create(Format('InternetOpen Error %d Description %s',[ErrorCode,GetWinInetError(ErrorCode)]));
  end;

  try
    hConnect := InternetConnect(hInet, PChar(ServerName), INTERNET_DEFAULT_HTTP_PORT, nil, nil, INTERNET_SERVICE_HTTP, 0, 0);
    if hConnect=nil then
    begin
      ErrorCode:=GetLastError;
      raise Exception.Create(Format('InternetConnect Error %d Description %s',[ErrorCode,GetWinInetError(ErrorCode)]));
    end;

    try
      hRequest := HttpOpenRequest(hConnect, PChar('HEAD'), PChar(Resource), nil, nil, nil, 0, 0);
        if hRequest<>nil then
        begin
          try
            lpdwBufferLength:=SizeOf(Result);
            lpdwReserved    :=0;
            if not HttpSendRequest(hRequest, nil, 0, nil, 0) then
            begin
              ErrorCode:=GetLastError;
              raise Exception.Create(Format('HttpOpenRequest Error %d Description %s',[ErrorCode,GetWinInetError(ErrorCode)]));
            end;

             if not HttpQueryInfo(hRequest, HTTP_QUERY_CONTENT_LENGTH or HTTP_QUERY_FLAG_NUMBER, @Result, lpdwBufferLength, lpdwReserved) then
             begin
              Result:=0;
              ErrorCode:=GetLastError;
              raise Exception.Create(Format('HttpQueryInfo Error %d Description %s',[ErrorCode,GetWinInetError(ErrorCode)]));
             end;
          finally
            InternetCloseHandle(hRequest);
          end;
        end
        else
        begin
          ErrorCode:=GetLastError;
          raise Exception.Create(Format('HttpOpenRequest Error %d Description %s',[ErrorCode,GetWinInetError(ErrorCode)]));
        end;
    finally
      InternetCloseHandle(hConnect);
    end;
  finally
    InternetCloseHandle(hInet);
  end;
end;

function TMainForm.GetTabIndexByChromoium(Crm: string): Integer;
begin
 try
  result := TabCRMHandle.Items.IndexOf(Crm);
 Except
  Result := 0;
 end;

end;

function TMainForm.GetTabValues(VarType: string): string;
var
  TempChromium : TChromium;
begin
 if VarType = 'TopStatusButton' then
  begin
   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
    begin
      Result := TListBox(pcMain.ActivePage.FindComponent('TabValues' +  StringReplace(TempChromium.Name, 'Chromium', '', [rfReplaceAll]))).Items[0];
    end;
  end
 else if VarType = 'NoneFavIcon' then
  begin
   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
    begin
      Result := TListBox(pcMain.ActivePage.FindComponent('TabValues' +  StringReplace(TempChromium.Name, 'Chromium', '', [rfReplaceAll]))).Items[1];
    end;
  end
 else if VarType = 'TabLoading' then
  begin
   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
    begin
      Result := TListBox(pcMain.ActivePage.FindComponent('TabValues' +  StringReplace(TempChromium.Name, 'Chromium', '', [rfReplaceAll]))).Items[2];
    end;
  end
 else if VarType = 'TimeToHideHint' then
  begin
   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
    begin
      try
       Result := TListBox(pcMain.ActivePage.FindComponent('TabValues' +  StringReplace(TempChromium.Name, 'Chromium', '', [rfReplaceAll]))).Items[3];
      Except
       Result := '0';
      end;

    end;
  end
 else if VarType = 'BrowserZoom' then
  begin
   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
    begin
      Result := TListBox(pcMain.ActivePage.FindComponent('TabValues' +  StringReplace(TempChromium.Name, 'Chromium', '', [rfReplaceAll]))).Items[4];
    end;
  end
 else
  Result := '';
end;

function TMainForm.GetTouchCapabilities: TTouchCapabilities;
var
 ADigitizer : integer;
begin
 result := [];
 if GetSystemMetrics(SM_TABLETPC) <> 0 then
  begin
   include(result,tcTabletPC);
   ADigitizer := GetSystemMetrics(SM_DIGITIZER);
   if ((ADigitizer and NID_INTEGRATED_TOUCH) <> 0) then include(result,tcIntTouch);
   if ((ADigitizer and NID_EXTERNAL_TOUCH) <> 0) then include(result,tcExtTouch);
   if ((ADigitizer and NID_INTEGRATED_PEN) <> 0) then include(result,tcIntPen);
   if ((ADigitizer and NID_EXTERNAL_PEN) <> 0) then include(result,tcExtPen);
   if ((ADigitizer and NID_MULTI_INPUT) <> 0) then include(result,tcMultiTouch);
   if ((ADigitizer and NID_READY) <> 0) then include(result,tcReady);
  end;
end;

function TMainForm.GetUserDesktopPath: string;
var
  PIDL: PItemIDList;
  Path: array[0..MAX_PATH] of Char;
begin
  SHGetSpecialFolderLocation(Handle, CSIDL_DESKTOP, PIDL);
  SHGetPathFromIDList(PIDL, Path);
  Result := Pchar(StrPas(Path));
end;

function TMainForm.GetUWPAppData: string;
var
 UWPInstallDir, LocalAPPDataTemp: String;
begin
 UWPInstallDir := ExtractFileDir(Application.ExeName);
 LocalAPPDataTemp := StringReplace(GetHomePath, 'Roaming', 'Local\Packages\', [rfreplaceall]);
 UWPInstallDir := Copy(UWPInstallDir,Pos('__',UWPInstallDir)+1,Length(UWPInstallDir));
 UWPInstallDir := StringReplace(UWPInstallDir, '\Bin', '', [rfreplaceall]);
 if ContainsText(UWPInstallDir, '53288ThiagoFortes') then
  Result := Pchar(LocalAPPDataTemp + '53288ThiagoFortes.WebExplorer' + UWPInstallDir)
 else
  Result := Pchar(LocalAPPDataTemp + 'WebExplorer' + UWPInstallDir);
end;

function TMainForm.GetWin32_VideoControllerInfo: string;
const
  WbemUser            ='';
  WbemPassword        ='';
  WbemComputer        ='localhost';
  wbemFlagForwardOnly = $00000020;
var
  FSWbemLocator : OLEVariant;
  FWMIService   : OLEVariant;
  FWbemObjectSet: OLEVariant;
  FWbemObject   : OLEVariant;
  oEnum         : IEnumvariant;
  iValue        : LongWord;
begin;
  FSWbemLocator := CreateOleObject('WbemScripting.SWbemLocator');
  FWMIService   := FSWbemLocator.ConnectServer(WbemComputer, 'root\CIMV2', WbemUser, WbemPassword);
  FWbemObjectSet:= FWMIService.ExecQuery('SELECT Name,PNPDeviceID  FROM Win32_VideoController','WQL',wbemFlagForwardOnly);
  oEnum         := IUnknown(FWbemObjectSet._NewEnum) as IEnumVariant;
  while oEnum.Next(1, FWbemObject, iValue) = 0 do
  begin
    Result := FWbemObject.Name;
    {Writeln(Format('Name           %s',[String(FWbemObject.Name)]));// String
    Writeln(Format('PNPDeviceID    %s',[String(FWbemObject.PNPDeviceID)]));// String
    Writeln;}
    FWbemObject:=Unassigned;
  end;
end;function TMainForm.GetWinInetError(ErrorCode: Cardinal): string;
const
 winetdll = 'wininet.dll';
var
  Len: Integer;
  Buffer: PChar;
begin
  Len := FormatMessage(
  FORMAT_MESSAGE_FROM_HMODULE or FORMAT_MESSAGE_FROM_SYSTEM or
  FORMAT_MESSAGE_ALLOCATE_BUFFER or FORMAT_MESSAGE_IGNORE_INSERTS or  FORMAT_MESSAGE_ARGUMENT_ARRAY,
  Pointer(GetModuleHandle(winetdll)), ErrorCode, 0, @Buffer, SizeOf(Buffer), nil);
  try
    while (Len > 0) and {$IFDEF UNICODE}(CharInSet(Buffer[Len - 1], [#0..#32, '.'])) {$ELSE}(Buffer[Len - 1] in [#0..#32, '.']) {$ENDIF} do Dec(Len);
    SetString(Result, Buffer, Len);
  finally
    LocalFree(HLOCAL(Buffer));
  end;
end;

procedure TMainForm.SetTabValues(VarType: string; ValueVar: string);
var
  TempChromium : TChromium;
begin
 if VarType = 'TopStatusButton' then
  begin
   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
    begin
      TListBox(pcMain.ActivePage.FindComponent('TabValues' +  StringReplace(TempChromium.Name, 'Chromium', '', [rfReplaceAll]))).Items[0] := ValueVar;
    end;
  end
 else if VarType = 'NoneFavIcon' then
  begin
   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
    begin
      TListBox(pcMain.ActivePage.FindComponent('TabValues' +  StringReplace(TempChromium.Name, 'Chromium', '', [rfReplaceAll]))).Items[1] := ValueVar;
    end;
  end
 else if VarType = 'TabLoading' then
  begin
   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
    begin
      TListBox(pcMain.ActivePage.FindComponent('TabValues' +  StringReplace(TempChromium.Name, 'Chromium', '', [rfReplaceAll]))).Items[2] := ValueVar;
    end;
  end
 else if VarType = 'TimeToHideHint' then
  begin
   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
    begin
      TListBox(pcMain.ActivePage.FindComponent('TabValues' +  StringReplace(TempChromium.Name, 'Chromium', '', [rfReplaceAll]))).Items[3] := ValueVar;
    end;
  end
 else if VarType = 'BrowserZoom' then
  begin
   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
    begin
      TListBox(pcMain.ActivePage.FindComponent('TabValues' +  StringReplace(TempChromium.Name, 'Chromium', '', [rfReplaceAll]))).Items[4] := ValueVar;
    end;
  end
 else
  TListBox(pcMain.ActivePage.FindComponent('TabValues' +  StringReplace(TempChromium.Name, 'Chromium', '', [rfReplaceAll]))).Items[0] := ValueVar;
end;

procedure TMainForm.Share1Click(Sender: TObject);
begin
 ShowShareCenter.Enabled := true;
end;

procedure TMainForm.ShareCenterPopupFunctionBeforeClose(Sender: TObject);
begin
  ShareCenterPanel.Visible := false;
end;

procedure TMainForm.ShareCenterPopupFunctionButtonClick(Sender: TObject;
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

procedure TMainForm.ShareCenterPopupFunctionClose(Sender: TObject);
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

procedure TMainForm.ShowDeveloperToolsConsole1Click(Sender: TObject);
begin
 ShowDevTools;
end;

procedure TMainForm.ShowDevTools;
var
  TempPoint, TempPoint2: TPoint;
  TempChromium: TChromium;
begin
  if DevInspectElement = false then
   begin
    TempPoint.x := low(integer);
    TempPoint.y := low(integer);
    if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
     begin

      {if not TempChromium.Browser.Host.HasDevTools then
       begin
        try
         TPanel(pcMain.ActivePage.FindComponent('DevPanel' + IntToStr(GetTabIndexByChromoium(TempChromium.Name)))).Visible := true;
         TSplitter(pcMain.ActivePage.FindComponent('DevSplitter' + IntToStr(GetTabIndexByChromoium(TempChromium.Name)))).Visible := true;
         TSplitter(pcMain.ActivePage.FindComponent('DevSplitter' + IntToStr(GetTabIndexByChromoium(TempChromium.Name)))).Left := TPanel(pcMain.ActivePage.FindComponent('DevPanel' + IntToStr(GetTabIndexByChromoium(TempChromium.Name)))).Left - 1;
        finally
         TempChromium.ShowDevTools(TempPoint, TCEFWindowParent(TPanel(pcMain.ActivePage.FindComponent('DevPanel' + IntToStr(GetTabIndexByChromoium(TempChromium.Name)))).FindComponent('DevWindowParent' + IntToStr(GetTabIndexByChromoium(TempChromium.Name)))));
        end;
       end
      else
       begin
        try
         TPanel(pcMain.ActivePage.FindComponent('DevPanel' + IntToStr(GetTabIndexByChromoium(TempChromium.Name)))).Visible := false;
         TSplitter(pcMain.ActivePage.FindComponent('DevSplitter' + IntToStr(GetTabIndexByChromoium(TempChromium.Name)))).Visible := false;
         TempChromium.CloseDevTools(TCEFWindowParent(pcMain.ActivePage.FindComponent('DevWindowParent' + IntToStr(GetTabIndexByChromoium(TempChromium.Name)))));
         ClosingDevTools := true;
         CloseDevToolsTimer.Enabled := true;
        Except
        end;
       end;}

      if not TPanel(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevPanel', [rfReplaceAll]) )).Visible then
       begin
        try
         TPanel(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevPanel', [rfReplaceAll]) )).Visible := true;
         TSplitter(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevSplitter', [rfReplaceAll]) )).Visible := true;
         TSplitter(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevSplitter', [rfReplaceAll]) )).Left := TPanel(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevPanel', [rfReplaceAll]) )).Left - 1;
        finally
         TempChromium.ShowDevTools(TempPoint, TCEFWindowParent(  TPanel(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevPanel', [rfReplaceAll]) )).FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevWindowParent', [rfReplaceAll]) ))  );
        end;
       end
      else
       begin
        try
         TPanel(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevPanel', [rfReplaceAll]) )).Visible := false;
         TSplitter(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevSplitter', [rfReplaceAll]) )).Visible := false;
         TempChromium.CloseDevTools( TCEFWindowParent(  TPanel(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevPanel', [rfReplaceAll]) )).FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevWindowParent', [rfReplaceAll]) )) );
         ClosingDevTools := true;
         CloseDevToolsTimer.Enabled := true;
        Except
        end;
       end;

     end;
   end
  else
   begin
    DevInspectElement := false;
    TempPoint2.x := mousePointElementx;
    TempPoint2.y := mousePointElementy;

    if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
     begin
      if not TPanel(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevPanel', [rfReplaceAll]) )).Visible then
       begin
        try
         TPanel(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevPanel', [rfReplaceAll]) )).Visible := true;
         TSplitter(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevSplitter', [rfReplaceAll]) )).Visible := true;
         TSplitter(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevSplitter', [rfReplaceAll]) )).Left := TPanel(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevPanel', [rfReplaceAll]) )).Left - 1;
        finally
         TempChromium.ShowDevTools(TempPoint2, TCEFWindowParent(  TPanel(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevPanel', [rfReplaceAll]) )).FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevWindowParent', [rfReplaceAll]) ))  );
        end;
       end
      else
       begin
        try
         TPanel(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevPanel', [rfReplaceAll]) )).Visible := false;
         TSplitter(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevSplitter', [rfReplaceAll]) )).Visible := false;
         TempChromium.CloseDevTools( TCEFWindowParent(  TPanel(pcMain.Pages[pcMain.ActivePageIndex].FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevPanel', [rfReplaceAll]) )).FindComponent( StringReplace(TempChromium.Name, 'Chromium', 'DevWindowParent', [rfReplaceAll]) )) );
         ClosingDevTools := true;
         CloseDevToolsTimer.Enabled := true;
        Except
        end;
       end;

     end;

   end;
end;

procedure TMainForm.ShowNotificationPage(ParentTabIndex, CrmErrorCode, PageTypeCode: integer; BrowserName, CrmErrMsg, FailedUrl: String);
var
 //PageNotificationFrm: TPageNotificationFrame;
 //PanelNotificationTemp: TPanel;
 TempPanelName: string;
begin
 try
  HandleNeeded;

  TempPanelName := StringReplace(BrowserName, 'Chromium', 'PanelNotification', [rfReplaceAll]);
  with TPanel( pcMain.Pages[GetTabIndexByChromoium( BrowserName )].FindComponent( TempPanelName )) do
   begin
    Visible := true;
    BringToFront;
   end;

  {PanelNotificationTemp := TPanel.Create(pcMain.Pages[ParentTabIndex]);
  PanelNotificationTemp.Name := 'PanelNotification';
  PanelNotificationTemp.Parent := pcMain.Pages[ParentTabIndex];
  PanelNotificationTemp.Align := alClient;
  PanelNotificationTemp.Caption := '';
  PanelNotificationTemp.Color := clWhite;}

  {PageNotificationFrm := TPageNotificationFrame.Create(PanelNotificationTemp);
  PageNotificationFrm.Parent := PanelNotificationTemp;
  PageNotificationFrm.Align := alClient;
  PageNotificationFrm.NotificationType(0); }
  NotificationStrs[3] := IntToStr(ParentTabIndex);
  NotificationStrs[4] := BrowserName;
  if CrmErrorCode < 0 then
   NotificationStrs[2] := CrmErrMsg + ' (' + InttoStr(CrmErrorCode) + ')'
  else 
   NotificationStrs[2] := ErrorCertificateMsg(InttoStr(CrmErrorCode));
  NotificationStrs[5] := FailedUrl;
  NotificationStrs[6] := IntToStr(PageTypeCode);
  if CrmErrorCode = -101 then
   begin
    NotificationStrs[1] := MainForm.LanguageCache.Lines[97];
   end
  else if CrmErrorCode = -105 then
   begin
    if CheckUrl(failedUrl) then
     NotificationStrs[1] := MainForm.LanguageCache.Lines[97]
    else
     NotificationStrs[1] := MainForm.LanguageCache.Lines[101];
   end
  else if CrmErrorCode = -118 then
   begin
    NotificationStrs[1] := MainForm.LanguageCache.Lines[97];
   end
  else if CrmErrorCode = -207 then
   begin

   end
  else if CrmErrorCode = -302 then
   begin
    NotificationStrs[1] := MainForm.LanguageCache.Lines[101];
   end
  else if CrmErrorCode = -106 then
   begin
    NotificationStrs[1] := MainForm.LanguageCache.Lines[103];
   end
  else if CrmErrorCode = -330 then
   begin
    NotificationStrs[1] := MainForm.LanguageCache.Lines[103];
   end;
 Except

 end;
 NotificationPageTimer.Enabled := true;
end;

procedure TMainForm.ShowPopUpMode;
begin
if PopUpModeWindow = true then
  begin
   Self.ChromeTabs := nil;
   GlassFrame.Enabled := true;
   GlassFrame.Top := 0;
   //ToolBar1.Visible := false;
   PanelTabs.Visible := false;
   MainForm.WindowState := wsNormal;
   MainForm.Position := poDesktopCenter;
   FullScreen1.Enabled := false;
   AeroTabs.Visible := false;
  end
 else
  begin
   PanelTabs.Visible := true;
  end;
end;

procedure TMainForm.ShowGoBt(cmd: Boolean);
begin
 if cmd = true then
  begin
   Go_bt.Align := alRight;
   Go_bt.Left := 600;
   Go_bt.Visible := true;
   DropDown_BT.Visible := false;
  end
 else
  begin
   DropDown_BT.Align := alRight;
   DropDown_BT.Left := 600;
   DropDown_BT.Visible := true;
   Go_bt.Visible := false;
  end;
end;

procedure TMainForm.ShowLinkHub(mode: Boolean);
begin
 if mode = true then
  begin
   LKViwerPanel.BringToFront;
   LKViwerPanel.Visible := true;
   LinkCenterPanel.Top := pcMain.Top + 2;// + 36;
   LinkCenterPanel.Left := -385;
   LinkCenterPanel.Height := pcMain.Height - 2;// - 36;
   LKViwerPanel.Top := 0;
   LKViwerPanel.Left := 0;
   LKViwerPanel.Height := LinkCenterPanel.Height + 4;
   LinkCenter.Parent := LKViwerPanel;
   LinkCenter.Height := LinkCenterPanel.Height;
   linkcenter_bevelpanel.BringToFront;
   LinkCenter.Show;
   LC_ShowEffect1.Enabled := true;
   LKViwerPanel.Visible := true;
   LC_closeEffect1.Enabled := false;
  end
 else
  begin
   LC_CloseEffect1.Enabled := true;
   LC_ShowEffect1.Enabled := false;
  end;
end;

procedure TMainForm.ShowMenuHub(mode: Boolean);
begin
 if mode = true then
  begin
   MENUviewerPanel.Visible := true;
   MENUcenterPanel.Top := ToolBar1.Top - 1;// + 36;
   MENUcenterPanel.Left := -480;
   MENUcenterPanel.Height := ToolBar1.Height + pcMain.Height + 2;// - 36;
   MENUviewerPanel.Top := 0;
   MENUviewerPanel.Left := 0;
   MENUviewerPanel.Height := MENUcenterPanel.Height + 4;
   Appmenu.Parent := MENUviewerPanel;
   Appmenu.Height := MENUcenterPanel.Height;
   AppMenu.PanelFundo.Height := MENUcenterPanel.Height;
   Appmenu.Show;
   MN_ShowEffect1.Enabled := true;
   MENUviewerPanel.Visible := true;
   MN_closeEffect1.Enabled := false;
  end
 else
  begin
   MN_CloseEffect1.Enabled := true;
   MN_ShowEffect1.Enabled := false;
  end;
end;

procedure TMainForm.ShowSecPermHub(cmdt: SmallInt);
begin
 {SecurityPermissionHubFrm.ListViewSelect1.ItemIndex := cmdt;
 SecurityPermissionHubFrm.ShowModal;
 SecurityPermissionHubFrm.ExecuteCmdMenu := cmdt;}
end;

procedure TMainForm.ShowShareCenterTimer(Sender: TObject);
begin
 TTimer(Sender).Enabled := false;
 btnzone.Click;
end;

procedure TMainForm.ShowStatusHint(HintText: WideString);
begin
 HintSizeLabel.Caption := HintText;
 StatusHintPanel.Width := HintSizeLabel.Width + 8;
 StatusHintPanel.Caption := HintText;
 if StatusHintPanel.Caption = '' then
  StatusHintPanel.Visible := false
 else
  begin
   StatusHintPanel.Visible := true;
    if ToolBar1.Visible = true then
     begin
      if MainForm.WindowsUI = 1 then
       begin
        if FindBar.Visible = false then
         StatusHintPanel.Top := MainForm.Height - 30
        else
         StatusHintPanel.Top := MainForm.Height - 30 - FindBar.Height;
       end
      else
       begin
        if FindBar.Visible = false then
         StatusHintPanel.Top := MainForm.Height - 40
        else
         StatusHintPanel.Top := MainForm.Height - 40 - FindBar.Height;
       end;
     end
    else
     begin

      if FindBar.Visible = false then
       StatusHintPanel.Top := MainForm.Height - 20
      else
       StatusHintPanel.Top := MainForm.Height - 20 - FindBar.Height;

     end;
   SetTabValues('TimeToHideHint', '0');
   HideHintPanelTimer.Enabled := true;
  end;
end;

procedure TMainForm.Chromium_OnTitleChange(Sender: TObject; const browser: ICefBrowser; const title: ustring);
var
  TempPageIndex : integer;
begin
  if not(FClosing) and GetPageIndex(Sender, TempPageIndex) then
    begin
      pcMain.Pages[TempPageIndex].Caption := title;
      AeroTabs.Tabs[TempPageIndex].Caption := title;
      if privatemode then
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
end;

procedure TMainForm.Chromium_OpenUrlFromTab(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame; const targetUrl: ustring;
  targetDisposition: TCefWindowOpenDisposition; userGesture: Boolean;
  out Result: Boolean);
begin
 linktemp := targetUrl;
 OpenTabTimer.Enabled := true;
 Result := true;
end;

procedure TMainForm.Chromium_ProtocolExecution(Sender: TObject;
  const browser: ICefBrowser; const url: ustring;
  out allowOsExecution: Boolean);
var
 protocoltemp: string;
begin
  protocoltemp := Copy(url, 1,6);
  if protocoltemp = 'ftp://' then
   begin
    ShellExecute(0,'open', 'c:\windows\Explorer.exe',pchar(url), NIL, SW_SHOWNORMAL);
    AllowOsExecution := true;
   end;
  protocoltemp := Copy(url, 1,17);
  MainForm.linktemp := Copy(url, 18,length(url));
  temp_url.clear;
  //webexplorerext://
  //webexplorerwdg://
  if protocoltemp = 'webexplorerwdg://' then
   begin
    StartLinkWidget.Enabled := true;
    browser.StopLoad;
    AllowOsExecution := true;
   end;
  if protocoltemp = 'webexplorerext://' then
   begin
    StartLinkExt.Enabled := true;
    browser.StopLoad;
    AllowOsExecution := true;
   end;
  if protocoltemp = 'ms-windows-store:' then
   begin
    ShellExecute(handle,'open',pchar(url), nil,nil,SW_SHOWNORMAL);
    AllowOsExecution := true;
    browser.StopLoad;
   end;
  if copy(protocoltemp,1,11) = 'magnet:?xt=' then
   begin
    AllowOsExecution := true;
    temp_url.Text := url;
    if MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[364]), 'Magnet Link - Web Explorer', MB_ICONINFORMATION + MB_OKCANCEL + MB_DEFBUTTON1) = mrOk then
     begin
      ShellExecute(handle,'open',pchar(url), nil,nil,SW_SHOWNORMAL);
      temp_url.SelectAll;
      temp_url.CopyToClipboard;
      temp_url.Clear;
     end
    else
     begin
      temp_url.SelectAll;
      temp_url.CopyToClipboard;
      temp_url.Clear;
     end;
     browser.StopLoad;
   end;
  if copy(protocoltemp,1,11) = 'file:///mag' then
   begin
    AllowOsExecution := true;
    temp_url.Text :=  StringReplace(url, 'file:///', '', [rfreplaceall]);
    if MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[364]), 'Magnet Link - Web Explorer', MB_ICONINFORMATION + MB_OKCANCEL + MB_DEFBUTTON1) = mrOk then
     begin
      ShellExecute(handle,'open',pchar(temp_url.Text), nil,nil,SW_SHOWNORMAL);
      temp_url.SelectAll;
      temp_url.CopyToClipboard;
      temp_url.Clear;
     end
    else
     begin
      temp_url.SelectAll;
      temp_url.CopyToClipboard;
      temp_url.Clear;
     end;
     browser.StopLoad;
   end;
end;

procedure TMainForm.Chromium_RenderCompMsg(var aMessage: TMessage;
  var aHandled: Boolean);
begin
 if aMessage.Msg = WM_MOUSEWHEEL then
  begin
   if not GetKeyState(VK_CONTROL) >= 0 then
    begin
     Mousezoom(aMessage.WParamHi, false);
     aHandled := true;
    end;
  end;
end;

procedure TMainForm.Chromium_StatusMessage(Sender: TObject;
  const browser: ICefBrowser; const value: ustring);
begin
 if IsSystemPage(browser.MainFrame.Url) = false then
  ShowStatusHint(value);
end;

procedure TMainForm.Chromium_OnClose(Sender: TObject; const browser: ICefBrowser; out Result: Boolean);
var
  TempPageIndex : integer;
begin
 { if GetPageIndex(Sender, TempPageIndex) then
    PostMessage(Handle, CEFBROWSER_DESTROYWNDPARENT, 0, TempPageIndex);
  }
  Result := true;
end;

procedure TMainForm.Chromium_OnBeforeClose(Sender: TObject; const browser: ICefBrowser);
var
  TempPageIndex : integer;
begin
  if GetPageIndex(Sender, TempPageIndex) then
    begin
      if FClosing then
        PostMessage(Handle, CEFBROWSER_CHECKTAGGEDTABS, 0, TempPageIndex)
       else
        begin
         PostMessage(Handle, CEFBROWSER_DESTROYTAB, 0, TempPageIndex);
        end;
    end;
end;

procedure TMainForm.Chromium_OnBeforePopup(Sender: TObject;
  const browser: ICefBrowser; const frame: ICefFrame; const targetUrl,
  targetFrameName: ustring; targetDisposition: TCefWindowOpenDisposition;
  userGesture: Boolean; const popupFeatures: TCefPopupFeatures;
  var windowInfo: TCefWindowInfo; var client: ICefClient;
  var settings: TCefBrowserSettings; var noJavascriptAccess: Boolean;
  var Result: Boolean);
begin
  if targetUrl = '' then
  begin
   browser.MainFrame.LoadUrl(targetUrl);
  end
 else
  begin
   if not PopUpModeWindow then
    begin
     try
      if StatusHintPanel.Visible then
       PopUpFromUser := true
      else
       PopUpFromUser := false;
      TempPopUpBrowserName := TChromium(sender).Name;
      TempPopUpTargetUrl := targetUrl;
      TempPopUpFeatures := targetDisposition;
      TimerOpenPopupBrowser.Enabled := true;
     Except
      result := false;
     end;
    end
   else
    begin
     Result := (targetDisposition in [WOD_NEW_FOREGROUND_TAB, WOD_NEW_BACKGROUND_TAB, WOD_NEW_POPUP, WOD_NEW_WINDOW]);
    end;

  end;
  Result := true;
  // For simplicity, this demo blocks all popup windows and new tabs
  //Result := (targetDisposition in [WOD_NEW_FOREGROUND_TAB, WOD_NEW_BACKGROUND_TAB, WOD_NEW_POPUP, WOD_NEW_WINDOW]);
end;

procedure TMainForm.S1Click(Sender: TObject);
begin
 with MainForm.AdvInputTaskDialog1 do
      begin
       Title := 'Web Explorer - Pop-Up';
       CommonButtons := ([cbOK,cbCancel]);
       DialogPosition := dpOwnerFormCenter;
       Content := 'Open Custom URL in popup Window' + #13 +'' +#13 + 'Type an address:';
       InputText := '';
       Icon := tiQuestion;
      end;
     case MainForm.AdvInputTaskDialog1.Execute of
      mrOk:     begin
                 OpenPopUpWindow(MainForm.AdvInputTaskDialog1.InputText, true);
                end;
      mrCancel: begin

                end;
     end;

end;

procedure TMainForm.SaveConfig;
var
 CMDFileStream : TStringList;
begin
 saveconfigfiletemp.Clear;
 saveconfigfiletemp.Lines.Add(saveconfigfile.Lines[0]);
 saveconfigfiletemp.Lines.Add(saveconfigfile.Lines[1]);
 saveconfigfiletemp.Lines.Add(saveconfigfile.Lines[2]);
 saveconfigfiletemp.Lines.Add(saveconfigfile.Lines[3]);
  if AppMenu.opt5.State = tssOn then
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[4] + ValidXMLAddress(0,'about:blank') + '</' + saveconfigfile.Lines[4])
 else
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[4] + ValidXMLAddress(0,AppMenu.opt_homepage_adr.Text) + '</' + saveconfigfile.Lines[4]);
 //saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[4] + ValidXMLAddress(0,AppMenu.opt_homepage_adr.Text) + '</' + saveconfigfile.Lines[4]);
 if AppMenu.opt4.State = tssOn then
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[5] + 'true</' + saveconfigfile.Lines[5])
 else
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[5] + 'false</' + saveconfigfile.Lines[5]);
 saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[6] + inttostr(AppMenu.LanguageComboBox.ItemIndex) + '</' + saveconfigfile.Lines[6]);
 saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[7] + ValidXMLAddress(0,AppMenu.opt_downloaddir.Text) + '</' + saveconfigfile.Lines[7]);
 saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[8] + SearchNameProvider + '</' + saveconfigfile.Lines[8]);
 saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[9] + inttostr(SB_C1.ItemIndex) + '</' + saveconfigfile.Lines[9]);
 saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[10] + ValidXMLAddress(0,SearchaddressProvider) + '</' + saveconfigfile.Lines[10]);
 if AppMenu.opt3.State = tssOff then
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[11] + 'true</' + saveconfigfile.Lines[11])
 else
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[11] + 'false</' + saveconfigfile.Lines[11]);
 saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[12] + AppMenu.proxyaddress.Text + '</' + saveconfigfile.Lines[12]);
 saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[13] + AppMenu.proxyport.Text + '</' + saveconfigfile.Lines[13]);
 if AppMenu.opt2.State = tssOn then
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[14] + 'true</' + saveconfigfile.Lines[14])
 else
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[14] + 'false</' + saveconfigfile.Lines[14]);
 saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[15] + inttostr(AppMenu.cachedays.Value) + '</' + saveconfigfile.Lines[15]);
 if AppMenu.opt6.State = tssOn then
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[16] + 'true</' + saveconfigfile.Lines[16])
 else
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[16] + 'false</' + saveconfigfile.Lines[16]);
 if AppMenu.opt7.State = tssOn then
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[17] + 'true</' + saveconfigfile.Lines[17])
 else
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[17] + 'false</' + saveconfigfile.Lines[17]);
 if AppMenu.opt8.State = tssOn then
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[18] + 'true</' + saveconfigfile.Lines[18])
 else
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[18] + 'false</' + saveconfigfile.Lines[18]);
 if AppMenu.opt9.State = tssOn then
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[19] + 'true</' + saveconfigfile.Lines[19])
 else
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[19] + 'false</' + saveconfigfile.Lines[19]);
 case AppMenu.opt10.ItemIndex of
  0: saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[20] + '0</' + saveconfigfile.Lines[20]);
  1: saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[20] + '1</' + saveconfigfile.Lines[20]);
  2: saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[20] + '2</' + saveconfigfile.Lines[20]);
 end;
 if AppMenu.opt11.State = tssOn then
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[21] + 'true</' + saveconfigfile.Lines[21])
 else
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[21] + 'false</' + saveconfigfile.Lines[21]);

 saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[22] + Inttostr(AppMenu.ZoomComboBox.ItemIndex) +'</' + saveconfigfile.Lines[22]);
 if AppMenu.opt12.State = tssOn then
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[23] + 'true</' + saveconfigfile.Lines[23])
 else
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[23] + 'false</' + saveconfigfile.Lines[23]);

 if AppMenu.opt13.State = tssOn then
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[24] + 'true</' + saveconfigfile.Lines[24])
 else
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[24] + 'false</' + saveconfigfile.Lines[24]);
 if AppMenu.opt14.State = tssOn then
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[25] + 'true</' + saveconfigfile.Lines[25])
 else
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[25] + 'false</' + saveconfigfile.Lines[25]);
 case AppMenu.opt16.ItemIndex of
  0: saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[26] + '0</' + saveconfigfile.Lines[26]);
  1: saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[26] + '1</' + saveconfigfile.Lines[26]);
  2: saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[26] + '2</' + saveconfigfile.Lines[26]);
 end;
 if AppMenu.opt15.State = tssOn then
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[27] + 'true</' + saveconfigfile.Lines[27])
 else
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[27] + 'false</' + saveconfigfile.Lines[27]);
 case AppMenu.ReaderModeComboBox.ItemIndex of
  0: saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[28] + '0</' + saveconfigfile.Lines[28]);
  1: saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[28] + '1</' + saveconfigfile.Lines[28]);
  2: saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[28] + '2</' + saveconfigfile.Lines[28]);
  3: saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[28] + '3</' + saveconfigfile.Lines[28]);
  4: saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[28] + '4</' + saveconfigfile.Lines[28]);
  5: saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[28] + '5</' + saveconfigfile.Lines[28]);
 end;
 if AppMenu.opt17.State = tssOn then
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[29] + 'true</' + saveconfigfile.Lines[29])
 else
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[29] + 'false</' + saveconfigfile.Lines[29]);
 if AppMenu.opt18.State = tssOn then
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[30] + 'true</' + saveconfigfile.Lines[30])
 else
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[30] + 'false</' + saveconfigfile.Lines[30]);
 if AppMenu.opt19.State = tssOn then
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[31] + 'true</' + saveconfigfile.Lines[31])
 else
  saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[31] + 'false</' + saveconfigfile.Lines[31]);
 case AppMenu.StartPageOptCombobox.ItemIndex of
  0: saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[32] + '0</' + saveconfigfile.Lines[32]);
  1: saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[32] + '1</' + saveconfigfile.Lines[32]);
  2: saveconfigfiletemp.Lines.Add('<' + saveconfigfile.Lines[32] + '2</' + saveconfigfile.Lines[32]);
 end;
 saveconfigfiletemp.Lines.Add(saveconfigfile.Lines[34]);
 saveconfigfiletemp.Lines.Add(saveconfigfile.Lines[35]);


 saveconfigfiletemp.Lines.SaveToFile(Profile_Pach + '\Global_Config.xml');

  /////////////////// CEF Command Lines ///////////////////
  if AppMenu.opt6.State = tssOff then
   begin
    try
     CMDFileStream := TStringList.Create;
     CMDFileStream.SaveToFile(Pchar(Profile_Pach + '\Ppapi.ini'));
    finally
     CMDFileStream.Free;
    end;
   end
  else
   begin
    try
     if FileExists(Profile_Pach + '\Ppapi.ini') = true then
      DeleteFile(Profile_Pach + '\Ppapi.ini');
    Except
    end;
   end;
  if AppMenu.opt3.State = tssOff then
   begin
    if FileExists(Profile_Pach + '\ProxyConfig.ini') = false then
     begin
      try
       CMDFileStream := TStringList.Create;
       if AppMenu.opt16.ItemIndex = 0 then
        CMDFileStream.Add(AppMenu.proxyaddress.Text + ':' + AppMenu.proxyport.Text)
       else if AppMenu.opt16.ItemIndex = 1 then
        CMDFileStream.Add('socks5://' + AppMenu.proxyaddress.Text + ':' + AppMenu.proxyport.Text)
       else
        CMDFileStream.Add('sock4://' + AppMenu.proxyaddress.Text + ':' + AppMenu.proxyport.Text);
       CMDFileStream.SaveToFile(Pchar(Profile_Pach + '\ProxyConfig.ini'));
      finally
       CMDFileStream.Free;
      end;
     end;
   end
  else
   begin
    if FileExists(Profile_Pach + '\ProxyConfig.ini') = true then
     DeleteFile(Profile_Pach + '\ProxyConfig.ini');
   end;
  if AppMenu.opt15.State = tssOn then
   begin
    if FileExists(Profile_Pach + '\MediaStream.ini') = false then
     begin
      try
       CMDFileStream := TStringList.Create;
       CMDFileStream.SaveToFile(Pchar(Profile_Pach + '\MediaStream.ini'));
      finally
       CMDFileStream.Free;
      end;
     end;
   end
  else
   begin
    try
     if FileExists(Profile_Pach + '\MediaStream.ini') = true then
     DeleteFile(Profile_Pach + '\MediaStream.ini');
    Except
    end;
   end;
  if AppMenu.opt17.State = tssOn then
   begin
    try
     if FileExists(Profile_Pach + '\SmoothScrolling.ini') = true then
     DeleteFile(Profile_Pach + '\SmoothScrolling.ini');
    Except
    end;
   end
  else
   begin
    if FileExists(Profile_Pach + '\SmoothScrolling.ini') = false then
     begin
      try
       CMDFileStream := TStringList.Create;
       CMDFileStream.SaveToFile(Pchar(Profile_Pach + '\SmoothScrolling.ini'));
      finally
       CMDFileStream.Free;
      end;
     end;
   end;
  if AppMenu.opt18.State = tssOn then
   begin
    if FileExists(Profile_Pach + '\MuteAudio.ini') = false then
     begin
      try
       CMDFileStream := TStringList.Create;
       CMDFileStream.SaveToFile(Pchar(Profile_Pach + '\MuteAudio.ini'));
      finally
       CMDFileStream.Free;
      end;
     end;
   end
  else
   begin
    try
     if FileExists(Profile_Pach + '\MuteAudio.ini') = true then
     DeleteFile(Profile_Pach + '\MuteAudio.ini');
    Except
    end;
   end;
end;

procedure TMainForm.SaveHistotyUrlsList;
var
 IndexList: Integer;
begin
 for IndexList := 0 to URLs.Items.Count - 1 do
  begin
   INI_URL.Lines.Add(URLs.Items[IndexList].Caption);
   INI_ULRNAME.Lines.Add(URLs.Items[IndexList].Notes);
  end;
 INI_URL.Lines.SaveToFile(Profile_Pach + '\History\Url.ini');
 INI_ULRNAME.Lines.SaveToFile(Profile_Pach + '\History\UrlName.ini');
end;

procedure TMainForm.SavePDFFiles;
var
  TempChromium : TChromium;
begin
  SaveDialogPDF.DefaultExt := 'pdf';
  SaveDialogPDF.Filter     := 'Portable Document Format (PDF)|*.pdf';
  if SaveDialogPDF.Execute and (length(SaveDialogPDF.FileName) > 0) then
   begin
    if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
     TempChromium.PrintToPDF(SaveDialogPDF.FileName, TempChromium.DocumentURL, TempChromium.DocumentURL);
   end;
end;

procedure TMainForm.SB_C1Change(Sender: TObject);
begin
 if SB_C1.itemindex = SB_C1.ItemsEx.Count - 1 then
  begin
   SB_C3.Enabled := true;
   SB_C4.Enabled := true;
   SB_C5.Enabled := true;
   SB_C6.Enabled := true;
  end
 else
  begin
   SB_C3.Enabled := false;
   SB_C4.Enabled := false;
   SB_C5.Enabled := false;
   SB_C6.Enabled := false;
   SB_C5.Clear;
   SB_C6.Clear;
  end;
end;

procedure TMainForm.SearchBarButtonClick(Sender: TObject);
begin
 SearchPopupFunction.Control := MainForm.SearchOptionsPanel;
 SearchPopupFunction.PopupAtControl(SearchBarButton,pdBottomCenter);
end;

procedure TMainForm.SearchBarKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #27 then
  begin
   key := #0;
   SearchBar.Text := '';
   //$REVIEW_THIS
   {URLs.EditText := Chromium1.Browser.MainFrame.Url;
   URLsBar.Text :=  Chromium1.Browser.MainFrame.Url;
   ChromiumWindow.SetFocus;}
  end;

 if key = #13 then
  begin
   key := #0;
   if Trim(SearchBar.Text) <> '' then
    begin
     if MainForm.UseInstantSearch = false then
      begin
       URLs.EditText := MainForm.SearchaddressProvider + SearchBar.Text;
       URLsBar.Text := MainForm.SearchaddressProvider + SearchBar.Text;
       goURL;
      end
     else
      begin
       MainForm.InstantSearchPopupFunction.Width := Width - 200;
       MainForm.InstantSearchPopupFunction.Height := Height div 2;
       MainForm.InstantSearchPopupFunction.Control := InstantSearchPanel;
       InstantSearchPanel.Visible := true;
       MainForm.InstantSearchPopupFunction.PopupAtControl(SearchBar, pdBottomLeft);
       GoInstantSearch(MainForm.SearchaddressProvider + SearchBar.Text);
      end;
    end;
  end;
end;

function TMainForm.SearchChromium(aPageIndex: integer; var aChromium : TChromium) : boolean;
var
  i, j: integer;
  TempComponent: TComponent;
  TempSheet: TTabSheet;
begin
  Result := False;
  aChromium := nil;

  if (aPageIndex >= 0) and (aPageIndex < pcMain.PageCount) then
    begin
      TempSheet := pcMain.Pages[aPageIndex];
      i := 0;
      j := TempSheet.ComponentCount;

      while (i < j) and not(Result) do
        begin
          TempComponent := TempSheet.Components[i];

          if (TempComponent <> nil) and (TempComponent is TChromium) then
            begin
              aChromium := TChromium(TempComponent);
              Result := True;
            end
           else
            inc(i);
        end;
    end;
end;

procedure TMainForm.SearchPopupFunctionClose(Sender: TObject);
begin
 if SearchPopupFunction.Control = MainForm.SearchOptionsPanel then
  begin
   EnableSearchBarSettings;
  end;
end;

procedure TMainForm.SearchPopupFunctionShow(Sender: TObject);
begin
 if MainForm.SB_C1.ItemIndex = MainForm.SB_C1.ItemsEx.Count - 1  then
  begin
   MainForm.SB_C5.enabled := true;
   MainForm.SB_C6.enabled := true;
  end;
end;

function TMainForm.SearchWindowParent(aPageIndex : integer; var aWindowParent : TCEFWindowParent) : boolean;
var
  i, j : integer;
  TempControl : TControl;
  TempSheet : TTabSheet;
begin
  Result        := False;
  aWindowParent := nil;

  if (aPageIndex >= 0) and (aPageIndex < pcMain.PageCount) then
    begin
      TempSheet := pcMain.Pages[aPageIndex];
      i         := 0;
      j         := TempSheet.ControlCount;

      while (i < j) and not(Result) do
        begin
          TempControl := TempSheet.Controls[i];

          if (TempControl <> nil) and (TempControl is TCEFWindowParent) then
            begin
              aWindowParent := TCEFWindowParent(TempControl);
              Result        := True;
            end
           else
            inc(i);
        end;
    end;
end;

procedure TMainForm.SelectAll1Click(Sender: TObject);
var
  TempChromium : TChromium;
begin
  if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
   TempChromium.Browser.MainFrame.SelectAll;
end;

procedure TMainForm.SessionTimerTimer(Sender: TObject);
begin
 if StopSessionFile = false then
  StoreSession;
end;

procedure TMainForm.SetMainFormCaption;
var
 title: string;
begin
  title := AeroTabs.Tabs[AeroTabs.ActiveTabIndex].Caption;
  if privatemode then
    begin
      if trim(title) = '' then
        Caption := 'Web Explorer (Private) 💼'
      else
        Caption := title + ' - Web Explorer (Private) 💼';
    end
  else
    begin
      if trim(title) = '' then
        Caption := 'Web Explorer'
      else
        Caption := title + ' - Web Explorer';
    end;
end;

procedure TMainForm.NewTab1Click(Sender: TObject);
begin
 NewTab.Execute;
end;

procedure TMainForm.NewTabExecute(Sender: TObject);
var
  TempSheet: TTabSheet;
  TempPanel1, TempNotificationPagePanel, TempNotificationBarPanel: TPanel;
  TempDevSplitter1: TSplitter;
  TempWindowParent, TempDevParent: TCEFWindowParent;
  TempChromium: TChromium;
  NewAeroTab: TChromeTab;
  TempvarValues, TempCertInfo: TListBox;
begin
  HandleNeeded;
  Toolbar1.Enabled := False;
  pcMain.Enabled := False;
  TempSheet := TTabSheet.Create(pcMain);

  TempSheet.Caption :=  LanguageCache.Lines[26];
  TempSheet.PageControl := pcMain;
  TempSheet.TabVisible := false;
  TempSheet.Visible := true;

  Inc(BrowserTabCount);

  TempWindowParent := TCEFWindowParent.Create(TempSheet);
  TempWindowParent.Parent := TempSheet;
  TempWindowParent.Color := clWhite;
  TempWindowParent.Align := alClient;
  TempPanel1 := TPanel.Create(TempSheet);
  with TempPanel1 do
   begin
    Parent := TempSheet;
    Name := 'DevPanel' + IntTostr(BrowserTabCount);
    BevelOuter := bvNone;
    Visible := false;
    Caption := '';
    Align := alRight;
    Width := Screen.Width div 4;
   end;
  TempNotificationPagePanel := TPanel.Create(TempSheet);
  with TempNotificationPagePanel do
   begin
    Parent := TempSheet;
    Name := 'PanelNotification' + IntTostr(BrowserTabCount);
    BevelOuter := bvNone;
    BorderStyle := bsNone;
    Caption := '';
    Visible := false;
    Align := alClient;
   end;
  TempNotificationBarPanel:= TPanel.Create(TempSheet);
  with TempNotificationBarPanel do
   begin
    Parent := TempSheet;
    Name := 'PanelNotificationBar' + IntTostr(BrowserTabCount);
    BevelOuter := bvNone;
    BorderStyle := bsNone;
    Caption := '';
    Visible := false;
    Height := 46;
    Align := alTop;
   end;
  TempDevParent := TCEFWindowParent.Create(TempPanel1);
  with TempDevParent do
   begin
    Parent := TempPanel1;
    Name := 'DevWindowParent' + IntTostr(BrowserTabCount);
    Align := alClient;
   end;
  TempDevSplitter1 := TSplitter.Create(TempSheet);
  with TempDevSplitter1 do
   begin
    Parent := TempSheet;
    Name := 'DevSplitter' + IntTostr(BrowserTabCount);
    Visible := false;
    Color := clBtnFace;
    Align := alRight;
    Left := TempPanel1.Left - 1;
   end;


  try
   begin
    TempvarValues := TListBox.Create(TempSheet);
    TempvarValues.Name := 'TabValues' + IntTostr(BrowserTabCount);
    TempvarValues.Parent := TempSheet;
    {$IFDEF DEBUG}
    TempvarValues.Visible := true;
    TempvarValues.Left := 230;
    TempvarValues.Hint := TempvarValues.Name;
    TempvarValues.ShowHint := true;
    {$ELSE}
    TempvarValues.Visible := false;
    TempvarValues.Left := -1000;
    {$ENDIF}
    TempvarValues.Items.Add('2');
    TempvarValues.Items.Add('0');
    TempvarValues.Items.Add('0');
    TempvarValues.Items.Add('6');
    TempvarValues.Items.Add(IntToStr(ReturnZoomVlr(AppMenu.ZoomComboBox.ItemIndex)));
    TempvarValues.Items.Add('0');

    TempCertInfo := TListBox.Create(TempSheet);
    TempCertInfo.Name := 'CertInfo' + IntTostr(BrowserTabCount);
    TempCertInfo.Parent := TempSheet;
    {$IFDEF DEBUG}
    TempCertInfo.Visible := true;
    TempCertInfo.Left := 530;
    TempCertInfo.Hint := TempCertInfo.Name;
    TempCertInfo.ShowHint := true;
    {$ELSE}
    TempCertInfo.Visible := false;
    TempCertInfo.Left := -1000;
    {$ENDIF}
    TempCertInfo.Items.Add('');
    TempCertInfo.Items.Add('');
    TempCertInfo.Items.Add('');
    TempCertInfo.Items.Add('');
    TempCertInfo.Items.Add('');
    TempCertInfo.Items.Add('');
    TempCertInfo.Items.Add('0');
   end;
  finally
   begin
    TempChromium := TChromium.Create(TempSheet);
    TempChromium.Name := 'Chromium' + IntTostr(BrowserTabCount);
    TabCRMHandle.Items.Add(TempChromium.Name);

    if AppMenu.opt6.State = tssOn then
     TempChromium.Options.Plugins := STATE_ENABLED
    else
     TempChromium.Options.Plugins := STATE_DISABLED;
    if AppMenu.opt7.State = tssOn then
     TempChromium.Options.Javascript := STATE_ENABLED
    else
     TempChromium.Options.Javascript := STATE_DISABLED;
    if AppMenu.opt8.State = tssOn then
     TempChromium.Options.Webgl := STATE_ENABLED
    else
     TempChromium.Options.Webgl := STATE_DISABLED;
    if AppMenu.opt9.State = tssOn then
     TempChromium.Options.ImageLoading := STATE_ENABLED
    else
     TempChromium.Options.ImageLoading := STATE_DISABLED;

    TempChromium.OnAfterCreated := Chromium_OnAfterCreated;
    TempChromium.OnLoadStart := Chromium_LoadStart;
    TempChromium.OnLoadEnd := Chromium_LoadEnd;
    TempChromium.OnAddressChange := Chromium_OnAddressChange;
    TempChromium.OnTitleChange := Chromium_OnTitleChange;
    TempChromium.OnClose := Chromium_OnClose;
    TempChromium.OnBeforeClose := Chromium_OnBeforeClose;
    TempChromium.OnBeforePopup := Chromium_OnBeforePopup;
    TempChromium.OnCertificateError := Chromium_CertificateError;
    TempChromium.OnFavIconUrlChange := Chromium_FavIconUrlChange;
    TempChromium.OnStatusMessage := Chromium_StatusMessage;
    TempChromium.OnLoadingProgressChange := Chromium_LoadingProgressChange;
    TempChromium.OnFullScreenModeChange := Chromium_FullScreenModeChange;
    TempChromium.OnKeyEvent := Chromium_KeyEvent;
    TempChromium.OnBeforeResourceLoad := Chromium_BeforeResourceLoad;
    TempChromium.OnOpenUrlFromTab := Chromium_OpenUrlFromTab;
    TempChromium.OnJsdialog := Chromium_Jsdialog;
    TempChromium.OnProtocolExecution := Chromium_ProtocolExecution;
    TempChromium.OnDownloadUpdated := Chromium_DownloadUpdated;
    TempChromium.OnBeforeDownload := Chromium_BeforeDownload;
    TempChromium.OnBeforeContextMenu := Chromium_BeforeContextMenu;
    TempChromium.OnContextMenuCommand := Chromium_ContextMenuCommand;
    TempChromium.OnLoadError := Chromium_LoadError;
    TempChromium.OnRenderCompMsg := Chromium_RenderCompMsg;
    end;
  end;

  TempChromium.CreateBrowser(TempWindowParent, '');
  AddFavIcon(0);
  AeroTabs.Tabs.BeginUpdate;
  NewAeroTab := AeroTabs.Tabs.Add;
  NewAeroTab.Caption := TempSheet.Caption;
  AeroTabs.Tabs.EndUpdate;
  NewTabProcedures.Enabled := true;
  btnzone.ImageIndex := 1;
end;

procedure TMainForm.NewTabProceduresTimer(Sender: TObject);
begin
 //procedure para executar ao abrir nova guia
 NewTabProcedures.Enabled := false;
 ApplyBrowserZoom;
end;

procedure TMainForm.NightMode1Click(Sender: TObject);
begin
 Showmessage('Under Construction!');
end;

procedure TMainForm.NotificationCenter1ReceiveLocalNotification(Sender: TObject;
  ANotification: TNotification);
begin
 if ANotification.Name = 'WebExplorer-DE' then
  begin
   ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchWindow -library'), NIL, SW_HIDE);
   Application.Terminate;
  end;
end;

procedure TMainForm.NotificationCenterAct(cmd: SmallInt);
var
  MyNotification: TNotification;
begin
if WindowsActionCenter = true then
 case cmd of
  0: begin
      MyNotification := NotificationCenter1.CreateNotification;
       try
        MyNotification.Name := 'WebExplorer-SM';
        MyNotification.EnableSound := false;        
        MyNotification.Title := MainForm.LanguageCache.Lines[479];
        MyNotification.AlertBody := MainForm.LanguageCache.Lines[478];
        NotificationCenter1.PresentNotification(MyNotification);
       finally
        MyNotification.Free;
       end;
     end;
  1: begin
      NotificationCenter1.CancelNotification('WebExplorer-SM');
     end;
 {$IFDEF STORE}
  2: begin
      MyNotification := NotificationCenter1.CreateNotification;
       try
        MyNotification.Name := 'WebExplorer-PR';
        MyNotification.EnableSound := false;
        MyNotification.Title := MainForm.LanguageCache.Lines[481];
        MyNotification.AlertBody := MainForm.LanguageCache.Lines[480];
        NotificationCenter1.PresentNotification(MyNotification);
       finally
        MyNotification.Free;
       end;
     end;
  3: begin
      NotificationCenter1.CancelNotification('WebExplorer-PR');
     end;
 {$ENDIF}
 {$IFDEF RELEASE}
  2: begin
      MyNotification := NotificationCenter1.CreateNotification;
       try
        MyNotification.Name := 'WebExplorer-PR';
        MyNotification.EnableSound := false;
        MyNotification.Title := MainForm.LanguageCache.Lines[481];
        MyNotification.AlertBody := MainForm.LanguageCache.Lines[480];
        NotificationCenter1.PresentNotification(MyNotification);
       finally
        MyNotification.Free;
       end;
     end;
  3: begin
      NotificationCenter1.CancelNotification('WebExplorer-PR');
     end;
 {$ENDIF}
  4: begin
      MyNotification := NotificationCenter1.CreateNotification;
       try
        MyNotification.Name := 'WebExplorer-EX';
        MyNotification.EnableSound := false;
        MyNotification.Title := MainForm.LanguageCache.Lines[483];
        MyNotification.AlertBody := MainForm.LanguageCache.Lines[482];
        NotificationCenter1.PresentNotification(MyNotification);
       finally
        MyNotification.Free;
       end;
     end;
  5: begin
      NotificationCenter1.CancelNotification('WebExplorer-EX');
     end;
  6: begin
      MyNotification := NotificationCenter1.CreateNotification;
       try
        MyNotification.Name := 'WebExplorer-WI';
        MyNotification.EnableSound := false;
        MyNotification.Title := MainForm.LanguageCache.Lines[485];
        MyNotification.AlertBody := MainForm.LanguageCache.Lines[484];
        NotificationCenter1.PresentNotification(MyNotification);
       finally
        MyNotification.Free;
       end;
     end;
  7: begin
      NotificationCenter1.CancelNotification('WebExplorer-WI');
     end;
  8: begin
      OpenConfig;
      EnableLanguage(MainForm.LanguageIndex);
      MyNotification := NotificationCenter1.CreateNotification;
       try
        MyNotification.Name := 'WebExplorer-DE';
        MyNotification.EnableSound := false;
        MyNotification.Title := MainForm.LanguageCache.Lines[487];
        MyNotification.AlertBody := MainForm.LanguageCache.Lines[486];
        NotificationCenter1.PresentNotification(MyNotification);
       finally
        MyNotification.Free;
       end;
     end;
  9: begin
      NotificationCenter1.CancelNotification('WebExplorer-DE');
     end;
 end;
end;

procedure TMainForm.NotificationPageTimerTimer(Sender: TObject);
var
 PageNotificationFrm: TPageNotificationFrame;
 TempPanelName, TempTitleString: string;
begin
 try
  TempPanelName := StringReplace(NotificationStrs[4], 'Chromium', 'PanelNotification', [rfReplaceAll]);
  try
   PageNotificationFrm := TPageNotificationFrame.Create( TPanel( pcMain.Pages[GetTabIndexByChromoium(NotificationStrs[4])].FindComponent( TempPanelName )) );
   PageNotificationFrm.Parent := TPanel( pcMain.Pages[GetTabIndexByChromoium(NotificationStrs[4])].FindComponent(TempPanelName));
   PageNotificationFrm.Align := alClient;
  Except
   try
    PageNotificationFrm := TPageNotificationFrame( TPanel( pcMain.Pages[GetTabIndexByChromoium(NotificationStrs[4])].FindComponent( TempPanelName )).Components[0] );
    PageNotificationFrm.Free;
   finally
    PageNotificationFrm := TPageNotificationFrame.Create( TPanel( pcMain.Pages[GetTabIndexByChromoium(NotificationStrs[4])].FindComponent( TempPanelName )) );
    PageNotificationFrm.Parent := TPanel( pcMain.Pages[GetTabIndexByChromoium(NotificationStrs[4])].FindComponent(TempPanelName));
    PageNotificationFrm.Align := alClient;
   end;


  end;
  if StrtoInt(NotificationStrs[6]) = 3 then //HTML Error Page
   begin
    PageNotificationFrm.NotificationType(1);

    TempTitleString := StringReplace(NotificationStrs[1], '<h1>', '', [rfreplaceall]);
    TempTitleString := StringReplace(TempTitleString, '</h1>', '', [rfreplaceall]);

    PageNotificationFrm.ErrorMSG1.Caption := MainForm.LanguageCache.Lines[444];
    PageNotificationFrm.ErrorMSG2.Caption := TempTitleString;
    PageNotificationFrm.ErrorMSG3.Caption := NotificationStrs[2];
    PageNotificationFrm.NotificationBrowserIndexName := NotificationStrs[4];
    PageNotificationFrm.ErrorUrl := NotificationStrs[5];

    TChromium( pcMain.Pages[GetTabIndexByChromoium(NotificationStrs[4])].FindComponent(NotificationStrs[4])).Browser.MainFrame.ExecuteJavaScript('document.write(''''<p>' + NotificationStrs[2] + '</p>'''');', '', 0);
    TChromium( pcMain.Pages[GetTabIndexByChromoium(NotificationStrs[4])].FindComponent(NotificationStrs[4])).Browser.MainFrame.ExecuteJavaScript('document.title = "' + TempTitleString + '";', '', 0);
   end;
  if StrtoInt(NotificationStrs[6]) = 0 then //Certificate Error Page
   begin
    PageNotificationFrm.NotificationType(2);

    PageNotificationFrm.ErrorMSG1.Caption := MainForm.LanguageCache.Lines[551];
    PageNotificationFrm.ErrorMSG2.Caption := MainForm.LanguageCache.Lines[552];
    PageNotificationFrm.ErrorMSG3.Caption := NotificationStrs[2];
    PageNotificationFrm.NotificationBrowserIndexName := NotificationStrs[4];
    PageNotificationFrm.ErrorUrl := NotificationStrs[5];
   end;


 finally
  NotificationPageTimer.Enabled := false;
 end;


end;

procedure TMainForm.NotifyMoveOrResizeStarted;
var
  i, j : integer;
  TempChromium : TChromium;
begin
  if not(showing) or (pcMain = nil) or FClosing then
    exit;

  i := 0;
  j := pcMain.PageCount;

  while (i < j) do
    begin
      if SearchChromium(i, TempChromium) then
        TempChromium.NotifyMoveOrResizeStarted;
      inc(i);
    end;
end;

procedure TMainForm.OnShowFunctionsTimer(Sender: TObject);
begin
 OnShowFunctions.Enabled := false;
 if MainForm.privatemode = true then
  begin
   btnzone.Width := 110;
   URLsBar.Controls[0].Picture := ImgZoneBarBg.Controls[0].Picture;
   btnzone.Caption := 'Internet ' + MainForm.LanguageCache.Lines[522];
  end;
end;

procedure TMainForm.OpenAddressFromLink(LinkUrl: string);
var
  TempChromium : TChromium;
begin
  if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
   TempChromium.LoadURL(LinkUrl);
end;

procedure TMainForm.OpenConfig;
var
 StartItemNode : IXMLNode;
 ANode : IXMLNode;
 CMDFileStream : TStringList;
begin
 try
  XMLDoc.LoadFromFile(Profile_Pach + '\Global_Config.xml');
 finally
  if XMLDoc.XML.Count <= 10 then
  begin
   ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchAppProfile'), NIL, SW_HIDE);
   StopSessionAndTerminate;
  end;
 end;
 try
  XMLDoc.Active:=True;
  StartItemNode := XMLDoc.DocumentElement.ChildNodes.FindNode('browser');
  ANode := StartItemNode;

  /////////////////// CEF Command Lines ///////////////////
  try
   AppMenu.opt16.ItemIndex := Strtoint(ANode.ChildNodes['proxy_type'].Text);
  Except
   AppMenu.opt16.ItemIndex := 0;
  end;
  AppMenu.opt15.State := tssOff;
  if ANode.ChildNodes['inst_search'].IsTextElement = true then
   begin
    if ANode.ChildNodes['webrtc'].Text = 'true' then
     begin
      AppMenu.opt15.State := tssOn;
     end
    else
     AppMenu.opt15.State := tssOff;
   end
  else
   begin
    AppMenu.opt15.State := tssOn;
   end;

  if ANode.ChildNodes.IndexOf('smooth_scrolling') < 0 then
   AppMenu.opt17.State := tssOn
  else
   begin
  if ANode.ChildNodes['smooth_scrolling'].Text = 'true' then
   begin
    AppMenu.opt17.State := tssOn;
   end
  else
   AppMenu.opt17.State := tssOff;
   end;
  AppMenu.opt18.State := tssOff;
  if ANode.ChildNodes['mute_audio'].Text = 'true' then
   begin
    AppMenu.opt18.State := tssOn;
   end
  else
   AppMenu.opt18.State := tssOff;
  /////////////////// CEF Command Lines ///////////////////

  if ValidXMLAddress(1,ANode.ChildNodes['homepage'].Text) = 'about:blank' then
   begin
    AppMenu.opt5.State := tssOn;
    AppMenu.Label1.Enabled := false;
    AppMenu.opt_homepage_adr.Enabled := false;
    AppMenu.opt_homepage_adr.Text := ValidXMLAddress(1,ANode.ChildNodes['homepage'].Text);
   end
  else
   begin
    AppMenu.opt5.State := tssOff;
    if trim(ValidXMLAddress(1,ANode.ChildNodes['homepage'].Text)) = '' then
     AppMenu.opt_homepage_adr.Text := 'www.bing.com'
    else
     AppMenu.opt_homepage_adr.Text := ValidXMLAddress(1,ANode.ChildNodes['homepage'].Text);
   end;
  SearchNameProvider := ANode.ChildNodes['providername'].Text;
  languageIndex := StrToInt(ANode.ChildNodes['language_index'].Text);
  AppMenu.LanguageComboBox.ItemIndex := languageIndex;
  EnableLanguage(LanguageIndex);
  if ANode.ChildNodes['openspd_new_tab'].Text = 'true' then
   begin
    AppMenu.opt4.State := tssOn;
    //spd_showing := true;
   end
  else
   begin
    //spd_showing := false;
    AppMenu.opt4.State := tssOff;
   end;
  if ANode.ChildNodes['proxy'].Text = 'true' then
   begin
    AppMenu.opt3.State := tssOff;
    AppMenu.ProxyCtrls(true);
    AppMenu.proxyaddress.Text := ANode.ChildNodes['proxyaddress'].Text;
    AppMenu.proxyport.text := ANode.ChildNodes['proxyport'].Text;
    //$REVIEW_THIS
    //EnableProxy(AppMenu.proxyaddress.Text, AppMenu.proxyport.text);
   end
  else
   begin
    AppMenu.opt3.State := tssOn;
    AppMenu.ProxyCtrls(false);
    AppMenu.proxyaddress.Text := '127.0.0.1';
    AppMenu.proxyport.text := '80';
   end;
  AppMenu.opt_downloaddir.Text := ValidXMLAddress(1,ANode.ChildNodes['DE_Folder'].Text);
  SB_C1.ItemIndex := StrtoInt(ANode.ChildNodes['SearchEngineIndex'].Text);
  SB_C6.Text := ValidXMLAddress(1,ANode.ChildNodes['SearchEngineCustomCode'].Text);
  if SB_C1.ItemIndex <> SB_C1.ItemsEx.Count - 1  then
   begin
    SB_C6.Text := '';
   end
  else
   begin
    SB_C5.Text := SearchNameProvider;
    SearchaddressProvider := SB_C6.Text;
   end;
  if ANode.ChildNodes['history_cache'].Text = 'true' then
   begin
     CheckHistoryConditions(StrToInt(ANode.ChildNodes['history_days'].Text));
     AppMenu.opt2.State := tssOn;
     AppMenu.Label9.Enabled := true;
     AppMenu.cachedays.Enabled := true;
     AppMenu.cachedays.Value := StrToInt(ANode.ChildNodes['history_days'].Text);
   end
  else
   begin
    AppMenu.opt2.State := tssOff;
    AppMenu.Label9.Enabled := false;
    AppMenu.cachedays.Enabled := false;
    AppMenu.cachedays.Value := StrToInt(ANode.ChildNodes['history_days'].Text);
   end;
  if ANode.ChildNodes['usepluguins'].Text = 'true' then
   begin
    AppMenu.opt6.State := tssOn;
   end
  else
   begin
    AppMenu.opt6.State := tssOff;
   end;
  if ANode.ChildNodes['usejavascript'].Text = 'true' then
   begin
    AppMenu.opt7.State := tssOn;
   end
  else
   begin
    AppMenu.opt7.State := tssOff;
   end;
  if ANode.ChildNodes['usewebgl'].Text = 'true' then
   begin
    AppMenu.opt8.State := tssOn;
   end
  else
   begin
    AppMenu.opt8.State := tssOff;
   end;
  if ANode.ChildNodes['loadimages'].Text = 'true' then
   begin
    AppMenu.opt9.State := tssOn;
   end
  else
   begin
    AppMenu.opt9.State := tssOff;
   end;
  AppMenu.opt10.ItemIndex := Strtoint(ANode.ChildNodes['popuplevel'].Text);
  if ANode.ChildNodes['adblock'].Text = 'true' then
   begin
    AppMenu.opt11.State := tssOn;
    AdBlockEnabled := true;
   end
  else
   begin
    AppMenu.opt11.State := tssOff;
    AdBlockEnabled := false;
   end;
 if (AppMenu.opt7.State = tssOff) or (ParamStr(1) = '-safemode') then
  begin
   ViewinReaderMode1.Enabled := false;
   NightMode1.Enabled := false;
  end
 else
  begin
   NightMode1.Enabled := true;
   ViewinReaderMode1.Enabled := true;
  end;

 AppMenu.ZoomComboBox.ItemIndex := 6;
 AppMenu.ZoomComboBox.ItemIndex := Strtoint(ANode.ChildNodes['zoomlevel'].Text);
 if ANode.ChildNodes['geolocation'].Text = 'true' then
   begin
    AppMenu.opt12.State := tssOn;
   end
  else
   begin
    AppMenu.opt12.State := tssOff;
   end;


  if ANode.ChildNodes['legacybrowser'].Text = 'true' then
   begin
    AppMenu.opt13.State := tssOn;
    Legacybrowser(true);
   end;
  if ANode.ChildNodes['legacybrowser'].Text = 'false' then
   begin
    AppMenu.opt13.State := tssOff;
    Legacybrowser(false);
   end;

  if IsHardwareAccelerated = true then
   begin
    AppMenu.opt14.State := tssOn;
    IsGenericGraphics := false
   end
  else
   begin
    IsGenericGraphics := true;
    AppMenu.opt14.State := tssOff;
   end;

  if ANode.ChildNodes['usegpu'].IsTextElement = true then
   begin
    if ANode.ChildNodes['usegpu'].Text = 'true' then
     begin
      AppMenu.opt14.State := tssOn;
      IsGenericGraphics := false;
     end
    else
     begin
      IsGenericGraphics := true;
      AppMenu.opt14.State := tssOff;
     end;
   end
  else
   begin
    AppMenu.opt14.State := tssOn;
    IsGenericGraphics := false;
   end;
  if ANode.ChildNodes['inst_search'].IsTextElement = true then
   begin
    if ANode.ChildNodes['inst_search'].Text = 'true' then
     begin
      AppMenu.opt19.State := tssOn;
      UseInstantSearch := true;
     end
    else
     begin
      UseInstantSearch := false;
      AppMenu.opt19.State := tssOff;
     end;
   end
  else
   begin
    AppMenu.opt19.State := tssOn;
    UseInstantSearch := true;
   end;

  if ANode.ChildNodes['newtab_type'].IsTextElement = true then
   begin
    AppMenu.StartPageOptCombobox.ItemIndex := Strtoint(ANode.ChildNodes['newtab_type'].Text);
    case Strtoint(ANode.ChildNodes['newtab_type'].Text) of
     0: AppMenu.StartPageOptCombobox.ItemIndex := 0;
     1: AppMenu.StartPageOptCombobox.ItemIndex := 1;
     2: AppMenu.StartPageOptCombobox.ItemIndex := 2;
    end;
   end
  else
   begin
    AppMenu.StartPageOptCombobox.ItemIndex := 1;
   end;

  AppMenu.ReaderModeComboBox.ItemIndex := 0;
  try
   AppMenu.ReaderModeComboBox.ItemIndex := Strtoint(ANode.ChildNodes['readermode'].Text);
  Except
   AppMenu.ReaderModeComboBox.ItemIndex := 0;
  end;
  EnableSearchBarSettings;
 Except

 end;

end;

procedure TMainForm.OpenDeveloperTools1Click(Sender: TObject);
begin
 ShowDevTools;
end;

procedure TMainForm.OpenMenuExecute(Sender: TObject);
begin
 if MENUviewerPanel.Visible = false then
  ShowMenuHub(true)
 else
  ShowmenuHub(false);
end;

procedure TMainForm.OpenNewTab(Url: String);
begin
 NewTabURL := Url;
 NewTabCall := true;
 OpenNewTabTimer.Enabled := true;
end;

procedure TMainForm.OpenNewTabImgTimer(Sender: TObject);
begin
 TTimer(Sender).Enabled := false;
 OpenNewTab(imageurl);
end;

procedure TMainForm.OpenNewTabTimerTimer(Sender: TObject);
begin
 TTimer(Sender).Enabled := false;
 NewTab.Execute;
end;

procedure TMainForm.OpenPopupBar(BrowserName, PopUpUrl: string);
var
 PopUpBarFrm: TPopUpBarFrame;
 TempPanelName: string;
begin
 try
  PageTrash.AddPage(MainForm.LanguageCache.Lines[372], popupurl);
  TempPanelName := StringReplace(BrowserName, 'Chromium', 'PanelNotificationBar', [rfReplaceAll]);
  try
   PopUpBarFrm := TPopUpBarFrame.Create( TPanel( pcMain.Pages[GetTabIndexByChromoium(BrowserName)].FindComponent( TempPanelName )) );
   PopUpBarFrm.Parent := TPanel( pcMain.Pages[GetTabIndexByChromoium(BrowserName)].FindComponent(TempPanelName));
   TPanel( pcMain.Pages[GetTabIndexByChromoium(BrowserName)].FindComponent( TempPanelName )).Visible := true;
   PopUpBarFrm.Align := alClient;
   PopUpBarFrm.PopUpUrl := PopUpUrl;
   PopUpBarFrm.NotificationBrowserIndexName := BrowserName;
  Except
   try
    PopUpBarFrm := TPopUpBarFrame( TPanel( pcMain.Pages[GetTabIndexByChromoium(BrowserName)].FindComponent( TempPanelName )).Components[0] );
    PopUpBarFrm.Free;
   finally
    PopUpBarFrm := TPopUpBarFrame.Create( TPanel( pcMain.Pages[GetTabIndexByChromoium(BrowserName)].FindComponent( TempPanelName )) );
    PopUpBarFrm.Parent := TPanel( pcMain.Pages[GetTabIndexByChromoium(BrowserName)].FindComponent(TempPanelName));
    TPanel( pcMain.Pages[GetTabIndexByChromoium(BrowserName)].FindComponent( TempPanelName )).Visible := true;
    PopUpBarFrm.Align := alClient;
    PopUpBarFrm.PopUpUrl := PopUpUrl;
    PopUpBarFrm.NotificationBrowserIndexName := BrowserName;
   end;
  end;
 finally
 end;
end;

procedure TMainForm.OpenPopupBrowser(options: TCefWindowOpenDisposition; TargetUrl, BrowserName: string);
begin
 if (TrustedPagesCache.Lines.IndexOf(MainForm.GetDomain(targetUrl)) >= 0) then
  begin
   OpenPopupBar(BrowserName, TargetUrl);
   Exit;
  end
 else
  begin
           case +abs(AppMenu.opt10.ItemIndex) of
            0: begin
                OpenPopupBar(BrowserName, TargetUrl);
                //popupurl := targetUrl;
                //PopupThread.Enabled := true;
                Exit;
               end;
            1: begin
                if options = WOD_NEW_WINDOW then
                 begin
                  OpenPopUpWindow(targetUrl, false);
                  {if MainForm.privatemode = false then
                   ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorer.exe'), Pchar('-popup ' + targetUrl),nil,SW_SHOW)
                  else
                   ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorer.exe'), Pchar('-popup ' + targetUrl + ' -privatemode'),nil,SW_SHOW);}
                  exit;
                 end
                else if options = WOD_NEW_BACKGROUND_TAB then
                 begin
                  OpenPopupBar(BrowserName, TargetUrl);
                  Exit;
                 end
                else if options = WOD_SAVE_TO_DISK then
                 begin
                  OpenNewTab(targetUrl);
                  Exit;
                 end
                else if options = WOD_NEW_FOREGROUND_TAB then
                 begin
                  OpenNewTab(targetUrl);
                  Exit;
                 end
                else if options = WOD_NEW_POPUP then
                 begin
                  if not PopUpFromUser then
                   OpenPopupBar(BrowserName, TargetUrl)
                  else
                   begin
                    OpenPopUpWindow(targetUrl, true);
                   end;
                  exit;
                 end
                else if options = WOD_UNKNOWN then
                 begin
                  OpenPopupBar(BrowserName, TargetUrl);
                  Exit;
                 end
                else
                 begin
                  OpenPopupBar(BrowserName, TargetUrl);
                  Exit;
                 end;
               end;
            2: begin
//                if options.toolBarVisible = 1 then
//                 begin
//                  MainForm.NewTabURL := targetUrl;
//                  //MainForm.OpenTabThread.Enabled := true;
//                  Exit;
//                 end
//                else
//                 begin
//                  {$IFDEF RELEASE}
//                  if (targetUrl <> trim('')) and (targetUrl <> 'about:blank') and (targetUrl <> 'file:///') and (targetUrl <> 'file://') and (targetUrl <> '') then
//                   begin
//                    if MainForm.privatemode = false then
//                      ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + 'Web Explorer.exe'), Pchar('-popup ' + targetUrl),nil,SW_SHOW)
//                    else
//                      ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + 'Web Explorer.exe'), Pchar('-popup ' + targetUrl + ' -privatemode'),nil,SW_SHOW);
//                   end;
//                  {$ELSE}
//                  if (targetUrl <> trim('')) and (targetUrl <> 'about:blank') and (targetUrl <> 'file:///') and (targetUrl <> 'file://') and (targetUrl <> '') then
//                   begin
//                    if MainForm.privatemode = false then
//                      ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorer.exe'), Pchar('-popup ' + targetUrl),nil,SW_SHOW)
//                    else
//                      ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorer.exe'), Pchar('-popup ' + targetUrl + ' -privatemode'),nil,SW_SHOW);
//                   end;
//                  {$ENDIF}
//                  Exit;
//                 end;
               end;
           end;
  end;
end;

procedure TMainForm.OpenPopUpWindow(UrlToOpen: String; ShowToolBar: Boolean);
var
 TPopUpForm: TPopUpFrm;
begin
 try
  TPopUpForm := TPopUpFrm.Create(nil);
  with TPopUpForm do
   begin
    try
      ToolBar1.Visible := ShowToolBar;
      UrlToLoad := UrlToOpen;
      AlignAll;
    finally
      Show;
    end;
   end;
 Except
  try
   TPopUpForm.Free;
  finally
   TPopUpForm := TPopUpFrm.Create(nil);
   with TPopUpForm do
    begin
     try
      ToolBar1.Visible := ShowToolBar;
      UrlToLoad := UrlToOpen;
      AlignAll;
     finally
      Show;
     end;
    end;
  end;
 end;

end;

procedure TMainForm.OpenPrivateMode1Click(Sender: TObject);
begin
 ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchWindow -privatemode'), NIL, SW_HIDE);
end;

procedure TMainForm.OpenServices;
begin
  if ParamCount > 0 then
   begin
    if ParamStr(1) = '-privatemode' then
     begin
       //$REVIEW_THIS
       //CreateDir(Profile_Pach + '\Cache\Temp');
       privatemode := true;
       //$REVIEW_THIS
       {OpenNotificationTimer.Interval := 3500;
       OpenNotificationTimer.Enabled := true;}
     end
    else if ParamStr(1) = '-safemode' then
     begin
       safemode := true;
       //$REVIEW_THIS
       //OpenNotificationTimer.Enabled := true;
     end
    else if ParamStr(1) = '-popup' then
     begin
       if (ParamCount = 3) and (ParamStr(3) = '-privatemode') then
        begin
         //CreateDir(Profile_Pach + '\Cache\Temp');
         privatemode := true;
        end;
        PopUpModeWindow := true;
       //$REVIEW_THIS
       //EngineEndevor6.Enabled := false;
       ShowPopUpMode;
       MainForm.PopupMenu := nil;
     end
    else if (ParamStr(1) = '-restore') and (ParamStr(3) = '-privatemode') then
     begin
       privatemode := true;
       RestoreSession;
       //$REVIEW_THIS
       {OpenNotificationTimer.Interval := 3500;
       OpenNotificationTimer.Enabled := true;}
     end
    else if (ParamStr(1) = '-restore') then
     begin
      RestoreSession;
     end
    else if ParamStr(1) = '-widgets' then
     begin
       widgetsmode := true;
     end
    else if ParamStr(1) = '-library' then
     begin
       widgetsmode := true;
     end
    else if ParamStr(1) = '-notification' then
     begin
       widgetsmode := true;
       //$REVIEW_THIS
       //ShowNotificationMode;
     end
    else
     begin
      safemode := false;
      privatemode := false;
      widgetsmode := false;
      //$REVIEW_THIS
      {if ParamStr(1) <> '-restore' then
       OkToExternalPage := True
      else
       begin
        OkToExternalPage := false;
        OkToHomePage := false;
       end;}
     end;
   end
  else
   begin
    safemode := false;
    privatemode := false;
    widgetsmode := false;
   end;
end;

procedure TMainForm.OpenSharePopupTimerTimer(Sender: TObject);
begin
 OpenSharePopupTimer.Enabled := false;
 btnzone.Click;
end;

procedure TMainForm.OpenSPDTimerTimer(Sender: TObject);
begin
 OpenSPDTimer.Enabled := false;
 OpenSpeedDial;
end;

procedure TMainForm.OpenSpeedDial;
var
  TempChromium : TChromium;
begin
  if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
   begin
    TempChromium.LoadUrl(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
   end;
end;

procedure TMainForm.OpenSpeedDial1Click(Sender: TObject);
begin
 OpenSPDTimer.Enabled := Enabled;
end;

procedure TMainForm.OpenTabTimerTimer(Sender: TObject);
begin
 OpenTabTimer.Enabled := false;
 OpenNewTab(linktemp);
end;

procedure TMainForm.OpenWidgets1Click(Sender: TObject);
begin
 OpenForm('UserLibrary', '', '', False, 4, false);
end;

procedure TMainForm.OpenWindowTimerTimer(Sender: TObject);
begin
 TTimer(sender).Enabled := false;
 if MainForm.privatemode = false then
  ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchWindow ' + LastLink), NIL, SW_HIDE)
 else
  ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorerLaunchpad.exe'),pchar('-LaunchWindow -privatemode ' + LastLink), NIL, SW_HIDE);
end;

procedure TMainForm.WMMove(var aMessage : TWMMove);
begin
  inherited;

  NotifyMoveOrResizeStarted;
end;

procedure TMainForm.WMMoving(var aMessage : TMessage);
begin
  inherited;

  NotifyMoveOrResizeStarted;
end;

procedure TMainForm.WMNCACTIVATE(var M: TWMNCACTIVATE);
begin
 inherited;
  if M.Active then
   MainForm.FormActive := true
  else
   MainForm.FormActive := false;
end;

procedure TMainForm.WMQueryEndSession(var Message: TWMQueryEndSession);
begin
 SystemShuttingDown := true;
 inherited;
end;

procedure TMainForm.zmenu100Click(Sender: TObject);
begin
 SetTabValues('BrowserZoom', '100');
 ApplyBrowserZoom;
end;

procedure TMainForm.zmenu150Click(Sender: TObject);
begin
 SetTabValues('BrowserZoom', '150');
 ApplyBrowserZoom;
end;

procedure TMainForm.zmenu200Click(Sender: TObject);
begin
 SetTabValues('BrowserZoom', '200');
 ApplyBrowserZoom;
end;

procedure TMainForm.zmenu250Click(Sender: TObject);
begin
 SetTabValues('BrowserZoom', '250');
 ApplyBrowserZoom;
end;

procedure TMainForm.zmenu300Click(Sender: TObject);
begin
 SetTabValues('BrowserZoom', '300');
 ApplyBrowserZoom;
end;

procedure TMainForm.zmenu350Click(Sender: TObject);
begin
 SetTabValues('BrowserZoom', '350');
 ApplyBrowserZoom;
end;

procedure TMainForm.zmenu400Click(Sender: TObject);
begin
 SetTabValues('BrowserZoom', '400');
 ApplyBrowserZoom;
end;

procedure TMainForm.zmenu50Click(Sender: TObject);
begin
 SetTabValues('BrowserZoom', '50');
 ApplyBrowserZoom;
end;

procedure TMainForm.ZommOut1Click(Sender: TObject);
begin
 ZoomOut1.Click;
end;

procedure TMainForm.ZommReset1Click(Sender: TObject);
begin
 SetTabValues('BrowserZoom', '100');
 ApplyBrowserZoom;
end;

procedure TMainForm.Zoom1Click(Sender: TObject);
begin
 case StrtoInt(GetTabValues('BrowserZoom')) of
  50:  begin
        zmenu50.Checked := true;
        zmenu100.Checked := false;
        zmenu150.Checked := false;
        zmenu200.Checked := false;
        zmenu250.Checked := false;
        zmenu300.Checked := false;
        zmenu350.Checked := false;
        zmenu400.Checked := false;
        ZoomIn1.Enabled := true;
        ZoomOut1.Enabled := false;
       end;
  100: begin
        zmenu50.Checked := false;
        zmenu100.Checked := true;
        zmenu150.Checked := false;
        zmenu200.Checked := false;
        zmenu250.Checked := false;
        zmenu300.Checked := false;
        zmenu350.Checked := false;
        zmenu400.Checked := false;
        ZoomIn1.Enabled := true;
        ZoomOut1.Enabled := true;
       end;
  150: begin
        zmenu50.Checked := false;
        zmenu100.Checked := false;
        zmenu150.Checked := true;
        zmenu200.Checked := false;
        zmenu250.Checked := false;
        zmenu300.Checked := false;
        zmenu350.Checked := false;
        zmenu400.Checked := false;
        ZoomIn1.Enabled := true;
        ZoomOut1.Enabled := true;
       end;
  200: begin
        zmenu50.Checked := false;
        zmenu100.Checked := false;
        zmenu150.Checked := false;
        zmenu200.Checked := true;
        zmenu250.Checked := false;
        zmenu300.Checked := false;
        zmenu350.Checked := false;
        zmenu400.Checked := false;
        ZoomIn1.Enabled := true;
        ZoomOut1.Enabled := true;
       end;
  250: begin
        zmenu50.Checked := false;
        zmenu100.Checked := false;
        zmenu150.Checked := false;
        zmenu200.Checked := false;
        zmenu250.Checked := true;
        zmenu300.Checked := false;
        zmenu350.Checked := false;
        zmenu400.Checked := false;
        ZoomIn1.Enabled := true;
        ZoomOut1.Enabled := true;
       end;
  300: begin
        zmenu50.Checked := false;
        zmenu100.Checked := false;
        zmenu150.Checked := false;
        zmenu200.Checked := false;
        zmenu250.Checked := false;
        zmenu300.Checked := true;
        zmenu350.Checked := false;
        zmenu400.Checked := false;
        ZoomIn1.Enabled := true;
        ZoomOut1.Enabled := true;
       end;
  350: begin
        zmenu50.Checked := false;
        zmenu100.Checked := false;
        zmenu150.Checked := false;
        zmenu200.Checked := false;
        zmenu250.Checked := false;
        zmenu300.Checked := false;
        zmenu350.Checked := true;
        zmenu400.Checked := false;
        ZoomIn1.Enabled := true;
        ZoomOut1.Enabled := true;
       end;
  400: begin
        zmenu50.Checked := false;
        zmenu100.Checked := false;
        zmenu150.Checked := false;
        zmenu200.Checked := false;
        zmenu250.Checked := false;
        zmenu300.Checked := false;
        zmenu350.Checked := false;
        zmenu400.Checked := true;
        ZoomIn1.Enabled := false;
        ZoomOut1.Enabled := true;
       end;
 end;
end;

procedure TMainForm.ZoomIn1Click(Sender: TObject);
var
  TempChromium : TChromium;
  TempValue: SmallInt;
begin
 if StrtoInt(GetTabValues('BrowserZoom')) <= 400  then
  begin
   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
    TempChromium.Browser.Host.ZoomLevel := TempChromium.Browser.Host.ZoomLevel + 0.5;
   TempValue := StrtoInt(GetTabValues('BrowserZoom'));
   TempValue := TempValue + 50;
   SetTabValues('BrowserZoom', IntToStr(TempValue));
   ApplyBrowserZoom;
  end;
end;

procedure TMainForm.ZoomOut1Click(Sender: TObject);
var
  TempChromium : TChromium;
  TempValue: SmallInt;
begin
 if StrtoInt(GetTabValues('BrowserZoom')) >= 100  then
  begin
   if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
    TempChromium.Browser.host.ZoomLevel := TempChromium.Browser.Host.ZoomLevel - 0.5;
   TempValue := StrtoInt(GetTabValues('BrowserZoom'));
   TempValue := TempValue - 50;
   SetTabValues('BrowserZoom', IntToStr(TempValue));
   ApplyBrowserZoom;
  end;
end;

procedure TMainForm.ZoomReset1Click(Sender: TObject);
begin
 ZoomReset1.Click;
end;

procedure TMainForm.WarningTabTimerTimer(Sender: TObject);
begin
 if WarningTabAnimationIndex <= 80 then
  begin
   AeroTabs.LookAndFeel.Tabs.NotActive.Style.OutlineColor := $008080FF;
   if WarningTabAnimationIndex < 10 then                         
    begin     
      AeroTabs.LookAndFeel.Tabs.NotActive.Style.StartColor := HtmlToColor('#F26663',clRed);
      AeroTabs.LookAndFeel.Tabs.NotActive.Style.StopColor := HtmlToColor('#F36C6A', clRed);
      AeroTabs.LookAndFeel.Tabs.Hot.Style.StartColor := HtmlToColor('#F26663',clRed);
      AeroTabs.LookAndFeel.Tabs.Hot.Style.StopColor := HtmlToColor('#F36C6A', clRed);
      WarningTabAnimationIndex := WarningTabAnimationIndex + 10;
    end
   else if WarningTabAnimationIndex = 10 then
    begin
      AeroTabs.LookAndFeel.Tabs.NotActive.Style.StartColor := HtmlToColor('#F15956',clRed);
      AeroTabs.LookAndFeel.Tabs.NotActive.Style.StopColor := HtmlToColor('#F25F5D', clRed);
      AeroTabs.LookAndFeel.Tabs.Hot.Style.StartColor := HtmlToColor('#F15956',clRed);
      AeroTabs.LookAndFeel.Tabs.Hot.Style.StopColor := HtmlToColor('#F25F5D', clRed);
      WarningTabAnimationIndex := WarningTabAnimationIndex + 10;
    end
   else if WarningTabAnimationIndex = 20 then
    begin
      AeroTabs.LookAndFeel.Tabs.NotActive.Style.StartColor := HtmlToColor('#F04C49',clRed);
      AeroTabs.LookAndFeel.Tabs.NotActive.Style.StopColor := HtmlToColor('#F15250', clRed);
      AeroTabs.LookAndFeel.Tabs.Hot.Style.StartColor := HtmlToColor('#F04C49',clRed);
      AeroTabs.LookAndFeel.Tabs.Hot.Style.StopColor := HtmlToColor('#F15250', clRed);
      WarningTabAnimationIndex := WarningTabAnimationIndex + 10;
    end 
   else if WarningTabAnimationIndex = 30 then
    begin      
      AeroTabs.LookAndFeel.Tabs.NotActive.Style.StartColor := HtmlToColor('#EF3F3C',clRed);
      AeroTabs.LookAndFeel.Tabs.NotActive.Style.StopColor := HtmlToColor('#EF4542', clRed);
      AeroTabs.LookAndFeel.Tabs.Hot.Style.StartColor := HtmlToColor('#EF3F3C',clRed);
      AeroTabs.LookAndFeel.Tabs.Hot.Style.StopColor := HtmlToColor('#EF4542', clRed);
      WarningTabAnimationIndex := WarningTabAnimationIndex + 10;
    end 
   else if WarningTabAnimationIndex = 40 then
    begin
      AeroTabs.LookAndFeel.Tabs.NotActive.Style.StartColor := HtmlToColor('#EE322F',clRed);
      AeroTabs.LookAndFeel.Tabs.NotActive.Style.StopColor := HtmlToColor('#EE3835', clRed);
      AeroTabs.LookAndFeel.Tabs.Hot.Style.StartColor := HtmlToColor('#EE322F',clRed);
      AeroTabs.LookAndFeel.Tabs.Hot.Style.StopColor := HtmlToColor('#EE3835', clRed);
      WarningTabAnimationIndex := WarningTabAnimationIndex + 10;
    end     
   else if WarningTabAnimationIndex = 50 then                         
    begin     
      AeroTabs.LookAndFeel.Tabs.NotActive.Style.StartColor := HtmlToColor('#EF3F3C',clRed);
      AeroTabs.LookAndFeel.Tabs.NotActive.Style.StopColor := HtmlToColor('#EF4542', clRed);
      AeroTabs.LookAndFeel.Tabs.Hot.Style.StartColor := HtmlToColor('#EF3F3C',clRed);
      AeroTabs.LookAndFeel.Tabs.Hot.Style.StopColor := HtmlToColor('#EF4542', clRed);
      WarningTabAnimationIndex := WarningTabAnimationIndex + 10;
    end
   else if WarningTabAnimationIndex = 60 then
    begin
      AeroTabs.LookAndFeel.Tabs.NotActive.Style.StartColor := HtmlToColor('#F04C49',clRed);
      AeroTabs.LookAndFeel.Tabs.NotActive.Style.StopColor := HtmlToColor('#F15250', clRed);
      AeroTabs.LookAndFeel.Tabs.Hot.Style.StartColor := HtmlToColor('#F04C49',clRed);
      AeroTabs.LookAndFeel.Tabs.Hot.Style.StopColor := HtmlToColor('#F15250', clRed);
      WarningTabAnimationIndex := WarningTabAnimationIndex + 10;
    end
   else if WarningTabAnimationIndex = 70 then
    begin
      AeroTabs.LookAndFeel.Tabs.NotActive.Style.StartColor := HtmlToColor('#F15956',clRed);
      AeroTabs.LookAndFeel.Tabs.NotActive.Style.StopColor := HtmlToColor('#F25F5D', clRed);
      AeroTabs.LookAndFeel.Tabs.Hot.Style.StartColor := HtmlToColor('#F15956',clRed);
      AeroTabs.LookAndFeel.Tabs.Hot.Style.StopColor := HtmlToColor('#F25F5D', clRed);
      WarningTabAnimationIndex := WarningTabAnimationIndex + 10;
    end 
   else
    begin
      AeroTabs.LookAndFeel.Tabs.NotActive.Style.StartColor := HtmlToColor('#F26663',clRed);
      AeroTabs.LookAndFeel.Tabs.NotActive.Style.StopColor := HtmlToColor('#F36C6A', clRed);
      AeroTabs.LookAndFeel.Tabs.Hot.Style.StartColor := HtmlToColor('#F26663',clRed);
      AeroTabs.LookAndFeel.Tabs.Hot.Style.StopColor := HtmlToColor('#F36C6A', clRed);
      WarningTabAnimationIndex := WarningTabAnimationIndex + 10;
    end;    
  end
 else
  begin
    AeroTabs.LookAndFeel.Tabs.Hot.Style.OutlineColor := $00BD9277;
    AeroTabs.LookAndFeel.Tabs.Hot.Style.StartColor := $00EFE2D8;
    AeroTabs.LookAndFeel.Tabs.Hot.Style.StopColor := $00EDE1D7;
    AeroTabs.LookAndFeel.Tabs.NotActive.Style.OutlineColor := $00CEB396;
    AeroTabs.LookAndFeel.Tabs.NotActive.Style.StartColor := $00E7D9CD;
    AeroTabs.LookAndFeel.Tabs.NotActive.Style.StopColor := $00E7D9CD;
    WarningTabAnimationIndex := 0;
    TTimer(Sender).Enabled := false;     
  end;
end;

procedure TMainForm.WindowClient;
begin
if (PopUpModeWindow <> true) and (MainForm.BorderStyle <> bsSingle) then
begin
 if WindowsUI = 1 then
  begin
   if FullScreen <> true then
    begin
     Self.ChromeTabs := AeroTabs;
     GlassFrame.Enabled := true;
     PanelTabs.SendToBack;
     PanelTabs.Align := alNone;
     MenuPanel.Align := alNone;
     MenuPanel.Height := 31;
     //MenuPanel.Width := 170;
     MenuPanel.Width := 146;
     MenuPanel.Parent := MainForm;
     if WindowState = wsMaximized then
      MenuPanel.Top := 7
     else
      begin
       MenuPanel.Top := 15;
      end;
     MenuPanel.Left := 0;
     MenuPanel.BringToFront;
     app_panel.Align := alNone;
     app_panel.Parent := MainForm;
     if WindowState = wsMaximized then
      app_panel.Top := 7
     else
      begin
       app_panel.Top := 15;
      end;
     app_panel.Left := AeroTabs.Left + AeroTabs.Width - app_panel.Width + 12;
     app_panel.BringToFront;
     //AeroTabs.Options.Display.TabContainer.PaddingLeft := 170;
     AeroTabs.Options.Display.TabContainer.PaddingLeft := 146;
     AeroTabs.Options.Display.TabContainer.PaddingRight := 66;
     BottomLineBarPanel.Visible := true;
     BottomLineBarPanel.Top := app_panel.Top + app_panel.Height -1;
     BottomLineBarPanel.Left := app_panel.Left + app_panel.Width;
     BottomLineBarPanel.BringToFront;
    end
   else
    begin
     Self.ChromeTabs := nil;
     GlassFrame.Enabled := false;
     BottomLineBarPanel.Visible := false;
     PanelTabs.Align := alTop;
     MenuPanel.Parent := PanelTabs;
     MenuPanel.Align := alLeft;
     app_panel.Parent := PanelTabs;
     app_panel.Align := alRight;
     AeroTabs.Options.Display.TabContainer.PaddingLeft := 0;
     AeroTabs.Options.Display.TabContainer.PaddingRight := 0;
     AeroTabs.Width := PanelTabs.Width - MenuPanel.Width - app_panel.Width;
    end;
  end
 else
  begin
   BottomLineBarPanel.Visible := false;
   PanelTabs.Align := alTop;
   MenuPanel.Parent := PanelTabs;
   MenuPanel.Align := alLeft;
   app_panel.Parent := PanelTabs;
   app_panel.Align := alRight;
   AeroTabs.Options.Display.TabContainer.PaddingLeft := 0;
   AeroTabs.Options.Display.TabContainer.PaddingRight := 0;
   AeroTabs.Width := PanelTabs.Width - MenuPanel.Width - app_panel.Width;
  end;
 end;
end;

function TMainForm.WindowsLanguageID: Integer;
var
  Ident: Integer;
  MyLang: PChar;
const
  Size: Integer = 250;
begin
  GetMem(MyLang, Size);
  Ident:=GetSystemDefaultLangID;
  VerLanguageName(Ident, MyLang, Size);
  if StrPas(MyLang) = 'Português (Brasil)' then
   Result := 0
  else if (StrPas(MyLang) = 'français (Canada)') or (StrPas(MyLang) = 'français (France)') then
   Result := 1
  else if (StrPas(MyLang) = 'Español (España)') or (StrPas(MyLang) = 'Español (América Latina)') then
   Result := 2
  else if StrPas(MyLang) = 'italiano (Italia)' then
   //Result := 3
   Result := 4
  else
   Result := 4;
  FreeMem(MyLang);
end;

function TMainForm.WindowsUI: Shortint;
begin
 if Winapi.UxTheme.IsThemeActive = true then
  begin
   if Win32MajorVersion >= 6 then
    if Winapi.UxTheme.IsCompositionActive = true then
     begin
      Result := 1; //Aero
      if Win32MajorVersion = 10 then
       begin
        if paramStr(1) <> '-popup' then
         begin
          if paramStr(1) <> '-popupvideo' then
           begin
            BottomLineBar1.Visible := true;
            BottomLineBar2.Visible := true;
            BottomLinePanel1.Visible := true;
            if WindowState = wsMaximized then
             BottomLinePanel1.Top := PanelTabs.Height + 6
            else
             BottomLinePanel1.Top := PanelTabs.Height + 14;
            end;
            if BorderStyle <> bsSizeable then
             BottomLinePanel1.Visible := false;
            BottomLinePanel1.Height := 1;
            BottomLinePanel1.Color := clBlack;
            BottomLinePanel1.BringToFront;
            BottomLinePanel1.Left := MainForm.Width - 200;
            PanelTabs.Width := 200;
         end;
       end
      else
       begin
        BottomLineBar1.Visible := true;
        BottomLineBar2.Visible := true;
       end;
      if paramStr(1) = '-popupvideo' then
       begin
        BottomLineBar1.Visible := false;
        BottomLineBar2.Visible := false;
       end;
     end
   else
    begin
     if Win32MajorVersion >= 6 then
      begin
       Result := 2; //Windows Vista/7 Basic Theme
       BottomLineBar1.Visible := true;
       BottomLineBar2.Visible := true;
      end
     else
      begin
       Result := 3; //Windows NT 5.1 Theme
       BottomLineBar1.Visible := true;
       BottomLineBar2.Visible := true;
      end;
    end;
  end
 else
  begin
   Result := 4; // Windows Classic Theme
   BottomLineBar1.Visible := true;
   BottomLineBar2.Visible := true;
  end;
 if (Winapi.UxTheme.IsThemeActive = true) and (Win32MajorVersion = 5) then
  begin
   Result := 3; //Windows NT 5.1 Theme
   BottomLineBar1.Visible := true;
   BottomLineBar2.Visible := true;
  end;
end;

procedure TMainForm.WMEndSession(var Message: TWMEndSession);
begin
 SystemShuttingDown := Message.EndSession;
 inherited;
end;

procedure TMainForm.WMEnterMenuLoop(var aMessage: TMessage);
begin
  inherited;

  if not(FClosing) and (aMessage.wParam = 0) and (GlobalCEFApp <> nil) then
    GlobalCEFApp.OsmodalLoop := True;
end;

procedure TMainForm.WMExitMenuLoop(var aMessage: TMessage);
begin
  inherited;

  if not(FClosing) and (aMessage.wParam = 0) and (GlobalCEFApp <> nil) then
    GlobalCEFApp.OsmodalLoop := False;
end;

procedure TMainForm.P1Click(Sender: TObject);
begin
 SavePDFFiles;
end;

procedure TMainForm.PageControl1Change(Sender: TObject);
var
  TempChromium : TChromium;
begin
  if showing and SearchChromium(pcMain.TabIndex, TempChromium) then
    begin
      URLsBar.Text := TempChromium.DocumentURL;
      URLs.Text := TempChromium.DocumentURL;
    end;
end;

procedure TMainForm.ParseURL(const lpszUrl: string; var Host, Resource: string);
var
  lpszScheme: array[0..INTERNET_MAX_SCHEME_LENGTH - 1] of Char;
  lpszHostName: array[0..INTERNET_MAX_HOST_NAME_LENGTH - 1] of Char;
  lpszUserName: array[0..INTERNET_MAX_USER_NAME_LENGTH - 1] of Char;
  lpszPassword: array[0..INTERNET_MAX_PASSWORD_LENGTH - 1] of Char;
  lpszUrlPath: array[0..INTERNET_MAX_PATH_LENGTH - 1] of Char;
  lpszExtraInfo: array[0..1024 - 1] of Char;
  lpUrlComponents: TURLComponents;
begin
  ZeroMemory(@lpszScheme, SizeOf(lpszScheme));
  ZeroMemory(@lpszHostName, SizeOf(lpszHostName));
  ZeroMemory(@lpszUserName, SizeOf(lpszUserName));
  ZeroMemory(@lpszPassword, SizeOf(lpszPassword));
  ZeroMemory(@lpszUrlPath, SizeOf(lpszUrlPath));
  ZeroMemory(@lpszExtraInfo, SizeOf(lpszExtraInfo));
  ZeroMemory(@lpUrlComponents, SizeOf(TURLComponents));

  lpUrlComponents.dwStructSize      := SizeOf(TURLComponents);
  lpUrlComponents.lpszScheme        := lpszScheme;
  lpUrlComponents.dwSchemeLength    := SizeOf(lpszScheme);
  lpUrlComponents.lpszHostName      := lpszHostName;
  lpUrlComponents.dwHostNameLength  := SizeOf(lpszHostName);
  lpUrlComponents.lpszUserName      := lpszUserName;
  lpUrlComponents.dwUserNameLength  := SizeOf(lpszUserName);
  lpUrlComponents.lpszPassword      := lpszPassword;
  lpUrlComponents.dwPasswordLength  := SizeOf(lpszPassword);
  lpUrlComponents.lpszUrlPath       := lpszUrlPath;
  lpUrlComponents.dwUrlPathLength   := SizeOf(lpszUrlPath);
  lpUrlComponents.lpszExtraInfo     := lpszExtraInfo;
  lpUrlComponents.dwExtraInfoLength := SizeOf(lpszExtraInfo);

  InternetCrackUrl(PChar(lpszUrl), Length(lpszUrl), ICU_DECODE or ICU_ESCAPE, lpUrlComponents);

  Host := lpszHostName;
  Resource := lpszUrlPath;
end;

procedure TMainForm.pcMainMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 //if Button = mbMiddle then
  SearchBar.Text := SearchBar.Text + 'a';
end;

procedure TMainForm.pcMainResize(Sender: TObject);
begin
 ToolBar1.Width := ToolBarBackgroundPanel.Width;
 ToolBar1.Top := ToolBarBackgroundPanel.Top;
end;

procedure TMainForm.Print1Click(Sender: TObject);
var
  TempChromium : TChromium;
begin
 if SearchChromium(AeroTabs.ActiveTabIndex, TempChromium) then
  begin
    TempChromium.Print;
  end;
end;

procedure TMainForm.Print2Click(Sender: TObject);
begin
 Print1.Click;
end;

procedure TMainForm.PrintPreview1Click(Sender: TObject);
begin
 Showmessage('Under Construction!');
end;

procedure TMainForm.CEFInitializedMsg(var aMessage : TMessage);
begin
  if not(Toolbar1.Enabled) then
    begin
      Toolbar1.Enabled := True;
      Caption := 'Web Explorer';
      cursor := crDefault;
      if (pcMain.PageCount = 0) then
        NewTab.Execute;
    end;
end;

end.
