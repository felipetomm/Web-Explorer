unit linkcenterform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, ExtCtrls, FileCtrl, Buttons, Menus,
  ImgList, AdvSmoothPanel, AdvOfficePager, AdvOfficePagerStylers, ShellCtrls,
  commctrl, AdvMetroButton, PngImageList, JvComponentBase, JvThreadTimer;

type
  MouseLLHookStruct2 = record
    pt          : TPoint;
    mouseData   : cardinal;
    flags       : cardinal;
    time        : cardinal;
    dwExtraInfo : cardinal;
  end;
  TLinkCenter = class(TForm)
    fav_tmp_n: TLabel;
    closing: TTimer;
    end_file: TMemo;
    bookmarksIndex: TListBox;
    fundo: TAdvSmoothPanel;
    AdvOfficePager1: TAdvOfficePager;
    TabSheet1: TAdvOfficePage;
    fav_list: TFileListBox;
    ListView_fav: TListView;
    TabSheet2: TAdvOfficePage;
    rss_url: TLabel;
    FileListBox2: TFileListBox;
    ListView_feeds: TListView;
    SearchEdit1: TButtonedEdit;
    TabSheet3: TAdvOfficePage;
    FileListBox1: TFileListBox;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    PanelCombo1: TPanel;
    PopupMenu1: TPopupMenu;
    RemoveLink1: TMenuItem;
    PopupMenu2: TPopupMenu;
    RemoveRSSLink1: TMenuItem;
    TreeViewHistory: TTreeView;
    FolderPages: TShellListView;
    NameURLSRC: TListBox;
    RssLinkFile: TMemo;
    we_fav_panel1: TPanel;
    ComboBoxEx1: TComboBoxEx;
    LabeltitleName1: TLabel;
    fav_sep1: TImage;
    panel_nav: TPanel;
    fav_sep2: TImage;
    back_favbt: TAdvMetroButton;
    Button1: TAdvMetroButton;
    Button2: TAdvMetroButton;
    labelpatch: TLabel;
    ListView_favFolder: TListView;
    labelpatchTimer: TTimer;
    PanelCombo2: TPanel;
    LabeltitleName2: TLabel;
    Image1: TImage;
    Panel3: TPanel;
    AdicionarRSSfeed3: TAdvMetroButton;
    rss_manage: TAdvMetroButton;
    PanelCombo3: TPanel;
    LabeltitleName3: TLabel;
    Image2: TImage;
    Panel4: TPanel;
    ClearBT: TAdvMetroButton;
    CacheBT: TAdvMetroButton;
    OnShowTimer: TJvThreadTimer;
    procedure ComboBoxEx1Change(Sender: TObject);
    procedure ListView_feedsDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListView_favKeyPress(Sender: TObject; var Key: Char);
    procedure ListView_favClick(Sender: TObject);
    procedure ListView_feedsKeyPress(Sender: TObject; var Key: Char);
    procedure Image6Click(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure win_fav_listDblClick(Sender: TObject);
    procedure closingTimer(Sender: TObject);
    procedure RemoveRSSLink1Click(Sender: TObject);
    procedure RemoveLink1Click(Sender: TObject);
    procedure SearchEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SearchEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvOfficePager1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rss_manageClick(Sender: TObject);
    procedure ClearBTClick(Sender: TObject);
    procedure back_favbtClick(Sender: TObject);
    procedure ListView_favFolderClick(Sender: TObject);
    procedure labelpatchTimerTimer(Sender: TObject);
    procedure AdicionarRSSfeed3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListView_feedsClick(Sender: TObject);
    procedure CacheBTClick(Sender: TObject);
    procedure TreeViewHistoryClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure JvThreadTimer1Timer(Sender: TObject);
  private
    procedure LoadIMGDLL;
  public
    function GetItemByName(Wnd: hWnd; hItem: HTREEITEM; szItemName: LPCTSTR): HTREEITEM;
    procedure GetBookMarks(cmd: Shortint);
    procedure GetHistotyPagesList;
    procedure GetLanguage;
    procedure viewfavfolder(mode: Boolean);
    var
     AddBtClicked: Boolean;
  end;
  function LowLevelMouseHookProc2
  (nCode, wParam, lParam : integer) : integer; stdcall;

var
  LinkCenter: TLinkCenter;
  name_relink: string;
  LastFavFolder: Integer;
  mHook2: cardinal;
  AddBtClicked: Boolean;

implementation

uses AppMenuForm, UnitMainForm;

{$R *.dfm}

function LowLevelMouseHookProc2(nCode, wParam,
  lParam: integer): integer;
var
  info2: ^MouseLLHookStruct2 absolute lParam;
begin
  result := CallNextHookEx(mHook2, nCode, wParam, lParam);
  with info2^ do
   begin
    case wParam of
      wm_lbuttondown: begin
                         if ((MainForm.LinkCenterPanel.Visible) and (not PtInRect(MainForm.LinkCenterPanel.ClientRect, MainForm.LinkCenterPanel.ScreenToClient(pt)))) then
                          begin
                           MainForm.ShowLinkHub(false);
                          end;
                       end;
      wm_mbuttondown: begin
                         if ((MainForm.LinkCenterPanel.Visible) and (not PtInRect(MainForm.LinkCenterPanel.ClientRect, MainForm.LinkCenterPanel.ScreenToClient(pt)))) then
                          begin
                           MainForm.ShowLinkHub(false);
                          end;
                       end;
      wm_rbuttondown: begin
                         if ((MainForm.LinkCenterPanel.Visible) and (not PtInRect(MainForm.LinkCenterPanel.ClientRect, MainForm.LinkCenterPanel.ScreenToClient(pt)))) then
                          begin
                           MainForm.ShowLinkHub(false);
                          end;
                       end;
      {wm_mousewheel: begin
                        if smallInt(mouseData shr 16) > 0 then
                          Form1.Memo1.Lines.Append('scrolled wheel (up)')
                        else
                          Form1.Memo1.Lines.Append('scrolled wheel (down)');
                       end;}
    end;
   end;
end;

procedure TLinkCenter.AdicionarRSSfeed3Click(Sender: TObject);
begin
 MainForm.ShowLinkHub(false);
 AddBtClicked := true;
 MainForm.AddtoBookmarks1.Click;
end;

procedure TLinkCenter.AdvOfficePager1Change(Sender: TObject);
begin
if AdvOfficePager1.ActivePageIndex <> 2 then
 SearchEdit1.TextHint := MainForm.LanguageCache.Lines[221]
else
 begin
  if TreeViewHistory.Items.Count < 1 then
   begin
    Application.ProcessMessages;
    GetHistotyPagesList;
   end;
  SearchEdit1.TextHint := MainForm.LanguageCache.Lines[222];
 end;
end;

procedure TLinkCenter.back_favbtClick(Sender: TObject);
begin
 viewfavfolder(true);
end;

procedure TLinkCenter.Button1Click(Sender: TObject);
begin
 MainForm.ShowLinkHub(false);
 AddBtClicked := true;
 MainForm.OpenForm('AddNewLink', '', '', True, 0, true);
end;

procedure TLinkCenter.Button2Click(Sender: TObject);
begin
 MainForm.ShowLinkHub(false);
 MainForm.OpenForm('UserLibrary', '', '', False, 1, true);
end;

procedure TLinkCenter.ClearBTClick(Sender: TObject);
begin
 MainForm.ShowLinkHub(false);
 //$@DCEF4
 {MainForm.show_bookmarks.Execute;
 MainForm.ClearOnlyHis;}
end;

procedure TLinkCenter.closingTimer(Sender: TObject);
begin
 //$@DCEF4
 //MainForm.show_bookmarks.Execute;
 closing.Enabled := false;
end;

procedure TLinkCenter.ComboBoxEx1Change(Sender: TObject);
begin
 LastFavFolder := ComboBoxEx1.ItemIndex;
 GetBookMarks(2);
 we_fav_panel1.Visible := true;
 fav_list.Visible := true;
 viewfavfolder(false);
 //PanelCombo.Top := 400;
end;

procedure TLinkCenter.FormActivate(Sender: TObject);
begin
 if AdvOfficePager1.ActivePageIndex = 0 then
  GetBookMarks(1);
 if AdvOfficePager1.ActivePageIndex = 1 then
  GetBookMarks(2);
 if (AdvOfficePager1.ActivePageIndex = 2) and (MainForm.privatemode = false) then
  GetHistotyPagesList;
end;

procedure TLinkCenter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 TabSheet1.Enabled := true;
 TabSheet3.Enabled := true;
 AdicionarRSSfeed3.Enabled := true;
 SearchEdit1.Clear;
 if AddBtClicked then
  MainForm.RefreshForNewLinkSaved := true
 else
  MainForm.RefreshForNewLinkSaved := false;
end;

procedure TLinkCenter.FormCreate(Sender: TObject);
begin
 LoadIMGDLL;
 LastFavFolder := 0;
 //MainForm.RefreshForNewLinkSaved := true;
 if MainForm.privatemode = true then
  Panel4.Visible := false;
end;


procedure TLinkCenter.FormDestroy(Sender: TObject);
begin
 UnhookWindowsHookEx(mHook);
end;

procedure TLinkCenter.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #27 then
  MainForm.ShowLinkHub(false);
end;

procedure TLinkCenter.FormShow(Sender: TObject);
const
  WH_MOUSE_LL = 14;
begin
 mHook2 := SetWindowsHookEx(WH_MOUSE_LL, @LowLevelMouseHookProc2, hInstance, 0);
 AddBtClicked := false;
 GetLanguage;
 OnShowTimer.Enabled := true;
end;

procedure TLinkCenter.GetBookMarks(cmd: Shortint);
var
 ListItem, ListItem2 : TListItem;
 index: Integer;
 fav_name: string;
begin
 MainForm.RefreshForNewLinkSaved := false;
 if cmd = 1 then
  begin
   bookmarksIndex.Clear;
   bookmarksIndex.Items.LoadFromFile(MainForm.Profile_Pach + '\Bookmarks\BookmarkIndex.ini');

   ComboBoxEx1.ItemsEx.Clear;
   ComboBoxEx1.ItemsEx.AddItem(MainForm.LanguageCache.Lines[195], 6, 6, -1, -1, nil);
   for index := 0 to bookmarksIndex.Items.Count - 1 do
    begin
     ComboBoxEx1.ItemsEx.AddItem(bookmarksIndex.Items.Strings[index], 6, 6, -1, -1, nil);
    end;
   ComboBoxEx1.ItemIndex := 0;
   ListView_favFolder.Clear;
   ListItem := ListView_favFolder.Items.Add;
   ListItem.Caption := MainForm.LanguageCache.Lines[195];
   ListItem.ImageIndex := 0;
   for index := 0 to bookmarksIndex.Items.Count - 1 do
    begin
     ListItem := ListView_favFolder.Items.Add;
     ListItem.Caption := bookmarksIndex.Items.Strings[index];
     ListItem.ImageIndex := 0;
    end;
   end;
 if cmd = 2 then
  begin
   if ComboBoxEx1.ItemIndex = 0 then
    fav_list.Directory := MainForm.Profile_Pach + '\Bookmarks\';
   if ComboBoxEx1.ItemIndex > 0 then
    fav_list.Directory := MainForm.Profile_Pach + '\Bookmarks\' + ComboBoxEx1.ItemsEx[ComboBoxEx1.ItemIndex].Caption;
   if ListView_favFolder.Visible = true then
    labelpatch.Caption := MainForm.LanguageCache.Lines[187]
   else
    labelpatch.Caption := LabeltitleName1.Caption + ' - ' + ComboBoxEx1.ItemsEx[ComboBoxEx1.ItemIndex].Caption;

   FileListBox2.Directory := MainForm.Profile_Pach + '\Bookmarks\RSS Feeds';
   ListView_fav.Clear;
   for Index := 0 to fav_list.Items.Count - 1 do
    begin
     ListItem:= ListView_fav.Items.Add;
     fav_tmp_n.caption := fav_list.Items.Strings[Index];
     fav_name := Copy(fav_list.Items.Strings[Index], 1, fav_tmp_n.GetTextLen - 4);
     ListItem.Caption := fav_name;
     ListItem.ImageIndex := 1;
    end;
   ListView_feeds.Clear;
   for index := 0 to FileListBox2.Items.Count - 1 do
    begin
     ListItem:= ListView_feeds.Items.Add;
     fav_tmp_n.caption := FileListBox2.Items.Strings[Index];
     fav_name := Copy(FileListBox2.Items.Strings[Index], 1, fav_tmp_n.GetTextLen - 4);
     ListItem.Caption := fav_name;
     ListItem.ImageIndex := 2;
    end;
  end;
end;

procedure TLinkCenter.GetHistotyPagesList;
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

function TLinkCenter.GetItemByName(Wnd: hWnd; hItem: HTREEITEM;
  szItemName: LPCTSTR): HTREEITEM;
const
 MAXTEXTLEN=50;
var
  szBuffer: array [0..MAXTEXTLEN+1] of char;
  item : TTVItem;
  hItemFound, hItemChild : HTREEITEM;
begin
    // If hItem is NULL, start search from root item.
    if (hItem = nil) then
        hItem := HTREEITEM(SendMessage(Wnd, TVM_GETNEXTITEM, TVGN_ROOT, 0));
    while (hItem <> nil) do
    begin
        item.hItem := hItem;
        item.mask := TVIF_TEXT OR TVIF_CHILDREN;
        item.pszText := szBuffer;
        item.cchTextMax := MAXTEXTLEN;
        SendMessage(Wnd, TVM_GETITEM, 0, longint(@item));
        // Did we find it?
        if (lstrcmp(szBuffer, szItemName) = 0) then
          begin
             Result := hItem;
             Exit;
          end;
        // Check whether we have child items.
        if (item.cChildren > 0) then
        begin
            // Recursively traverse child items.
            hItemChild := HTREEITEM(SendMessage(Wnd, TVM_GETNEXTITEM,TVGN_CHILD, longint(hItem)));
            hItemFound := GetItemByName(Wnd, hItemChild, szItemName);
            // Did we find it?
            if (hItemFound <> nil) then
             begin
                Result :=  hItemFound;
                Exit;
             end;
        end;
        // Go to next sibling item.
        hItem := HTREEITEM(SendMessage(Wnd, TVM_GETNEXTITEM,TVGN_NEXT, LPARAM(hItem)));
    end;
    // Not found.
    Result := nil;
end;

procedure TLinkCenter.GetLanguage;
begin
 labelpatch.Caption := MainForm.LanguageCache.Lines[212] + ' - ' + MainForm.LanguageCache.Lines[195];
 LabeltitleName1.Caption := MainForm.LanguageCache.Lines[212];
 LabeltitleName2.Caption := MainForm.LanguageCache.Lines[213];
 LabeltitleName3.Caption := MainForm.LanguageCache.Lines[214];
 Button1.hint := MainForm.LanguageCache.Lines[215];
 Button2.hint := MainForm.LanguageCache.Lines[35];
 AdicionarRSSfeed3.hint := MainForm.LanguageCache.Lines[216];
 rss_manage.hint := MainForm.LanguageCache.Lines[35];
 ClearBT.hint := MainForm.LanguageCache.Lines[217];
 CacheBT.hint := MainForm.LanguageCache.Lines[218];
 RemoveLink1.Caption := MainForm.LanguageCache.Lines[219];
 RemoveRSSLink1.Caption := MainForm.LanguageCache.Lines[220];
end;

procedure TLinkCenter.Image6Click(Sender: TObject);
begin
 MainForm.ShowLinkHub(false);
end;

procedure TLinkCenter.JvThreadTimer1Timer(Sender: TObject);
begin
  OnShowTimer.Enabled := false;
  if MainForm.RefreshForNewLinkSaved = true then
   begin
    FileListBox2.Update;
    fav_list.Update;
    GetBookMarks(1);
    GetBookMarks(2);
    try
     begin
      ComboBoxEx1.ItemIndex := LastFavFolder;
      GetBookMarks(2);
      we_fav_panel1.Visible := true;
      fav_list.Visible := true;
     end;
    Except
     ComboBoxEx1.ItemIndex := 0;
    end;
   end;
  if MainForm.privatemode = false then
   begin
    if AdvOfficePager1.ActivePageIndex = 2 then
     begin
      Application.ProcessMessages;
      GetHistotyPagesList;
     end;
   end;
  if TabSheet1.Visible = true then
   ListView_fav.SetFocus;
  if TabSheet2.Visible = true then
   ListView_feeds.SetFocus;
  fav_list.Visible := true;
 labelpatchTimer.Enabled := true;
end;

procedure TLinkCenter.labelpatchTimerTimer(Sender: TObject);
begin
 try
  begin
   if ListView_favFolder.Visible = false then
    labelpatch.Caption := LabeltitleName1.Caption + ' - ' + ComboBoxEx1.ItemsEx[ComboBoxEx1.ItemIndex].Caption
   else
    labelpatch.Caption := MainForm.LanguageCache.Lines[187];
   labelpatchTimer.Enabled := false;
  end;
 Except

 end;
 
end;

procedure TLinkCenter.ListView_favClick(Sender: TObject);
begin
try
 begin
  fav_list.ItemIndex := ListView_fav.ItemIndex;
  end_file.Lines.LoadFromFile(fav_list.FileName);
  if Copy(end_file.Text, end_file.GetTextLen, end_file.GetTextLen - 45) = '>' then
   MainForm.OpenAddressFromLink(Copy(end_file.Text, 44, end_file.GetTextLen - 45))
  else
   MainForm.OpenAddressFromLink(Copy(end_file.Text, 44, end_file.GetTextLen - 47));
  MainForm.ShowLinkHub(false);
 end;
Except

end;
end;

procedure TLinkCenter.ListView_favFolderClick(Sender: TObject);
begin
 try
  ComboBoxEx1.ItemIndex := ListView_favFolder.ItemIndex;
   LastFavFolder := ComboBoxEx1.ItemIndex;
   GetBookMarks(2);
   fav_list.Visible := true;
   viewfavfolder(false);
 Except
 end;
end;

procedure TLinkCenter.ListView_favKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   Key := #0;
   fav_list.ItemIndex := ListView_fav.ItemIndex;
   MainForm.OpenAddressFromLink(fav_list.FileName);
  end;
end;

procedure TLinkCenter.ListView_feedsClick(Sender: TObject);
begin
try
 begin
  FileListBox2.ItemIndex := ListView_feeds.ItemIndex;
  RssLinkFile.Clear;
  RssLinkFile.Lines.LoadFromFile(FileListBox2.FileName);
  MainForm.OpenAddressFromLink('http://www.webexplorerbrasil.com/FederationServices/RSSExplorer/rss2html.php?XMLFILE=' + RssLinkFile.Lines[0]);
  MainForm.ShowLinkHub(false);
 end;
Except

end;

{try
 begin
  FileListBox2.ItemIndex := ListView_feeds.ItemIndex;
  //MainForm.RSS_open.Lines.LoadFromFile(FileListBox2.FileName);
  //MainForm.RSS_XML.FileName := MainForm.RSS_open.text;
  MainForm.show_bookmarks.Execute;
  //MainForm.RSS_EXPLORER(0,1);
  //MainForm.LoadRSSTimer.Enabled := true;
 end;
Except

end;}
end;

procedure TLinkCenter.ListView_feedsDblClick(Sender: TObject);
begin
 try

 Except

 end;
end;

procedure TLinkCenter.ListView_feedsKeyPress(Sender: TObject; var Key: Char);
begin
{if Key = #13 then
 begin
   Key := #0;
  try
 begin
  FileListBox2.ItemIndex := ListView_feeds.ItemIndex;
  MainForm.RSS_open.Lines.LoadFromFile(FileListBox2.FileName);
  MainForm.XMLDoc.FileName := MainForm.RSS_open.text;
  MainForm.RSS_to_Open := ListView_feeds.Selected.Caption;
  MainForm.show_bookmarks.Execute;
  MainForm.RSS_EXPLORER(0,1);
 end;
Except

end;
 end;
       }
end;

procedure TLinkCenter.LoadIMGDLL;
begin

end;

procedure TLinkCenter.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if TabSheet1.Visible = true then
   ListView_fav.SetFocus;
  if TabSheet2.Visible = true then
   ListView_feeds.SetFocus;
end;

procedure TLinkCenter.RemoveLink1Click(Sender: TObject);
begin
 try
  begin
   fav_list.ItemIndex := ListView_fav.ItemIndex;
   name_relink := MainForm.LanguageCache.Lines[219] + ': '+ fav_list.Items.Strings[fav_list.Itemindex] +' ' + MainForm.LanguageCache.Lines[223];
   if MessageBox(Application.Handle, PChar(name_relink), Pchar(MainForm.LanguageCache.Lines[185]), MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = ID_YES then
    begin
     DeleteFile(fav_list.FileName);
     fav_list.Update;
     GetBookMarks(2);
    end;
   end;
 Except
  begin
   MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[224]), Pchar(MainForm.LanguageCache.Lines[185]), MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
  end;
 end;
end;

procedure TLinkCenter.RemoveRSSLink1Click(Sender: TObject);
begin
 try
  begin
   FileListBox2.ItemIndex := ListView_feeds.ItemIndex;
   name_relink := MainForm.LanguageCache.Lines[220] + ': '+ filelistbox2.Items.Strings[ListView_feeds.ItemIndex] +' ' + MainForm.LanguageCache.Lines[225];
   if MessageBox(Application.Handle, PChar(name_relink), Pchar(MainForm.LanguageCache.Lines[220]), MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = ID_YES then
    begin
     DeleteFile(filelistbox2.FileName);
     filelistbox2.Update;
     GetBookMarks(2);
    end;
  end;
 Except
  begin
   MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[224]), Pchar(MainForm.LanguageCache.Lines[220]), MB_ICONWARNING + MB_OK + MB_DEFBUTTON1);
  end;
 end;
