unit BookmarkManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, StdCtrls, Vcl.FileCtrl, Menus, AdvMenus, uXPIcons,
  AdvGlowButton, ExtCtrls, AdvPanel, AdvMenuStylers, AdvStyleIF, System.win.Registry,
  AdvSmoothCapacityBar, CurvyControls, W7Classes, W7Buttons, W7Bars, AeroLabel,
  JvComponentBase, JvHtmlParser, Vcl.Mask, JvExMask, TaskDialogEx, JvBaseDlg,
  JvBrowseFolder, ShellAPI, PNGImage, PNGFunctions, AdvSmoothSlider, SMCVersInfo,
  ShlObj, ActiveX, System.win.ComObj, Vcl.Shell.ShellCtrls, commctrl, Vcl.WinXCtrls,
  JvExControls, JvLabel, W7Images, PngImageList, Vcl.Buttons, PngSpeedButton,
  AdvGDIPicture, GDIPPictureContainer, TaskDialog, System.ImageList, StrUtils,
  IdComponent, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, IdAntiFreezeBase, Vcl.IdAntiFreeze, IdBaseComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, TlHelp32;



type
  TBookmarks_mgc = class(TForm)
    bookmarksIndex: TListBox;
    fav_list: TFileListBox;
    FileListBox2: TFileListBox;
    fav_tmp_n: TLabel;
    end_fav: TMemo;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    RenameFolder1: TMenuItem;
    NewFolder1: TMenuItem;
    RemoveFolder1: TMenuItem;
    N3: TMenuItem;
    folderpach1: TLabel;
    HTMLParserImport: TJvHTMLParser;
    ImportExportTaskDialog: TTaskDialog;
    Folders1: TMenuItem;
    Links1: TMenuItem;
    EditLink1: TMenuItem;
    RenameLink1: TMenuItem;
    N2: TMenuItem;
    NewLink1: TMenuItem;
    DeleteLink: TMenuItem;
    ImportandExport1: TMenuItem;
    Import1: TMenuItem;
    Export1: TMenuItem;
    OpenDialog1: TOpenDialog;
    ListViewImport: TListView;
    save_sc: TMemo;
    ExportBookMemo: TMemo;
    SelectDownloadFolder: TJvBrowseForFolderDialog;
    Panel_Bookmarks: TPanel;
    ListView: TListView;
    Bevel1: TBevel;
    LeftSidePanel1: TPanel;
    ListViewSelect1: TListView;
    ExtendOptionSidePanel: TPanel;
    ListView_folders: TListView;
    TopBarPanel0: TPanel;
    Panel_Profile: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel4: TPanel;
    textopt7: TLabel;
    Label6: TLabel;
    Panel_SPD: TPanel;
    SPDItens: TListView;
    ImageList1: TImageList;
    SPDItensV: TListView;
    Bevel2: TBevel;
    ListBoxColor: TListBox;
    SpeedDialWork: TMemo;
    PopupMenu3: TPopupMenu;
    PopupMenu4: TPopupMenu;
    SetcustomWallpaper1: TMenuItem;
    N4: TMenuItem;
    SetAnimatedBackground21: TMenuItem;
    SetAnimatedBackground11: TMenuItem;
    DeleteItem1: TMenuItem;
    MoveUp1: TMenuItem;
    MoveDown1: TMenuItem;
    N5: TMenuItem;
    SpeedDialWorkWorkBG: TMemo;
    NewTilesEdit: TMemo;
    SetdefaultwallpaperStatic1: TMenuItem;
    Bevel3: TBevel;
    capbar: TPanel;
    Bevel4: TBevel;
    ButtonedEdit1: TButtonedEdit;
    ButtonedEdit2: TButtonedEdit;
    ButtonedEdit3: TButtonedEdit;
    ButtonedEdit4: TButtonedEdit;
    ButtonedEdit5: TButtonedEdit;
    Panel3: TPanel;
    Label7: TLabel;
    AdvSmoothCapacityBar1: TAdvSmoothCapacityBar;
    ScrollBox1: TScrollBox;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    Button5: TButton;
    Button6: TButton;
    Button4: TButton;
    Bevel5: TBevel;
    Panel_Plugins: TPanel;
    ImageList2: TImageList;
    ListViewPlugins: TListView;
    SMVersionInfo1: TSMVersionInfo;
    FileSearchListbox: TListBox;
    StartPlugin: TTimer;
    CapbarSizeTimer: TTimer;
    Panel_history: TPanel;
    Bevel6: TBevel;
    FileListBox1: TFileListBox;
    FolderPages: TShellListView;
    NameURLSRC: TListBox;
    TreeViewHistory: TTreeView;
    UrlSCR: TListBox;
    W7ToolBar4: TW7ToolBar;
    W7ToolButton1: TW7ToolButton;
    W7ToolButton2: TW7ToolButton;
    SearchEdit2: TButtonedEdit;
    Panel_Widget: TPanel;
    Bevel7: TBevel;
    ShellListView1: TShellListView;
    widgetsdir: TFileListBox;
    Icons_List: TImageList;
    ListWidgetTimer: TTimer;
    AppList: TListView;
    WidgetsMenu: TPopupMenu;
    AddWidgets1: TMenuItem;
    WninstallWidget1: TMenuItem;
    N1: TMenuItem;
    CreateShortcut1: TMenuItem;
    TopBarPanel1: TPanel;
    TopBarPanel5: TPanel;
    TopBarPanel4: TPanel;
    TopBarPanel2: TPanel;
    W7ToolBar2: TW7ToolBar;
    bt3: TW7ToolButton;
    bt4: TW7ToolButton;
    W7ToolBar3: TW7ToolBar;
    msgplugin: TLabel;
    DownloadPluginBT: TW7ToolButton;
    PluginOptBT: TW7ToolButton;
    W7ToolBar1: TW7ToolBar;
    bt1: TW7ToolButton;
    bt2: TW7ToolButton;
    SearchEdit1: TButtonedEdit;
    W7ToolBar5: TW7ToolBar;
    W7ToolButton4: TW7ToolButton;
    ButtonedEdit6: TButtonedEdit;
    W7ToolButton3: TW7ToolButton;
    SetAnimatedBackground31: TMenuItem;
    Panel_Plugins_top: TPanel;
    ComplementsMenu: TPopupMenu;
    WebExplorerExtensions1: TMenuItem;
    WebExplorerServices1: TMenuItem;
    W7InformationBar1: TW7InformationBar;
    InstalledExtensionsLabel: TJvLabel;
    ComplementsOptions: TW7ToolButton;
    Bevel8: TBevel;
    ComplementsImage: TW7Image;
    WindowsPlugins1: TMenuItem;
    N6: TMenuItem;
    PngSpeedButton1: TPngSpeedButton;
    PluginsViewPNG: TPngImageList;
    ComplementsIcons: TImageList;
    ImageList_IconsPNG: TPngImageList;
    weinfoplugins: TMemo;
    ExtensionRemoveBT: TW7ToolButton;
    ListExtensionTimer1: TTimer;
    Panel_Downloads: TPanel;
    Bevel9: TBevel;
    TopBarPanel6: TPanel;
    W7ToolBar6: TW7ToolBar;
    StdDownloadImage: TImage;
    DownloadIcons: TImageList;
    W7ToolButton5: TW7ToolButton;
    GDIPPictureContainer1: TGDIPPictureContainer;
    SetRainThemeAnimated1: TMenuItem;
    SetMontainThemeAnimated1: TMenuItem;
    ListViewDownloads: TListView;
    W7ToolButton7: TW7ToolButton;
    ico_icon: TImage;
    app_icon: TImage;
    download_open_image: TAdvGDIPPicture;
    DownloadListViewCSV: TListView;
    Opendownload: TAdvTaskDialogEx;
    N7: TMenuItem;
    ComplementoLabelDesc: TLabel;
    NoAddonPanel: TCurvyPanel;
    AddonLabel1: TLabel;
    AddOnBt1: TAdvGlowButton;
    S1: TMenuItem;
    S2: TMenuItem;
    ExtensionUpdateBT: TW7ToolButton;
    HTTPdownloadfile: TIdHTTP;
    IdAntiFreeze1: TIdAntiFreeze;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    ProcessListBox: TListBox;
    pdf_icon: TImage;
    zip_icon: TImage;
    other_icon: TImage;
    remoteupdateext: TTimer;
    SetIslandsThemeAnimated1: TMenuItem;
    S3: TMenuItem;
    PluginOptBT2: TW7ToolButton;
    Barpanel5Separator1: TBevel;
    updateinfo: TMemo;
    CheckUpdateHTTP: TIdHTTP;
    appx_icon: TImage;
    S4: TMenuItem;
    ColorDialog1: TColorDialog;
    procedure FormShow(Sender: TObject);
    procedure RemoveFolder1Click(Sender: TObject);
    procedure NewFolder1Click(Sender: TObject);
    procedure RenameFolder1Click(Sender: TObject);
    procedure DeleteLink1Click(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure SearchEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ListView_foldersClick(Sender: TObject);
    procedure HTMLParserImportKeyFound(Sender: TObject; Key, Results,
      OriginalLine: string);
    procedure EditLink1Click(Sender: TObject);
    procedure RenameLink1Click(Sender: TObject);
    procedure NewLink1Click(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure ImportandExport1Click(Sender: TObject);
    procedure Export1Click(Sender: TObject);
    procedure Import1Click(Sender: TObject);
    procedure DeleteLinkClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SetAnimatedBackground11Click(Sender: TObject);
    procedure SetAnimatedBackground21Click(Sender: TObject);
    procedure SetcustomWallpaper1Click(Sender: TObject);
    procedure bt3Click(Sender: TObject);
    procedure bt4Click(Sender: TObject);
    procedure SPDItensVClick(Sender: TObject);
    procedure DeleteItem1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SetdefaultwallpaperStatic1Click(Sender: TObject);
    procedure MoveUp1Click(Sender: TObject);
    procedure MoveDown1Click(Sender: TObject);
    procedure ButtonedEdit1RightButtonClick(Sender: TObject);
    procedure ButtonedEdit2RightButtonClick(Sender: TObject);
    procedure ButtonedEdit3RightButtonClick(Sender: TObject);
    procedure ButtonedEdit4RightButtonClick(Sender: TObject);
    procedure ButtonedEdit5RightButtonClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure StartPluginTimer(Sender: TObject);
    procedure ListViewPluginsClick(Sender: TObject);
    procedure ListViewPluginsAdvancedCustomDrawSubItem(Sender: TCustomListView;
      Item: TListItem; SubItem: Integer; State: TCustomDrawState;
      Stage: TCustomDrawStage; var DefaultDraw: Boolean);
    procedure PluginOptBTClick(Sender: TObject);
    procedure DownloadPluginBTClick(Sender: TObject);
    procedure ListViewPluginsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CapbarSizeTimerTimer(Sender: TObject);
    procedure TreeViewHistoryDblClick(Sender: TObject);
    procedure SearchEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure W7ToolButton2Click(Sender: TObject);
    procedure ListWidgetTimerTimer(Sender: TObject);
    procedure AppListDblClick(Sender: TObject);
    procedure AppListKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonedEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure ButtonedEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure W7ToolButton3Click(Sender: TObject);
    procedure AddWidgets1Click(Sender: TObject);
    procedure WninstallWidget1Click(Sender: TObject);
    procedure CreateShortcut1Click(Sender: TObject);
    procedure W7ToolButton4Click(Sender: TObject);
    procedure ListViewSelect1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure SetAnimatedBackground31Click(Sender: TObject);
    procedure ComplementsOptionsClick(Sender: TObject);
    procedure WindowsPlugins1Click(Sender: TObject);
    procedure WebExplorerExtensions1Click(Sender: TObject);
    procedure WebExplorerServices1Click(Sender: TObject);
    procedure ExtensionRemoveBTClick(Sender: TObject);
    procedure ListExtensionTimer1Timer(Sender: TObject);
    procedure ShellListView1AddFolder(Sender: TObject; AFolder: TShellFolder;
      var CanAdd: Boolean);
    procedure W7ToolButton6Click(Sender: TObject);
    procedure W7ToolButton5Click(Sender: TObject);
    procedure SetMontainThemeAnimated1Click(Sender: TObject);
    procedure SetRainThemeAnimated1Click(Sender: TObject);
    procedure W7ToolButton7Click(Sender: TObject);
    procedure ListViewDownloadsClick(Sender: TObject);
    procedure OpendownloadDialogButtonClick(Sender: TObject; ButtonID: Integer);
    procedure FormCreate(Sender: TObject);
    procedure ListViewDownloadsDblClick(Sender: TObject);
    procedure AddOnBt1Click(Sender: TObject);
    procedure Links1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure ExtensionUpdateBTClick(Sender: TObject);
    procedure remoteupdateextTimer(Sender: TObject);
    procedure SetIslandsThemeAnimated1Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure PluginOptBT2Click(Sender: TObject);
    procedure PopupMenu4Popup(Sender: TObject);
    procedure ListView_foldersResize(Sender: TObject);
    procedure S4Click(Sender: TObject);
    procedure W7ToolButton1Click(Sender: TObject);
  private
    FListViewWndProc: TWndMethod;
    procedure ListViewWndProc(var Msg: TMessage);
    procedure ImportBook;
    procedure SaveImport;
    procedure ExportBook;
    procedure SetSPDBg(cmdtype: SmallInt);
    procedure ExchangeItems(lv: TListView; const i, j: Integer);
    procedure SaveTilesSPD;
    procedure ListAllPlugins;
    procedure GetHistotyPagesList;
    procedure GetIconFile;
    procedure CreateShortcut(FileName, Parameters, InitialDir, ShortcutName, ShortcutFolder: String);
    procedure AlignAll;
    procedure RemoveExtension(index: SmallInt);
    Procedure RegistryIconExtraction(FileExtensionStr: string);
    procedure Loaddownloadlist;
    procedure ClearDownloads;
    procedure OpenDownloadDialog;
    function GetFolderAge(Folder: string): TDateTime;
    procedure GetPluginUpdate(PluginName, ServerPluginUrl, LocalPluginDir: string; remoteexecute: Boolean);
    function GMTToLocalTime(GMTTime: TDateTime): TDateTime;
    function ConvertVerToInt(VerStr: string): int64;
  public
    procedure GetBookmarks;
    procedure GetLinks;
    procedure ListWidgets;
    function GetDirSize(dir: string; subdir: Boolean): Longint;
    procedure GetProfileSize;
    procedure GetLanguage;
    function ExtractTextInsideGivenTagEx(const Tag, Text: string): string;
    procedure ChangeItens(LibraryIndex: SmallInt);
    procedure LoadSPDItens;
    function TileColorFromSTR(StrColor: string): TColor;
    procedure FileSearch(const PathName, FileName : string; const InDir : boolean);
    procedure ViewSelectPlugins(index: SmallInt);
    procedure AddDownloadTolist(DownloadName, DownloadFolder, DownloadDesc: string);
    procedure RegisterDownloadFile(DownloadN, DownloadF, DownloadD: String);
    function ListWEProcess(const Substring, Text: string): integer;
    function WebExplorerUpdate(): Boolean;
    function OsSupportVersion(): Boolean;
    procedure CheckSPDFileUpdate;
    procedure SetSPDUpdate;
  end;

type
  TNoHScrollListview = Class( TListview )
  private
    Procedure WMNCCalcSize( Var msg: TMessage );
      message WM_NCCALCSIZE;
  end;


var
  Bookmarks_mgc: TBookmarks_mgc;
  PluginSatusText: String;
  FShowHoriz, FShowVert: Boolean;

implementation

uses Main, NewLinkForm, AppMenuForm, AddSpeedDial, WENetIDForm, TrustedPagesFrm,
  WeActiveProtectionForm, AdblockFrm, BrowserFrame, linkcenterform,
  NewResourcesForm, WidgetManager, NewExtensionsForm;

{$R *.dfm}

{ TBookmarks_mgc }

procedure TBookmarks_mgc.S1Click(Sender: TObject);
begin
 SetSPDBg(7);
end;

procedure TBookmarks_mgc.S2Click(Sender: TObject);
begin
 SetSPDBg(8);
end;

procedure TBookmarks_mgc.S3Click(Sender: TObject);
begin
 SetSPDBg(10);
end;

procedure TBookmarks_mgc.S4Click(Sender: TObject);
begin
 SetSPDBg(11);
end;

procedure TBookmarks_mgc.SaveImport;
var
 index: integer;
 indexmax: Real;
begin
  if ListViewImport.Items.Count < 1 then
   MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[398]), Pchar(MainForm.LanguageCache.Lines[185]), MB_ICONERROR + MB_OK + MB_DEFBUTTON1)
  else
   begin
    try
     indexmax := ListViewImport.Items.Count;
     indexmax := indexmax / 2;
     for Index := 0 to trunc(ListViewImport.Items.Count -1) do
      begin
       save_sc.Clear;
       save_sc.Lines[0] := '<meta http-equiv=' + QuotedStr('refresh') + ' content=' + QuotedStr('1; URL=' + ListViewImport.Items[index].SubItems.Text) + '>';
       if ListView_folders.ItemIndex > 0 then
        save_sc.Lines.SaveToFile(MainForm.Profile_Pach + '\Bookmarks\' + ListView_folders.Items[ListView_folders.ItemIndex].Caption + '\' + MainForm.CutSpecialChar(ListViewImport.Items[index].Caption) + '.htm')
       else
        save_sc.Lines.SaveToFile(MainForm.Profile_Pach + '\Bookmarks\' + MainForm.CutSpecialChar(ListViewImport.Items[index].Caption) + '.htm');
      end;
    Except
    end;
    MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[399] + ' ' + FloatToStr(indexmax)), Pchar(MainForm.LanguageCache.Lines[396]), MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1);
    ListViewImport.Clear;
    GetLinks;
   end;
end;

procedure TBookmarks_mgc.SaveTilesSPD;
var
 ListItem : TListItem;
 index: integer;
