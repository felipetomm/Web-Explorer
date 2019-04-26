unit NewLinkForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, AdvPanel, ComCtrls, ShellAPI, Menus, AdvMenus,
  AdvGlowButton, UxTheme, Buttons;

type
  Tnewlink = class(TForm)
    Fundo: TAdvPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    ListView_folders: TListView;
    Label2: TLabel;
    Label3: TLabel;
    Label_dirlocation: TLabel;
    bookmarksIndex: TListBox;
    save_sc: TMemo;
    Start_bt: TAdvGlowButton;
    toolbar1: TPanel;
    PopupMenu1: TPopupMenu;
    Removefolder1: TMenuItem;
    WindowTitle: TLabel;
    LinkBtIMG: TAdvGlowButton;
    RSSBtIMG: TAdvGlowButton;
    Button2: TAdvGlowButton;
    Button1: TAdvGlowButton;
    Button3: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure ListView_foldersChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure Button3Click(Sender: TObject);
    procedure Removefolder1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure GetBookMarks;
    procedure ListRSS;
    procedure WMNCACTIVATE(var M: TWMNCACTIVATE); message WM_NCACTIVATE;
    function WindowsUI(): Shortint;
  public
    procedure GetLanguage;
  end;

var
  newlink: Tnewlink;
  EditMode, CloseOK: Boolean;

implementation

uses BookmarkManager, linkcenterform, UnitMainForm;

{$R *.dfm}

{ Tnewlink }