end;

procedure TLinkCenter.rss_manageClick(Sender: TObject);
begin
 MainForm.ShowLinkHub(false);
 MainForm.OpenForm('UserLibrary', '', '', False, 1, true);
end;

procedure TLinkCenter.SearchEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if AdvOfficePager1.ActivePageIndex = 0 then
 begin
 if Key = VK_UP then
  begin
   if ListView_fav.ItemIndex = 0 then
    begin
     ListView_fav.ItemIndex := ListView_fav.Items.Count - 1;
     fav_list.ItemIndex := ListView_fav.ItemIndex;
    end
   else
    begin
     ListView_fav.ItemIndex := ListView_fav.ItemIndex - 1;
     fav_list.ItemIndex := ListView_fav.ItemIndex;
    end;
   SearchEdit1.Text := ListView_fav.Items[ListView_fav.ItemIndex].Caption;
  end;
 if Key = VK_DOWN then
  begin
   if ListView_fav.ItemIndex = ListView_fav.Items.Count - 1 then
    begin
     ListView_fav.ItemIndex := 0;
     fav_list.ItemIndex := ListView_fav.ItemIndex;
    end
   else
    begin
     ListView_fav.ItemIndex := ListView_fav.ItemIndex + 1;
     fav_list.ItemIndex := ListView_fav.ItemIndex;
    end;
   SearchEdit1.Text := ListView_fav.Items[ListView_fav.ItemIndex].Caption;
  end;
 end;