begin
   SpeedDialWorkWorkBG.Clear;
   SpeedDialWorkWorkBG.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));

   SpeedDialWork.Clear;
   SpeedDialWork.Text := SpeedDialWorkWorkBG.Text;
   NewTilesEdit.Clear;
   NewTilesEdit.Lines.Add('$(document).ready(function () {');
 {for index := 0 to SPDItens.Items.Count -1 do
  begin
   SPDItens.Items[index].SubItems[1] := StringReplace(SPDItens.Items[index].SubItems[1], '¬', '"', [rfreplaceall]);
  end;}

 for index := 0 to SPDItens.Items.Count -1 do
   begin

    if SPDItens.Items[index].SubItems[3] = 'AddMetroDoubleWithTrailerWithBG' then
     begin
      if StrtoInt(SPDItens.Items[index].Caption) < 1 then
       begin
        NewTilesEdit.Lines.Add('$("#metroaqui_novo").'+ SPDItens.Items[index].SubItems[3] +'(' + QuotedStr('bt') + ', ' + QuotedStr(SPDItens.Items[index].Caption + '.jpg') + ', ' + QuotedStr(SPDItens.Items[index].SubItems[0]) + ','  + QuotedStr(SPDItens.Items[index].SubItems[1]) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[2]) + ');');
       end
      else
       {$IFDEF STORE}
       NewTilesEdit.Lines.Add('$("#metroaqui_novo").'+ SPDItens.Items[index].SubItems[3] +'(' + QuotedStr('bt') + ', ' + QuotedStr('../Pages/images/' + AddSpeedDialChennel.ReturnImgAdr(SPDItens.Items[index].Caption)) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[0]) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[1]) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[2]) + ');');
       {$ELSE}
       NewTilesEdit.Lines.Add('$("#metroaqui_novo").'+ SPDItens.Items[index].SubItems[3] +'(' + QuotedStr('bt') + ', ' + QuotedStr('../../../Bin/Resources/Pages/images/' + AddSpeedDialChennel.ReturnImgAdr(SPDItens.Items[index].Caption)) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[0]) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[1]) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[2]) + ');');
       {$ENDIF}
     end;
    if SPDItens.Items[index].SubItems[3] = 'AddMetroDoubleWithTrailer' then
     begin
      NewTilesEdit.Lines.Add('$("#metroaqui_novo").'+ SPDItens.Items[index].SubItems[3] +'(' + QuotedStr('bt') + ', '  + QuotedStr(SPDItens.Items[index].SubItems[2]) + ', ' + QuotedStr(AddSpeedDialChennel.ReturnIMGIndex(SPDItens.Items[index].Caption)) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[0]) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[1]) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[2]) + ');');
     end;
    if SPDItens.Items[index].SubItems[3] = 'AddMetroWithTrailerWithBG' then
     begin
      if StrtoInt(SPDItens.Items[index].Caption) < 1 then
       begin
        NewTilesEdit.Lines.Add('$("#metroaqui_novo").'+ SPDItens.Items[index].SubItems[3] +'(' + QuotedStr('bt') + ', ' + QuotedStr(SPDItens.Items[index].Caption + '.jpg') + ', ' + QuotedStr(SPDItens.Items[index].SubItems[0]) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[1]) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[2]) + ');');
       end
      else
       {$IFDEF STORE}
       NewTilesEdit.Lines.Add('$("#metroaqui_novo").'+ SPDItens.Items[index].SubItems[3] +'(' + QuotedStr('bt') + ', ' + QuotedStr('../Bin/Resources/Pages/images/' + AddSpeedDialChennel.ReturnImgAdr(SPDItens.Items[index].Caption)) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[0]) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[1]) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[2]) + ');');
       {$ELSE}
       NewTilesEdit.Lines.Add('$("#metroaqui_novo").'+ SPDItens.Items[index].SubItems[3] +'(' + QuotedStr('bt') + ', ' + QuotedStr('../../../Bin/Resources/Pages/images/' + AddSpeedDialChennel.ReturnImgAdr(SPDItens.Items[index].Caption)) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[0]) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[1]) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[2]) + ');');
       {$ENDIF}
     end;
    if SPDItens.Items[index].SubItems[3] = 'AddMetroWithTrailer' then
     begin
      NewTilesEdit.Lines.Add('$("#metroaqui_novo").'+ SPDItens.Items[index].SubItems[3] +'(' + QuotedStr('bt') + ', '  + QuotedStr(SPDItens.Items[index].SubItems[2]) + ', ' + QuotedStr(AddSpeedDialChennel.ReturnIMGIndex(SPDItens.Items[index].Caption)) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[0]) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[1]) + ', ' + QuotedStr(SPDItens.Items[index].SubItems[2]) + ');');
     end;
   end;
  NewTilesEdit.Lines.Add('});');
  NewTilesEdit.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Tiles.js'));
 SpeedDialWork.Lines[11] := '} function checkTime(i) {    if (i<10) {i = "0" + i};   return i; }';
 SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
 for index := 0 to SPDItens.Items.Count -1 do
  begin
   SPDItens.Items[index].SubItems[1] := StringReplace(SPDItens.Items[index].SubItems[1], '"', '¬', [rfreplaceall]);
  end;
 MainForm.ListViewToCSV(SPDItens,Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.csv'));
 LoadSPDItens;

end;

procedure TBookmarks_mgc.SearchEdit1KeyPress(Sender: TObject; var Key: Char);
var
  tStr : String;
  tSrch : String;
  i : Integer;
begin
 tSrch:= SearchEdit1.Text;
 for i := ListView.Items.Count - 1 downto 0 do
  begin
   tStr:=listview.Items[i].Caption;
   if Pos(tSrch,tStr) > 0 then
    listview.ItemIndex := i;
  end;
 if Key = #27 then
  begin
   Key := #0;
   SearchEdit1.clear;
   listview.SetFocus;
  end;
end;

procedure TBookmarks_mgc.SearchEdit2KeyPress(Sender: TObject; var Key: Char);
var
  tSrch: String;
  i: Integer;
  hItem: HTREEITEM;
begin
  tSrch:= SearchEdit2.Text;
  hItem := LinkCenter.GetItemByName(TreeViewHistory.Handle, nil, PChar(SearchEdit2.Text));
  if (hItem <> nil) then
   begin
    TreeViewHistory.SetFocus;
    SendMessage(TreeViewHistory.Handle, TVM_SELECTITEM, TVGN_CARET,  longint(hItem));
   end;
end;

procedure TBookmarks_mgc.SetAnimatedBackground11Click(Sender: TObject);
begin
 SetSPDBg(0);
end;

procedure TBookmarks_mgc.SetAnimatedBackground21Click(Sender: TObject);
begin
  SetSPDBg(1);
end;

procedure TBookmarks_mgc.SetAnimatedBackground31Click(Sender: TObject);
begin
 SetSPDBg(4);
end;

procedure TBookmarks_mgc.SetcustomWallpaper1Click(Sender: TObject);
begin
 SetSPDBg(3);
end;

procedure TBookmarks_mgc.SetdefaultwallpaperStatic1Click(Sender: TObject);
begin
 SetSPDBg(2);
end;

procedure TBookmarks_mgc.SetIslandsThemeAnimated1Click(Sender: TObject);
begin
 SetSPDBg(9);
end;

procedure TBookmarks_mgc.SetMontainThemeAnimated1Click(Sender: TObject);
begin
 SetSPDBg(5);
end;

procedure TBookmarks_mgc.SetRainThemeAnimated1Click(Sender: TObject);
begin
 SetSPDBg(6);
end;

procedure TBookmarks_mgc.SetSPDBg(cmdtype: SmallInt);
var
 ColorCode: TColor;
{$IFDEF STORE}
 UWPDirUrl: string;
{$ENDIF}
begin
 {$IFDEF STORE}
 UWPDirUrl := ExtractFileDir(Application.ExeName);
 UWPDirUrl := StringReplace(UWPDirUrl, '\', '/', [rfreplaceall]);
 UWPDirUrl := StringReplace(UWPDirUrl, '/Bin', '', [rfreplaceall]);
 {$ENDIF}

 case cmdtype of
  0: begin
      if MainForm.HightCPU = false then
       begin
       if MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[404]), Pchar(MainForm.LanguageCache.Lines[92]), MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = mrYes then
        begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
         SpeedDialWork.Clear;
         SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
         {$IFDEF STORE}
         SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../Pages/images/bg1.ogv" type="video/ogg">Video not supported </video>';
         {$ELSE}
         SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../../../Bin/Resources/Pages/images/bg1.ogv" type="video/ogg">Video not supported </video>';
         {$ENDIF}
         SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        end;
       end
      else
       begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
        SpeedDialWork.Clear;
        SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        {$IFDEF STORE}
        SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../Pages/images/bg1.ogv" type="video/ogg">Video not supported </video>';
        {$ELSE}
        SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../../../Bin/Resources/Pages/images/bg1.ogv" type="video/ogg">Video not supported </video>';
        {$ENDIF}
        SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
       end;
     end;
  1: begin
      if MainForm.HightCPU = false then
       begin
       if MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[404]), Pchar(MainForm.LanguageCache.Lines[92]), MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = mrYes then
        begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
         SpeedDialWork.Clear;
         SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
         {$IFDEF STORE}
         SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../Pages/images/bg2.ogv" type="video/ogg">Video not supported </video>';
         {$ELSE}
         SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../../../Bin/Resources/Pages/images/bg2.ogv" type="video/ogg">Video not supported </video>';
         {$ENDIF}
         SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        end;
       end
      else
       begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
        SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        {$IFDEF STORE}
        SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../Pages/images/bg2.ogv" type="video/ogg">Video not supported </video>';
        {$ELSE}
        SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../../../Bin/Resources/Pages/images/bg2.ogv" type="video/ogg">Video not supported </video>';
        {$ENDIF}
        SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
       end;
     end;
  2: begin
      if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
       DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
      SpeedDialWork.Clear;
      SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
      {$IFDEF STORE}
      SpeedDialWork.Lines[19] := 'background: #34495e url("../Pages/images/bg.jpg"); background-size: 100% auto; background-position: center center; background-repeat: no-repeat; background-attachment: fixed; background-size: cover;';
      {$ELSE}
      SpeedDialWork.Lines[19] := 'background: #34495e url("../../../Bin/Resources/Pages/images/bg.jpg"); background-size: 100% auto; background-position: center center; background-repeat: no-repeat; background-attachment: fixed; background-size: cover;';
      {$ENDIF}
      SpeedDialWork.Lines[36] := ' ';
      SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
     end;
  3: begin
       if MainForm.SPDBackGroundOpenDialog.Execute then
        begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
         CopyFile(Pchar(MainForm.SPDBackGroundOpenDialog.FileName),Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'), true);
         SpeedDialWork.Clear;
         SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
         SpeedDialWork.Lines[19] := 'background: #34495e url("' + StringReplace(MainForm.Profile_Pach + '\SpeedDial\Background.jpg', '\', '/', [rfreplaceall]) + '"); background-size: 100% auto; background-position: center center; background-repeat: no-repeat; background-attachment: fixed; background-size: cover;';
         SpeedDialWork.Lines[36] := ' ';
         SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        end;
     end;
  4: begin
      if MainForm.HightCPU = false then
       begin
       if MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[404]), Pchar(MainForm.LanguageCache.Lines[92]), MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = mrYes then
        begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
         SpeedDialWork.Clear;
         SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
         {$IFDEF STORE}
         SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../Pages/images/bg3.ogv" type="video/ogg">Video not supported </video>';
         {$ELSE}
         SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../../../Bin/Resources/Pages/images/bg3.ogv" type="video/ogg">Video not supported </video>';
         {$ENDIF}
         SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        end;
       end
      else
       begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
        SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        {$IFDEF STORE}
        SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../Pages/images/bg3.ogv" type="video/ogg">Video not supported </video>';
        {$ELSE}
        SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../../../Bin/Resources/Pages/images/bg3.ogv" type="video/ogg">Video not supported </video>';
        {$ENDIF}
        SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
       end;
     end;
  5: begin
      if MainForm.HightCPU = false then
       begin
       if MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[404]), Pchar(MainForm.LanguageCache.Lines[92]), MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = mrYes then
        begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
         SpeedDialWork.Clear;
         SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
         {$IFDEF STORE}
         SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../Pages/images/bg4.ogv" type="video/ogg">Video not supported </video>';
         {$ELSE}
         SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../../../Bin/Resources/Pages/images/bg4.ogv" type="video/ogg">Video not supported </video>';
         {$ENDIF}
         SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        end;
       end
      else
       begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
        SpeedDialWork.Clear;
        SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        {$IFDEF STORE}
        SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../Pages/images/bg4.ogv" type="video/ogg">Video not supported </video>';
        {$ELSE}
        SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../../../Bin/Resources/Pages/images/bg4.ogv" type="video/ogg">Video not supported </video>';
        {$ENDIF}
        SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
       end;
     end;
  6: begin
      if MainForm.HightCPU = false then
       begin
       if MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[404]), Pchar(MainForm.LanguageCache.Lines[92]), MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = mrYes then
        begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
         SpeedDialWork.Clear;
         SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
         {$IFDEF STORE}
         SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../Pages/images/bg5.ogv" type="video/ogg">Video not supported </video>';
         {$ELSE}
         SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../../../Bin/Resources/Pages/images/bg5.ogv" type="video/ogg">Video not supported </video>';
         {$ENDIF}
         SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        end;
       end
      else
       begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
        SpeedDialWork.Clear;
        SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        {$IFDEF STORE}
        SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../Pages/images/bg5.ogv" type="video/ogg">Video not supported </video>';
        {$ELSE}
        SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../../../Bin/Resources/Pages/images/bg5.ogv" type="video/ogg">Video not supported </video>';
        {$ENDIF}
        SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
       end;
     end;
  7: begin
      if MainForm.HightCPU = false then
       begin
       if MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[404]), Pchar(MainForm.LanguageCache.Lines[92]), MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = mrYes then
        begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
         SpeedDialWork.Clear;
         SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
         {$IFDEF STORE}
         SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../Pages/images/bg6.ogv" type="video/ogg">Video not supported </video>';
         {$ELSE}
         SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../../../Bin/Resources/Pages/images/bg6.ogv" type="video/ogg">Video not supported </video>';
         {$ENDIF}
         SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        end;
       end
      else
       begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
        SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        {$IFDEF STORE}
        SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../Pages/images/bg6.ogv" type="video/ogg">Video not supported </video>';
        {$ELSE}
        SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../../../Bin/Resources/Pages/images/bg6.ogv" type="video/ogg">Video not supported </video>';
        {$ENDIF}
        SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
       end;
     end;
  8: begin
      if MainForm.HightCPU = false then
       begin
       if MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[404]), Pchar(MainForm.LanguageCache.Lines[92]), MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = mrYes then
        begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
         SpeedDialWork.Clear;
         SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
         {$IFDEF STORE}
         SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../Pages/images/bg7.ogv" type="video/ogg">Video not supported </video>';
         {$ELSE}
         SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../../../Bin/Resources/Pages/images/bg7.ogv" type="video/ogg">Video not supported </video>';
         {$ENDIF}
         SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        end;
       end
      else
       begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
        SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        {$IFDEF STORE}
        SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../Pages/images/bg7.ogv" type="video/ogg">Video not supported </video>';
        {$ELSE}
        SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../../../Bin/Resources/Pages/images/bg7.ogv" type="video/ogg">Video not supported </video>';
        {$ENDIF}
        SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
       end;
     end;
  9: begin
      if MainForm.HightCPU = false then
       begin
       if MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[404]), Pchar(MainForm.LanguageCache.Lines[92]), MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = mrYes then
        begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
         SpeedDialWork.Clear;
         SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
         {$IFDEF STORE}
         SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../Pages/images/bg8.ogv" type="video/ogg">Video not supported </video>';
         {$ELSE}
         SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../../../Bin/Resources/Pages/images/bg8.ogv" type="video/ogg">Video not supported </video>';
         {$ENDIF}
         SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        end;
       end
      else
       begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
        SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        {$IFDEF STORE}
        SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../Pages/images/bg8.ogv" type="video/ogg">Video not supported </video>';
        {$ELSE}
        SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../../../Bin/Resources/Pages/images/bg8.ogv" type="video/ogg">Video not supported </video>';
        {$ENDIF}
        SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
       end;
     end;
 10: begin
      if MainForm.HightCPU = false then
       begin
       if MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[404]), Pchar(MainForm.LanguageCache.Lines[92]), MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = mrYes then
        begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
         SpeedDialWork.Clear;
         SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
         {$IFDEF STORE}
         SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../Pages/images/bg9.ogv" type="video/ogg">Video not supported </video>';
         {$ELSE}
         SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../../../Bin/Resources/Pages/images/bg9.ogv" type="video/ogg">Video not supported </video>';
         {$ENDIF}
         SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        end;
       end
      else
       begin
         if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
          DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
        SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
        {$IFDEF STORE}
        SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../Pages/images/bg9.ogv" type="video/ogg">Video not supported </video>';
        {$ELSE}
        SpeedDialWork.Lines[36] := '<video id="video_background" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0"> <source src="../../../Bin/Resources/Pages/images/bg9.ogv" type="video/ogg">Video not supported </video>';
        {$ENDIF}
        SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
       end;
     end;
 11: begin
      if FileExists(MainForm.Profile_Pach + '\SpeedDial\Background.jpg') = true then
       DeleteFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\Background.jpg'));
      if ColorDialog1.Execute then
        ColorCode := ColorDialog1.Color
      else
        ColorCode := MainForm.HtmlToColor('#34495e', $005E4934);
      SpeedDialWork.Clear;
      SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
      {$IFDEF STORE}
      SpeedDialWork.Lines[19] := 'background: ' + MainForm.ColorToHtml(ColorCode) + ';';
      {$ELSE}
      SpeedDialWork.Lines[19] := 'background: ' + MainForm.ColorToHtml(ColorCode) + ';';
      {$ENDIF}
      SpeedDialWork.Lines[36] := ' ';
      SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
     end;
 end;
end;

procedure TBookmarks_mgc.SetSPDUpdate;
//var
 //TempBgStr19, TempBgStr36: string;
begin

 SpeedDialWork.Clear;
 SpeedDialWork.Lines.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
 {$IFDEF RELEASE or DEBUG}

 //SpeedDialWork.Text := AddSpeedDialChennel.SpeedDialTemplate.Text;
 SpeedDialWork.Lines[4] := '<link href="../../../Bin/Resources/Pages/css/speeddial.css" rel="stylesheet" type="text/css" />';
 SpeedDialWork.Lines[5] := '<link href="../../../Bin/Resources/Pages/css/jq-metro.css" rel="stylesheet" type="text/css" />';
 SpeedDialWork.Lines[6] := '<script src="../../../Bin/Resources/Pages/js/jquery-1.7.2.min.js" type="text/javascript"></script>';
 SpeedDialWork.Lines[7] := '<script src="../../../Bin/Resources/Pages/js/jquery.metro-btn.js" type="text/javascript"></script>';
 SpeedDialWork.Lines[12] := '$(document).ready(function(){ $('''+'body'''+').css('''+'display'''+', '''+'none'''+'); $('''+'body'''+').fadeIn(800); }); alert("' + MainForm.WESPDVersion + '");';
 {if (MainForm.JvComputerInfoEx1.Memory.TotalPhysicalMemory div 1048576 < 2000) or (MainForm.JvComputerInfoEx1.CPU.RawFreq < 2000) or (MainForm.JvComputerInfoEx1.CPU.LogicalCore < 2) or (MainForm.JvComputerInfoEx1.CPU.L3Cache < 8) then
  SpeedDialWork.Lines[19] := 'background: #34495e url("../../../Bin/Resources/Pages/images/bg.jpg"); background-size: 100% auto; background-position: center center; background-repeat: no-repeat; background-attachment: fixed; background-size: cover;'
 else
  SpeedDialWork.Lines[19] := ' ';}
 SpeedDialWork.Lines[25] := 'background: url("../../../Bin/Resources/Pages/images/searchbar.png") no-repeat scroll center center #34495e;';
 SpeedDialWork.Lines[37] := '<div id="MenuBT"><a href="wespd://close"><img src="../../../Bin/Resources/Pages/images/close.png" /></a></div><div id="MenuST"></div>' + '<div id="MenuBT"><a href="wespd://openconfig"><img src="../../../Bin/Resources/Pages/images/gear.png" /></a></div>';
 {$ENDIF}
 {$IFDEF STORE}
 SpeedDialWork.Text := SpeedDialTemplate.Text;
 SpeedDialWork.Lines[4] := '<link href="../Pages/css/speeddial.css" rel="stylesheet" type="text/css" />';
 SpeedDialWork.Lines[5] := '<link href="../Pages/css/jq-metro.css" rel="stylesheet" type="text/css" />';
 SpeedDialWork.Lines[6] := '<script src="../Pages/js/jquery-1.7.2.min.js" type="text/javascript"></script>';
 SpeedDialWork.Lines[7] := '<script src="../Pages/js/jquery.metro-btn.js" type="text/javascript"></script>';
 SpeedDialWork.Lines[12] := '$(document).ready(function(){ $('''+'body'''+').css('''+'display'''+', '''+'none'''+'); $('''+'body'''+').fadeIn(800); }); alert("' + MainForm.WESPDVersion + '");';
 {if (MainForm.JvComputerInfoEx1.Memory.TotalPhysicalMemory div 1048576 < 2000) or (MainForm.JvComputerInfoEx1.CPU.RawFreq < 2000) or (MainForm.JvComputerInfoEx1.CPU.LogicalCore < 2) or (MainForm.JvComputerInfoEx1.CPU.L3Cache < 8) then
  SpeedDialWork.Lines[19] := 'background: #34495e url("../Pages/images/bg.jpg"); background-size: 100% auto; background-position: center center; background-repeat: no-repeat; background-attachment: fixed; background-size: cover;'
 else
  SpeedDialWork.Lines[19] := ' ';}
 SpeedDialWork.Lines[25] := 'background: url("../Pages/images/searchbar.png") no-repeat scroll center center #34495e;';
 SpeedDialWork.Lines[37] := '<div id="MenuBT"><a href="wespd://close"><img src="../Pages/images/close.png" /></a></div><div id="MenuST"></div>' + '<div id="MenuBT"><a href="wespd://openconfig"><img src="../Pages/images/gear.png" /></a></div>';
 SpeedDialWork.Lines[39] := '<div id="MenuTitle"><img src="../Pages/images/border.png" /></div>';
 SpeedDialWork.Lines[40] := '<div id="MenuTitle2"><img src="../Pages/images/border.png" /></div>';
 {$ENDIF}
 SpeedDialWork.Lines.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));

end;

procedure TBookmarks_mgc.ShellListView1AddFolder(Sender: TObject;
  AFolder: TShellFolder; var CanAdd: Boolean);
begin
CanAdd := AFolder.IsFolder or (ExtractFileExt(AFolder.PathName) = '.exe');
end;

procedure TBookmarks_mgc.SPDItensVClick(Sender: TObject);
begin
 SPDItens.ItemIndex := SPDItensV.ItemIndex;
end;

procedure TBookmarks_mgc.StartPluginTimer(Sender: TObject);
begin
 ListAllPlugins;
 StartPlugin.Enabled := false;
end;

function TBookmarks_mgc.TileColorFromSTR(StrColor: string): TColor;
begin
 if StrColor = 'metro-river' then
  Result := MainForm.HtmlToColor('#3498db', $00DB9834)
 else if StrColor = 'metro-amber' then
  Result := MainForm.HtmlToColor('#f39c12', $00DB9834)
 else if StrColor = 'metro-amethyst' then
  Result := MainForm.HtmlToColor('#9b59b6', $00DB9834)
 else if StrColor = 'metro-asphalt' then
  Result := MainForm.HtmlToColor('#34495e', $00DB9834)
 else if StrColor = 'metro-blueriver' then
  Result := MainForm.HtmlToColor('#2980b9', $00DB9834)
 else if StrColor = 'metro-concrete' then
  Result := MainForm.HtmlToColor('#95a5a6', $00DB9834)
 else if StrColor = 'metro-emerald' then
  Result := MainForm.HtmlToColor('#2ecc71', $00DB9834)
 else if StrColor = 'metro-greensea' then
  Result := MainForm.HtmlToColor('#0C8484', $00DB9834)
 else if StrColor = 'metro-pumpkin' then
  Result := MainForm.HtmlToColor('#dc5800', $00DB9834)
 else if StrColor = 'metro-sun' then
  Result := MainForm.HtmlToColor('#f1c40f', $00DB9834)
 else if StrColor = 'metro-tomato' then
  Result := MainForm.HtmlToColor('#c0392b', $00DB9834)
 else if StrColor = 'metro-turquoise' then
  Result := MainForm.HtmlToColor('#1abc9c', $00DB9834)
 else if StrColor = 'metro-wisteria' then
  Result := MainForm.HtmlToColor('#8e44ad', $00DB9834)
 else
  Result := MainForm.HtmlToColor('#3498db', $00DB9834);