procedure Tnewlink.Button1Click(Sender: TObject);
begin
 save_sc.Clear;
 if Edit2.Enabled = true then
  begin
   save_sc.Lines[0] := '<meta http-equiv=' + QuotedStr('refresh') + ' content=' + QuotedStr('1; URL=' + Edit2.Text) + '>';
   if ListView_folders.ItemIndex > 0 then
    save_sc.Lines.SaveToFile(MainForm.Profile_Pach + '\Bookmarks\' + ListView_folders.Items[ListView_folders.ItemIndex].Caption + '\' + MainForm.CutSpecialChar(Edit1.Text) + '.htm')
   else
    save_sc.Lines.SaveToFile(MainForm.Profile_Pach + '\Bookmarks\' + MainForm.CutSpecialChar(Edit1.Text) + '.htm');
  end
 else
  begin
   save_sc.Lines[0] := Edit2.Text;
   save_sc.Lines.SaveToFile(MainForm.Profile_Pach + '\Bookmarks\RSS Feeds\' + MainForm.CutSpecialChar(Edit1.Text) + '.htm')
  end;
 MainForm.UpdateForNewLinkSaved := true;
 if Bookmarks_mgc.Visible = true then
  Bookmarks_mgc.GetLinks;
 CloseOK := true;
 Close;
end;

procedure Tnewlink.Button2Click(Sender: TObject);
begin
 CloseOK := true;
 close;
end;

procedure Tnewlink.Button3Click(Sender: TObject);
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
  end;
 Except
  begin
   MessageBox(Application.Handle, PChar(MainForm.LanguageCache.Lines[201]), Pchar(MainForm.LanguageCache.Lines[202]), MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
  end;
 end;
end;

procedure Tnewlink.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Button2.Visible := false;
 EditMode := false;
 Edit1.Clear;
 Edit2.Clear;
 Caption := 'Add Link to Bookmark';
 ListView_folders.ItemIndex := 0;
end;

procedure Tnewlink.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 CloseOK := true;
 if CloseOK <> true then
  CanClose := false;
end;

procedure Tnewlink.FormShow(Sender: TObject);
var
 BrowserFrame : TWebBrowserFrame;
 TempRSSURL: String;
begin
 BrowserFrame := TWebBrowserFrame(MainForm.pcMain.Pages[MainForm.pcMain.ActivePageIndex].Components[0]);
 WindowsUI;
 CloseOK := false;
 if copy(BrowserFrame.Chromium1.Browser.MainFrame.Url, 1, 18) <> 'http://webexplorer' then
 //if copy(BrowserFrame.Chromium1.Browser.MainFrame.Url, 1, 63) <> 'http://www.webexplorerbrasil.com/FederationServices/RSSExplorer' then
  begin
   GetBookMarks;
   if EditMode = false then
    begin
     Edit1.text := MainForm.CutSpecialChar(BrowserFrame.PageName);
     Edit2.Text := BrowserFrame.Chromium1.Browser.MainFrame.Url;
     Edit2.Enabled := True;
     Button2.Visible := true;
     Button3.Enabled := true;
     Start_bt.Picture := LinkBtIMG.Picture;
     ListView_folders.Enabled := true;
    end;
  end
 else
  begin
   if EditMode = false then
    begin
     try
      GetBookMarks;
     finally
      ListView_folders.Clear;
     end;
     ListRSS;
     Edit1.text := MainForm.CutSpecialChar(BrowserFrame.PageName);
     Edit2.Text := BrowserFrame.Chromium1.Browser.MainFrame.Url;
     TempRSSURL := copy(BrowserFrame.Chromium1.Browser.MainFrame.Url, 87, length(Edit2.Text));
     Edit2.Text := TempRSSURL;
     Button3.Enabled := false;
     Edit2.Enabled := false;
     Button2.Visible := true;
     Start_bt.Picture := RSSBtIMG.Picture;
     ListView_folders.Enabled := false;
    end;
  end;
end;

procedure Tnewlink.GetBookMarks;
var
 ListItem : TListItem;
 index: Integer;
begin
 bookmarksIndex.Clear;
 ListView_folders.Items.Clear;
 bookmarksIndex.Items.LoadFromFile(MainForm.Profile_Pach + '\Bookmarks\BookmarkIndex.ini');
 ListItem := ListView_folders.Items.Add;
 ListItem.Caption := 'My Links';
 ListItem.ImageIndex := 0;
 for index := 0 to bookmarksIndex.Items.Count - 1 do
  begin
   ListItem := ListView_folders.Items.Add;
   ListItem.Caption := bookmarksIndex.Items.Strings[index];
   ListItem.ImageIndex := 0;
  end;
 ListView_folders.ItemIndex := 0;
end;

procedure Tnewlink.GetLanguage;
begin
 Label2.Caption := MainForm.LanguageCache.Lines[238];
 Label3.Caption := MainForm.LanguageCache.Lines[239];
 Removefolder1.Caption := MainForm.LanguageCache.Lines[180];
 Button3.Caption := MainForm.LanguageCache.Lines[240];
 Button2.Caption := MainForm.LanguageCache.Lines[241];
 Button1.Caption := MainForm.LanguageCache.Lines[242];
end;

procedure Tnewlink.ListRSS;
var
 ListItem : TListItem;
 index: Integer;
begin
 bookmarksIndex.Clear;
 ListItem := ListView_folders.Items.Add;
 ListItem.Caption := 'RSS Feeds';
 ListItem.ImageIndex := 2;
 ListView_folders.ItemIndex := 0;
end;

procedure Tnewlink.ListView_foldersChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  Label_dirlocation.Caption := MainForm.LanguageCache.Lines[198] + Item.Caption;
end;

procedure Tnewlink.Removefolder1Click(Sender: TObject);
begin
 if ListView_folders.ItemIndex <> -1 then
  begin
   if ListView_folders.ItemIndex = 0 then
    begin
     MessageBox(Application.Handle, Pchar(MainForm.LanguageCache.Lines[203]), Pchar(MainForm.LanguageCache.Lines[180]), MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
     Abort;
    end;
   bookmarksIndex.Items.Delete(ListView_folders.ItemIndex - 1);
   MainForm.DeleteDir(Self.Handle, Pchar(MainForm.Profile_Pach + '\Bookmarks\' + ListView_folders.Items[ListView_folders.ItemIndex].Caption));
   bookmarksIndex.Items.SaveToFile(MainForm.Profile_Pach + '\Bookmarks\BookmarkIndex.ini');
   GetBookMarks;
   ListView_folders.ItemIndex := ListView_folders.Items.Count - 1;
  end
 else
  MessageBox(Application.Handle, PChar(MainForm.LanguageCache.Lines[204]), PChar(MainForm.LanguageCache.Lines[180]), MB_ICONERROR + MB_OK + MB_DEFBUTTON1);
end;

function Tnewlink.WindowsUI: Shortint;
begin
 if UxTheme.IsThemeActive = true then
  begin
  if Win32MajorVersion >= 6 then
   if UxTheme.IsCompositionActive = true then
    begin
     Result := 1; //Aero
     Color := clWhite;
     Start_bt.Parent := newlink;
     WindowTitle.Parent := newlink;
     toolbar1.Visible := false;
     WindowTitle.GlowSize := 8;
     Caption := '';
     WindowTitle.Caption := MainForm.LanguageCache.Lines[243];
    end
   else
    begin
     if Win32MajorVersion >= 6 then
      begin
       Result := 2; //Windows Vista/7 Theme
       Start_bt.Parent := toolbar1;
       WindowTitle.Parent := toolbar1;
       WindowTitle.GlowSize := 0;
       toolbar1.Visible := true;
       Caption := '';
       WindowTitle.Caption := MainForm.LanguageCache.Lines[243];
       if newlink.Active = true then
        Color := $00EAD1B9
       else
        Color := $00F2E4D7;
      end
     else
      begin
        Result := 3; //Windows NT 5.1 Theme
        Color := clBtnFace;
        Start_bt.Parent := toolbar1;
        WindowTitle.Parent := toolbar1;
        toolbar1.Visible := true;
        WindowTitle.GlowSize := 0;
        Caption := MainForm.LanguageCache.Lines[244];
      end;
    end;
  end
 else
  begin
   Result := 4; // Windows Classic Theme
   Color := clBtnFace;
   Start_bt.Parent := toolbar1;
   WindowTitle.Parent := toolbar1;
   toolbar1.Visible := true;
   WindowTitle.GlowSize := 0;
   Caption := MainForm.LanguageCache.Lines[244];
  end;
 if (UxTheme.IsThemeActive = true) and (Win32MajorVersion = 5) then
  begin
   Result := 3; //Windows NT 5.1 Theme
   Color := clBtnFace;
   Start_bt.Parent := toolbar1;
   WindowTitle.Parent := toolbar1;
   toolbar1.Visible := true;
   WindowTitle.GlowSize := 0;
   Caption := MainForm.LanguageCache.Lines[244];
  end;
end;

procedure Tnewlink.WMNCACTIVATE(var M: TWMNCACTIVATE);
begin
 Inherited;
 if (M.Active = true) and (WindowsUI = 2) then
  Color := $00EAD1B9
 else
  Color := $00F2E4D7;
 Start_bt.Repaint;
end;

end.