if AdvOfficePager1.ActivePageIndex = 1 then
 begin
 if Key = VK_UP then
  begin
   if ListView_feeds.ItemIndex = 0 then
    begin
     ListView_feeds.ItemIndex := ListView_feeds.Items.Count - 1;
     FileListBox2.ItemIndex := ListView_feeds.ItemIndex;
    end
   else
    begin
     ListView_feeds.ItemIndex := ListView_feeds.ItemIndex - 1;
     FileListBox2.ItemIndex := ListView_feeds.ItemIndex;
    end;
   SearchEdit1.Text := ListView_feeds.Items[ListView_feeds.ItemIndex].Caption;
  end;
 if Key = VK_DOWN then
  begin
   if ListView_feeds.ItemIndex = ListView_feeds.Items.Count - 1 then
    begin
     ListView_feeds.ItemIndex := 0;
     FileListBox2.ItemIndex := ListView_feeds.ItemIndex;
    end
   else
    begin
     ListView_feeds.ItemIndex := ListView_feeds.ItemIndex + 1;
     FileListBox2.ItemIndex := ListView_feeds.ItemIndex;
    end;
   SearchEdit1.Text := ListView_feeds.Items[ListView_feeds.ItemIndex].Caption;
  end;
 end;

end;

procedure TLinkCenter.SearchEdit1KeyPress(Sender: TObject; var Key: Char);
var
  tStr: String;
  tSrch: String;
  i: Integer;
  tn: TTreeNode;
  hItem: HTREEITEM;