end;

procedure TBookmarks_mgc.TreeViewHistoryDblClick(Sender: TObject);
var
 BrowserFrame : TWebBrowserFrame;
begin
 try
  if TreeViewHistory.Selected.ImageIndex <> 3 then
   begin
    FolderPages.ItemIndex := TreeViewHistory.Selected.Parent.Index;
    UrlSCR.Clear;
    UrlSCR.Items.LoadFromFile(FolderPages.Folders[FolderPages.ItemIndex].PathName + '\URL.ini');
    BrowserFrame := TWebBrowserFrame(MainForm.pcMain.Pages[MainForm.pcMain.ActivePageIndex].Components[0]);
    BrowserFrame.Chromium1.Browser.MainFrame.LoadUrl(UrlSCR.Items[TreeViewHistory.Selected.Index]);
   end;
 Except
 end;
 try
   close;
 BrowserFrame := TWebBrowserFrame(MainForm.pcMain.Pages[MainForm.pcMain.ActivePageIndex].Components[0]);
 if BrowserFrame.SPD_Visible = true then
  BrowserFrame.ShowSPD;
 Except
 end;

end;

procedure TBookmarks_mgc.ViewSelectPlugins(index: SmallInt);
begin
 ComplementsImage.Picture := nil;
 ComplementsIcons.GetIcon(index, ComplementsImage.Picture.Icon);
 DownloadPluginBT.Enabled := false;
 PluginOptBT.Enabled := false;
 PluginOptBT2.Enabled := false;
 case index of
  0: begin
      WindowsPlugins1.Checked := true;
      InstalledExtensionsLabel.Caption := WindowsPlugins1.Caption;
      InstalledExtensionsLabel.Caption := StringReplace(InstalledExtensionsLabel.Caption, '&', '', [rfreplaceall]);
      ExtensionRemoveBT.Visible := false;
      ExtensionUpdateBT.Visible := false;
      PluginOptBT.Visible := true;
      PluginOptBT2.Visible := false;
      Barpanel5Separator1.Visible := false;
      DownloadPluginBT.Visible := true;
      ComplementoLabelDesc.Caption := MainForm.LanguageCache.Lines[475];
     end;
  1: begin
      WebExplorerExtensions1.Checked := true;
      InstalledExtensionsLabel.Caption := WebExplorerExtensions1.Caption;
      InstalledExtensionsLabel.Caption := StringReplace(InstalledExtensionsLabel.Caption, '&', '', [rfreplaceall]);
      DownloadPluginBT.Enabled := false;
      PluginOptBT.Enabled := false;
      ExtensionRemoveBT.Visible := true;
      ExtensionRemoveBT.Enabled := false;
      ExtensionUpdateBT.Visible := true;
      ExtensionUpdateBT.Enabled := false;
      PluginOptBT.Visible := false;
      PluginOptBT2.visible := true;
      Barpanel5Separator1.Visible := true;
      DownloadPluginBT.Visible := false;
      MainForm.UpdateExtensionsDir;
      ComplementoLabelDesc.Caption := MainForm.LanguageCache.Lines[460];
     end;
{  2: begin
      WebExplorerPlugins1.Checked := true;
      InstalledExtensionsLabel.Caption := WebExplorerPlugins1.Caption;
      InstalledExtensionsLabel.Caption := StringReplace(InstalledExtensionsLabel.Caption, '&', '', [rfreplaceall]);
      DownloadPluginBT.Enabled := false;
      PluginOptBT.Enabled := false;
      ExtensionRemoveBT.Visible := false;
      ExtensionUpdateBT.Visible := false;
      PluginOptBT.Visible := true;
      DownloadPluginBT.Visible := true;
     end; }
  2: begin
      WebExplorerServices1.Checked := true;
      InstalledExtensionsLabel.Caption := WebExplorerServices1.Caption;
      InstalledExtensionsLabel.Caption := StringReplace(InstalledExtensionsLabel.Caption, '&', '', [rfreplaceall]);
      DownloadPluginBT.Enabled := false;
      PluginOptBT.Enabled := false;
      ExtensionRemoveBT.Visible := false;
      ExtensionUpdateBT.Visible := false;
      PluginOptBT.Visible := true;
      PluginOptBT2.Visible := false;
      Barpanel5Separator1.Visible := false;
      DownloadPluginBT.Visible := true;
      ComplementoLabelDesc.Caption := MainForm.LanguageCache.Lines[476];
     end;
 end;
 ListAllPlugins;
end;

procedure TBookmarks_mgc.W7ToolButton1Click(Sender: TObject);
begin
 close;
 MainForm.ClearOnlyHis;
end;

procedure TBookmarks_mgc.W7ToolButton2Click(Sender: TObject);
begin
 close;
 MainForm.ClearCache := true;
end;

procedure TBookmarks_mgc.W7ToolButton3Click(Sender: TObject);
var
 MenuPosition1: TPoint;
begin
 MenuPosition1 := ClientToScreen(Point(W7ToolButton3.Top,W7ToolButton3.Left));
 WidgetsMenu.Popup(MenuPosition1.X -2, MenuPosition1.Y + W7ToolButton3.Height + 3);
end;

procedure TBookmarks_mgc.W7ToolButton4Click(Sender: TObject);
begin
 close;
 if MainForm.AeroTabs.Tabs.Count = 0 then
  begin
   {$IFDEF RELEASE}
   ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'Web Explorer.exe'),pchar('http://www.webexplorerbrasil.com/store.html'), NIL, SW_SHOWNORMAL);
   {$ELSE}
   ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorer.exe'),pchar('http://www.webexplorerbrasil.com/store.html'), NIL, SW_SHOWNORMAL);
   {$ENDIF}
  end
 else
  MainForm.OpenNewTab('http://www.webexplorerbrasil.com/store.html');
end;

procedure TBookmarks_mgc.W7ToolButton5Click(Sender: TObject);
begin
 ClearDownloads;
end;

procedure TBookmarks_mgc.W7ToolButton6Click(Sender: TObject);
begin
 ShellExecute(handle,'open', 'explorer', Pchar(AppMenu.opt_downloaddir.Text),nil,SW_SHOWNORMAL);
end;

procedure TBookmarks_mgc.W7ToolButton7Click(Sender: TObject);
begin
 OpenDownloadDialog;
end;

procedure TBookmarks_mgc.WebExplorerExtensions1Click(Sender: TObject);
begin
 ViewSelectPlugins(1);
end;

procedure TBookmarks_mgc.WebExplorerServices1Click(Sender: TObject);
begin
 ViewSelectPlugins(2);
end;

function TBookmarks_mgc.WebExplorerUpdate: Boolean;
var
 CMDFileStream: TStringList;
begin
 updateinfo.Clear;
 Application.ProcessMessages;
 if OsSupportVersion = true then
  begin
   try
    updateinfo.Text := CheckUpdateHTTP.Get('http://www.webexplorerbrasil.com/FederationServices/we14_update/Update.inf');
   finally
    {$IFDEF RELEASE}
    SMVersionInfo1.FileName := ExtractFilePath(Application.ExeName) + 'Web Explorer.exe';
    {$ELSE}
    SMVersionInfo1.FileName := ExtractFilePath(Application.ExeName) + 'WebExplorer.exe';
    {$ENDIF}
    if ConvertVerToInt(updateinfo.Lines[2]) > ConvertVerToInt(SMVersionInfo1.FileVersion) then
     begin
      CMDFileStream := TStringList.Create;
      CMDFileStream.Add(updateinfo.Lines[2]);
      CMDFileStream.SaveToFile(Pchar(MainForm.Profile_Pach + '\NewUpdate.ini'));
      CMDFileStream.Free;
      Result := true;
     end
    else
     begin
      Result := false;
     end;
   end;
  end
 else
  Result := false;
end;

procedure TBookmarks_mgc.WindowsPlugins1Click(Sender: TObject);
begin
 ViewSelectPlugins(0);
end;

procedure TBookmarks_mgc.ComplementsOptionsClick(Sender: TObject);
var
  button: TControl;
  lowerLeft: TPoint;
begin
  if Sender is TControl then
  begin
    button := TControl(Sender);
    lowerLeft := Point(button.Left, button.Top + Button.Height);
    lowerLeft := ClientToScreen(lowerLeft);
    ComplementsMenu.Popup(lowerLeft.X + 220, lowerLeft.Y + 31);
  end;
{var
 MenuPosition5: TPoint;
begin
 MenuPosition5 := ClientToScreen(Point(Left + Width -150,Top + 10));
 ComplementsMenu.Popup(MenuPosition5.X , MenuPosition5.Y);}
end;

function TBookmarks_mgc.ConvertVerToInt(VerStr: string): int64;
var
 Value: integer;
begin
   VerStr := trim(VerStr);
   if copy(VerStr, VerStr.Length -4, 1) = '.' then
    Value := StrtoInt(copy(VerStr, VerStr.Length -3, VerStr.Length - 4))
   else
    Value := StrtoInt(copy(VerStr, VerStr.Length -4, VerStr.Length - 5));
   Result :=  Value;
end;

procedure TBookmarks_mgc.WninstallWidget1Click(Sender: TObject);
begin
 try
  if AppList.ItemIndex = -1 then
   MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[357]), Pchar(MainForm.LanguageCache.Lines[358]), MB_ICONWARNING + MB_OK + MB_DEFBUTTON1)
  else
   begin
    ShellListView1.ItemIndex := AppList.ItemIndex;
    try
     DeleteFile(Pchar(ShellListView1.SelectedFolder.PathName));
    finally
     begin
      MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[359]), Pchar(MainForm.LanguageCache.Lines[358]), MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1);
      ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + '.\WebExplorerNotification.exe'), '-dftmsg', nil,SW_SHOWNORMAL);
      ListWidgetTimer.Enabled := true;
     end;
    end;
   end;
 Except
   MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[360]), Pchar(MainForm.LanguageCache.Lines[358]), MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
 end;
end;

procedure TBookmarks_mgc.CapbarSizeTimerTimer(Sender: TObject);
begin
 AdvSmoothCapacityBar1.Width := Panel3.Width;
 AdvSmoothCapacityBar1.Constraints.MaxWidth := Panel3.Width;

end;

procedure TBookmarks_mgc.bt2Click(Sender: TObject);
var
 MenuPosition2: TPoint;
begin
 MenuPosition2 := ClientToScreen(Point(bt2.Top,bt2.Left));
 PopupMenu2.Popup(MenuPosition2.X + 125, MenuPosition2.Y + bt2.Height - 124);
end;

procedure TBookmarks_mgc.bt3Click(Sender: TObject);
var
 MenuPosition3: TPoint;
begin
 if SPDItensV.ItemIndex < 0 then
  begin
   DeleteItem1.Enabled := false;
   MoveDown1.Enabled := false;
   MoveUp1.Enabled := false;
  end
 else
  begin
   DeleteItem1.Enabled := true;
   if SPDItensV.ItemIndex = SPDItensV.Items.Count - 1 then
    MoveDown1.Enabled := false
   else
    MoveDown1.Enabled := true;
   if SPDItensV.ItemIndex = 0 then
    MoveUp1.Enabled := false
   else
    MoveUp1.Enabled := true;
  end;
 if SPDItensV.Items.Count = 1 then
  DeleteItem1.Enabled := false;
 MenuPosition3 := ClientToScreen(Point(bt3.Top,bt3.Left));
 PopupMenu3.Popup(MenuPosition3.X -2, MenuPosition3.Y + bt3.Height + 3);
end;

procedure TBookmarks_mgc.bt4Click(Sender: TObject);
var
 MenuPosition4: TPoint;
begin
 MenuPosition4 := ClientToScreen(Point(bt4.Top,bt4.Left));
 PopupMenu4.Popup(MenuPosition4.X + 125, MenuPosition4.Y + bt4.Height - 124);
end;

procedure TBookmarks_mgc.Button1Click(Sender: TObject);
begin
 MainForm.ShowSecPermHub(2);
 //weActiveProtection.ShowModal;
end;

procedure TBookmarks_mgc.Button2Click(Sender: TObject);
begin
 MainForm.ShowSecPermHub(1);
 //TrustedPagesForm.ShowModal;
end;

procedure TBookmarks_mgc.Button3Click(Sender: TObject);
begin
 MainForm.ShowSecPermHub(0);
 //AdblockForm.ShowModal;
end;

procedure TBookmarks_mgc.Button4Click(Sender: TObject);
begin
 WENetID.ShowModal;
end;

procedure TBookmarks_mgc.Button5Click(Sender: TObject);
begin
 MainForm.ClearCache := true;
 close;
end;

procedure TBookmarks_mgc.Button6Click(Sender: TObject);
begin
 MainForm.ClearOnlyHis;
 close;
end;

procedure TBookmarks_mgc.ButtonedEdit1RightButtonClick(Sender: TObject);
begin
  ShellExecute(handle,'open', Pchar(MainForm.Profile_Pach + '\History'), nil,nil,SW_SHOWNORMAL);
end;

procedure TBookmarks_mgc.ButtonedEdit2RightButtonClick(Sender: TObject);
begin
 ShellExecute(handle,'open', Pchar(MainForm.Profile_Pach + '\Bookmarks'), nil,nil,SW_SHOWNORMAL);
end;

