unit PageTrashForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, AdvPanel, ImgList, AdvGlowButton,
  Buttons, UxTheme, uXPIcons, System.ImageList;

type
  TPageTrash = class(TForm)
    FavIcons_List: TImageList;
    OpenTimer: TTimer;
    FavIcon: TImage;
    SearchEdit1: TButtonedEdit;
    Start_bt: TAdvGlowButton;
    ListView1: TListView;
    Button1: TAdvGlowButton;
    Button2: TAdvGlowButton;
    P1: TAdvPanel;
    procedure FormCreate(Sender: TObject);
    procedure SearchEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure SearchEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OpenTimerTimer(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
  private
    procedure WMNCACTIVATE(var M: TWMNCACTIVATE); message WM_NCACTIVATE;
    function WindowsUI(): Shortint;
  public
   procedure AddFavIcon(Tabset: ShortInt);
   procedure AddPage(Name, Adress: String);
   procedure GetLanguage;
  end;

var
  PageTrash: TPageTrash;

implementation

uses UnitMainForm;

{$R *.dfm}

procedure TPageTrash.AddFavIcon(Tabset: ShortInt);
begin
 try
  ConvertTo32BitImageList(FavIcons_List);
  MainForm.FavIcons.GetIcon(Tabset, FavIcon.Picture.Icon);
 finally
  favicons_list.AddIcon(FavIcon.Picture.Icon);
 end;
end;

procedure TPageTrash.AddPage(Name, Adress: String);
var
 ListItem : TListItem;
begin
 if (trim(Name) <> '') and (trim(Adress) <> '') and (Adress <> '') and (Adress <> 'file:///') and (Adress <> 'about:blank') and (Adress <> 'chrome-error://chromewebdata/') and (MainForm.IsSystemPage(Adress) = false) and (Adress <> 'file://') then
  begin
   ListItem:= ListView1.Items.Add;
   ListItem.Caption := Name;
   ListItem.SubItems.Text := Adress;
   ListItem.ImageIndex := ListView1.Items.Count - 1;
   if name = MainForm.LanguageCache.Lines[367] then
    favicons_list.AddIcon(MainForm.RecoveryIcon.Picture.Icon);
   if name = MainForm.LanguageCache.Lines[372] then
    favicons_list.AddIcon(MainForm.Popupicon.Picture.Icon);
  end;
end;

procedure TPageTrash.FormCreate(Sender: TObject);
begin
Start_bt.Picture := MainForm.Trash_bt.Picture;
end;

procedure TPageTrash.FormShow(Sender: TObject);
begin
 SearchEdit1.Clear;
 //OpenTimer.Enabled := true;
 WindowsUI;
end;

procedure TPageTrash.GetLanguage;
begin
 Caption := MainForm.LanguageCache.Lines[281];
 ListView1.Columns[0].Caption := MainForm.LanguageCache.Lines[282];
 ListView1.Columns[1].Caption := MainForm.LanguageCache.Lines[283];
 Button2.Caption := MainForm.LanguageCache.Lines[284];
 Button1.Caption := MainForm.LanguageCache.Lines[236];
 SearchEdit1.TextHint := MainForm.LanguageCache.Lines[285];
end;

procedure TPageTrash.ListView1DblClick(Sender: TObject);
begin
 try
   MainForm.OpenNewTab(ListView1.Items[ListView1.ItemIndex].SubItems.Text);
   close;
 Except
 end;

end;

procedure TPageTrash.OpenTimerTimer(Sender: TObject);
begin
 SearchEdit1.SetFocus;
 OpenTimer.Enabled := false;
end;

procedure TPageTrash.SearchEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_UP then
  begin
   if ListView1.ItemIndex = 0 then
    begin
     ListView1.ItemIndex := ListView1.Items.Count - 1;
    end
   else
    begin
     ListView1.ItemIndex := ListView1.ItemIndex - 1;
    end;
   SearchEdit1.Text := ListView1.Items[ListView1.ItemIndex].Caption;
  end;
 if Key = VK_DOWN then
  begin
   if ListView1.ItemIndex = ListView1.Items.Count - 1 then
    begin
     ListView1.ItemIndex := 0;
    end
   else
    begin
     ListView1.ItemIndex := ListView1.ItemIndex + 1;
    end;
   SearchEdit1.Text := ListView1.Items[ListView1.ItemIndex].Caption;
  end;
end;

procedure TPageTrash.SearchEdit1KeyPress(Sender: TObject; var Key: Char);
var
  tStr : String;
  tSrch : String;
  i : Integer;
begin
 tSrch:= SearchEdit1.Text;
 for i := ListView1.Items.Count - 1 downto 0 do
    begin
     tStr:=ListView1.Items[i].Caption;
     if Pos(tSrch,tStr) > 0 then
      ListView1.ItemIndex := i;
    end;
   if Key = #13 then
    begin
     Key := #0;
     MainForm.OpenNewTab(ListView1.Items[ListView1.ItemIndex].SubItems.Text);
     close;
    end;
   if Key = #27 then
    begin
     Key := #0;
     SearchEdit1.Clear;
    end;
end;

function TPageTrash.WindowsUI: Shortint;
begin
 if UxTheme.IsThemeActive = true then
  begin
   if Win32MajorVersion >= 6 then
    if UxTheme.IsCompositionActive = true then
     begin
      Result := 1; //Aero
      if Win32MajorVersion < 10 then
       Color := clWhite;
      Start_bt.Appearance := MainForm.Trash_bt.Appearance;
     end
   else
    begin
     if Win32MajorVersion >= 6 then
      begin
       Result := 2; //Windows Vista/7 Basic Theme
       Color := clWhite;
       p1.Visible := true;
       p1.SendToBack;
       p1.Color := $00EAD1B9;
       p1.ColorMirror := $00EAD1B9;
       p1.ColorMirrorTo := $00EAD1B9;
       p1.ColorTo := $00EAD1B9;
       Start_bt.Parent := p1;
       SearchEdit1.Parent := p1;
      end
     else
      begin
       Result := 3; //Windows NT 5.1 Theme
      end;
    end;
  end
 else
  begin
   Result := 4; // Windows Classic Theme

  end;
 if (UxTheme.IsThemeActive = true) and (Win32MajorVersion = 5) then
  begin
   Result := 3; //Windows NT 5.1 Theme
  end;
end;

procedure TPageTrash.WMNCACTIVATE(var M: TWMNCACTIVATE);
begin
 Inherited;
 Start_bt.Repaint;
end;

procedure TPageTrash.Button1Click(Sender: TObject);
begin
close;
end;

procedure TPageTrash.Button2Click(Sender: TObject);
begin
 ListView1.Clear;
 FavIcons_List.Clear;
end;

end.