begin
 tSrch:= SearchEdit1.Text;
 if AdvOfficePager1.ActivePageIndex = 0 then
  begin
   for i := ListView_fav.Items.Count - 1 downto 0 do
    begin
     tStr:=ListView_fav.Items[i].Caption;
     if Pos(tSrch,tStr) > 0 then
      ListView_fav.ItemIndex := i;
    end;
   if Key = #13 then
    begin
     Key := #0;
     fav_list.ItemIndex := ListView_fav.ItemIndex;
     MainForm.OpenAddressFromLink(fav_list.FileName);
    end;
   if Key = #27 then
    begin
     Key := #0;
     SearchEdit1.Clear;
    end;
  end;
 if AdvOfficePager1.ActivePageIndex = 1 then
  begin
   for i := ListView_feeds.Items.Count - 1 downto 0 do
    begin
     tStr:=ListView_feeds.Items[i].Caption;
     if Pos(tSrch,tStr) > 0 then
      ListView_feeds.ItemIndex := i;
    end;
   if Key = #13 then
    begin
     FileListBox2.ItemIndex := ListView_feeds.ItemIndex;
    end;
   if Key = #27 then
    begin
     Key := #0;
     SearchEdit1.Clear;
    end;
  end;
 if AdvOfficePager1.ActivePageIndex = 2 then
  begin
   hItem := GetItemByName(TreeViewHistory.Handle, nil, PChar(SearchEdit1.Text));
   if (hItem <> nil) then
    begin
     TreeViewHistory.SetFocus;
     SendMessage(TreeViewHistory.Handle, TVM_SELECTITEM, TVGN_CARET,  longint(hItem));
    end;
  end;