procedure TBookmarks_mgc.ButtonedEdit3RightButtonClick(Sender: TObject);
begin
{$IFDEF STORE}
ShellExecute(handle,'open', Pchar(MainForm.GetUWPAppData + '\Widgets\'), nil,nil,SW_SHOWNORMAL);
{$ELSE}
ShellExecute(handle,'open', Pchar(ExtractFilePath(Application.ExeName) + '..\Widgets\'), nil,nil,SW_SHOWNORMAL);
{$ENDIF}
end;

procedure TBookmarks_mgc.ButtonedEdit4RightButtonClick(Sender: TObject);
begin
 ShellExecute(handle,'open', Pchar(MainForm.Profile_Pach), nil,nil,SW_SHOWNORMAL);
end;

procedure TBookmarks_mgc.ButtonedEdit5RightButtonClick(Sender: TObject);
begin
 ShellExecute(handle,'open', Pchar(AppMenu.opt_downloaddir.Text), nil,nil,SW_SHOWNORMAL);
end;

procedure TBookmarks_mgc.ButtonedEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_UP then
  begin
   if AppList.ItemIndex = 0 then
    begin
     AppList.ItemIndex := AppList.Items.Count - 1;
     ShellListView1.ItemIndex := AppList.ItemIndex;
    end
   else
    begin
     AppList.ItemIndex := AppList.ItemIndex - 1;
     ShellListView1.ItemIndex := AppList.ItemIndex;
    end;
   SearchEdit1.Text := AppList.Items[AppList.ItemIndex].Caption;
  end;
 if Key = VK_DOWN then
  begin
   if AppList.ItemIndex = AppList.Items.Count - 1 then
    begin
     AppList.ItemIndex := 0;
     ShellListView1.ItemIndex := AppList.ItemIndex;
    end
   else
    begin
     AppList.ItemIndex := AppList.ItemIndex + 1;
     ShellListView1.ItemIndex := AppList.ItemIndex;
    end;
   SearchEdit1.Text := AppList.Items[AppList.ItemIndex].Caption;
  end;
end;

procedure TBookmarks_mgc.ButtonedEdit6KeyPress(Sender: TObject; var Key: Char);
var
  tStr : String;
  tSrch : String;
  i : Integer;
begin
 tSrch:= SearchEdit1.Text;
 for i := AppList.Items.Count - 1 downto 0 do
  begin
   tStr:=AppList.Items[i].Caption;
   if Pos(tSrch,tStr) > 0 then
    AppList.ItemIndex := i;
  end;
 if Key = #27 then
  begin
   Key := #0;
   SearchEdit1.Clear;
   AppList.SetFocus;
  end;
 if Key = #13 then
  begin
   key := #0;
   ShellListView1.ItemIndex := AppList.ItemIndex;
   ShellExecute(handle,'open',Pchar(ShellListView1.SelectedFolder.PathName), '','',SW_SHOWNORMAL);
   close;
  end;
end;

procedure TBookmarks_mgc.AddDownloadTolist(DownloadName, DownloadFolder, DownloadDesc: string);
var
 //ListItem: TAdvSmoothListBoxItem;
 ListItem2: TListItem;
 //TempOpenIcon: TMemoryStream;
begin

 if ExtractFileExt(DownloadName) <> '' then
  RegistryIconExtraction(ExtractFileExt(DownloadName))
 else
  RegistryIconExtraction('exe');
 //ListItem := DownloadListBox.Items.Add;
 ListItem2 := ListViewDownloads.Items.Add;
 begin
  {ListItem.Caption := ' ' + #13#10 + DownloadName;
  ListItem.Height := 52;
  ListItem.AutoSize := false;
  ListItem.Hint := DownloadFolder;
  ListItem.ButtonColor := clWhite;//$00E6E6E6;//$00F7E0C9;
  ListItem.GraphicLeftIndex := DownloadIcons.Count - 1;
  ListItem.GraphicLeftHeight := 32;
  ListItem.GraphicLeftWidth := 32;
  ListItem.GraphicLeftType := gtImage;
  ListItem.GraphicRightType := gtSmoothButton;
  ListItem.GraphicRightHeight := 25;
  ListItem.GraphicRightWidth := 25;
  ListItem.GraphicRightMargin := 10;
  ListItem.Notes := DownloadDesc; //' ' + '<br>' + DownloadDesc + '<br>' + ' ';
  ListItem.CaptionFont.Size := 9;
  ListItem.CaptionSelectedFont.Size := 9;}

  ListItem2.ImageIndex := DownloadIcons.Count - 1;
  ListItem2.Caption := '  ' + DownloadName + #13#10 + '  '  + TrimRight(DownloadDesc);


  {ListItem.NotesLocation := plBottomLeft;
  TempOpenIcon := TMemoryStream.Create;
  try
   download_open_image.Picture.SaveToStream(TempOpenIcon);
   ListItem.GraphicRight.LoadFromStream(TempOpenIcon);
  finally
   TempOpenIcon.Free;
  end;}
 end;
end;

procedure TBookmarks_mgc.AddOnBt1Click(Sender: TObject);
begin
 close;
 if MainForm.AeroTabs.Tabs.Count = 0 then
  begin
   {$IFDEF RELEASE}
   ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'Web Explorer.exe'),pchar('http://www.webexplorerbrasil.com/store.html'), NIL, SW_SHOWNORMAL);
   {$ELSE}
   ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorer.exe'),pchar('http://www.webexplorerbrasil.com/store.html'), NIL, SW_SHOWNORMAL);
   {$ENDIF}
  end
 else
  MainForm.OpenNewTab('http://www.webexplorerbrasil.com/store.html');
end;

procedure TBookmarks_mgc.AddWidgets1Click(Sender: TObject);
begin
 close;
 NewResources.ShowModal;
end;

procedure TBookmarks_mgc.AlignAll;
begin
 SearchEdit1.Left := Width - SearchEdit1.Width - 20;
 SearchEdit2.Left := SearchEdit1.Left;
 ButtonedEdit6.left := SearchEdit1.Left;
 Panel3.Width := Panel_Profile.Width - 20;
 Panel4.Width := Panel_Profile.Width - 20;
 ButtonedEdit1.Width := Panel_Profile.Width - 162;
 ButtonedEdit2.Width := Panel_Profile.Width - 162;
 ButtonedEdit3.Width := Panel_Profile.Width - 162;
 ButtonedEdit4.Width := Panel_Profile.Width - 162;
 ButtonedEdit5.Width := Panel_Profile.Width - 162;
 Button1.Width := Panel_Profile.Width - 45;
 Button2.Width := Panel_Profile.Width - 45;
 Button3.Width := Panel_Profile.Width - 45;
 Button5.Width := Panel_Profile.Width - 45;
 Button6.Width := Panel_Profile.Width - 45;
 Button4.Width := Panel_Profile.Width - 45;
 ScrollBox1.Width := Panel_Profile.Width - 20;
 //AdvSmoothCapacityBar1.Constraints.MaxWidth := ScrollBox1.Width;
 ScrollBox1.Height := capbar.Top - 250;
 ComplementsOptions.Left := Panel_Plugins_top.Width - ComplementsOptions.Width - 6;
 if NoAddonPanel.Visible = true then
  begin
   if NoAddonPanel.Parent = Panel_Plugins then
    begin
     NoAddonPanel.Left := (Panel_Plugins.Width div 2) - (NoAddonPanel.Width div 2);
     NoAddonPanel.Top := 140;
    end;
   if NoAddonPanel.Parent = Panel_Widget then
    begin
     NoAddonPanel.Left := (Panel_Widget.Width div 2) - (NoAddonPanel.Width div 2);
     NoAddonPanel.Top := 100;
    end;
  end;
 if msgplugin.Visible = true then
  begin
   msgplugin.Left := W7ToolBar3.Width - msgplugin.Width - 10;
  end;
end;

procedure TBookmarks_mgc.AppListDblClick(Sender: TObject);
begin
try
 ShellListView1.ItemIndex := AppList.ItemIndex;
 ShellExecute(handle,'open',Pchar(ShellListView1.SelectedFolder.PathName), '','',SW_SHOWNORMAL);
 close;
Except

end;
end;

procedure TBookmarks_mgc.AppListKeyPress(Sender: TObject; var Key: Char);
begin
 ShellListView1.ItemIndex := AppList.ItemIndex;
 if Key = #13 then
  begin
   Key := #0;
   ShellExecute(handle,'open',Pchar(ShellListView1.SelectedFolder.PathName), '','',SW_SHOWNORMAL);
   close;
  end;
end;

procedure TBookmarks_mgc.bt1Click(Sender: TObject);
var
 MenuPosition1: TPoint;
begin
 MenuPosition1 := ClientToScreen(Point(bt1.Top,bt1.Left));
 PopupMenu1.Popup(MenuPosition1.X -2, MenuPosition1.Y + bt1.Height + 3);
end;

procedure TBookmarks_mgc.ChangeItens(LibraryIndex: SmallInt);
begin
 case LibraryIndex of
  0: begin
      Panel_history.Visible := true;
      Panel_Bookmarks.Visible := false;
      ListView_folders.Visible := false;
      Panel_Profile.Visible := false;
      TopBarPanel0.Visible := true;
      TopBarPanel1.Visible := false;
      TopBarPanel2.Visible := false;
      TopBarPanel4.Visible := false;
      TopBarPanel5.Visible := false;
      TopBarPanel6.Visible := false;
      Panel_SPD.Visible := false;
      msgplugin.Visible := false;
      CapbarSizeTimer.Enabled := false;
      Panel_Widget.Visible := false;
      Panel_Downloads.Visible := false;
      GetHistotyPagesList;
     end;
  1: begin
      Panel_history.Visible := false;
      Panel_Bookmarks.Visible := true;
      ListView_folders.Visible := true;
      Panel_Profile.Visible := false;
      TopBarPanel0.Visible := false;
      TopBarPanel1.Visible := true;
      TopBarPanel2.Visible := false;
      TopBarPanel4.Visible := false;
      TopBarPanel5.Visible := false;
      TopBarPanel6.Visible := false;
      Panel_SPD.Visible := false;
      Panel_Plugins.Visible := false;
      Panel_Downloads.Visible := false;
      msgplugin.Visible := false;
      CapbarSizeTimer.Enabled := false;
      Panel_Widget.Visible := false;
     end;
  2: begin
      Panel_history.Visible := false;
      Panel_Bookmarks.Visible := false;
      ListView_folders.Visible := false;
      Panel_Profile.Visible := false;
      TopBarPanel0.Visible := false;
      TopBarPanel1.Visible := false;
      TopBarPanel2.Visible := true;
      TopBarPanel4.Visible := false;
      TopBarPanel5.Visible := false;
      TopBarPanel6.Visible := false;
      Panel_SPD.Visible := true;
      Panel_Plugins.Visible := false;
      Panel_Downloads.Visible := false;
      msgplugin.Visible := false;
      CapbarSizeTimer.Enabled := false;
      Panel_Widget.Visible := false;
      LoadSPDItens;
     end;
  3: begin
      Panel_history.Visible := false;
      Panel_Bookmarks.Visible := false;
      Panel_Profile.Visible := true;
      ListView_folders.Visible := false;
      Panel_SPD.Visible := false;
      Panel_Downloads.Visible := false;
      Panel_Plugins.Visible := false;
      TopBarPanel0.Visible := false;
      TopBarPanel1.Visible := false;
      TopBarPanel2.Visible := false;
      TopBarPanel4.Visible := false;
      TopBarPanel5.Visible := false;
      TopBarPanel6.Visible := false;
      msgplugin.Visible := false;
      ButtonedEdit1.Text := MainForm.Profile_Pach + '\History';
      ButtonedEdit2.Text := MainForm.Profile_Pach + '\Bookmarks';
      {$IFDEF STORE}
      ButtonedEdit3.Text := MainForm.GetUWPAppData + '\Widgets\';
      {$ELSE}
      ButtonedEdit3.Text := ExtractFilePath(Application.ExeName) + '..\Widgets\';
      {$ENDIF}
      ButtonedEdit3.Text := StringReplace(ButtonedEdit3.Text, '\..\', '\', [rfreplaceall]);
      ButtonedEdit4.Text := MainForm.Profile_Pach;
      if ParamStr(1) <> '-library' then
       begin
        ButtonedEdit5.Text := AppMenu.opt_downloaddir.Text;
        Button1.Enabled := true;
        Button2.Enabled := true;
        Button3.Enabled := true;
        Button4.Enabled := true;
       end
      else
       begin
        Button1.Enabled := false;
        Button2.Enabled := false;
        Button3.Enabled := false;
        Button4.Enabled := false;
        try
         MainForm.OpenConfig;
        finally
         ButtonedEdit5.Text := AppMenu.opt_downloaddir.Text;
        end;
       end;
      CapbarSizeTimer.Enabled := true;
      Panel_Widget.Visible := false;
      ScrollBox1.Width := Panel_Profile.Width - 20;
      ScrollBox1.Height := capbar.Top - 250;
     end;
  4: begin
      Panel_history.Visible := false;
      Panel_Bookmarks.Visible := false;
      Panel_Widget.Visible := true;
      ListView_folders.Visible := false;
      Panel_Profile.Visible := false;
      Panel_SPD.Visible := false;
      Panel_Plugins.Visible := false;
      Panel_Downloads.Visible := false;
      TopBarPanel0.Visible := false;
      TopBarPanel1.Visible := false;
      TopBarPanel2.Visible := false;
      TopBarPanel4.Visible := true;
      TopBarPanel5.Visible := false;
      TopBarPanel6.Visible := false;
      msgplugin.Visible := false;
      CapbarSizeTimer.Enabled := false;
      ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + '.\WebExplorerNotification.exe'), '-dftmsg', nil,SW_SHOWNORMAL);
      ListWidgetTimer.Enabled := true;
     end;
  5: begin
      Panel_history.Visible := false;
      DownloadPluginBT.Enabled := false;
      PluginOptBT.Enabled := false;
      PluginOptBT2.Visible := false;
      Panel_Bookmarks.Visible := false;
      ListView_folders.Visible := false;
      Panel_Profile.Visible := false;
      Panel_SPD.Visible := false;
      Panel_Plugins.Visible := true;
      Panel_Downloads.Visible := false;
      TopBarPanel0.Visible := false;
      TopBarPanel1.Visible := false;
      TopBarPanel2.Visible := false;
      TopBarPanel4.Visible := false;
      TopBarPanel5.Visible := true;
      TopBarPanel6.Visible := false;
      msgplugin.Visible := false;
      StartPlugin.Enabled := true;
      CapbarSizeTimer.Enabled := false;
      Panel_Widget.Visible := false;
      ViewSelectPlugins(0);
     end;
  6: begin
      Panel_history.Visible := false;
      DownloadPluginBT.Enabled := false;
      PluginOptBT.Enabled := false;
      PluginOptBT2.Visible := false;
      Panel_Bookmarks.Visible := false;
      ListView_folders.Visible := false;
      Panel_Profile.Visible := false;
      Panel_SPD.Visible := false;
      Panel_Plugins.Visible := false;
      Panel_Downloads.Visible := true;
      TopBarPanel0.Visible := false;
      TopBarPanel1.Visible := false;
      TopBarPanel2.Visible := false;
      TopBarPanel4.Visible := false;
      TopBarPanel5.Visible := false;
      TopBarPanel6.Visible := true;
      msgplugin.Visible := false;
      CapbarSizeTimer.Enabled := false;
      Panel_Widget.Visible := false;
      LoadDownloadList;
     end;
  end;
end;

procedure TBookmarks_mgc.CheckSPDFileUpdate;
var
 SPDFfileName, SPDFileDateCurrent, SPDFileDateLimit: string;
 SPDFfileDate: Integer;
 SPDFileUpdater: TStringList;
begin
 SPDFileDateLimit := '2017/01/10'; // ------------> Dia limite até a atualização atual do SpeedDial.html
 SPDFfileName := Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html');
 SPDFfileDate := FileAge(SPDFfileName);
 SPDFileDateCurrent := FormatDateTime('yyyy/mm/dd', FileDateToDateTime(SPDFfileDate));
 if (SPDFileDateCurrent <= SPDFileDateLimit) then
  begin
   try
    SPDFileUpdater := TStringList.Create;
    SPDFileUpdater.LoadFromFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
    // Sempre Manter esse Fix, adicionando novas atualizações abaixo...
    SPDFileUpdater.Strings[42] := AddSpeedDialChennel.SpeedDialTemplate.Lines[42];
   finally
    SPDFileUpdater.SaveToFile(Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.html'));
    SPDFileUpdater.Free;
   end;
  end;
end;

procedure TBookmarks_mgc.ClearDownloads;
begin
 try
  begin
   if MainForm.privatemode = false then
    DeleteFile(Pchar(MainForm.Profile_Pach + '\History\Downloads.csv'))
   else
    DeleteFile(Pchar(MainForm.Profile_Pach + '\Cache\Temp\Downloads.csv'));
  end;
 Except
 end;
 DownloadIcons.Clear;
 //DownloadListBox.Items.Clear;
 ListViewDownloads.Clear;
 DownloadListViewCSV.Clear;
end;

procedure TBookmarks_mgc.CreateShortcut(FileName, Parameters, InitialDir,
  ShortcutName, ShortcutFolder: String);
var
 MyObject: IUnknown;
 MySLink: IShellLink;
 MyPFile: IPersistFile;
 Directory: String;
 WFileName: WideString;
 MyReg: TRegIniFile;
begin
MyObject:=CreateComObject(CLSID_ShellLink);
MySLink:=MyObject as IShellLink;
MyPFile:=MyObject as IPersistFile;
with MySLink do
 begin
  SetArguments(Pchar(Parameters));
  SetPath(PChar(FileName));
  SetWorkingDirectory(PChar(InitialDir));
  SetIconLocation(pchar(ShellListView1.SelectedFolder.PathName),0);
 end;
MyReg:=TRegIniFile.Create('Software\MicroSoft\Windows\CurrentVersion\Explorer');
Directory:=MyReg.ReadString ('Shell Folders','Desktop','');
WFileName:=Directory + '\' + ShortcutName + '.lnk';
MyPFile.Save(PWChar (WFileName), False);
MyReg.Free;
end;

procedure TBookmarks_mgc.CreateShortcut1Click(Sender: TObject);
begin
try
 try
  ShellListView1.ItemIndex := AppList.ItemIndex;
 finally
  CreateShortcut(pchar(ShellListView1.SelectedFolder.PathName),'',pchar(ExtractFilePath(ShellListView1.SelectedFolder.PathName)),MainForm.CutSpecialChar(AppList.Items[AppList.ItemIndex].Caption),'');
  MessageBox(Application.Handle, PChar(MainForm.LanguageCache.Lines[343]), PChar(MainForm.LanguageCache.Lines[344]), MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1);
 end;
Except
 MessageBox(Application.Handle, PChar(MainForm.LanguageCache.Lines[345]), PChar(MainForm.LanguageCache.Lines[344]), MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
end;

end;

procedure TBookmarks_mgc.DeleteItem1Click(Sender: TObject);
begin
 if SPDItensV.ItemIndex < 0 then
  MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[224]), Pchar(MainForm.LanguageCache.Lines[185]), MB_ICONWARNING + MB_OK + MB_DEFBUTTON1)
 else
  begin
   if StrToInt(SPDItens.Items[SPDItens.ItemIndex].Caption) < 0 then
    begin
     try
      DeleteFile(PChar(MainForm.Profile_Pach + '\SpeedDial\'+SPDItens.Items[SPDItens.ItemIndex].Caption + '.jpg'));
     Except
     end;
    end;
   SPDItens.DeleteSelected;

   SaveTilesSPD;
  end;
end;

procedure TBookmarks_mgc.DeleteLink1Click(Sender: TObject);
begin
 if ListView.ItemIndex <> -1 then
  begin
   fav_list.ItemIndex := ListView.ItemIndex;
   DeleteFile(fav_list.FileName);
   GetLinks;
  end
 else
  MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[193]), Pchar(MainForm.LanguageCache.Lines[185]), MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
end;

procedure TBookmarks_mgc.DeleteLinkClick(Sender: TObject);
var
 name_relink: string;
begin
 try
  begin
   fav_list.ItemIndex := ListView.ItemIndex;
   name_relink := MainForm.LanguageCache.Lines[219] + ': '+ fav_list.Items.Strings[fav_list.Itemindex] +' ' + MainForm.LanguageCache.Lines[223];
   if MessageBox(Application.Handle, PChar(name_relink), Pchar(MainForm.LanguageCache.Lines[185]), MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = ID_YES then
    begin
     DeleteFile(fav_list.FileName);
     fav_list.Update;
     GetLinks;
    end;
   end;
 Except
  begin
   MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[224]), Pchar(MainForm.LanguageCache.Lines[185]), MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
  end;
 end;
end;

procedure TBookmarks_mgc.DownloadPluginBTClick(Sender: TObject);
begin
 MessageBox(Application.Handle, PChar(MainForm.LanguageCache.Lines[346]), PChar(MainForm.LanguageCache.Lines[347]), MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
 if ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Adobe Flash Player' then
  begin
   if MainForm.AeroTabs.Tabs.Count = 0 then
    {$IFDEF RELEASE}
    ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'Web Explorer.exe'),pchar('http://get.adobe.com/flashplayer'), NIL, SW_SHOWNORMAL)
    {$ELSE}
    ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorer.exe'),pchar('http://get.adobe.com/flashplayer'), NIL, SW_SHOWNORMAL)
    {$ENDIF}
   else
    MainForm.OpenNewTab('http://get.adobe.com/flashplayer');
   close;
  end;
 if (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Microsoft Silverlight x64') or (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Microsoft Silverlight x86') then
  begin
   if MainForm.AeroTabs.Tabs.Count = 0 then
    {$IFDEF RELEASE}
    ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'Web Explorer.exe'),pchar('http://www.microsoft.com/getsilverlight/'), NIL, SW_SHOWNORMAL)
    {$ELSE}
    ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorer.exe'),pchar('http://www.microsoft.com/getsilverlight/'), NIL, SW_SHOWNORMAL)
    {$ENDIF}
   else
    MainForm.OpenNewTab('http://www.microsoft.com/getsilverlight/');
   close;
  end;
 if (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Oracle Java Runtime Environment x64') or (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Oracle Java Runtime Environment x86') then
  begin
   if MainForm.AeroTabs.Tabs.Count = 0 then
    {$IFDEF RELEASE}
    ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'Web Explorer.exe'),pchar('http://www.java.com/'), NIL, SW_SHOWNORMAL)
    {$ELSE}
    ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorer.exe'),pchar('http://www.java.com/'), NIL, SW_SHOWNORMAL)
    {$ENDIF}
   else
    MainForm.OpenNewTab('http://www.java.com/');
   close;
  end;
end;

procedure TBookmarks_mgc.EditLink1Click(Sender: TObject);
begin
 NewLinkForm.EditMode := true;
 NewLink.Edit1.text := ListView.Items[ListView.ItemIndex].Caption;
 newlink.Edit2.Text := ListView.Items[ListView.ItemIndex].SubItems.Text;
 newlink.ListView_folders.ItemIndex := ListView_folders.ItemIndex - 1;
 DeleteFile(Pchar(MainForm.Profile_Pach + '\Bookmarks\' + ListView_folders.Items[ListView_folders.ItemIndex].Caption + '\' + ListView.Items[ListView.ItemIndex].Caption + '.htm'));
 newlink.Caption := MainForm.LanguageCache.Lines[194];
 newlink.ShowModal;
end;

procedure TBookmarks_mgc.ExchangeItems(lv: TListView; const i, j: Integer);
var
  tempLI: TListItem;
begin
  lv.Items.BeginUpdate;
  try
    tempLI := TListItem.Create(lv.Items);
    tempLI.Assign(lv.Items.Item[i]);
    lv.Items.Item[i].Assign(lv.Items.Item[j]);
    lv.Items.Item[j].Assign(tempLI);
    tempLI.Free;
  finally
    lv.Items.EndUpdate
  end;
end;

procedure TBookmarks_mgc.Export1Click(Sender: TObject);
begin
 ExportBook;
end;

procedure TBookmarks_mgc.ExportBook;
var
 index: integer;
begin
try
if ListView.Items.Count > 0 then
 begin
  save_sc.Clear;
  save_sc.Lines.Add(ExportBookMemo.Lines[0]);
  save_sc.Lines.Add(ExportBookMemo.Lines[1]);
  save_sc.Lines.Add(ExportBookMemo.Lines[2]);
  save_sc.Lines.Add(ExportBookMemo.Lines[3]);
  save_sc.Lines.Add(ExportBookMemo.Lines[4]);
  save_sc.Lines.Add('<H1>' + ListView_folders.Items[ListView_folders.ItemIndex].Caption + '</H1>');
  save_sc.Lines.Add(ExportBookMemo.Lines[6]);
  save_sc.Lines.Add(ExportBookMemo.Lines[7]);
  save_sc.Lines.Add(ExportBookMemo.Lines[8]);
  save_sc.Lines.Add(ExportBookMemo.Lines[9]);
  for index := 0 to ListView.Items.Count -1 do
   begin
    save_sc.Lines.Add('<DT><A HREF="' + trim(ListView.Items[index].SubItems.Text) + '"  ADD_DATE="1378825071" LAST_VISIT="1378827793" LAST_MODIFIED="1378827793" >' + ListView.Items[index].Caption + '</A>');
   end;
  save_sc.Lines.Add(ExportBookMemo.Lines[10]);
  if SelectDownloadFolder.Execute then
  begin
   if Length(SelectDownloadFolder.Directory) <= 3 then
    save_sc.Lines.SaveToFile(SelectDownloadFolder.Directory + ListView_folders.Items[ListView_folders.ItemIndex].Caption + '.html')
   else
    save_sc.Lines.SaveToFile(SelectDownloadFolder.Directory + '\' + ListView_folders.Items[ListView_folders.ItemIndex].Caption + '.html');
   MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[400]), Pchar(MainForm.LanguageCache.Lines[396]), MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1);
  end;
 end;
Except
end;
end;

procedure TBookmarks_mgc.ExtensionRemoveBTClick(Sender: TObject);
begin
 if MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[497]), Pchar(MainForm.LanguageCache.Lines[362]), MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = mrYes then
  begin
   ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + '.\WebExplorerNotification.exe'), Pchar('-removeext ' + NewExtensions.Crypt('CRYPT', MainForm.ExtensionsDirList.Items[ListViewPlugins.ItemIndex])), nil,SW_SHOWNORMAL);
   MainForm.StopSessionAndTerminate;
  end;
end;

procedure TBookmarks_mgc.ExtensionUpdateBTClick(Sender: TObject);
begin
 ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + '.\WebExplorerNotification.exe'), '-dftmsg', nil,SW_SHOWNORMAL);
 GetPluginUpdate(ExtractFileName(ExcludeTrailingPathDelimiter(MainForm.ExtensionsDirList.Items[ListViewPlugins.ItemIndex])), 'https://sites.google.com/site/thiagofortescentral/home/federation-service-storage/', MainForm.ExtensionsDirList.Items[ListViewPlugins.ItemIndex], false);
 //MainForm.ExtensionsListView.ItemIndex := ListViewPlugins.ItemIndex;
 //ShowMessage(ExtractFileName(ExcludeTrailingPathDelimiter(MainForm.ExtensionsDirList.Items[ListViewPlugins.ItemIndex])));
end;

function TBookmarks_mgc.ExtractTextInsideGivenTagEx(const Tag,
  Text: string): string;
var
  StartPos1, StartPos2, EndPos: integer;
  i: Integer;
begin
  result := '';
  StartPos1 := Pos('<' + Tag, Text);
  EndPos := Pos('</' + Tag + '>', Text);
  StartPos2 := 0;
  for i := StartPos1 + length(Tag) + 1 to EndPos do
    if Text[i] = '>' then
    begin
      StartPos2 := i + 1;
      break;
    end;
  if (StartPos2 > 0) and (EndPos > StartPos2) then
    result := Copy(Text, StartPos2, EndPos - StartPos2);
end;

procedure TBookmarks_mgc.FileSearch(const PathName, FileName: string;
  const InDir: boolean);
var Rec  : TSearchRec;
    Path : string;
begin
Path := IncludeTrailingBackslash(PathName);
if FindFirst(Path + FileName, faAnyFile - faDirectory, Rec) = 0 then
 try
   repeat
     FileSearchListbox.Items.Add(Path + Rec.Name);
   until FindNext(Rec) <> 0;
 finally
   FindClose(Rec);
 end;