end;

procedure TLinkCenter.TreeViewHistoryClick(Sender: TObject);
begin
 try
  if TreeViewHistory.Selected.ImageIndex <> 3 then
   begin
    FolderPages.ItemIndex := TreeViewHistory.Selected.Parent.Index;
    MainForm.UrlSCR.Clear;
    MainForm.UrlSCR.Items.LoadFromFile(FolderPages.Folders[FolderPages.ItemIndex].PathName + '\URL.ini');
    MainForm.OpenAddressFromLink(MainForm.UrlSCR.Items[TreeViewHistory.Selected.Index]);
    MainForm.ShowLinkHub(false);
   end;
 Except
 end;
 try
 Except
 end;

end;

procedure TLinkCenter.viewfavfolder(mode: Boolean);
begin
 if mode = true then
  begin
   ListView_favFolder.Visible := true;
   ListView_fav.SendToBack;
   back_favbt.Enabled := false;
   labelpatch.Caption := MainForm.LanguageCache.Lines[187];
   abort;
  end
 else
  begin
   labelpatch.Caption := LabeltitleName1.Caption + ' - ' + ComboBoxEx1.ItemsEx[ComboBoxEx1.ItemIndex].Caption;
   we_fav_panel1.Visible := true;
   ListView_favFolder.Visible := false;
   ListView_fav.BringToFront;
   back_favbt.Enabled := true;
   abort;
  end;
end;

procedure TLinkCenter.CacheBTClick(Sender: TObject);
begin
 MainForm.ShowLinkHub(false);
 MainForm.ClearCache := true;
end;

procedure TLinkCenter.win_fav_listDblClick(Sender: TObject);
begin
 closing.Enabled := true;
end;


end.