If not InDir then Exit;

if FindFirst(Path + '*.*', faDirectory, Rec) = 0 then
 try
   repeat
    if ((Rec.Attr and faDirectory) <> 0)  and (Rec.Name<>'.') and (Rec.Name<>'..') then
     FileSearch(Path + Rec.Name, FileName, True);
   until FindNext(Rec) <> 0;
 finally
   FindClose(Rec);
 end;
end;

procedure TBookmarks_mgc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CapbarSizeTimer.Enabled := false;
  ListViewSelect1.ItemIndex := -1;
end;

procedure TBookmarks_mgc.FormCreate(Sender: TObject);
begin
 if ParamStr(1) = '-library' then
  begin
   try
    begin
     MainForm.GetPlataform;
     MainForm.GetUserAgent;
     MainForm.check_profile;
     MainForm.OpenConfig;
     MainForm.UpdateExtensionsDir;
    end;
   finally
    begin
     ListViewSelect1.ItemIndex := 6;
    end;
   end;
  end;

 FListViewWndProc := SPDItensV.WindowProc;
 SPDItensV.WindowProc := ListViewWndProc;
end;

procedure TBookmarks_mgc.FormResize(Sender: TObject);
begin
 AlignAll;
end;

procedure TBookmarks_mgc.FormShow(Sender: TObject);
begin
 GetBookmarks;
 GetLinks;
 GetProfileSize;
 if ParamStr(1) = '-library' then
  try
   MainForm.EnableLanguage(MainForm.LanguageIndex);
  finally
   GetLanguage;
  end
 else
  GetLanguage;
 if (ParamStr(1) = '-library') and (ParamStr(2) <> '') then
  remoteupdateext.Enabled := true;
 AddOnBt1.Appearance := MainForm.Trash_bt.Appearance;
end;

procedure TBookmarks_mgc.GetBookmarks;
var
 ListItem : TListItem;
 index: Integer;
begin
 bookmarksIndex.Clear;
 ListView_folders.Items.Clear;
 bookmarksIndex.Items.LoadFromFile(MainForm.Profile_Pach + '\Bookmarks\BookmarkIndex.ini');
 ListItem := ListView_folders.Items.Add;
 ListItem.GroupID := 0;
 ListItem.Caption := MainForm.LanguageCache.Lines[195];
 ListItem.ImageIndex := 0;
 ListItem := ListView_folders.Items.Add;
 ListItem.Caption := MainForm.LanguageCache.Lines[196];
 ListItem.ImageIndex := 2;
 Application.ProcessMessages;
 for index := 0 to bookmarksIndex.Items.Count - 1 do
  begin
   ListItem := ListView_folders.Items.Add;
   ListItem.GroupID := 0;
   ListItem.Caption := bookmarksIndex.Items.Strings[index];
   ListItem.ImageIndex := 0;
  end;
 ListView_folders.ItemIndex := 0;
end;

function TBookmarks_mgc.GetDirSize(dir: string; subdir: Boolean): Longint;
var
  rec: TSearchRec;
  found: Integer;
begin
  Result := 0;
  if dir[Length(dir)] <> '\' then dir := dir + '\';
  found := FindFirst(dir + '*.*', faAnyFile, rec);
  while found = 0 do
  begin
    Inc(Result, rec.Size);
    if (rec.Attr and faDirectory > 0) and (rec.Name[1] <> '.') and (subdir = True) then
      Inc(Result, GetDirSize(dir + rec.Name, True));
    found := FindNext(rec);
  end;
  FindClose(rec);
end;

function TBookmarks_mgc.GetFolderAge(Folder: string): TDateTime;
var
 FileSpecs: TGetFileExInfoLevels;
 FolderData: TWin32FileAttributeData;
 FileTime: TSystemTime;
begin
 Result:= 0;
 fillchar(FileSpecs, sizeof(FileSpecs), 0);
 FileSpecs:= GetFileExInfoStandard;
 fillchar(FolderData, sizeof(folderdata), 0);
 if GetFileAttributesEx(PChar(Folder), FileSpecs, @FolderData) then
  begin
   FileTimeToSystemTime(folderdata.ftCreationTime, FileTime);
   Result:= SystemTimeToDateTime(filetime);
  end;
end;

procedure TBookmarks_mgc.GetHistotyPagesList;
var
 ListItem : TListItem;
 index, indexfolder, indexpage: Integer;
 item_name, DataString: string;
 DayNode, PagesNode: TTreeNode;

begin
   if (Copy(inttostr(MainForm.GetCountryCode), 1 , 1) = '5') or (Copy(inttostr(MainForm.GetCountryCode), 1 , 1) = '3') or
      (Copy(inttostr(MainForm.GetCountryCode), 1 , 1) = '7') or (Copy(inttostr(MainForm.GetCountryCode), 1 , 1) = '2') then
       DataString := FormatDateTime('dd-mm-yyyy - dddd', Now);
   if (Copy(inttostr(MainForm.GetCountryCode), 1 , 1) = '1') or (Copy(inttostr(MainForm.GetCountryCode), 1 , 1) = '4') or
      (Copy(inttostr(MainForm.GetCountryCode), 1 , 1) = '6') or (Copy(inttostr(MainForm.GetCountryCode), 1 , 1) = '8') or
      (Copy(inttostr(MainForm.GetCountryCode), 1 , 1) = '9') then
        DataString := FormatDateTime('mm-dd-yyyy - dddd', Now);
   try
    FolderPages.Root := 'c:\';
   finally
    FolderPages.Root := MainForm.Profile_Pach + '\History';
   end;
   with TreeViewHistory.Items do
    begin
     clear;
     for indexfolder := 0 to FolderPages.Items.Count - 1 do
      begin
       DayNode := TreeViewHistory.Items.Add(nil, ExtractFileName(ExcludeTrailingPathDelimiter(FolderPages.Folders[indexfolder].PathName + '\')));
       DayNode.ImageIndex := 3;
       DayNode.StateIndex := 3;
       DayNode.SelectedIndex := 3;
       DayNode.ExpandedImageIndex := 3;
       NameURLSRC.Clear;
       NameURLSRC.Items.LoadFromFile(MainForm.Profile_Pach + '\History\' + ExtractFileName(ExcludeTrailingPathDelimiter(FolderPages.Folders[indexfolder].PathName)) + '\URLName.ini');
       for indexpage := 0 to NameURLSRC.Items.Count -1 do
        begin
         PagesNode := TreeViewHistory.Items.AddChild(DayNode, NameURLSRC.Items[indexpage]);
         PagesNode.ImageIndex := 1;
         PagesNode.StateIndex := 1;
         PagesNode.SelectedIndex := 1;
         PagesNode.ExpandedImageIndex := 1;
        end;
      end;
    end;
end;

procedure TBookmarks_mgc.GetIconFile;
var
 Icon: TIcon;
 IconHandle: HIcon;
begin
 Icon := TIcon.Create;
  Try
   iconHandle := ExtractIcon(Application.Handle, pchar(ShellListView1.SelectedFolder.PathName), 0) ;
   Icon.Handle := iconHandle;
   ConvertTo32BitImageList(Icons_List);
   Icons_List.AddIcon(Icon);
  Finally
   Icon.Free;
  End;
end;

procedure TBookmarks_mgc.GetLanguage;
begin
 Folders1.Caption := MainForm.LanguageCache.Lines[177];
 bt1.Caption := MainForm.LanguageCache.Lines[388];
 RenameFolder1.Caption := MainForm.LanguageCache.Lines[178];
 NewFolder1.Caption := MainForm.LanguageCache.Lines[179];
 RenameFolder1.Caption := MainForm.LanguageCache.Lines[178];
 Links1.Caption := MainForm.LanguageCache.Lines[181];
 bt2.Caption := MainForm.LanguageCache.Lines[389];
 EditLink1.Caption := MainForm.LanguageCache.Lines[182];
 RenameLink1.Caption := MainForm.LanguageCache.Lines[183];
 NewLink1.Caption := MainForm.LanguageCache.Lines[184];
 DeleteLink.Caption := MainForm.LanguageCache.Lines[185];
 SearchEdit1.TextHint := MainForm.LanguageCache.Lines[186];
 SearchEdit2.TextHint := MainForm.LanguageCache.Lines[222];
 ListView_folders.Columns[0].Caption := MainForm.LanguageCache.Lines[187];
 ListView_folders.Groups[0].Header := MainForm.LanguageCache.Lines[187];
 W7ToolButton1.Caption := MainForm.LanguageCache.Lines[217];
 W7ToolButton2.Caption := MainForm.LanguageCache.Lines[218];
 ListView.Columns[0].Caption := MainForm.LanguageCache.Lines[188];
 ListView.Columns[1].Caption := MainForm.LanguageCache.Lines[189];
 AdvSmoothCapacityBar1.FreeDescription :=  MainForm.LanguageCache.Lines[190];
 RemoveFolder1.Caption := MainForm.LanguageCache.Lines[180];

 ListViewSelect1.Groups[0].Header := MainForm.LanguageCache.Lines[192];
 {ListViewSelect2.Groups[0].Header := MainForm.LanguageCache.Lines[192];
 ListViewSelect3.Groups[0].Header := MainForm.LanguageCache.Lines[192];
 ListViewSelect4.Groups[0].Header := MainForm.LanguageCache.Lines[192];
 ListViewSelect5.Groups[0].Header := MainForm.LanguageCache.Lines[192];}

 Caption := MainForm.LanguageCache.Lines[192] + ' - Web Explorer';
 ImportandExport1.Caption := MainForm.LanguageCache.Lines[390];
 ImportExportTaskDialog.RadioButtons[0].Caption := MainForm.LanguageCache.Lines[391];
 ImportExportTaskDialog.RadioButtons[1].Caption := MainForm.LanguageCache.Lines[392];
 Import1.Caption := MainForm.LanguageCache.Lines[392];
 Export1.Caption := MainForm.LanguageCache.Lines[391];
 ImportExportTaskDialog.Buttons[0].Caption := MainForm.LanguageCache.Lines[241];
 ImportExportTaskDialog.Buttons[1].Caption := MainForm.LanguageCache.Lines[394];
 ImportExportTaskDialog.Caption := MainForm.LanguageCache.Lines[192] + ' - Web Explorer';
 ImportExportTaskDialog.Text := MainForm.LanguageCache.Lines[395];
 ImportExportTaskDialog.Title := MainForm.LanguageCache.Lines[396];
 OpenDialog1.Title := MainForm.LanguageCache.Lines[397];

 DownloadPluginBT.Caption := MainForm.LanguageCache.Lines[339];
 PluginOptBT.Caption := MainForm.LanguageCache.Lines[340];
 PluginOptBT2.Caption := MainForm.LanguageCache.Lines[340];
 ListViewPlugins.Columns[0].Caption := MainForm.LanguageCache.Lines[335];
 ListViewPlugins.Columns[1].Caption := MainForm.LanguageCache.Lines[341];
 ListViewPlugins.Columns[2].Caption := MainForm.LanguageCache.Lines[342];
 //MainForm.LanguageCache.Lines[];
 ListViewSelect1.Groups[0].Header := MainForm.LanguageCache.Lines[35];
 ListViewSelect1.Items[0].Caption := MainForm.LanguageCache.Lines[214];
 ListViewSelect1.Items[1].Caption := MainForm.LanguageCache.Lines[212];
 ListViewSelect1.Items[3].Caption := MainForm.LanguageCache.Lines[393];
 ListViewSelect1.Items[5].Caption := MainForm.LanguageCache.Lines[439];
 W7ToolButton1.Caption := MainForm.LanguageCache.Lines[48];
 W7ToolButton2.Caption := MainForm.LanguageCache.Lines[218];
 SearchEdit2.TextHint := MainForm.LanguageCache.Lines[222];
 bt3.Caption := MainForm.LanguageCache.Lines[388];
 bt4.Caption := MainForm.LanguageCache.Lines[80];
 DeleteItem1.Caption := MainForm.LanguageCache.Lines[185];
 MoveUp1.Caption := MainForm.LanguageCache.Lines[410];
 MoveDown1.Caption := MainForm.LanguageCache.Lines[411];
 SetcustomWallpaper1.Caption := MainForm.LanguageCache.Lines[92];
 SetAnimatedBackground11.Caption := MainForm.LanguageCache.Lines[413];
 SetAnimatedBackground21.Caption := MainForm.LanguageCache.Lines[412];
 SetAnimatedBackground31.Caption := MainForm.LanguageCache.Lines[434];
 SetdefaultwallpaperStatic1.Caption := MainForm.LanguageCache.Lines[81];
 SetRainThemeAnimated1.Caption := MainForm.LanguageCache.Lines[466];
 SetMontainThemeAnimated1.Caption := MainForm.LanguageCache.Lines[467];
 S1.Caption := MainForm.LanguageCache.Lines[490];
 S2.Caption := MainForm.LanguageCache.Lines[496];
 S3.Caption := MainForm.LanguageCache.Lines[507];
 S4.Caption := MainForm.LanguageCache.Lines[523];
 SetIslandsThemeAnimated1.Caption := MainForm.LanguageCache.Lines[506];
 SPDItensV.Columns[0].Caption := MainForm.LanguageCache.Lines[414];
 SPDItensV.Columns[1].Caption := MainForm.LanguageCache.Lines[282];
 SPDItensV.Columns[2].Caption := MainForm.LanguageCache.Lines[415];
 textopt7.Caption := MainForm.LanguageCache.Lines[416];
 Label1.Caption := MainForm.LanguageCache.Lines[417];
 Label2.Caption := MainForm.LanguageCache.Lines[418];
 label3.Caption := MainForm.LanguageCache.Lines[419];
 label6.Caption := MainForm.LanguageCache.Lines[420];
 Label7.Caption := MainForm.LanguageCache.Lines[421];
 Button1.Caption := MainForm.LanguageCache.Lines[422];
 Button2.Caption := MainForm.LanguageCache.Lines[423];
 Button3.Caption := MainForm.LanguageCache.Lines[424];
 Button5.Caption := MainForm.LanguageCache.Lines[218];
 Button6.Caption := MainForm.LanguageCache.Lines[48];
 AppList.Columns[0].Caption := MainForm.LanguageCache.Lines[335];
 AppList.Columns[1].Caption := MainForm.LanguageCache.Lines[336];
 AppList.Columns[2].Caption := MainForm.LanguageCache.Lines[337];
 AddWidgets1.Caption := MainForm.LanguageCache.Lines[330];
 WninstallWidget1.Caption := MainForm.LanguageCache.Lines[331];
 CreateShortcut1.Caption := MainForm.LanguageCache.Lines[333];
 W7ToolButton4.Caption := MainForm.LanguageCache.Lines[332];
 W7ToolButton3.Caption := MainForm.LanguageCache.Lines[388];
 ButtonedEdit6.TextHint := MainForm.LanguageCache.Lines[328];

 Opendownload.Content := MainForm.LanguageCache.Lines[380];
 Opendownload.CustomButtons[0] := MainForm.LanguageCache.Lines[379];
 Opendownload.CustomButtons[1] := MainForm.LanguageCache.Lines[378];
 Opendownload.Instruction := MainForm.LanguageCache.Lines[378];

 W7ToolButton7.Caption := MainForm.LanguageCache.Lines[378];
 W7ToolButton5.Caption := MainForm.LanguageCache.Lines[48];

 ComplementoLabelDesc.Caption := MainForm.LanguageCache.Lines[475];
 ComplementsOptions.Caption := MainForm.LanguageCache.Lines[461];
 ExtensionRemoveBT.Caption := MainForm.LanguageCache.Lines[462];
 ExtensionUpdateBT.Caption := MainForm.LanguageCache.Lines[498];
 WindowsPlugins1.Caption := MainForm.LanguageCache.Lines[463];
 WebExplorerExtensions1.Caption := MainForm.LanguageCache.Lines[464];
 WebExplorerServices1.Caption := MainForm.LanguageCache.Lines[465];
 AddOnBt1.Caption := MainForm.LanguageCache.Lines[146];
 AddonLabel1.Caption := MainForm.LanguageCache.Lines[477];

end;

procedure TBookmarks_mgc.GetLinks;
var
 ListItem : TListItem;
 index: Integer;
 fav_name: string;
begin
   if ListView_folders.ItemIndex = 0 then
    fav_list.Directory := MainForm.Profile_Pach + '\Bookmarks';
   if ListView_folders.ItemIndex = 1 then
    FileListBox2.Directory := MainForm.Profile_Pach + '\Bookmarks\RSS Feeds';
   if ListView_folders.ItemIndex > 1 then
    fav_list.Directory := MainForm.Profile_Pach + '\Bookmarks\' + ListView_folders.Items[ListView_folders.ItemIndex].Caption;
  fav_list.Update;
 if ListView_folders.ItemIndex <> 1 then
  begin
   ListView.Clear;
   for Index := 0 to fav_list.Items.Count - 1 do
    begin
     fav_list.ItemIndex := index;
     ListItem:= ListView.Items.Add;
     fav_tmp_n.caption := fav_list.Items.Strings[Index];
     fav_name := Copy(fav_list.Items.Strings[Index], 1, fav_tmp_n.GetTextLen - 4);
     ListItem.Caption := fav_name;
     end_fav.Clear;
     end_fav.Lines.LoadFromFile(fav_list.FileName);
     if Copy(end_fav.Text, end_fav.GetTextLen, end_fav.GetTextLen - 45) = '>' then
      ListItem.SubItems.Add(Copy(end_fav.Text,44,end_fav.GetTextLen - 45))
     else
      ListItem.SubItems.Add(Copy(end_fav.Text,44,end_fav.GetTextLen - 47));
     ListItem.ImageIndex := 1;
    end;
  end
 else
  begin
  ListView.Clear;
   for index := 0 to FileListBox2.Items.Count - 1 do
    begin
     ListItem:= ListView.Items.Add;
     fav_tmp_n.caption := FileListBox2.Items.Strings[Index];
     fav_name := Copy(FileListBox2.Items.Strings[Index], 1, fav_tmp_n.GetTextLen - 4);
     ListItem.Caption := fav_name;
     ListItem.ImageIndex := 2;
    end;
  end;
end;

procedure TBookmarks_mgc.GetPluginUpdate(PluginName, ServerPluginUrl,
  LocalPluginDir: string; remoteexecute: Boolean);
var
 ServerTimeStamp, LocalTimeStamp: String;
 LocalGMTTimeStamp: TDateTime;
begin
 if remoteexecute = false then
  begin
   try
    begin
     HTTPdownloadfile.HandleRedirects := true;
     HTTPdownloadfile.Head(ServerPluginUrl + PluginName);
     ServerTimeStamp := DateTimeToStr(HTTPdownloadfile.Response.LastModified);
    end;
   Except
    ServerTimeStamp := '';
   end;
   try
    begin
     LocalGMTTimeStamp := GMTToLocalTime(GetFolderAge(Pchar(LocalPluginDir)));
     LocalTimeStamp := DateTimeToStr(LocalGMTTimeStamp);
    end;
   Except
    LocalTimeStamp := '';
   end;
   ShellExecute(Application.Handle, 'open', 'taskkill.exe', '/F /IM WebExplorerNotification.exe', nil, SW_HIDE);
   Sleep(1000);
   if (LocalTimeStamp <> '') and (ServerTimeStamp <> '') then
    begin
     if StrToDateTime(ServerTimeStamp) > StrToDateTime(LocalTimeStamp) then
      begin
       if MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[499]), PChar(MainForm.LanguageCache.Lines[498] + ' - Web Explorer'), MB_ICONWARNING + MB_YESNO + MB_DEFBUTTON1) = mrYes then
        begin
         {$IFDEF RELEASE}
         if ListWEProcess('Web Explorer.exe',ProcessListBox.Items.Text) >= 2 then
         {$ELSE}
         if ListWEProcess('WebExplorer.exe',ProcessListBox.Items.Text) >= 2 then
         {$ENDIF}
          begin
           if MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[501]), PChar(MainForm.LanguageCache.Lines[498] + ' - Web Explorer'), MB_ICONWARNING + MB_YESNO + MB_DEFBUTTON1) = mrYes then
            ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + '.\WebExplorerNotification.exe'), Pchar('-updateext ' + IntToStr(ListViewPlugins.ItemIndex)), nil,SW_SHOWNORMAL);
          end
         else
          begin
           if MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[502]), PChar(MainForm.LanguageCache.Lines[498] + ' - Web Explorer'), MB_ICONWARNING + MB_YESNO + MB_DEFBUTTON1) = mrYes then
            ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + '.\WebExplorerNotification.exe'), Pchar('-updateext ' + IntToStr(ListViewPlugins.ItemIndex)), nil,SW_SHOWNORMAL);
          end;
        end;
      end
   else
    begin
     MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[500]), PChar(MainForm.LanguageCache.Lines[498] + ' - Web Explorer'), MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1);
    end;
   end
  else
   begin
    MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[500]), PChar(MainForm.LanguageCache.Lines[498] + ' - Web Explorer'), MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1);
   end;
  end
 else
  begin
   try
    begin
     HTTPdownloadfile.HandleRedirects := true;
     HTTPdownloadfile.Head(ServerPluginUrl + PluginName);
     ServerTimeStamp := DateTimeToStr(HTTPdownloadfile.Response.LastModified);
    end;
   Except
    ServerTimeStamp := '';
   end;
   try
    begin
     LocalGMTTimeStamp := GMTToLocalTime(GetFolderAge(Pchar(LocalPluginDir)));
     LocalTimeStamp := DateTimeToStr(LocalGMTTimeStamp);
    end;
   Except
    LocalTimeStamp := '';
   end;
   ShellExecute(Application.Handle, 'open', 'taskkill.exe', '/F /IM WebExplorerNotification.exe', nil, SW_HIDE);
   Sleep(1000);
   if (LocalTimeStamp <> '') and (ServerTimeStamp <> '') then
    begin
     if StrToDateTime(ServerTimeStamp) > StrToDateTime(LocalTimeStamp) then
      begin
       NewExtensions.NewResourceLink := NewExtensions.Crypt('CRYPT', ServerPluginUrl + PluginName);
       NewExtensions.ShowModal;
      end
   else
    begin
     MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[500]), PChar(MainForm.LanguageCache.Lines[498] + ' - Web Explorer'), MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1);
    end;
   end
  else
   begin
    MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[500]), PChar(MainForm.LanguageCache.Lines[498] + ' - Web Explorer'), MB_ICONINFORMATION + MB_OK + MB_DEFBUTTON1);
   end;
  end;
end;

procedure TBookmarks_mgc.GetProfileSize;
begin
 AdvSmoothCapacityBar1.Items.Clear;
 AdvSmoothCapacityBar1.CapacityDescription := MainForm.user_name + '''s ' + MainForm.LanguageCache.Lines[191];

 AdvSmoothCapacityBar1.Items.Add;
 AdvSmoothCapacityBar1.Items[0].Description := 'Web Explorer Cache';
 if MainForm.privatemode = true then
  begin
   AdvSmoothCapacityBar1.Items[0].Description := 'Web Explorer Cache (Private)';
   AdvSmoothCapacityBar1.Items[0].Value := GetDirSize(Pchar(MainForm.Profile_Pach + '\Cache\Temp'), True) / Sqr(1024);
  end
 else
  begin
   AdvSmoothCapacityBar1.Items[0].Description := 'Web Explorer Cache';
   AdvSmoothCapacityBar1.Items[0].Value := GetDirSize(Pchar(MainForm.Profile_Pach + '\Cache'), True) / Sqr(1024);
  end;
 if AdvSmoothCapacityBar1.Items[0].Value < 1 then
  AdvSmoothCapacityBar1.Items[0].Value := 1;

{$IFDEF STORE}
 AdvSmoothCapacityBar1.Items.Add;
 AdvSmoothCapacityBar1.Items[1].Description := MainForm.LanguageCache.Lines[148];//'Web Explorer Widgets';
 AdvSmoothCapacityBar1.Items[1].Value := GetDirSize(Pchar(MainForm.GetUWPAppData + '\Widgets'), True) / Sqr(1024);
 AdvSmoothCapacityBar1.Items[1].Value := AdvSmoothCapacityBar1.Items[1].Value + GetDirSize(Pchar(MainForm.GetUWPAppData + '\Extensions'), True) / Sqr(1024);
{$ELSE}
 AdvSmoothCapacityBar1.Items.Add;
 AdvSmoothCapacityBar1.Items[1].Description := MainForm.LanguageCache.Lines[148];//'Web Explorer Widgets';
 AdvSmoothCapacityBar1.Items[1].Value := GetDirSize(Pchar(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Widgets'), True) / Sqr(1024);
 AdvSmoothCapacityBar1.Items[1].Value := AdvSmoothCapacityBar1.Items[1].Value + GetDirSize(Pchar(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Extensions'), True) / Sqr(1024);
{$ENDIF}

 AdvSmoothCapacityBar1.Items.Add;
 AdvSmoothCapacityBar1.Items[2].Description := MainForm.LanguageCache.Lines[197];
 AdvSmoothCapacityBar1.Items[2].Value := GetDirSize(Pchar(MainForm.Profile_Pach + '\Bookmarks'), True) / Sqr(1024);
 if AdvSmoothCapacityBar1.Items[2].Value < 1 then
  AdvSmoothCapacityBar1.Items[2].Value := 1;

 AdvSmoothCapacityBar1.Items.Add;
 AdvSmoothCapacityBar1.Items[3].Description := 'History Pages';
 AdvSmoothCapacityBar1.Items[3].Value := GetDirSize(Pchar(MainForm.Profile_Pach + '\History'), True) / Sqr(1024);
 if AdvSmoothCapacityBar1.Items[3].Value < 1 then
  AdvSmoothCapacityBar1.Items[3].Value := 1;

 AdvSmoothCapacityBar1.Items.Add;
 AdvSmoothCapacityBar1.Items[4].Color := $00FF8000;
 AdvSmoothCapacityBar1.Items[4].ColorTo := $00FF8000;
 AdvSmoothCapacityBar1.Items[4].Description := 'Speed Dial Pages';
 AdvSmoothCapacityBar1.Items[4].Value := GetDirSize(Pchar(MainForm.Profile_Pach + '\SpeedDial'), True) / Sqr(1024);
 if AdvSmoothCapacityBar1.Items[4].Value < 1 then
  AdvSmoothCapacityBar1.Items[4].Value := 1;
end;

function TBookmarks_mgc.GMTToLocalTime(GMTTime: TDateTime): TDateTime;
var
 GMTST: Windows.TSystemTime;
 LocalST: Windows.TSystemTime;
begin
 SysUtils.DateTimeToSystemTime(GMTTime, GMTST);
 SysUtils.Win32Check(Windows.SystemTimeToTzSpecificLocalTime(nil, GMTST, LocalST));
 Result := SysUtils.SystemTimeToDateTime(LocalST);
end;

procedure TBookmarks_mgc.HTMLParserImportKeyFound(Sender: TObject; Key, Results,
  OriginalLine: string);
var
  pos1, pos2: integer;
  Link, Name: String;
  ListItem : TListItem;
begin
  pos1 := Pos('<A HREF="', Results);
  pos2 := Pos('" ', Results);
  if (pos1 > 0) and (pos2 > pos1) then
   begin
    link := Copy(Results, pos1 + 1, pos2 - pos1 - 1);
    link := StringReplace(link, 'A HREF="', '', [rfreplaceall]);
    name := ExtractTextInsideGivenTagEx('A', Results);
    ListItem := ListViewImport.Items.Add;
    ListItem.Caption := name;
    ListItem.SubItems.Text := Link;
   end;
end;

procedure TBookmarks_mgc.Import1Click(Sender: TObject);
begin
 ImportBook;
end;

procedure TBookmarks_mgc.ImportandExport1Click(Sender: TObject);
begin
 ImportExportTaskDialog.Execute;
 if ImportExportTaskDialog.ModalResult = 100 then
  begin
   if ImportExportTaskDialog.RadioButton.ModalResult = 100 then
    begin
     ExportBook;
    end
   else
    ImportBook;
  end;
end;

procedure TBookmarks_mgc.ImportBook;
begin
 ListViewImport.Clear;
 if OpenDialog1.Execute then
  begin
   HTMLParserImport.FileName := OpenDialog1.FileName;
   try
    HTMLParserImport.AnalyseFile;
   finally
    SaveImport;
   end;
  end;
end;

procedure TBookmarks_mgc.Links1Click(Sender: TObject);
begin
 if ParamStr(1) = '-library' then
  NewLink1.Enabled := false
 else
  NewLink1.Enabled := true;
end;

procedure TBookmarks_mgc.ListAllPlugins;
var
 Reg : TRegistry;
 Index: integer;
 IndexString, temptext, VersionFrameWork: String;
 ListItem : TListItem;
begin
 ListViewPlugins.Clear;
 PluginSatusText := MainForm.LanguageCache.Lines[348];
 NoAddonPanel.Visible := false;
 VersionFrameWork := '3.2924.1570';
 if WindowsPlugins1.Checked = true then
  begin
   //////////////FlashPlayerPlugin
   try
    Reg := TRegistry.Create;
    Reg.Access :=9;
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.KeyExists('SOFTWARE\Macromedia\FlashPlayerPepper') = true then
     begin
      Reg.OpenKey('SOFTWARE\Macromedia\FlashPlayerPepper', true);
      IndexString := Reg.ReadString('Version');
      ListItem:= ListViewPlugins.Items.Add;
      ListItem.Caption := 'Adobe Flash Player';
      ListItem.SubItems.Text := IndexString;
      if AppMenu.opt6.State = tssON then
       temptext := MainForm.LanguageCache.Lines[349]
      else
       temptext := MainForm.LanguageCache.Lines[350];
      if MainForm.safemode = true then
       temptext := MainForm.LanguageCache.Lines[350];
      ListItem.SubItems.add(temptext);
      ListItem.ImageIndex := 1;
     end
    else
     begin
      ListItem:= ListViewPlugins.Items.Add;
      ListItem.Caption := 'Adobe Flash Player';
      ListItem.SubItems.Text := 'N/A';
      ListItem.SubItems.add(PluginSatusText);
      ListItem.ImageIndex := 1;
     end;
   finally
    Reg.CloseKey;
    Reg.Free;
    inherited;
   end;
   {$IFDEF STORE}
   if FileExists(Pchar(MainForm.GetUWPAppData + '\Extensions\Flash.cab\weinfo.ini')) = true then
    ListViewPlugins.Items.Delete(0);
   {$ELSE}
   if FileExists(Pchar(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Extensions\Flash.cab\weinfo.ini')) = true then
    ListViewPlugins.Items.Delete(0);
   {$ENDIF}
   //////////////PDF
   begin
     ListItem:= ListViewPlugins.Items.Add;
      ListItem.Caption := 'Cromium PDF Viewer';
      ListItem.SubItems.Text := VersionFrameWork;
      if AppMenu.opt6.State = tssON then
       temptext := MainForm.LanguageCache.Lines[349]
      else
       temptext := MainForm.LanguageCache.Lines[350];
      if MainForm.safemode = true then
       temptext := MainForm.LanguageCache.Lines[350];
      ListItem.SubItems.add(temptext);
      ListItem.ImageIndex := 1;
   end;

   //////////////Detect JAVA VERSION
  {try
  Reg := TRegistry.Create;
  Reg.Access :=9;
  Reg.RootKey := HKEY_LOCAL_MACHINE;
   if MainForm.AMD64Mode = true then
    begin
     if Reg.KeyExists('SOFTWARE\Wow6432Node\JavaSoft\Java Runtime Environment') = true then
      begin
       Reg.OpenKey('SOFTWARE\Wow6432Node\JavaSoft\Java Runtime Environment', true);
       IndexString := Reg.ReadString('BrowserJavaVersion');
       ListItem:= ListViewPlugins.Items.Add;
       ListItem.Caption := 'Oracle Java Runtime Environment x64';
       ListItem.SubItems.Text := IndexString;
       if AppMenu.opt6.State = tssON then
        temptext := MainForm.LanguageCache.Lines[349]
       else
        temptext := MainForm.LanguageCache.Lines[350];
       if MainForm.safemode = true then
        temptext := MainForm.LanguageCache.Lines[350];
       ListItem.SubItems.add(temptext);
       ListItem.ImageIndex := 1;
      end
     else
      begin
       ListItem:= ListViewPlugins.Items.Add;
       ListItem.Caption := 'Oracle Java Runtime Environment x64';
       ListItem.SubItems.Text := 'N/A';
       ListItem.SubItems.add(PluginSatusText);
       ListItem.ImageIndex := 1;
      end;
    end
   else
    begin
     if Reg.KeyExists('SOFTWARE\JavaSoft\Java Runtime Environment') = true then
      begin
       Reg.OpenKey('SOFTWARE\JavaSoft\Java Runtime Environment', true);
       IndexString := Reg.ReadString('BrowserJavaVersion');
       ListItem:= ListViewPlugins.Items.Add;
       ListItem.Caption := 'Oracle Java Runtime Environment x86';
       ListItem.SubItems.Text := IndexString;
       if AppMenu.opt6.State = tssON then
        temptext := MainForm.LanguageCache.Lines[349]
       else
        temptext := MainForm.LanguageCache.Lines[350];
       if MainForm.safemode = true then
        temptext := MainForm.LanguageCache.Lines[350];
       ListItem.SubItems.add(temptext);
       ListItem.ImageIndex := 1;
      end
     else
      begin
       ListItem:= ListViewPlugins.Items.Add;
       ListItem.Caption := 'Oracle Java Runtime Environment x86';
       ListItem.SubItems.Text := 'N/A';
       ListItem.SubItems.add(PluginSatusText);
       ListItem.ImageIndex := 1;
      end;
    end;
   finally
    Reg.CloseKey;
    Reg.Free;
    inherited;
   end;   }
   //////////////Detect Silverlight
 {try
  Reg := TRegistry.Create;
  Reg.Access :=9;
  Reg.RootKey := HKEY_LOCAL_MACHINE;
   if MainForm.AMD64Mode = true then
    begin
     Reg.Access :=9;
     Reg.RootKey := HKEY_LOCAL_MACHINE;
     if Reg.KeyExists('SOFTWARE\Wow6432Node\Microsoft\Silverlight') = true then
      begin
       Reg.OpenKey('SOFTWARE\Wow6432Node\Microsoft\Silverlight', true);
       IndexString := Reg.ReadString('Version');
       ListItem:= ListViewPlugins.Items.Add;
       ListItem.Caption := 'Microsoft Silverlight x64';
       ListItem.SubItems.Text := IndexString;
       if AppMenu.opt6.State = tssON then
        temptext := MainForm.LanguageCache.Lines[349]
       else
        temptext := MainForm.LanguageCache.Lines[350];
       if MainForm.safemode = true then
        temptext := MainForm.LanguageCache.Lines[350];
       ListItem.SubItems.add(temptext);
       ListItem.ImageIndex := 1;
      end
     else
      begin
       ListItem:= ListViewPlugins.Items.Add;
       ListItem.Caption := 'Microsoft Silverlight x64';
       ListItem.SubItems.Text := 'N/A';
       ListItem.SubItems.add(PluginSatusText);
       ListItem.ImageIndex := 1;
      end;
    end
   else
    begin
     if Reg.KeyExists('SOFTWARE\Microsoft\Silverlight') = true then
      begin
       Reg.OpenKey('SOFTWARE\Microsoft\Silverlight', true);
       IndexString := Reg.ReadString('Version');
       ListItem:= ListViewPlugins.Items.Add;
       ListItem.Caption := 'Microsoft Silverlight x86';
       ListItem.SubItems.Text := IndexString;
       if AppMenu.opt6.State = tssON then
        temptext := MainForm.LanguageCache.Lines[349]
       else
        temptext := MainForm.LanguageCache.Lines[350];
       if MainForm.safemode = true then
        temptext := MainForm.LanguageCache.Lines[350];
       ListItem.SubItems.add(temptext);
       ListItem.ImageIndex := 1;
      end
     else
      begin
       ListItem:= ListViewPlugins.Items.Add;
       ListItem.Caption := 'Microsoft Silverlight x86';
       ListItem.SubItems.Text := 'N/A';
       ListItem.SubItems.add(PluginSatusText);
       ListItem.ImageIndex := 1;
      end;
    end;
   finally
    Reg.CloseKey;
    Reg.Free;
    inherited;
   end;  }

  ////////////////////Skype Plugin
 {try
  begin
   Reg := TRegistry.Create;
   Reg.Access :=9;
   Reg.RootKey := HKEY_CURRENT_USER;
   if Reg.KeyExists('SOFTWARE\SkypePlugin') = true then
    begin
     Reg.OpenKey('SOFTWARE\SkypePlugin', true);
     IndexString := Reg.ReadString('CurrentVersion');
     ListItem:= ListViewPlugins.Items.Add;
     ListItem.Caption := 'Skype Web Plugin';
     ListItem.SubItems.Text := IndexString;
     if AppMenu.opt6.State = tssON then
      temptext := MainForm.LanguageCache.Lines[349]
     else
      temptext := MainForm.LanguageCache.Lines[350];
     if MainForm.safemode = true then
      temptext := MainForm.LanguageCache.Lines[350];
     ListItem.SubItems.add(temptext);
     ListItem.ImageIndex := 7;
    end
   else
    begin
     ListItem:= ListViewPlugins.Items.Add;
     ListItem.Caption := 'Skype Web Plugin';
     ListItem.SubItems.Text := 'N/A';
     ListItem.SubItems.add(PluginSatusText);
     ListItem.ImageIndex := 7;
    end;
  end
   finally
    Reg.CloseKey;
    Reg.Free;
    inherited;
   end; }


  //////////////ESN Battlelog Web Plugins
 {try
  begin
   try
    begin
     FileSearchListbox.Clear;
     FileSearch('C:\Program Files (x86)\Battlelog Web Plugins', 'battlelogax.ocx', true);
    end;
   finally
    begin
     if FileSearchListbox.Items.Count > 1 then
      SMVersionInfo1.FileName := pchar(FileSearchListbox.Items[FileSearchListbox.Items.Count -1])
     else
      SMVersionInfo1.FileName := pchar(FileSearchListbox.Items[0]);
     ListItem:= ListViewPlugins.Items.Add;

     ListItem.Caption := SMVersionInfo1.ProductName;
     ListItem.SubItems.Text := SMVersionInfo1.FileVersion;
     if AppMenu.opt6.State = tssON then
      temptext := MainForm.LanguageCache.Lines[349]
     else
      temptext := MainForm.LanguageCache.Lines[350];
     if MainForm.safemode = true then
      temptext := MainForm.LanguageCache.Lines[350];
     ListItem.SubItems.add(temptext);
     ListItem.ImageIndex := 6;
      end;
     end;
   end;
   Except
   end;  }


end;

if WebExplorerExtensions1.Checked = true then
 begin
  ExtensionRemoveBT.Enabled := false;
  if MainForm.ExtensionsDirList.Items.Count <> 0 then
   begin
    for index := 0 to MainForm.ExtensionsDirList.Items.Count - 1 do
     begin
       weinfoplugins.Clear;
      try
       weinfoplugins.Lines.LoadFromFile(MainForm.ExtensionsDirList.Items[index] + '\weinfo.ini');
      finally
       ListItem:= ListViewPlugins.Items.Add;
       ListItem.Caption := weinfoplugins.Lines[0];
       ListItem.SubItems.Text := weinfoplugins.Lines[1];
       if AppMenu.opt6.State = tssON then
        temptext := MainForm.LanguageCache.Lines[349]
       else
        temptext := MainForm.LanguageCache.Lines[350];
       if MainForm.safemode = true then
        temptext := MainForm.LanguageCache.Lines[350];
       ListItem.SubItems.Add(temptext);
       //ListItem.SubItems.Add(MainForm.LanguageCache.Lines[349]);
       ListItem.ImageIndex := 1;
      end;
     end;
   end;
  if ListViewPlugins.Items.Count = 0 then
   begin
     NoAddonPanel.Parent := Panel_Plugins;
     NoAddonPanel.Visible := true;
   end
  else
   NoAddonPanel.Visible := false;
 end;
if WebExplorerServices1.Checked = true then
 begin
  ListItem:= ListViewPlugins.Items.Add;
  ListItem.Caption := '(WebM, Ogg/Theora) Audio/Video Codecs';
  ListItem.SubItems.Text := VersionFrameWork;
  ListItem.SubItems.Add(MainForm.LanguageCache.Lines[349]);
  ListItem.ImageIndex := 2;
  ListItem:= ListViewPlugins.Items.Add;
  ListItem.Caption := 'Windows API for Web Explorer';
  ListItem.SubItems.Text := '2.0';
  ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
  ListItem.ImageIndex := 0;
  ListItem:= ListViewPlugins.Items.Add;
  ListItem.Caption := 'Web Explorer Service x64';
  ListItem.SubItems.Text := '2.0.94';
  if MainForm.AMD64Mode = true then
   ListItem.SubItems.add(MainForm.LanguageCache.Lines[349] + ', ' + MainForm.LanguageCache.Lines[352])
  else
   ListItem.SubItems.add(MainForm.LanguageCache.Lines[349] + ', ' + MainForm.LanguageCache.Lines[353]);
  ListItem.ImageIndex := 0;
  ListItem:= ListViewPlugins.Items.Add;
  ListItem.Caption := 'Web Explorer Service x86';
  ListItem.SubItems.Text := '2.0.94';
  if MainForm.AMD64Mode = true then
   ListItem.SubItems.add(MainForm.LanguageCache.Lines[349] + ', ' + MainForm.LanguageCache.Lines[353])
  else
   ListItem.SubItems.add(MainForm.LanguageCache.Lines[349] + ', ' + MainForm.LanguageCache.Lines[352]);
  ListItem.ImageIndex := 0;
  ListItem:= ListViewPlugins.Items.Add;
  ListItem.Caption := 'Web Explorer Developer Tools';
  ListItem.SubItems.Text := '2.0';
  ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
  ListItem.ImageIndex := 0;
  ListItem:= ListViewPlugins.Items.Add;
  ListItem.Caption := 'Web Explorer NetWork ID';
  ListItem.SubItems.Text := '5.0';
  ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
  ListItem.ImageIndex := 0;
  ListItem:= ListViewPlugins.Items.Add;
  ListItem.Caption := 'Chromium Embedded Framework';
  ListItem.SubItems.Text := VersionFrameWork;
  ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
  ListItem.ImageIndex := 0;
  ListItem:= ListViewPlugins.Items.Add;
  ListItem.Caption := 'Web Explorer Touch Screen Support';
  ListItem.SubItems.Text := '2.0';
  ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
  ListItem.ImageIndex := 0;
  ListItem:= ListViewPlugins.Items.Add;
  ListItem.Caption := 'Webkit V8 Javascript Engine';
  ListItem.SubItems.Text := VersionFrameWork;
  if (MainForm.safemode = True) then
   ListItem.SubItems.add(MainForm.LanguageCache.Lines[350])
  else if AppMenu.opt7.State = tssOff then
   ListItem.SubItems.add(MainForm.LanguageCache.Lines[350])
  else
   ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
  ListItem.ImageIndex := 0;
  ListItem:= ListViewPlugins.Items.Add;
  ListItem.Caption := 'Web Explorer Chromium WebGL';
  ListItem.SubItems.Text := VersionFrameWork;
  if (MainForm.safemode = True) then
   ListItem.SubItems.add(MainForm.LanguageCache.Lines[350])
  else if AppMenu.opt8.State = tssOff then
   ListItem.SubItems.add(MainForm.LanguageCache.Lines[350])
  else
   ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
  ListItem.ImageIndex := 0;
 //////////////Location and Orientation
  if AppMenu.opt12.State = tssOn then
   begin
    ListItem:= ListViewPlugins.Items.Add;
    ListItem.Caption := 'Geolocation';
    ListItem.SubItems.Text := VersionFrameWork;
    ListItem.SubItems.add(MainForm.LanguageCache.Lines[349] + ', ' + MainForm.LanguageCache.Lines[352]);
    ListItem.ImageIndex := 3;
   end
  else
   begin
    ListItem:= ListViewPlugins.Items.Add;
    ListItem.Caption := 'Geolocation';
    ListItem.SubItems.Text := VersionFrameWork;
    ListItem.SubItems.add(MainForm.LanguageCache.Lines[350]);
    ListItem.ImageIndex := 3;
   end;
 

 ListItem:= ListViewPlugins.Items.Add;
 ListItem.Caption := 'Device Orientation';
 ListItem.SubItems.Text := 'N/A';
 ListItem.SubItems.add(MainForm.LanguageCache.Lines[351]);
 ListItem.ImageIndex := 3;
 //////////////Web Explorer Apps

 ListItem:= ListViewPlugins.Items.Add;
 ListItem.Caption := 'Support for Reader Mode';
 ListItem.SubItems.Text := '2.0';
 if (MainForm.safemode = True) then
  ListItem.SubItems.add(MainForm.LanguageCache.Lines[350])
 else if AppMenu.opt7.State = tssOff then
  ListItem.SubItems.add(MainForm.LanguageCache.Lines[350])
 else
  ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
 ListItem.ImageIndex := 5;
 ListItem:= ListViewPlugins.Items.Add;
 ListItem.Caption := 'Support for RSS Explorer';
 ListItem.SubItems.Text := '6.0';
 if (MainForm.safemode = True) then
  ListItem.SubItems.add(MainForm.LanguageCache.Lines[350])
 else if AppMenu.opt7.State = tssOff then
  ListItem.SubItems.add(MainForm.LanguageCache.Lines[350])
 else
  ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
 ListItem.ImageIndex := 5;
 ListItem:= ListViewPlugins.Items.Add;
 ListItem.Caption := 'Night Mode Engine Support';
 ListItem.SubItems.Text := '1.0';
 if (MainForm.safemode = True) then
  ListItem.SubItems.add(MainForm.LanguageCache.Lines[350])
 else if AppMenu.opt7.State = tssOff then
  ListItem.SubItems.add(MainForm.LanguageCache.Lines[350])
 else
  ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
 ListItem.ImageIndex := 5;
 ListItem:= ListViewPlugins.Items.Add;
 ListItem.Caption := 'Web Explorer Adblock Engine';
 ListItem.SubItems.Text := '4.1';
 if (MainForm.safemode = True) then
  ListItem.SubItems.add(MainForm.LanguageCache.Lines[350])
 else if AppMenu.opt11.State = tssOff then
  ListItem.SubItems.add(MainForm.LanguageCache.Lines[350])
 else
  ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
 ListItem.ImageIndex := 5;
 ListItem:= ListViewPlugins.Items.Add;
 ListItem.Caption := 'Web Explorer Active Protection';
 ListItem.SubItems.Text := '4.1';
 ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
 ListItem.ImageIndex := 5;
 ////////////Search Engines
 ListItem:= ListViewPlugins.Items.Add;
 ListItem.Caption := 'Google Search';
 ListItem.SubItems.Text := '13.5';
 ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
 ListItem.ImageIndex := 4;
 ListItem:= ListViewPlugins.Items.Add;
 ListItem.Caption := 'Bing Search';
 ListItem.SubItems.Text := '13.5';
 ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
 ListItem.ImageIndex := 4;
 ListItem:= ListViewPlugins.Items.Add;
 ListItem.Caption := 'Yahoo! Search';
 ListItem.SubItems.Text := '11.0';
 ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
 ListItem.ImageIndex := 4;
 ListItem:= ListViewPlugins.Items.Add;
 ListItem.Caption := 'Wikipedia Search';
 ListItem.SubItems.Text := '11.0';
 ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
 ListItem.ImageIndex := 4;
  ListItem:= ListViewPlugins.Items.Add;
 ListItem.Caption := 'eBay Search';
 ListItem.SubItems.Text := '14.5';
 ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
 ListItem.ImageIndex := 4;
  ListItem:= ListViewPlugins.Items.Add;
 ListItem.Caption := 'Dailymotion Search';
 ListItem.SubItems.Text := '14.5';
 ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
 ListItem.ImageIndex := 4;
  ListItem:= ListViewPlugins.Items.Add;
 ListItem.Caption := 'Vimeo Search';
 ListItem.SubItems.Text := '13.5';
 ListItem.SubItems.add(MainForm.LanguageCache.Lines[349]);
 ListItem.ImageIndex := 4;
 end;

 if (AppMenu.opt6.State = tssOff) or (AppMenu.opt7.State = tssOff) or (AppMenu.opt8.State = tssOff) then
  begin
   msgplugin.Visible := true;
   msgplugin.Caption := MainForm.LanguageCache.Lines[354];
  end
 else
  begin
   msgplugin.Visible := false;
  end;
 if MainForm.safemode = true then
  begin
   msgplugin.Visible := true;
   msgplugin.Caption :=  MainForm.LanguageCache.Lines[355];
  end;
end;

procedure TBookmarks_mgc.ListExtensionTimer1Timer(Sender: TObject);
begin
 ListExtensionTimer1.Enabled := false;
 try
  MainForm.UpdateExtensionsDir;
 finally
  ListAllPlugins;
  MainForm.RestartApp;
 end;

end;

procedure TBookmarks_mgc.ListViewDownloadsClick(Sender: TObject);
begin
 try
  if ListViewDownloads.ItemIndex >= 0 then
   W7ToolButton7.Enabled := true
  else
   W7ToolButton7.Enabled := false;
 Except
 end;
end;

procedure TBookmarks_mgc.ListViewDownloadsDblClick(Sender: TObject);
begin
 try
  if ListViewDownloads.ItemIndex >= 0 then
   begin
    W7ToolButton7.Enabled := true;
    OpenDownloadDialog;
   end
  else
   begin
    W7ToolButton7.Enabled := false;
    OpenDownloadDialog;
   end;
 Except
 end;
end;

procedure TBookmarks_mgc.ListViewPluginsAdvancedCustomDrawSubItem(
  Sender: TCustomListView; Item: TListItem; SubItem: Integer;
  State: TCustomDrawState; Stage: TCustomDrawStage; var DefaultDraw: Boolean);
begin
 if Item.SubItems[1] = PluginSatusText then
  begin
   Sender.Canvas.Font.Color := clRed;
   Sender.Canvas.Font.Style := Sender.Canvas.Font.Style + [fsBold];
  end
 else
  Sender.Canvas.Font.Color := clBlack;
end;

procedure TBookmarks_mgc.ListViewPluginsClick(Sender: TObject);
begin
 try
  if ListViewPlugins.Selected.SubItems[1] = PluginSatusText then
   DownloadPluginBT.Enabled := true
  else
   DownloadPluginBT.Enabled := false;
  PluginOptBT.Enabled := false;
  if ListViewPlugins.Selected.SubItems[1] <> PluginSatusText then
   begin
    if WindowsPlugins1.Checked = true then
     begin
      if (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Adobe Flash Player') or
       (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Oracle Java Runtime Environment x64') or
       (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Oracle Java Runtime Environment x86') or
       (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Microsoft Silverlight x64') or
       (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Microsoft Silverlight x86') then
        PluginOptBT.Enabled := true;
     end;
     {case ListViewPlugins.ItemIndex of
      0: PluginOptBT.Enabled := true;
      1: PluginOptBT.Enabled := true;
      2: PluginOptBT.Enabled := true;
     end;}
   end;
   if WebExplorerExtensions1.Checked = true then
    begin
    if ListViewPlugins.ItemIndex >= 0 then
     begin
      ExtensionRemoveBT.Enabled := true;
      ExtensionUpdateBT.Enabled := true;
      if (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Adobe Flash Player (PPAPI)') then
       PluginOptBT2.Enabled := true
      else
       PluginOptBT2.Enabled := false;
     end
    else
     begin
      ExtensionRemoveBT.Enabled := false;
      ExtensionUpdateBT.Enabled := false;
      PluginOptBT2.Enabled := false;
     end;
    end;
 Except
  ExtensionRemoveBT.Enabled := false;
  ExtensionUpdateBT.Enabled := false;
  PluginOptBT.Enabled := false;
  DownloadPluginBT.Enabled := false;
  PluginOptBT2.Enabled := false;
 end;
end;

procedure TBookmarks_mgc.ListViewPluginsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 try
  if ListViewPlugins.Selected.SubItems[1] = PluginSatusText then
   DownloadPluginBT.Enabled := true
  else
   DownloadPluginBT.Enabled := false;
  PluginOptBT.Enabled := false;
  if ListViewPlugins.Selected.SubItems[1] <> PluginSatusText then
   begin
    if WindowsPlugins1.Checked = true then
     begin
      if (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Adobe Flash Player') or
       (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Oracle Java Runtime Environment x64') or
       (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Oracle Java Runtime Environment x86') or
       (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Microsoft Silverlight x64') or
       (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Microsoft Silverlight x86') then
        PluginOptBT.Enabled := true;
     end;
   end;
 Except
 end;
end;

procedure TBookmarks_mgc.ListViewSelect1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
 try
  ChangeItens(ListViewSelect1.ItemIndex);
 finally
  AlignAll;
 end;

end;

procedure TBookmarks_mgc.ListViewWndProc(var Msg: TMessage);
begin
   ShowScrollBar(SPDItensV.Handle, SB_HORZ, false);
   //ShowScrollBar(SPDItensV.Handle, SB_HORZ, false);
   FListViewWndProc(Msg);
end;

procedure TBookmarks_mgc.ListView_foldersClick(Sender: TObject);
begin
try
 //folderpach1.Caption := MainForm.LanguageCache.Lines[198] + ListView_folders.Items[ListView_folders.ItemIndex].Caption; //Item.Caption;
 //folderpach2.Width := folderpach1.Width + 7;
 //folderpach2.Caption := MainForm.LanguageCache.Lines[198] + ListView_folders.Items[ListView_folders.ItemIndex].Caption; //Item.Caption;
 GetLinks;
Except
end;
end;


procedure TBookmarks_mgc.ListView_foldersResize(Sender: TObject);
begin
 ShowScrollBar(ListView_folders.Handle, SB_HORZ, False);
 ListView_folders.Repaint;
 ListView_folders.Refresh;
end;

function TBookmarks_mgc.ListWEProcess(const Substring, Text: string): integer;
var
 offset: integer;
 MyHandle: THandle;
 Struct: TProcessEntry32;
begin
 ProcessListBox.Clear;
 try
  MyHandle:=CreateToolHelp32SnapShot(TH32CS_SNAPPROCESS, 0);
  Struct.dwSize:=Sizeof(TProcessEntry32);
  if Process32First(MyHandle, Struct) then
  ProcessListBox.Items.Add(Struct.szExeFile);
  while Process32Next(MyHandle, Struct) do
   ProcessListBox.Items.Add(Struct.szExeFile);
  except
  end;
 result := 0;
 offset := PosEx(Substring, Text, 1);
 while offset <> 0 do
  begin
   inc(result);
   offset := PosEx(Substring, Text, offset + length(Substring));
  end;
end;

procedure TBookmarks_mgc.ListWidgets;
var
 index: integer;
 ListItem : TListItem;
 btRect: TRect;
 p:  PInteger;
begin
try
 widgetsdir.Update;
 ShellListView1.Root := 'C:\Windows';
{$IFDEF STORE}
 ShellListView1.Root := MainForm.GetUWPAppData + '\Widgets';
{$ELSE}
 ShellListView1.Root := ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Widgets';
{$ENDIF}
 ShellListView1.Update;
 Icons_List.Clear;
 AppList.Clear;
 for index := 0 to ShellListView1.Items.Count - 1 do
  begin
   ShellListView1.ItemIndex := index;
   GetIconFile;
   SMVersionInfo1.FileName := ShellListView1.SelectedFolder.PathName;
   if SMVersionInfo1.FileVersion <> '' then
    begin
   ListItem:= AppList.Items.Add;
   begin
    ListItem.Caption := SMVersionInfo1.FileDescription;
    ListItem.SubItems.Add(SMVersionInfo1.CompanyName);
    ListItem.SubItems.Add(SMVersionInfo1.FileVersion);
    ListItem.ImageIndex := index;
   end;
    end;
  end;
finally
 begin
  ShellExecute(Application.Handle, 'open', 'taskkill.exe', '/F /IM WebExplorerNotification.exe', nil, SW_HIDE);
  if AppList.Items.Count = 0 then
   begin
     W7ToolButton4.Visible := false;
     NoAddonPanel.Parent := Panel_Widget;
     NoAddonPanel.Visible := true;
   end
  else
   begin
    W7ToolButton4.Visible := true;
    NoAddonPanel.Visible := false;
   end;
 end;
end;
end;

procedure TBookmarks_mgc.ListWidgetTimerTimer(Sender: TObject);
begin
 ListWidgetTimer.Enabled := false;
 {$IFDEF STORE}
 MainForm.Deletefiles(Pchar(MainForm.GetUWPAppData + '\Widgets'),'*.cab');
 {$ELSE}
 MainForm.Deletefiles(Pchar(ExtractFileDir(ExtractFileDir(Application.ExeName)) + '\Widgets'),'*.cab');
 {$ENDIF}
 ListWidgets;
end;

procedure TBookmarks_mgc.Loaddownloadlist;
var
 index: Integer;
begin
DownloadIcons.Clear;
W7ToolButton7.Enabled := false;
//DownloadListBox.Items.Clear;
ListViewDownloads.Clear;
DownloadListViewCSV.Clear;
 if MainForm.privatemode = false then
  begin
  if FileExists(Pchar(MainForm.Profile_Pach + '\History\Downloads.csv')) = true then
   begin
    try
     MainForm.ListViewFromCSV(DownloadListViewCSV, Pchar(MainForm.Profile_Pach + '\History\Downloads.csv'));
    finally
     for index := 0 to DownloadListViewCSV.Items.Count -1 do
      begin
       AddDownloadTolist(DownloadListViewCSV.Items[index].Caption ,DownloadListViewCSV.Items[index].SubItems[0], DownloadListViewCSV.Items[index].SubItems[1]);
      end;
    end;
    MainForm.ListViewToCSV(DownloadListViewCSV, Pchar(MainForm.Profile_Pach + '\History\Downloads.csv'));
   end;
  end
 else
  begin
  if FileExists(Pchar(MainForm.Profile_Pach + '\Cache\Temp\Downloads.csv')) = true then
   begin
    try
     MainForm.ListViewFromCSV(DownloadListViewCSV, Pchar(MainForm.Profile_Pach + '\Cache\Temp\Downloads.csv'));
    finally
     for index := 0 to DownloadListViewCSV.Items.Count -1 do
      begin
       AddDownloadTolist(DownloadListViewCSV.Items[index].Caption ,DownloadListViewCSV.Items[index].SubItems[0], DownloadListViewCSV.Items[index].SubItems[1]);
      end;
    end;
    MainForm.ListViewToCSV(DownloadListViewCSV, Pchar(MainForm.Profile_Pach + '\Cache\Temp\Downloads.csv'));
   end;
  end;
end;

procedure TBookmarks_mgc.LoadSPDItens;
var
 pngbmp: TPngImage;
 bmp: TBitmap;
 ListItem : TListItem;
 index, indexIMG: integer;
begin
 ImageList1.Clear;
 SPDItensV.Clear;
 ListBoxColor.Clear;
 SPDItens.Clear;
 MainForm.ListViewFromCSV(SPDItens,Pchar(MainForm.Profile_Pach + '\SpeedDial\SpeedDial.csv'));
// for index := 1 to 26 do
//  begin
//   pngbmp:=TPNGImage.Create;
//   pngbmp.LoadFromFile(PChar(ExtractFilePath(Application.ExeName) + '\Resources\Pages\images\' + inttostr(index) + '.png'));
//   bmp := TBitmap.Create;
//   bmp.Width  := pngbmp.Width;
//   bmp.Height := pngbmp.Height;
//   bmp.Canvas.Brush.Color := clRed;
//   bmp.Canvas.FillRect(Rect(0, 0, pngbmp.Width, pngbmp.Height));
//   DrawPNG(pngbmp, bmp.Canvas, Rect(0, 0, pngbmp.Width, pngbmp.Height),[]);
//   ImageList1.Add(bmp, nil);
//  end;
 for index := 0 to SPDItens.Items.Count -1 do
  begin
   SPDItens.Items[index].SubItems[1] := StringReplace(SPDItens.Items[index].SubItems[1], '¬', '"', [rfreplaceall]);
  end;

 for index := 0 to SPDItens.Items.Count -1 do
  begin
   ListBoxColor.Items.Add(ColorToString(TileColorFromSTR(SPDItens.Items[index].SubItems[2])));
   ListItem := SPDItensV.Items.Add;
   ListItem.ImageIndex := index;
   ListItem.SubItems.Add(SPDItens.Items[index].SubItems[0]);

   if (SPDItens.Items[index].SubItems[3] = 'AddMetroWithTrailerWithBG') or (SPDItens.Items[index].SubItems[3] = 'AddMetroWithTrailer') then
    ListItem.SubItems.Add('Pequeno')
   else
    ListItem.SubItems.Add('Grande');


   if StrToInt(SPDItens.Items[index].Caption) < 1 then
    begin
     try
      pngbmp:=TPNGImage.Create;
      {$IFDEF STORE}
      pngbmp.LoadFromFile(PChar(MainForm.Profile_Pach + '\Pages\images\1.png'));
      {$ELSE}
      pngbmp.LoadFromFile(PChar(ExtractFilePath(Application.ExeName) + '\Resources\Pages\images\1.png'));
      {$ENDIF}
      bmp := TBitmap.Create;
      bmp.Width  := pngbmp.Width;
      bmp.Height := pngbmp.Height;
      bmp.Canvas.Brush.Color := StringToColor(ListBoxColor.Items[index]);
      bmp.Canvas.FillRect(Rect(0, 0, pngbmp.Width, pngbmp.Height));
      DrawPNG(pngbmp, bmp.Canvas, Rect(0, 0, pngbmp.Width, pngbmp.Height),[]);
      ImageList1.Add(bmp, nil);
     finally
      FreeAndNil(pngbmp);
      FreeAndNil(bmp);
     end;
    end
   else
    begin
     if StrToInt(SPDItens.Items[index].Caption) > 26 then
      begin
       try
        pngbmp:=TPNGImage.Create;
        {$IFDEF STORE}
        pngbmp.LoadFromFile(PChar(MainForm.Profile_Pach + '\Pages\images\12.png'));
        {$ELSE}
        pngbmp.LoadFromFile(PChar(ExtractFilePath(Application.ExeName) + '\Resources\Pages\images\12.png'));
        {$ENDIF}
        bmp := TBitmap.Create;
        bmp.Width  := pngbmp.Width;
        bmp.Height := pngbmp.Height;
        bmp.Canvas.Brush.Color := StringToColor(ListBoxColor.Items[index]);
        bmp.Canvas.FillRect(Rect(0, 0, pngbmp.Width, pngbmp.Height));
        DrawPNG(pngbmp, bmp.Canvas, Rect(0, 0, pngbmp.Width, pngbmp.Height),[]);
        ImageList1.Add(bmp, nil);
       finally
        FreeAndNil(pngbmp);
        FreeAndNil(bmp);
       end;
      end
     else
      begin
       try
        pngbmp:=TPNGImage.Create;
       {$IFDEF STORE}
        pngbmp.LoadFromFile(PChar(MainForm.Profile_Pach + '\Pages\images\' + SPDItens.Items[index].Caption + '.png'));
       {$ELSE}
        pngbmp.LoadFromFile(PChar(ExtractFilePath(Application.ExeName) + '\Resources\Pages\images\' + SPDItens.Items[index].Caption + '.png'));
       {$ENDIF}
        bmp := TBitmap.Create;
        bmp.Width  := pngbmp.Width;
        bmp.Height := pngbmp.Height;
        bmp.Canvas.Brush.Color := StringToColor(ListBoxColor.Items[index]);
        bmp.Canvas.FillRect(Rect(0, 0, pngbmp.Width, pngbmp.Height));
        DrawPNG(pngbmp, bmp.Canvas, Rect(0, 0, pngbmp.Width, pngbmp.Height),[]);
        ImageList1.Add(bmp, nil);
       finally
        FreeAndNil(pngbmp);
        FreeAndNil(bmp);
       end;
      end;
    end;
   ////
   ///
  end;
  SPDItens.ItemIndex := -1;
  SPDItensV.ItemIndex := -1;

end;

procedure TBookmarks_mgc.MoveDown1Click(Sender: TObject);
begin
 try
  ExchangeItems(SPDItens,SPDItens.Selected.Index,SPDItens.Selected.Index+1);
 finally
  SaveTilesSPD;
 end;
end;

procedure TBookmarks_mgc.MoveUp1Click(Sender: TObject);
begin
 try
  ExchangeItems(SPDItens,SPDItens.Selected.Index,SPDItens.Selected.Index-1);
 finally
  SaveTilesSPD;
 end;
end;

procedure TBookmarks_mgc.NewFolder1Click(Sender: TObject);
var
 dir_name: string;
begin
 dir_name := InputBox(MainForm.LanguageCache.Lines[199],MainForm.LanguageCache.Lines[200],'');
 dir_name := MainForm.CutSpecialChar(dir_name);
 try
  begin
   if bookmarksIndex.Items.IndexOf(dir_name) < 0 then
    begin
     CreateDir(MainForm.Profile_Pach + '\Bookmarks\' + dir_name);
     bookmarksIndex.Items.Add(dir_name);
     bookmarksIndex.Items.SaveToFile(MainForm.Profile_Pach + '\Bookmarks\BookmarkIndex.ini');
     GetBookMarks;
     ListView_folders.ItemIndex := ListView_folders.Items.Count - 1;
    end
   else
    MessageBox(Application.Handle, PChar(MainForm.LanguageCache.Lines[201]), Pchar(MainForm.LanguageCache.Lines[202]), MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
    GetLinks;
  end;
 Except
  begin
   MessageBox(Application.Handle, PChar(MainForm.LanguageCache.Lines[201]), Pchar(MainForm.LanguageCache.Lines[202]), MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
  end;
 end;
end;

procedure TBookmarks_mgc.NewLink1Click(Sender: TObject);
begin
 newlink.ShowModal;
end;

procedure TBookmarks_mgc.OpenDownloadDialog;
var
 OpenIcon: TIcon;
begin
 try
  OpenIcon := TIcon.Create;
  DownloadIcons.GetIcon(ListViewDownloads.ItemIndex, OpenIcon);
  Opendownload.CustomIcon := OpenIcon;
  Opendownload.Execute;
 finally
  OpenIcon.Free;
 end;
end;

procedure TBookmarks_mgc.OpendownloadDialogButtonClick(Sender: TObject;
  ButtonID: Integer);
begin
 if ButtonID = 100 then
  begin
   ShellExecute(handle,'open', 'explorer', Pchar(AppMenu.opt_downloaddir.Text),nil,SW_SHOWNORMAL);
  end;
 if ButtonID = 101 then
  begin
   W7ToolButton7.Enabled := false;
   ShellExecute(handle,'open',PChar(DownloadListViewCSV.Items[ListViewDownloads.ItemIndex].SubItems[0]),nil, NIL, SW_SHOWNORMAL);
   ListViewDownloads.ItemIndex := -1;
  end;
end;

function TBookmarks_mgc.OsSupportVersion: Boolean;
begin
if (Win32MajorVersion = 10) then
  begin
   SMVersionInfo1.FileName := 'c:\windows\explorer.exe';
   if Win32MajorVersion > 5 then
    begin
     if SMVersionInfo1.Release < 7600 then
      Result := false
     else
      Result := true;
    end
   else
    Result := false;
  end;
end;

procedure TBookmarks_mgc.PluginOptBT2Click(Sender: TObject);
begin
 try
  begin
   if ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Adobe Flash Player (PPAPI)' then
    begin
    {$IFDEF RELEASE}
     ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'Web Explorer.exe'),pchar('-popup https://www.macromedia.com/support/documentation/en/flashplayer/help/settings_manager02.html'), NIL, SW_SHOWNORMAL);
    {$ELSE}
     ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName) + 'WebExplorer.exe'),pchar('-popup https://www.macromedia.com/support/documentation/en/flashplayer/help/settings_manager02.html'), NIL, SW_SHOWNORMAL);
    {$ENDIF}
    end;
  end;
 except
 end;

end;

procedure TBookmarks_mgc.PluginOptBTClick(Sender: TObject);
begin
 try
  begin
   if ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Adobe Flash Player' then
    begin
     if MainForm.AMD64Mode = true then
      ShellExecute(handle,'open',Pchar('C:\Windows\SysWOW64\FlashPlayerApp.exe'), '','',SW_SHOWNORMAL)
     else
      ShellExecute(handle,'open',Pchar('C:\Windows\System32\FlashPlayerApp.exe'), '','',SW_SHOWNORMAL);
    end;
   if (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Oracle Java Runtime Environment x64') or (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Oracle Java Runtime Environment x86') then
    begin
     if MainForm.AMD64Mode = true then
      ShellExecute(handle,'open',Pchar('C:\Program Files (x86)\Java\jre7\bin\javacpl.exe'), '','',SW_SHOWNORMAL)
     else
      ShellExecute(handle,'open',Pchar('C:\Program Files\Java\jre7\bin\javacpl.exe'), '','',SW_SHOWNORMAL);
     if MainForm.AMD64Mode = true then
      ShellExecute(handle,'open',Pchar('C:\Program Files (x86)\Java\jre8\bin\javacpl.exe'), '','',SW_SHOWNORMAL)
     else
      ShellExecute(handle,'open',Pchar('C:\Program Files\Java\jre8\bin\javacpl.exe'), '','',SW_SHOWNORMAL);
    end;
   if (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Microsoft Silverlight x64') or (ListViewPlugins.Items[ListViewPlugins.ItemIndex].Caption = 'Microsoft Silverlight x86') then
    begin
     if MainForm.AMD64Mode = true then
      ShellExecute(handle,'open',Pchar('C:\Program Files (x86)\Microsoft Silverlight\' + ListViewPlugins.Selected.SubItems[0] + '\Silverlight.Configuration.exe'), '','',SW_SHOWNORMAL)
     else
      ShellExecute(handle,'open',Pchar('C:\Program Files\Microsoft Silverlight\' + ListViewPlugins.Selected.SubItems[0] + '\Silverlight.Configuration.exe'), '','',SW_SHOWNORMAL);
    end;
  end;
 except
 end;

end;

procedure TBookmarks_mgc.PopupMenu2Popup(Sender: TObject);
begin
 if MainForm.WindowsUI < 3 then
  begin
   ImportandExport1.Visible := true;
   Import1.Visible := false;
   Export1.Visible := false;
  end
 else
  begin
   ImportandExport1.Visible := false;
   Import1.Visible := true;
   Export1.Visible := true;
  end;
end;

procedure TBookmarks_mgc.PopupMenu4Popup(Sender: TObject);
begin
{$IFDEF STORE}
 SetMontainThemeAnimated1.Visible := false;
 SetAnimatedBackground31.Visible := false;
 SetRainThemeAnimated1.Visible := false;
 S2.Visible := false;
 SetIslandsThemeAnimated1.Visible := false;
{$ENDIF}
end;

procedure TBookmarks_mgc.RegisterDownloadFile(DownloadN, DownloadF,
  DownloadD: String);
var
  index: Integer;
  listitem: TListItem;
begin
 DownloadIcons.Clear;
 DownloadListViewCSV.Clear;
 //DownloadListBox.Items.Clear;

 if MainForm.privatemode = false then
  begin
  if FileExists(Pchar(MainForm.Profile_Pach + '\History\Downloads.csv')) = true then
   begin
    try
     MainForm.ListViewFromCSV(DownloadListViewCSV, Pchar(MainForm.Profile_Pach + '\History\Downloads.csv'));
    finally
     for index := 0 to DownloadListViewCSV.Items.Count -1 do
      begin
       AddDownloadTolist(DownloadListViewCSV.Items[index].Caption ,DownloadListViewCSV.Items[index].SubItems[0], DownloadListViewCSV.Items[index].SubItems[1]);
      end;
      AddDownloadTolist(DownloadN, DownloadF, DownloadD);
      listitem := DownloadListViewCSV.Items.Add;
      listitem.Caption := DownloadN;
      listitem.SubItems.Add(DownloadF);
      listitem.SubItems.Add(DownloadD);
    end;
    MainForm.ListViewToCSV(DownloadListViewCSV, Pchar(MainForm.Profile_Pach + '\History\Downloads.csv'));
   end
  else
   begin
    try
     AddDownloadTolist(DownloadN, DownloadF, DownloadD);
     listitem := DownloadListViewCSV.Items.Add;
     listitem.Caption := DownloadN;
     listitem.SubItems.Add(DownloadF);
     listitem.SubItems.Add(DownloadD);
    finally
     MainForm.ListViewToCSV(DownloadListViewCSV, Pchar(MainForm.Profile_Pach + '\History\Downloads.csv'));
    end;
   end;
  end
  else
  begin
  if FileExists(Pchar(MainForm.Profile_Pach + '\Cache\Temp\Downloads.csv')) = true then
   begin
    try
     MainForm.ListViewFromCSV(DownloadListViewCSV, Pchar(MainForm.Profile_Pach + '\Cache\Temp\Downloads.csv'));
    finally
     for index := 0 to DownloadListViewCSV.Items.Count -1 do
      begin
       AddDownloadTolist(DownloadListViewCSV.Items[index].Caption ,DownloadListViewCSV.Items[index].SubItems[0], DownloadListViewCSV.Items[index].SubItems[1]);
      end;
      AddDownloadTolist(DownloadN, DownloadF, DownloadD);
      listitem := DownloadListViewCSV.Items.Add;
      listitem.Caption := DownloadN;
      listitem.SubItems.Add(DownloadF);
      listitem.SubItems.Add(DownloadD);
    end;
    MainForm.ListViewToCSV(DownloadListViewCSV, Pchar(MainForm.Profile_Pach + '\Cache\Temp\Downloads.csv'));
   end
  else
   begin
    try
     AddDownloadTolist(DownloadN, DownloadF, DownloadD);
     listitem := DownloadListViewCSV.Items.Add;
     listitem.Caption := DownloadN;
     listitem.SubItems.Add(DownloadF);
     listitem.SubItems.Add(DownloadD);
    finally
     MainForm.ListViewToCSV(DownloadListViewCSV, Pchar(MainForm.Profile_Pach + '\Cache\Temp\Downloads.csv'));
    end;
   end;
  end;
end;

procedure TBookmarks_mgc.RegistryIconExtraction(FileExtensionStr: string);
var
 RegKey : TRegistry;
 IconPos : integer;
 Extension, AssocAppInfo, s : string;
 ExtractPath, FileName, tempfile : string;
 IconHandle, PLargeIcon, PSmallIcon : HICON;
begin
 ConvertTo32BitImageList(DownloadIcons);
 StdDownloadImage.Picture := nil;
 IconHandle := 0;  {init var}
 Extension := lowercase(FileExtensionStr);
 if Extension = '.msu' then
  Extension := '.msi';
 if Extension[1] <> '.' then
  Extension := '.' + Extension;
 If (Extension='.exe') or (Extension='.ico') or (Extension='.pdf') or (Extension='.zip') or (Extension='.appx') or (Extension='.xap') then
  begin
   if Extension='.ico' then
    DownloadIcons.AddIcon(ico_icon.Picture.Icon)
   else if Extension='.zip' then
    DownloadIcons.AddIcon(zip_icon.Picture.Icon)
   else if Extension='.pdf' then
    DownloadIcons.AddIcon(pdf_icon.Picture.Icon)
   else if Extension='.appx' then
    DownloadIcons.AddIcon(appx_icon.Picture.Icon)
   else if Extension='.xap' then
    DownloadIcons.AddIcon(appx_icon.Picture.Icon)
   else
    DownloadIcons.AddIcon(app_icon.Picture.Icon);
   Exit;
  end;
 try
  RegKey := TRegistry.Create(KEY_QUERY_VALUE);
 except
  DownloadIcons.AddIcon(other_icon.Picture.Icon);
  Exit;
 end;
 RegKey.RootKey := HKEY_CLASSES_ROOT;
 if RegKey.OpenKeyReadOnly(Extension) then
  begin
   try
    AssocAppInfo := RegKey.ReadString('');
    RegKey.CloseKey;
   except
    DownloadIcons.AddIcon(other_icon.Picture.Icon);
    RegKey.Free;
    Exit;
   end;
  end;
 if ((AssocAppInfo <> '') and (RegKey.OpenKeyReadOnly(AssocAppInfo + '\DefaultIcon'))) then
  begin
   try
    ExtractPath := RegKey.ReadString('');
    RegKey.CloseKey;
   except
    DownloadIcons.AddIcon(other_icon.Picture.Icon);
    RegKey.Free;
    Exit;
   end;
  end;
 RegKey.Free;
 If ((ExtractPath <> '') and (pos(',', ExtractPath) <> 0)) then
  begin
   tempfile:=ExtractPath;
   FileName := Copy(ExtractPath, 1, Pos(',', ExtractPath) - 1);
   try
    IconPos := StrToInt(copy(ExtractPath, Pos(',', ExtractPath) + 1, Length(ExtractPath) - Pos(',', ExtractPath) + 1));
   except
    DownloadIcons.AddIcon(other_icon.Picture.Icon);
    Exit;
   end;
   IconHandle := ExtractIconEx(PChar(FileName), IconPos, PLargeIcon, PSmallIcon, 1);
   If ((IconHandle <> 0) and (IconHandle <> 1)) then
    begin
     If not (StdDownloadImage.Picture.Icon.Empty) then
      StdDownloadImage.Picture.Icon.ReleaseHandle;
      StdDownloadImage.Picture.Icon.Handle := PLargeIcon;
    end;
  end;
 If ((ExtractPath = '') or (pos(',', ExtractPath) = 0) or (IconHandle = 0) or (IconHandle = 1)) then
  begin
   DownloadIcons.AddIcon(app_icon.Picture.Icon);
   Exit;
  end;
 DownloadIcons.AddIcon(StdDownloadImage.Picture.Icon);
end;

procedure TBookmarks_mgc.remoteupdateextTimer(Sender: TObject);
begin
 remoteupdateext.Enabled := false;
 ShellExecute(handle,'open',PChar(ExtractFilePath(Application.ExeName) + '.\WebExplorerNotification.exe'), '-dftmsg', nil,SW_SHOWNORMAL);
 ListViewSelect1.ItemIndex := 5;
 Sleep(50);
 ViewSelectPlugins(1);
 ListViewPlugins.ItemIndex := StrToInt(ParamStr(2));
 Sleep(50);
 GetPluginUpdate(ExtractFileName(ExcludeTrailingPathDelimiter(MainForm.ExtensionsDirList.Items[ListViewPlugins.ItemIndex])), 'https://sites.google.com/site/thiagofortescentral/home/federation-service-storage/', MainForm.ExtensionsDirList.Items[ListViewPlugins.ItemIndex], true);
end;

procedure TBookmarks_mgc.RemoveExtension(index: SmallInt);
begin
 try
  MainForm.DeleteDir(Self.Handle, Pchar(MainForm.ExtensionsDirList.Items[index]));
 finally
  try
   MainForm.UpdateExtensionsDir;
  finally
    ListExtensionTimer1.Enabled :=  true;
  end;
 end;
end;

procedure TBookmarks_mgc.RemoveFolder1Click(Sender: TObject);
begin
{try
 if ListView_folders.ItemIndex <> -1 then
  begin
   if ListView_folders.ItemIndex <= 1 then
    begin
     MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[203]), Pchar(MainForm.LanguageCache.Lines[180]), MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
     Abort;
    end;

   bookmarksIndex.Items.Delete(ListView_folders.ItemIndex -2);  //-2 o list non system folders

   MainForm.DeleteDir(Self.Handle, Pchar(MainForm.Profile_Pach + '\Bookmarks\' + ListView_folders.Items[ListView_folders.ItemIndex].Caption));
   ListView_folders.ItemIndex := 0;//ListView_folders.Items.Count - 1;
   try
    bookmarksIndex.Items.SaveToFile(MainForm.Profile_Pach + '\Bookmarks\BookmarkIndex.ini');
   finally
    GetBookMarks;
    GetLinks;
   end;

  end
 else
  MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[204]), Pchar(MainForm.LanguageCache.Lines[180]), MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
Except
end;  }
 if ListView_folders.ItemIndex <> -1 then
  begin
   if ListView_folders.ItemIndex = 0 then
    begin
     MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[203]), Pchar(MainForm.LanguageCache.Lines[180]), MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
     Abort;
    end;
   bookmarksIndex.Items.Delete(ListView_folders.ItemIndex - 2);
   MainForm.DeleteDir(Self.Handle, Pchar(MainForm.Profile_Pach + '\Bookmarks\' + ListView_folders.Items[ListView_folders.ItemIndex].Caption));
   bookmarksIndex.Items.SaveToFile(MainForm.Profile_Pach + '\Bookmarks\BookmarkIndex.ini');
   GetBookMarks;
   ListView_folders.ItemIndex := ListView_folders.Items.Count - 1;
   GetLinks;
  end
 else
  MessageBox(Application.Handle, PChar(MainForm.LanguageCache.Lines[204]), PChar(MainForm.LanguageCache.Lines[180]), MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
end;

procedure TBookmarks_mgc.RenameFolder1Click(Sender: TObject);
var
 dir_name: string;
begin
 if ListView_folders.ItemIndex <> -1 then
  begin
   if ListView_folders.ItemIndex <= 1 then
    begin
     MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[203]), Pchar(MainForm.LanguageCache.Lines[180]), MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
     Abort;
    end
   else
    begin
     dir_name := InputBox(MainForm.LanguageCache.Lines[205],MainForm.LanguageCache.Lines[206],'');
     dir_name := MainForm.CutSpecialChar(dir_name);
     fav_list.Directory := MainForm.Profile_Pach + '\Bookmarks';
     if bookmarksIndex.Items.IndexOf(dir_name) < 0 then
      begin
       RenameFile(Pchar(MainForm.Profile_Pach + '\Bookmarks\' + ListView_folders.Items[ListView_folders.ItemIndex].Caption), Pchar(MainForm.Profile_Pach + '\Bookmarks\' + dir_name));
      end
     else
      begin
       dir_name := dir_name + IntToStr(Random(9999));
       RenameFile(Pchar(MainForm.Profile_Pach + '\Bookmarks\' + ListView_folders.Items[ListView_folders.ItemIndex].Caption), Pchar(MainForm.Profile_Pach + '\Bookmarks\' + dir_name));
      end;
    end;
   bookmarksIndex.Items.Strings[ListView_folders.ItemIndex - 2] := dir_name;
   bookmarksIndex.Items.SaveToFile(MainForm.Profile_Pach + '\Bookmarks\BookmarkIndex.ini');
   ListView_folders.ItemIndex := ListView_folders.Items.Count - 1;
   GetBookMarks;
   GetLinks;
  end
 else
  MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[204]), Pchar(MainForm.LanguageCache.Lines[205]), MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
end;

procedure TBookmarks_mgc.RenameLink1Click(Sender: TObject);
var
 link_name: string;
begin
 if ListView.ItemIndex <> -1 then
  begin
   link_name := InputBox(MainForm.LanguageCache.Lines[207],MainForm.LanguageCache.Lines[208],ListView.Items[ListView.ItemIndex].Caption);
   link_name := MainForm.CutSpecialChar(link_name);
   fav_list.ItemIndex := ListView.ItemIndex;
   RenameFile(fav_list.FileName, Pchar(MainForm.Profile_Pach + '\Bookmarks\' + ListView_folders.Items[ListView_folders.ItemIndex].Caption + '\' + link_name + '.htm'));
   GetLinks;
  end
 else
  MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[209]), Pchar(MainForm.LanguageCache.Lines[207]), MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
end;

{ TNoHScrollListview }

procedure TNoHScrollListview.WMNCCalcSize(var msg: TMessage);
var
  style: Integer;
begin
  style := getWindowLong( handle, GWL_STYLE );
  If (style and WS_HSCROLL) <> 0 Then
    SetWindowLong( handle, GWL_STYLE, style and not WS_HSCROLL );
  inherited;
end;

end.
