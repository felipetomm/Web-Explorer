object UserLibrary: TUserLibrary
  Left = 360
  Top = 225
  Caption = 'Library'
  ClientHeight = 601
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object fav_tmp_n: TLabel
    Left = 160
    Top = 8
    Width = 3
    Height = 13
    Visible = False
  end
  object folderpach1: TLabel
    Left = 328
    Top = 248
    Width = 57
    Height = 13
    Caption = 'folderpach1'
    Visible = False
  end
  object PngSpeedButton1: TPngSpeedButton
    Left = 448
    Top = 312
    Width = 23
    Height = 22
  end
  object ListViewImport: TListView
    Left = 360
    Top = 177
    Width = 416
    Height = 236
    Color = clWhite
    Columns = <
      item
        AutoSize = True
        Caption = 'Link Name'
      end
      item
        AutoSize = True
        Caption = 'Link Address'
      end>
    GridLines = True
    ReadOnly = True
    RowSelect = True
    TabOrder = 4
    ViewStyle = vsReport
    Visible = False
  end
  object save_sc: TMemo
    Left = 1
    Top = 33
    Width = 744
    Height = 89
    ScrollBars = ssBoth
    TabOrder = 5
    Visible = False
  end
  object ExportBookMemo: TMemo
    Left = 1
    Top = 33
    Width = 185
    Height = 89
    Lines.Strings = (
      '<!DOCTYPE NETSCAPE-Bookmark-file-1>'
      '<!-- This is an automatically generated file.'
      'It will be read and overwritten.'
      'Do Not Edit! -->'
      '<TITLE>Bookmarks</TITLE>'
      '<H1>Bookmarks</H1>'
      '<DL><p>'
      '    <DT><H3 FOLDED ADD_DATE="1378825066">Links</H3>'
      '    <DL><p>'
      '    </DL><p>'
      '</DL><p>')
    ScrollBars = ssBoth
    TabOrder = 6
    Visible = False
  end
  object fav_list: TFileListBox
    Left = 274
    Top = 34
    Width = 264
    Height = 292
    Mask = '*.htm'
    ShowGlyphs = True
    TabOrder = 1
    Visible = False
  end
  object bookmarksIndex: TListBox
    Left = 15
    Top = 84
    Width = 194
    Height = 134
    ItemHeight = 13
    TabOrder = 0
    Visible = False
  end
  object end_fav: TMemo
    Left = 536
    Top = 45
    Width = 185
    Height = 33
    ScrollBars = ssHorizontal
    TabOrder = 3
    Visible = False
  end
  object FileListBox2: TFileListBox
    Left = 405
    Top = 48
    Width = 262
    Height = 278
    Mask = '*.htm'
    ShowGlyphs = True
    TabOrder = 2
    Visible = False
  end
  object LeftSidePanel1: TPanel
    Left = 0
    Top = 186
    Width = 280
    Height = 415
    Align = alLeft
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 8
    object ExtendOptionSidePanel: TPanel
      Left = 0
      Top = 210
      Width = 280
      Height = 205
      Align = alClient
      BevelOuter = bvNone
      Color = clWindow
      ParentBackground = False
      TabOrder = 1
      object ListView_folders: TListView
        Left = 0
        Top = 0
        Width = 280
        Height = 205
        Align = alClient
        BorderStyle = bsNone
        Columns = <
          item
            AutoSize = True
            Caption = 'Bookmarks Folder List'
          end>
        Groups = <
          item
            Header = 'Folders'
            GroupID = 0
            State = [lgsNormal]
            HeaderAlign = taLeftJustify
            FooterAlign = taLeftJustify
            TitleImage = -1
          end>
        GroupView = True
        ReadOnly = True
        ShowColumnHeaders = False
        SmallImages = MainForm.ImageListLarge
        TabOrder = 0
        ViewStyle = vsReport
        OnClick = ListView_foldersClick
        OnResize = ListView_foldersResize
      end
    end
    object ListViewSelect1: TListView
      Left = 0
      Top = 0
      Width = 280
      Height = 210
      Align = alTop
      BorderStyle = bsNone
      Columns = <
        item
          AutoSize = True
        end>
      Groups = <
        item
          Header = 'Library'
          GroupID = 0
          State = [lgsNormal]
          HeaderAlign = taLeftJustify
          FooterAlign = taLeftJustify
          TitleImage = -1
        end>
      Items.ItemData = {
        05260100000700000003000000FFFFFFFFFFFFFFFF0000000000000000000000
        000748006900730074006F007200790004000000FFFFFFFFFFFFFFFF00000000
        00000000000000000942006F006F006B006D00610072006B00730009000000FF
        FFFFFFFFFFFFFF0000000000000000000000000A530070006500650064002000
        4400690061006C0007000000FFFFFFFFFFFFFFFF000000000000000000000000
        07500072006F00660069006C00650008000000FFFFFFFFFFFFFFFF0000000000
        0000000000000007570069006400670065007400730006000000FFFFFFFFFFFF
        FFFF0000000000000000000000000750006C007500670069006E007300050000
        00FFFFFFFFFFFFFFFF0000000000000000000000000944006F0077006E006C00
        6F00610064007300}
      GroupView = True
      ReadOnly = True
      RowSelect = True
      ShowColumnHeaders = False
      SmallImages = MainForm.ImageListLarge
      TabOrder = 0
      ViewStyle = vsReport
      OnChange = ListViewSelect1Change
    end
  end
  object TopBarPanel0: TPanel
    Left = 0
    Top = 0
    Width = 994
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 9
    object W7ToolBar4: TW7ToolBar
      Left = 0
      Top = 0
      Width = 994
      Height = 31
      Version = '1.0.2.0'
      ShowTopBorder = False
      object W7ToolButton1: TW7ToolButton
        Left = 1
        Top = 3
        Width = 124
        Height = 24
        Version = '1.0.2.0'
        Caption = 'Clear History'
        Images = MainForm.MenuImages
        ImageIndex = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5978398
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = W7ToolButton1Click
      end
      object W7ToolButton2: TW7ToolButton
        Left = 128
        Top = 3
        Width = 190
        Height = 24
        Version = '1.0.2.0'
        Caption = 'Clear History Cache on Exit'
        Images = MainForm.MenuImages
        ImageIndex = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5978398
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = W7ToolButton2Click
      end
      object SearchEdit2: TButtonedEdit
        Tag = 2112018
        Left = 652
        Top = 4
        Width = 226
        Height = 23
        DoubleBuffered = True
        Images = MainForm.ImageList_icons
        LeftButton.Enabled = False
        OEMConvert = True
        ParentDoubleBuffered = False
        RightButton.DisabledImageIndex = 34
        RightButton.ImageIndex = 34
        RightButton.Visible = True
        TabOrder = 2
        TextHint = 'Search History'
        OnKeyPress = SearchEdit2KeyPress
      end
    end
  end
  object Panel_history: TPanel
    Left = 280
    Top = 186
    Width = 714
    Height = 415
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 13
    object Bevel6: TBevel
      Left = 0
      Top = 0
      Width = 1
      Height = 415
      Align = alLeft
      Shape = bsLeftLine
      ExplicitLeft = 209
      ExplicitTop = 31
      ExplicitHeight = 460
    end
    object FileListBox1: TFileListBox
      Left = 5
      Top = 168
      Width = 262
      Height = 288
      Mask = '*.htm'
      ShowGlyphs = True
      TabOrder = 0
      Visible = False
    end
    object FolderPages: TShellListView
      Left = 16
      Top = 250
      Width = 250
      Height = 150
      ObjectTypes = [otFolders]
      Root = 'C:\'
      Sorted = True
      ReadOnly = False
      HideSelection = False
      TabOrder = 1
      Visible = False
      ViewStyle = vsReport
    end
    object NameURLSRC: TListBox
      Left = 16
      Top = 406
      Width = 106
      Height = 97
      ItemHeight = 13
      TabOrder = 2
      Visible = False
    end
    object UrlSCR: TListBox
      Left = 128
      Top = 406
      Width = 121
      Height = 97
      ItemHeight = 13
      TabOrder = 4
      Visible = False
    end
    object TreeViewHistory: TTreeView
      Left = 1
      Top = 0
      Width = 713
      Height = 415
      Align = alClient
      BorderStyle = bsNone
      Images = MainForm.ImageListLarge
      Indent = 27
      ReadOnly = True
      TabOrder = 3
      OnDblClick = TreeViewHistoryDblClick
    end
  end
  object Panel_Widget: TPanel
    Left = 280
    Top = 186
    Width = 714
    Height = 415
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 14
    Visible = False
    object Bevel7: TBevel
      Left = 0
      Top = 0
      Width = 1
      Height = 415
      Align = alLeft
      Shape = bsLeftLine
      ExplicitHeight = 550
    end
    object ShellListView1: TShellListView
      Left = 316
      Top = 46
      Width = 321
      Height = 153
      ObjectTypes = [otFolders, otNonFolders]
      Root = 'rfDesktop'
      Sorted = True
      OnAddFolder = ShellListView1AddFolder
      ReadOnly = False
      HideSelection = False
      TabOrder = 0
      Visible = False
    end
    object widgetsdir: TFileListBox
      Left = 29
      Top = 46
      Width = 281
      Height = 137
      ItemHeight = 13
      Mask = '*.exe;*.dll'
      TabOrder = 1
      Visible = False
    end
    object AppList: TListView
      Left = 1
      Top = 0
      Width = 713
      Height = 415
      Align = alClient
      BorderStyle = bsNone
      Columns = <
        item
          Caption = 'Name'
          Width = 215
        end
        item
          Caption = 'Legal Trade Marks'
          Width = 160
        end
        item
          AutoSize = True
          Caption = 'Product Version'
        end>
      ReadOnly = True
      RowSelect = True
      SmallImages = Icons_List
      TabOrder = 2
      ViewStyle = vsReport
      OnDblClick = AppListDblClick
      OnKeyPress = AppListKeyPress
    end
  end
  object TopBarPanel1: TPanel
    Left = 0
    Top = 31
    Width = 994
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 15
    object W7ToolBar1: TW7ToolBar
      Left = 0
      Top = 0
      Width = 994
      Height = 31
      Version = '1.0.2.0'
      ShowTopBorder = False
      object bt1: TW7ToolButton
        Left = 1
        Top = 3
        Width = 124
        Height = 24
        Version = '1.0.2.0'
        Caption = 'Organize Items'
        ShowArrow = True
        Images = MainForm.MenuImages
        ImageIndex = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5978398
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = bt1Click
      end
      object bt2: TW7ToolButton
        Left = 128
        Top = 3
        Width = 135
        Height = 24
        Version = '1.0.2.0'
        Caption = 'Link Tools'
        ShowArrow = True
        Images = MainForm.MenuImages
        ImageIndex = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5978398
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = bt2Click
      end
      object SearchEdit1: TButtonedEdit
        Tag = 2112018
        Left = 652
        Top = 4
        Width = 226
        Height = 23
        DoubleBuffered = True
        Images = MainForm.ImageList_icons
        LeftButton.Enabled = False
        OEMConvert = True
        ParentDoubleBuffered = False
        RightButton.DisabledImageIndex = 34
        RightButton.ImageIndex = 34
        RightButton.Visible = True
        TabOrder = 2
        TextHint = 'Search Links'
        OnKeyPress = SearchEdit1KeyPress
      end
    end
  end
  object TopBarPanel5: TPanel
    Left = 0
    Top = 124
    Width = 994
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 16
    object W7ToolBar3: TW7ToolBar
      Left = 0
      Top = 0
      Width = 994
      Height = 31
      Version = '1.0.2.0'
      ShowTopBorder = False
      object msgplugin: TLabel
        Left = 263
        Top = 7
        Width = 57
        Height = 15
        Alignment = taRightJustify
        Caption = 'msgplugin'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Visible = False
      end
      object Barpanel5Separator1: TBevel
        Left = 128
        Top = 5
        Width = 10
        Height = 20
        Shape = bsLeftLine
        Visible = False
      end
      object DownloadPluginBT: TW7ToolButton
        Left = 127
        Top = 3
        Width = 124
        Height = 24
        Version = '1.0.2.0'
        Caption = 'Download Plugin'
        Enabled = False
        Images = MainForm.MenuImages
        ImageIndex = 6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5978398
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = DownloadPluginBTClick
      end
      object PluginOptBT: TW7ToolButton
        Left = 1
        Top = 3
        Width = 124
        Height = 24
        Version = '1.0.2.0'
        Caption = 'Plugin Options'
        Enabled = False
        Images = MainForm.MenuImages
        ImageIndex = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5978398
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = PluginOptBTClick
      end
      object ExtensionRemoveBT: TW7ToolButton
        Left = 270
        Top = 3
        Width = 134
        Height = 24
        Version = '1.0.2.0'
        Caption = 'Uninstall Extension'
        Enabled = False
        Images = MainForm.MenuImages
        ImageIndex = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5978398
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
        OnClick = ExtensionRemoveBTClick
      end
      object ExtensionUpdateBT: TW7ToolButton
        Left = 133
        Top = 3
        Width = 134
        Height = 24
        Version = '1.0.2.0'
        Caption = 'Update Extension'
        Enabled = False
        Images = MainForm.MenuImages
        ImageIndex = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5978398
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = False
        OnClick = ExtensionUpdateBTClick
      end
      object PluginOptBT2: TW7ToolButton
        Left = 1
        Top = 3
        Width = 124
        Height = 24
        Version = '1.0.2.0'
        Caption = 'Plugin Options'
        Enabled = False
        Images = MainForm.MenuImages
        ImageIndex = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5978398
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = PluginOptBT2Click
      end
    end
  end
  object TopBarPanel4: TPanel
    Left = 0
    Top = 93
    Width = 994
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 17
    object W7ToolBar5: TW7ToolBar
      Left = 0
      Top = 0
      Width = 994
      Height = 31
      Version = '1.0.2.0'
      ShowTopBorder = False
      object W7ToolButton4: TW7ToolButton
        Left = 128
        Top = 3
        Width = 150
        Height = 24
        Version = '1.0.2.0'
        Caption = 'Get Widgets Online'
        Images = MainForm.MenuImages
        ImageIndex = 7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5978398
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = W7ToolButton4Click
      end
      object W7ToolButton3: TW7ToolButton
        Left = 1
        Top = 3
        Width = 124
        Height = 24
        Version = '1.0.2.0'
        Caption = 'Organize Items'
        ShowArrow = True
        Images = MainForm.MenuImages
        ImageIndex = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5978398
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = W7ToolButton3Click
      end
      object ButtonedEdit6: TButtonedEdit
        Tag = 2112018
        Left = 652
        Top = 4
        Width = 226
        Height = 23
        DoubleBuffered = True
        Images = MainForm.ImageList_icons
        LeftButton.Enabled = False
        OEMConvert = True
        ParentDoubleBuffered = False
        RightButton.DisabledImageIndex = 34
        RightButton.ImageIndex = 34
        RightButton.Visible = True
        TabOrder = 1
        TextHint = 'Search Widgets Apps'
        OnKeyDown = ButtonedEdit6KeyDown
        OnKeyPress = ButtonedEdit6KeyPress
      end
    end
  end
  object TopBarPanel2: TPanel
    Left = 0
    Top = 62
    Width = 994
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 18
    object W7ToolBar2: TW7ToolBar
      Left = 0
      Top = 0
      Width = 994
      Height = 31
      Version = '1.0.2.0'
      ShowTopBorder = False
      object bt3: TW7ToolButton
        Left = 1
        Top = 3
        Width = 124
        Height = 24
        Version = '1.0.2.0'
        Caption = 'Organize Items'
        ShowArrow = True
        Images = MainForm.MenuImages
        ImageIndex = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5978398
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = bt3Click
      end
      object bt4: TW7ToolButton
        Left = 128
        Top = 3
        Width = 135
        Height = 24
        Version = '1.0.2.0'
        Caption = 'Wallpaper'
        ShowArrow = True
        Images = MainForm.MenuImages
        ImageIndex = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5978398
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = bt4Click
      end
    end
  end
  object TopBarPanel6: TPanel
    Left = 0
    Top = 155
    Width = 994
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 20
    object W7ToolBar6: TW7ToolBar
      Left = 0
      Top = 0
      Width = 994
      Height = 31
      Version = '1.0.2.0'
      ShowTopBorder = False
      object W7ToolButton5: TW7ToolButton
        Left = 1
        Top = 3
        Width = 124
        Height = 24
        Version = '1.0.2.0'
        Caption = 'Clear History'
        Images = MainForm.MenuImages
        ImageIndex = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5978398
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = W7ToolButton5Click
      end
      object W7ToolButton7: TW7ToolButton
        Left = 128
        Top = 3
        Width = 124
        Height = 24
        Version = '1.0.2.0'
        Caption = 'Open Download'
        Enabled = False
        Images = MainForm.MenuImages
        ImageIndex = 12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5978398
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = W7ToolButton7Click
      end
    end
  end
  object Panel_Bookmarks: TPanel
    Left = 280
    Top = 186
    Width = 714
    Height = 415
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 7
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 1
      Height = 415
      Align = alLeft
      Shape = bsLeftLine
      ExplicitLeft = 209
      ExplicitTop = 31
      ExplicitHeight = 460
    end
    object ListView: TListView
      Left = 1
      Top = 0
      Width = 713
      Height = 415
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      Columns = <
        item
          Caption = 'Link Name'
          Width = 372
        end
        item
          Caption = 'Link Address'
          Width = 315
        end>
      GridLines = True
      ReadOnly = True
      RowSelect = True
      SmallImages = MainForm.ImageListLarge
      TabOrder = 0
      ViewStyle = vsReport
    end
  end
  object Panel_SPD: TPanel
    Left = 280
    Top = 186
    Width = 714
    Height = 415
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 11
    Visible = False
    object Bevel2: TBevel
      Left = 0
      Top = 0
      Width = 1
      Height = 415
      Align = alLeft
      Shape = bsLeftLine
      ExplicitHeight = 550
    end
    object SpeedDialWork: TMemo
      Left = 7
      Top = 35
      Width = 185
      Height = 89
      ScrollBars = ssBoth
      TabOrder = 3
      Visible = False
    end
    object ListBoxColor: TListBox
      Left = 378
      Top = 35
      Width = 214
      Height = 115
      ItemHeight = 13
      TabOrder = 2
      Visible = False
    end
    object SpeedDialWorkWorkBG: TMemo
      Left = -201
      Top = 61
      Width = 185
      Height = 89
      Lines.Strings = (
        '')
      ScrollBars = ssBoth
      TabOrder = 4
      Visible = False
    end
    object SPDItens: TListView
      Left = 37
      Top = 216
      Width = 569
      Height = 308
      BorderStyle = bsNone
      Columns = <
        item
          Caption = 'Icon'
        end
        item
          Caption = 'Name'
        end
        item
          Caption = 'Adress'
        end
        item
          Caption = 'Color'
        end
        item
          Caption = 'Type'
        end>
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      Visible = False
    end
    object NewTilesEdit: TMemo
      Left = -199
      Top = 190
      Width = 185
      Height = 89
      ScrollBars = ssHorizontal
      TabOrder = 5
      Visible = False
    end
    object SPDItensV: TListView
      Left = 1
      Top = 0
      Width = 713
      Height = 415
      Align = alClient
      BorderStyle = bsNone
      Columns = <
        item
          Caption = 'Icon'
          Width = 76
        end
        item
          AutoSize = True
          Caption = 'Name'
          MinWidth = 300
        end
        item
          Caption = 'Type'
          MinWidth = 85
          Width = 150
        end>
      FlatScrollBars = True
      IconOptions.Arrangement = iaLeft
      ReadOnly = True
      RowSelect = True
      ShowColumnHeaders = False
      SmallImages = ImageList1
      TabOrder = 1
      ViewStyle = vsReport
      OnClick = SPDItensVClick
    end
  end
  object Panel_Plugins: TPanel
    Left = 280
    Top = 186
    Width = 714
    Height = 415
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 12
    object Bevel5: TBevel
      Left = 0
      Top = 60
      Width = 1
      Height = 355
      Align = alLeft
      Shape = bsLeftLine
      ExplicitLeft = 209
      ExplicitTop = 31
      ExplicitHeight = 460
    end
    object FileSearchListbox: TListBox
      Left = -277
      Top = 194
      Width = 273
      Height = 97
      ItemHeight = 13
      TabOrder = 1
      Visible = False
    end
    object Panel_Plugins_top: TPanel
      Left = 0
      Top = 0
      Width = 714
      Height = 60
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object W7InformationBar1: TW7InformationBar
        Left = 0
        Top = 0
        Width = 714
        Height = 60
        Version = '1.0.2.0'
        object InstalledExtensionsLabel: TJvLabel
          Left = 66
          Top = 7
          Width = 154
          Height = 23
          Caption = 'Installed Extensions'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = 14643200
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
          HotTrackFont.Charset = ANSI_CHARSET
          HotTrackFont.Color = clBlack
          HotTrackFont.Height = -19
          HotTrackFont.Name = 'Calibri'
          HotTrackFont.Style = []
        end
        object Bevel8: TBevel
          Left = 0
          Top = 0
          Width = 1
          Height = 60
          Align = alLeft
          Shape = bsLeftLine
          ExplicitLeft = 8
          ExplicitHeight = 53
        end
        object ComplementsImage: TW7Image
          Left = 12
          Top = 6
          Width = 48
          Height = 48
          Transparent = True
          ParentFont = False
        end
        object ComplementoLabelDesc: TLabel
          Left = 66
          Top = 38
          Width = 319
          Height = 15
          Caption = 'Plugins installed on Windows compatible with Web Explorer.'
        end
        object ComplementsOptions: TW7ToolButton
          Left = 594
          Top = 30
          Width = 85
          Height = 24
          Version = '1.0.2.0'
          Caption = 'View'
          ShowArrow = True
          Images = PluginsViewPNG
          ImageIndex = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          PopupMenu = ComplementsMenu
          TabOrder = 0
          OnClick = ComplementsOptionsClick
        end
      end
    end
    object weinfoplugins: TMemo
      Left = -197
      Top = 95
      Width = 185
      Height = 89
      ScrollBars = ssBoth
      TabOrder = 3
      Visible = False
    end
    object ListViewPlugins: TListView
      Left = 1
      Top = 60
      Width = 713
      Height = 355
      Align = alClient
      BorderStyle = bsNone
      Columns = <
        item
          Caption = 'Name'
          Width = 350
        end
        item
          Caption = 'Version'
          Width = 150
        end
        item
          Caption = 'Status'
          Width = 180
        end>
      DoubleBuffered = True
      ReadOnly = True
      RowSelect = True
      ParentDoubleBuffered = False
      SmallImages = ImageList2
      TabOrder = 0
      ViewStyle = vsReport
      OnAdvancedCustomDrawSubItem = ListViewPluginsAdvancedCustomDrawSubItem
      OnClick = ListViewPluginsClick
      OnKeyUp = ListViewPluginsKeyUp
    end
    object NoAddonPanel: TCurvyPanel
      Left = 228
      Top = 121
      Width = 350
      Height = 100
      Color = 15921906
      TabOrder = 4
      Visible = False
      object AddonLabel1: TLabel
        Left = 15
        Top = 11
        Width = 320
        Height = 33
        Alignment = taCenter
        AutoSize = False
        Caption = 'Here is empty! :('
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object AddOnBt1: TAdvGlowButton
        Left = 68
        Top = 46
        Width = 240
        Height = 41
        BorderStyle = bsNone
        Caption = 'Baixar Extens'#245'es e Widgets'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clGray
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DC07151403152110B1CD000007FA49
          44415458C3A5976B885D5715C77F6BEF73CF7DCCCDDC6432794C1ECDCB31E963
          B06D9A165AAA96B6822D489F2A3E50292848A9D62F558A154B151494A2228AE0
          27B1E2972A8801459196D8A64D5B6C0AD534CDABD34E32EFC7BDF7DC73CEDE7B
          F961DF99A69634533C70E070CEBE7BFDD77FFDD77FED2BBCDFEBD34F32B02D1F
          4BF3A5BB2AEAE7F33C5B5FBAF0E71273B48A0BA635922D3EFE39063EF3289DDF
          3E72D1ED92D5C63DFCFC11AE3B700D1FBE61F0D6DAD97FDF7DDF68F9F45BE9C6
          9D7F3F19764E778A5FCC507FFEF8D999671AD3A75E025E5A4D7000B39A45478F
          1EE5BA03D7A0AA978D9E7DEE5737ADEDDC7B78467F73F0997F3D36B270E2F31F
          6FCEEDBDB932718BFFF5832FB6671736363FFBE8F5008D4F3E7CD1BDE5620B26
          262618191941552FBBFF81AFFFAEE8656332B016DD3DA6E3CF1D9241CDB43130
          20F333336CBB64DBE92F3CF4E8ED07EEFFC1BE9A6B1FCCFEF0E3EEFFCD403FB8
          3CF29DEF7EBFDDEE8E9D7E6B8AD78F1FE7D94387A59879834EB72B33D393FAE6
          B9697DFAA97F6E3F7AF0F7DFD473D91169B4F603B4BEFDA7F707A071EFB7DEB5
          E895575FFDD8CB2FBF72EDC937C6999E9BD3D98579DCF016F29D97D39E9BE4D5
          D78E4B2F11717BAF35874E4EDCF6C1BBEE7840368F7EADF5F01FAFD2EE527DE0
          BEC70DC0D08F8EACAE04F57B1E1A368D75379BA12DCD6270F3C09DF5F15BDEFC
          CB13B71F7BFD94411DB486D97CF797D8B27092D3478FB2D8E9510D9E89E945DD
          B5774CCC271EE4E4E9D3D8B4F692249597A9A467C4243F9B7BE886C9D575812B
          3F1416A79FD05E5BCCD4190EDB9C6C7C52972A4D6DAC1D92DAA5D742B28EA990
          31BF7F1F4AC26C37A72296A9660B999DC3D804A937AF1291AB4040F5AFC0EA00
          A873037827DA6B631A2D9D1DDD2F7CEA1AA918ABCE56E87847A79B219BAE2600
          6A12649D20203940B6886800054597B7ADADDA0704ADA38AAA824D84DA1AA4DA
          00544008A18306302601420CB6FC5B11822B20EF427308BC0711041AAB372231
          75B516425F25D2978AC66CB4CCC13B50BFF26EF9B308AC358A5830659B4C2C5D
          B120F67D00401B780FC1BDBDB32B410388412A353049CCEE6D8A1160B3EB3224
          39CDD433B474826E10666D8D23AD3DF5D5FB80F77511C018101303877E30F588
          B1485A05EFD0B288B72F21787667934C489D054D78AAB18334EF3291ACE11BFF
          79720BC0A1FDA3AB0010B48648CC1220383438D415A877A82FD1B244F34EAC75
          91A165C9A0CB98F306E34B4AEF999794170777D0EA2D70ACB1F146801B5E788D
          BF5DBAFD621A2096C0DAC8705020442608519CC662444843416A0431C2D5E534
          AF37D7B3C777F0D51A1F59E319AEB6B8BECC58BFEEB28D3FAD7EF18783B7DFF3
          BD7C76A65C680D765BB7DD790100C6D435F848BB806A88205441418C1082676D
          BEC4BD532F3096645C72C5E5EC18DD4D5D1D03B36D068652301D48534A19D2B2
          DDB9B2BD75C795F9D4B92F4BA5F298E6F94F80E242E3B88EB1088A88F405A860
          4C945C88DD3DD09961DFB1436C3FF71AFB461FA091AD279405BD85254A5B019B
          20D60248C8BA2A6244D2B445D00F6851542E0C406860CC8AC2B5C820044852C4
          08DA6F0CE34BAC08546A98F51BF0654EC80B8AC579D26693A466A00CB18A794F
          5C9250E9F5404385343517D640D05ADF556273058F068F78418359761C921070
          DE13128B1639BEFF3EDD34824108BDDE8A87D8B44AAD9212F21E28559C7F0F00
          AAF5C8C0792614022A2EB6662C0EF892AA06AA4905EDF55004B10641085917CD
          73244D916A0D3DCFCCD415B55094EF09A0EF5A51EDF131800FC80A0306EB724C
          704892A09D0E6A0CEA5D04ED3D21CF912247BC438CE9CF0640B52A602F0CC098
          7A743D41C480F7A877088246A251315857624280C4127A5D645936AAB16C3E44
          E1AA46D754C05A44A4A67D0FBAE02C58B65D44A225BBA27F7A90D89A62B03EA7
          8AC72615FCF414341A98C600EA630BAB2AC62668BB8D5453342C2725B565137C
          871336BFFACB7E05C28A6F2B12DDAFCC092B77819625C695580D91FAB2206419
          A1D3897A284BD4397CB7835F5A2064199A658485057C7BA9EAB3CEBB1968FFFC
          2BCB23B5AEAA315B63E2E47305CB6589CCD8BE063C622D622C21CFA02CDF71CE
          52EF51E7A2A969409D07912AC698F7FA5F909E37E0E31C08AE5FDF00286A2AD8
          3E0336490859178A1CBFDCBA6F438820F2FCBC91AE5515F91F111ADB9F782B93
          552319264EBAB2888244E3292728D697241A30D6C6B65B9C0763A3E2FB6DA741
          410362EDCA33C6D4244A3602B01B77E2274FC5D4AFBB435435A62112BD388438
          11CFCB4C25605D81558D6D9875F19D0ECE7BAC319868C104EF91BE856BFF9B1A
          A9CF7B2A00891DD903216036ED4AE8B5AB7EE2D8063BBC0D69B4906A5DA4D654
          CD9650572E835650510C3678AC7A10D1C23929CB12057ADE639C5BA65283228A
          62002342506DFE6321DBB6BD563D93105B430412AD3587B5BB787998193F9C0C
          8D5C6FB75E3A2CB501097313103C220A20EA0A280B2A6597C12D5B19DCB24D96
          4E9DA0EB0346A43F34E339B15495A050AA52AAAA533A590873CF2F766FDC6099
          1400BB752FEA7211310D60AB16BD312AE947EDC65D57DB4DBBB6810E87B9735D
          F5E52465F116C14FD8329B1FEB4D6FB863F7A603B7DE74D31EF3ECD34C8FBFC1
          6208747CF059D0A9B60F67977C18EFF930AEC89B013D97079D5C707EEA64AF3C
          DB0E615AECE6DDF8B327225D831B904A6A49D206B0090D9BC456546A0385BAA2
          87F71D2DF38CE07A1597FBCDF952734BAD72C5BA35CDBD1B7CD99AEBE56745E4
          B48573C0422F84EE9CF3F999BC2C17BDBA251FE289E6BCEBBFA39D8407C1EFD5
          790000000049454E44AE426082}
        Transparent = True
        TabOrder = 0
        OnClick = AddOnBt1Click
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
        Layout = blGlyphLeftAdjusted
        DropDownSplit = False
      end
    end
  end
  object ProcessListBox: TListBox
    Left = -152
    Top = -171
    Width = 161
    Height = 145
    ItemHeight = 13
    TabOrder = 21
    Visible = False
  end
  object updateinfo: TMemo
    Left = -197
    Top = -69
    Width = 185
    Height = 89
    ScrollBars = ssBoth
    TabOrder = 22
    Visible = False
  end
  object Panel_Downloads: TPanel
    Left = 280
    Top = 186
    Width = 714
    Height = 415
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 19
    object appx_icon: TImage
      Left = -18
      Top = 91
      Width = 32
      Height = 32
      Picture.Data = {
        055449636F6E0000010001002020000001002000A81000001600000028000000
        2000000040000000010020000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000007ED7FF0000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000078B9E23D
        79B8E19E68AAD7B765AAD85569B8EB06000000000000000064ADE20000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000075B7E03975B5DE9C75B5DEF175B4DDFF
        77B5DDFF66A8D5FF64A6D3FF63A7D4FF63A6D4B662A7D65161B0E20400000000
        000000005698C400000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000073B7E00000000000
        0000000074B5DF3973B3DD9975B3DDEF74B3DCFF75B3DCFF75B3DCFF75B3DCFF
        75B3DCFF64A6D3FF62A5D3FF62A5D3FF62A5D2FF62A5D3FF61A4D3FD60A3D3B1
        60A5D45267B2E205000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000085CAF60273B3DE9A
        72B2DCEE72B2DBFF73B2DBFF72B2DBFF72B1DBFF72B2DBFF72B2DBFF72B1DBFF
        74B2DBFF62A4D2FF5FA2D0FF5EA2D0FF5EA2D0FF5EA1D0FF5EA2D0FF5FA2D0FF
        5FA2D1FF5EA2D1FC5EA3D3B35693C12300000001000000000000000000000000
        00000000000000000000000000000000000000000000000072B5E20871B0DBFF
        70AFDAFF70AFDAFF70AFDAFF70AFDAFF70AFDAFF70AFDAFF70AFDAFF70AFDAFF
        72B1DBFF60A2D1FF5B9ED0FF5B9ED0FF5B9ED0FF5B9ED0FF5B9ED0FF5B9ED0FF
        5B9ED0FF5B9ED0FF5C9FD0FF5593C0530000000A000000020000000000000000
        00000000000000000000000000000000000000000000000073B4E1076EAFDAFF
        6EAFD9FF6EAFD9FF6EAFD9FF6EAFD9FF6EAFD9FF6EAFD9FF6EAFD9FF6EAFD9FF
        70B0DAFF5EA0D0FF5A9DCDFF5A9CCDFF5A9CCDFF5A9CCDFF5A9CCDFF5A9CCDFF
        5A9CCDFF5A9CCDFF599DCFFF5A9ECF4B00000000000000000000000000000000
        00000000000000000000000000000000000000000000000070B2E2076DADD9FF
        6CACD8FF6CACD8FF6CACD8FF6CACD8FF6CACD8FF6CACD8FF6CACD8FF6CACD8FF
        6FAED9FF5C9ECFFF579ACCFF579ACCFF579ACCFF579ACCFF579ACCFF579ACCFF
        579ACCFF579ACCFF579ACDFF589DD04B00000000000000000000000000000000
        0000000000000000000000000000000000000000000000006DAFDF076BACD8FF
        6BACD7FF6BACD7FF6BACD7FF6BACD7FF6BACD7FF6BACD7FF6BACD7FF6BACD7FF
        6DADD8FF5A9CCDFF5497CCFF5497CCFF5497CCFF5497CCFF5497CCFF5497CCFF
        5497CCFF5497CCFF5498CCFF5699CF4B00000000000000000000000000000000
        0000000000000000000000000000000000000000000000006BAFE20769AAD7FF
        69A9D6FF69A9D6FF69A9D6FF69A9D6FF69A9D6FF69A9D6FF69A9D6FF69A9D6FF
        6BABD7FF589ACDFF5295C9FF5294C9FF5294C9FF5294C9FF5294C9FF5294C9FF
        5294C9FF5294C9FF5294CAFF5297CD4B00000000000000000000000000000000
        00000000000000000000000000000000000000000000000067AED90768A9D6FF
        68A9D5FF68A9D5FF68A9D5FF68A9D5FF68A9D5FF67A9D5FF68A9D5FF68A9D5FF
        68A9D4FF5698CCFF5093C9FF5093C9FF5093C9FF4F92C8FF4F91C8FF4F92C8FF
        4F92C8FF5093C9FF5093C9FF4F94CA4B00000000000000000000000000000000
        0000000000000000000000000000000000000000000000006AACDE0766A7D5FF
        66A6D4FF66A6D4FF66A6D4FF66A7D4FF66A7D4FF65A5D3FF62A2D0FF5F9FCEFF
        609FCCFF5496CBFF4D90C6FF4C8FC6FF4B8DC4FF498AC1FF488AC0FF498BC1FF
        4A8CC2FF4B8EC4FF4C8FC6FF4E92CA4B00000000000000000000000000000000
        00000000000000000000000000000000000000000000000065A9DE0763A5D4FF
        63A5D3FF64A6D4FF60A3D1FF5B99C7FF5A9AC9FF5A9BCAFF5A9BCAFF5A9ACAFF
        5D9CCAFF5294CAFF4A8CC5FF4689C1FF4284BCFF3F80B8FF4080B5FF4181B8FF
        4486BEFF4587BFFF4688C0FF478BC44B00000000000000000000000000000000
        00000000000000000000000000000000000000000000000089DDFF045FA1D1FF
        5A98C6FF69A2C8FF82B6D6FF98CBE7FF8DC1DEFF7FB3D4FF71A8CCFF649CC4FF
        5E98C2FF5691C0FF5690BDFF679EC6FF78ADD0FF89BDDBFF98CCE7FF8ABEDCFF
        679EC5FF4783B6FF3E7FB8FF4185C0460000000000217F000000000000000000
        00000000000000000000000000000000000000004A7CA53B71A3C79A83B7D7FF
        9ACEE9FF9FD4EEFF9CD1ECFF9CD1ECFF9CD1ECFFA0D4EEFF97CCE9FF7AB3D9FF
        5997C6FF4680B4FF6CA5CEFF8FC6E5FFA0D4EEFF9DD2EDFF9CD1ECFF9CD1ECFF
        9ED3EEFF9FD3EDFF89BDDBFF73A7CBBF5889B052000035060000000000000000
        0000000000000000487AA43C71A4C69B85B9D9EF99CDE9FF9ED3EEFF9CD1ECFF
        9CD1ECFF9CD1ECFFA1D5EFFF96CBE8FF75ADD3FF528FC0FF4181B7FF4485BBFF
        4A8CC0FF3C77AFFF3B78AFFF3B79B0FF4A88BBFF6DA7D0FF8FC5E5FFA0D4EEFF
        9DD2EDFF9CD1ECFF9CD1ECFF9DD3EDFF9BD1ECFF8BBFDDFC78ABCCB45689B054
        0000390674A8CB6199CFE9B79FD5EFE39CD1ECFF9CD1ECFF9CD1ECFF9FD4EEFF
        96CBE8FF74ABD2FF4F8ABCFF3D7BB3FF4281B7FF4686BBFF4889BDFF4B8DC1FF
        4D91C4FF3E7BB2FF3F7DB3FF4180B6FF4382B8FF4584BAFF4485BBFF5291C4FF
        72AED6FF91C8E6FF9ED3EDFF9DD1ECFF9CD1ECFF9CD1EDFF9ED3EEED9DD3EEC2
        7EB2D389000000000000000000000000B1FAFF03ABE1FC2083B8D8B96DA5CEFF
        3B77AEFF3B79B1FF4381B7FF4685BBFF4889BDFF4A8BC0FF4C8FC3FF4E91C5FF
        5195C8FF417FB5FF4280B6FF4382B8FF4585BAFF4788BDFF498BBFFF4B8DC1FF
        4B8FC4FF4C90C5FF6CAAD5FF8ABFDFE99BD0ED2FA3E0F9090000000000000000
        00000000000000000000000035699B0000000000679BBF798EC3E2FF91C7E5FF
        90C7E4FF7DB5D8FF619ECBFF4C8DC1FF498CC1FF4E90C5FF5093C6FF5196C9FF
        5398CBFF4483B8FF4483B9FF4686BCFF4889BEFF4889BFFF4B8DC2FF62A0CEFF
        7EB8DCFF95CAE8FF9ACDEAFF98CDEAFF79ADCFBA000000004A7CA60000000000
        00000000000000004077AB0000000000679BC1788EC4E2FF8FC5E3FF8FC5E3FF
        8FC5E3FF8FC5E3FF90C6E4FF90C6E4FF80B9DCFF68A6D2FF5498CAFF5196CAFF
        549ACCFF4585BAFF4585BBFF4789BEFF609DCCFF7DB7DCFF95CAE8FF99CDEAFF
        97CBE9FF97CBE9FF97CBE9FF97CBE9FF98CCEAFF7AADD0BB000000004C80AA00
        000000000000000000000000679BC0748EC4E2FF8FC5E3FF8FC5E3FF8FC5E3FF
        8FC5E3FF8FC5E3FF8FC5E3FF8FC5E3FF8FC5E3FF90C6E3FF90C6E4FF80BADDFF
        6AA9D5FF5D9AC9FD7CB4DAFF96CAE8FF99CDEAFF97CBE9FF97CBE9FF97CBE9FF
        97CBE9FF97CBE9FF97CBE9FF97CBE9FF97CBE9FF98CCEAFF79ADCFB900000000
        5991C10000000000528AB1098CC3E2BF8FC5E3FF8FC5E3FF8FC5E3FF8FC5E3FF
        8FC5E3FF8FC5E3FF8FC5E3FF8FC5E3FF8FC5E3FF8FC5E3FF8FC5E3FF8FC5E3FF
        92C9E76FA6DAF52F97CCEAFD97CBE9FF97CBE9FF97CBE9FF97CBE9FF97CBE9FF
        97CBE9FF97CBE9FF97CBE9FF97CBE9FF97CBE9FF97CBE9FF99CDECD479ABCF33
        0000000000000000000000000000000097CDF10791C8E7588FC7E5B88FC5E4FF
        8FC5E3FF8FC5E3FF8FC5E3FF8FC5E3FF8FC5E3FF8FC5E3FF8FC5E3FF90C8E76F
        00000000000000009AD0EF3197CBE9FE97CBE9FF97CBE9FF97CBE9FF97CBE9FF
        97CBE9FF97CBE9FF97CBEAFF97CCEAD198CDEC719BCFF1160000000000000000
        ABEDE900000000000000000000000000B8E3EF00000000000000000097D3F506
        90C8E65D90C6E4BD8FC5E3FF8FC5E3FF8FC5E3FF8FC5E3FF91C7E77300000000
        A2E2FF00000000000000000099CFEC3298CCEAFE97CBE9FF97CBE9FF97CBE9FF
        97CCEBD597CDEB769AD1EF180000000000000000A9E0FC000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000093CEEF0C91C7E65C90C6E5BF8FC7E5740000000097CAF200
        0000000000000000000000000000000098CDEC3398CCEBD298CDEB7599D0EF1D
        0000000000000000A2D9F8000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000009AD3FC0000000000000000000000000098CDF00000000000
        0000000000000000000000000000000000000000000000000000000099CFEE00
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFF00FFFFF8001FFFC00003F
        FC00003FFC00003FFC00003FFC00003FFC00003FFC00003FFC00003FFC00003F
        FC00003FF800001FC000000380000000F800001FF800000FF0000007E0000003
        C0018003F803C01FFF07E0FFFFEFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF}
      Visible = False
    end
    object Bevel9: TBevel
      Left = 0
      Top = 0
      Width = 1
      Height = 415
      Align = alLeft
      Shape = bsLeftLine
      ExplicitLeft = 209
      ExplicitTop = 31
      ExplicitHeight = 460
    end
    object StdDownloadImage: TImage
      Left = -50
      Top = 59
      Width = 32
      Height = 32
      Visible = False
    end
    object ico_icon: TImage
      Left = -48
      Top = 60
      Width = 34
      Height = 37
      Picture.Data = {
        055449636F6E0000010001002020000001002000A81000001600000028000000
        2000000040000000010020000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000001000000040000000500000005000000050000000500000005
        0000000500000005000000050000000500000005000000050000000500000005
        0000000500000005000000050000000500000005000000050000000500000005
        0000000500000005000000050000000500000005000000050000000500000004
        000000029595953CC5C5C5D1C2C2C2CDC1C1C1CDC1C1C1CDC1C1C1CDC0C0C0CD
        C0C0C0CDBFBFBFCDBFBFBFCDBEBEBECDBEBEBECDBEBEBECDBDBDBDCDBDBDBDCD
        BCBCBCCDBCBCBCCDBCBCBCCDBCBCBCCDBBBBBBCDBBBBBBCDBBBBBBCDBBBBBBCD
        BABABACDBABABACDBABABACDB9B9B9CDB9B9B9CDB9B9B9CDB9B9B9CDBCBCBCD1
        65656558AFAFAF50F4F4F4FFF2F2F2FFF3F2F2FFF2F1F2FFF1F0F1FFEFF0EFFF
        EEEEEEFFEEEEEEFFEEEEEEFFEEEDEEFFEDECEDFFECECECFFEEECEBFFF0ECE9FF
        F0ECEAFFEFEAE8FFEEEBE9FFEDEAE8FFEEE9E7FFEDE8E6FFEDEAE8FFECEAE8FF
        ECE8E5FFEBE9E7FFEBE6E4FFEBE8E5FFEAE5E3FFE9E5E3FFE4E4E3FFE6E6E6FF
        7C7C7C6EB0B0B050F5F5F5FFDAE3DEFFC8DBD1FFC6DAD0FFC9DBD2FFEBEAEAFF
        E8E8E8FFE9E8E8FFCCDBD3FFC4D7CDFFC4D6CDFFD1DDD6FF7DC9E2FF33BBEFFF
        34AAE2FF3FB1E5FF53B5E3FF58A1C3FF30A6ECFF3AB0EBFF3790C3FF3273AAFF
        36A2DBFF327BADFF3AABE2FF3493CFFF3BB2EAFF55C2F1FFD9DBDBFFE6E6E6FF
        7C7C7C6EB0B0B050F6F6F6FFD6E2DCFFC3DDD0FFC2DCCFFFC5DDD1FFF3F2F2FF
        F0F0F0FFF1F1F1FFCADED4FFBFD9CCFFBED8CBFFCFDFD7FFBAE5F2FF12C0FEFF
        00B2FBFF019CE9FF008FE2FF18A1EDFF229EDDFF1984CDFF0091E2FF1A4367FF
        03406DFF044F7CFF025D99FF039DEDFF2CB1E8FF649AB7FF8BB9CFFFE6E6E6FF
        7C7C7C6EB0B0B050F7F7F7FFD7E3DDFFC4DDD1FFC2DBCFFFBED5CCFFF3F1F3FF
        EBEBEDFFD4D3DCFFC3D6CFFFC0D9CDFFBFD9CCFFC9D8CFFF819BACFF5482A0FF
        17A1DCFF01A1F1FF0190E6FF0087DDFF0076C5FF178DCDFF0D2642FF081925FF
        07253CFF071017FF052E48FF0176C3FF0572BFFF00A7FBFF72C7EAFFE7E7E7FF
        7D7D7D6EB1B1B150F8F8F8FFDDE6E1FFD0E4DAFFB9CBC8FF5D6992FFB4B8C3FF
        B6BAC7FF3E3E90FF8895A6FFC9DDD4FFCDE0D6FF6BB0C2FF01509FFF113193FF
        00A1ECFF019AEBFF0192E9FF018CE6FF028AE4FF1269AEFF0B101AFF1A131FFF
        0F0C12FF0B0E12FF07141FFF022944FF0177C2FF06A6F6FF7AC5E8FFE7E7E7FF
        7D7D7D6EB1B1B150F9F9F9FFF0F0F0FFF9F8F8FFC9C9DCFF0C0B71FF303C8BFF
        556A9BFF1616AAFF373EA5FFB8B6C5FFD1CFD9FF718BB3FF171486FF142989FF
        007FC2FF018FDCFF0198EAFF018ADCFF0281D1FF0363A3FF111522FF272135FF
        1E1A28FF110D0BFF08131DFF043855FF0262AAFF049AEEFF77C3E8FFE8E8E8FF
        7D7D7D6EB2B2B250FAFAFAFFF0F0F0FFF8F8F8FFECECEEFF0C1076FF151775FF
        254197FF161CB8FF152CB1FF303CA5FF5166A9FF2C339CFF151380FF152E8AFF
        111D9BFF0668C8FF0294E8FF028BE0FF0284D0FF0175B7FF14293DFF171416FF
        1D1919FF111D24FF071923FF032D4AFF0167A8FF0198EAFF74C3E8FFE8E8E8FF
        7D7D7D6EB1B1B150FBFBFBFFF1F0F1FFFBFAFAFFE3E2E7FF475095FF151970FF
        16268BFF1630C0FF163FBAFF161BC0FF1833CCFF1524ABFF161D8DFF1835C5FF
        1511ACFF0673CEFF01A3F1FF0298E6FF008EDDFF078ED9FF0A6CA8FF0E3F5CFF
        0D2534FF082132FF03385EFF0268AFFF0384D2FF0294E2FF74C5EAFFE9E9E9FF
        7E7E7E6EB2B2B250FCFCFCFFB4BAC1FF8D9DA5FF6E7A9DFF181BB3FF141AB3FF
        1536AEFF1643BCFF143CBEFF151BC2FF1743D8FF141BA2FF1851C3FF1311B4FF
        131193FF0195DBFF01A2EDFF06A2F0FF3097C8FF0194E2FF0484CFFF0882C3FF
        128ECFFF0A5385FF0486D8FF0181D0FF029FEFFF0DADF9FF7FBEDCFFEAEAEAFF
        7E7E7E6EB2B2B250FCFCFCFF8486BFFF1B239AFF26399DFF131AA9FF1628C9FF
        1518BEFF1345C2FF1444B9FF141EC1FF1A6BE6FF1538AAFF1630CEFF111098FF
        0F289DFF073AA5FF3083B8FF789FA6FF0093DFFF0295E1FF1BB7FAFF0268AFFF
        0996E2FF077EC1FF0B9DE8FF119AEBFF03A8F5FF08ACF6FF7FCCECFFEBEBEBFF
        7E7E7E6EB2B2B250FDFDFDFF8585BBFF100F74FF1224A0FF144FD0FF121CABFF
        182ECEFF204BE1FF1276CCFF1228C2FF166EDEFF1C63CEFF1710ABFF121BA2FF
        1110B9FF100EB4FF2E409AFF0A388BFF083694FF0081CDFF1FB7F6FF016BB3FF
        0D98E2FF0E96D8FF00A5F3FF1FAFF4FF18AFF8FF07B0F7FF74C4E6FFECECECFF
        7E7E7E6EB2B2B250FEFEFEFFB6BAD9FF202488FF0E0E70FF111F84FF126ED9FF
        1022A4FF1F43E2FF1679E3FF0F44B0FF124EA5FF1F53D6FF1A48C4FF1818BEFF
        1313BBFF143FD3FF0F26B7FF100FA6FF0F0897FF0082D9FF78B9CEFF0082CDFF
        0F9CE4FF3FB2E3FF00B2FCFF0EAEF2FF1AB0EDFF28B3EEFF81C9E8FFECECECFF
        7D7D7D6EB2B2B250FFFFFFFFA0A6CAFF1B35ACFF1038B9FF0F42AFFF0F3B99FF
        0F74C1FF0E53A7FF0B5189FF0B678BFF0B6188FF0D5A99FF1D1DC1FF1747D0FF
        1049B1FF0C0963FF0C0D7FFF101991FF0852C4FF4EC4E3FF9CC4C4FF0094DAFF
        0E99DCFF7AC8E7FF2DBFF4FF00ADF1FF0FB8F8FF9EC0BBFFA3CEDAFFEDEDEDFF
        7E7E7E6EB2B2B250FFFFFFFF8888C1FF0A098EFF0C0689FF0E038BFF0E1099FF
        0E3FB5FF0B6D9BFF0A9EB0FF0AA7B7FF0AA1B1FF0A799DFF0D72B8FF0E31A4FF
        0C1289FF0B0D91FF0B0B89FF0B0785FF326AB4FFC7DDCEFFA3CBC8FF0094D9FF
        0084C9FFB9D5E1FFB6E0EEFF00AEF4FF00A0E7FF76B6C3FFD1DCD6FFEEEEEEFF
        7E7E7E6EB3B3B350FFFFFFFFB8B9CCFF2A3CA6FF0E38BBFF0D40B6FF0C48B6FF
        0C42A4FF0993B7FF08BBC6FF08CAD6FF09C5D0FF08A0B4FF10398FFF0F2289FF
        0B2B9EFF0C31A7FF0F38AFFF212E9CFF919CA8FFBBD1CAFFC9DED0FF0089C6FF
        7CADC6FFF2F2F0FFF4F0EEFF6EC0DAFF2483B6FF9DC7C9FFD2DED8FFEFEFEFFF
        7E7E7E6EB2B2B250FFFFFFFF8281BDFF090781FF0A0A77FF0A0B78FF0A1589FF
        0A3594FF0B97BBFF07D0D7FF07DEE2FF07D9DBFF07A5C2FF0C3C98FF0F4ABAFF
        0A2B93FF08176EFF090F7EFF070993FF14189CFF9191B5FFF2F1F3FFF3F3EDFF
        C1DCCEFFBFDACDFFBCD9CAFFF0F0EFFFF8F4F3FFF2F1F1FFE8E8E8FFF0F0F0FF
        7F7F7F6EB2B2B250FFFFFFFF96A2CAFF0F3CC3FF0A3AC5FF092397FF0C1A6CFF
        1A46A4FF0C278BFF08A2C3FF06C5D5FF07B9D1FF08458FFF0B30A8FF080676FF
        080C87FF0914A3FF080D81FF060888FF030282FF3132A5FFF7F7F4FFE9EFECFF
        C2DBCFFFC2DCCFFFC0DBCDFFEDF0EFFFF0F0F0FFF1F1F1FFE8E8E8FFF1F1F1FF
        7F7F7F6EB2B2B250FFFFFFFF8286CEFF080E9DFF09017CFF071482FF0A27A5FF
        040069FF1D56BAFF1143A5FF1254ADFF1355B0FF061683FF060877FF0710A5FF
        0814A1FF071089FF02007AFF5872C1FF949BDAFFDDDCF1FFF7F6F7FFEBF0EDFF
        C1DCCEFFC2DBCFFFBFDACDFFF0F1F1FFF3F2F2FFF3F2F3FFEAEAEAFFF2F2F2FF
        7E7E7E6EB2B2B250FFFFFFFF8381C1FF020C91FF0327A8FF080E94FF04036FFF
        2026B7FF1242B5FF08158EFF1143B1FF0A279CFF091DA3FF050878FF050586FF
        070D98FF0614ABFF1336C5FFADB2BEFFD9E8E1FFD1E4DBFFD0E4DAFFD6E7DEFF
        ECF1EEFFEAF0ECFFEBEFEDFFD0E2D9FFCDE1D7FFCDE1D7FFD9E2DEFFF3F3F3FF
        7F7F7F6EB2B2B250FFFFFFFFACAFE5FFA8B5EFFF5459ADFF050371FF1B1AAFFF
        0E139EFF0533B4FF090391FF0620A7FF060389FF063AB0FF091A9DFF070587FF
        040287FF01159BFF040094FF333EAFFFC9D9D3FFC7E0D3FFC6DFD3FFD1E4DBFF
        F7F7F7FFF5F5F5FFF7F6F6FFC8DFD3FFC3DCD0FFC3DDD0FFD5E1DBFFF4F4F4FF
        7F7F7F6EB2B2B250FFFFFFFFFAFAF9FFFFFFFFFF9FA2DCFF1F29A9FF07209FFF
        04048EFF063BC0FF0F0DAAFF072AB5FF030087FF0433BBFF05087CFF1536BBFF
        0208A5FFA0A5DEFF4758C8FF060CA4FFD5E7DEFFC7E1D4FFC7E0D3FFD1E5DBFF
        F9F8F8FFF6F6F6FFF8F7F7FFC8E0D4FFC4DDD0FFC4DDD1FFD6E1DCFFF5F5F5FF
        7F7F7F6EB2B2B250FFFFFFFFF7F7F7FFF9F9F9FFEEEDEFFF606EB7FF3B3898FF
        3B4EBCFF3F5DC5FF4548C8FF3E5CC6FF39379BFF4C5DB9FF3A45A2FF3533A0FF
        B4C2C0FFF9F8F8FFFBFAF6FFFFFFF8FFDBE7E1FFCDE0D6FFCCE0D6FFD5E3DCFF
        F2F2F2FFF0F0F0FFF2F1F1FFCDDFD6FFCADDD3FFCADDD3FFDBE4DFFFF6F6F6FF
        8080806EB2B2B250FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFDFEFEFFFDFDFDFFFDFDFDFFFDFCFCFFFDFCFDFFFCFCFCFFFBFBFBFF
        F9F9F9FFF9F9F9FFF8F9F9FFF9F8F9FFF8F8F8FFF8F7F8FFF6F6F6FFF7F7F7FF
        8080806EADADAD35E4E4E4BCE2E2E2B9E2E2E2B9E2E2E2B9E2E2E2B9E2E2E2B9
        E2E2E2B9E2E2E2B9E2E2E2B9E2E2E2B9E2E2E2B9E2E2E2B9E1E1E1B9E1E1E1B9
        E1E1E1B9E1E1E1B9E1E1E1B9E0E0E0B9E0E0E0B9DFDFDFB9DFDFDFB9DEDEDEB9
        DEDEDEB9DEDEDEB9DDDDDDB9DDDDDDB9DCDCDCB9DCDCDCB9DCDCDCB9DDDDDDBC
        7D7D7D4800000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFFFFFFFFFFFFFFFFFFFFFF80000001800000018000000180000001
        8000000180000001800000018000000180000001800000018000000180000001
        8000000180000001800000018000000180000001800000018000000180000001
        8000000180000001800000018000000180000001FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF}
      Visible = False
    end
    object app_icon: TImage
      Left = -95
      Top = 60
      Width = 41
      Height = 37
      Picture.Data = {
        055449636F6E0000010001002020000001000800A80800001600000028000000
        2000000040000000010008000000000000000000000000000000000000000000
        00000000D7780000D7790300D87B0500D87C0800D97D0A00D97E0C00D9800F00
        DA811100DA831400DA8416008C8985009C99960099999900C6C4C200E6E6E600
        F2F2F200F3F3F300F4F4F400F5F5F500F6F6F600F7F7F700F8F8F800F9F9F900
        FAFAFA0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000018181818181818181818181818181818181818181818181818181818
        1818181818181818181818181818181818181818181818181818181818181818
        1818181818181818181818181818181818181818181818181818181818181818
        1818181818181818181818181818181818181818181818181818181818181818
        1818181818181818181818181818181818181818181818181818181818181818
        1818181818181818181818181818181818181818181818181818181818181818
        1818181818180A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A
        0A0A181818180A0E0E0E0E0E1716161615151414141313131212121111111010
        0F0A181818180A0E0E0E0E0E1717161616151514141413131312121211111110
        100A181818180A0E0E0E0E0E1700000000000000000000001313121212111111
        100A181818180A0E0E0E0E0E1700000000000000000000001313131212121111
        110A181818180A0E0E0E0E0E170000000000000000000000140C0C0C0C121211
        110A181818180A0E0B0B0B0E1700000000000000000000001414131313121212
        110A181818180A0E0E0E0E0E170001000000000000000000140C0C0C0C0C0C0C
        120A181818180A0E0E0E0E0E1700020100000000000000001514141413131312
        120A181818180A0E0B0B0B0E170003020100000000000000150C0C0C0C0C0C0C
        120A181818180A0E0E0E0E0E1700040302010000000000001615151414141313
        130A181818180A0E0E0E0E0E170005040302010000000000160C0C0C0C0C0C0C
        130A181818180A0E0B0B0B0E1700060504030201000000001616161515141414
        130A181818180A0E0E0E0E0E170007060504030201000000170C0C0C0C0C0C0C
        140A181818180A0E0E0E0E0E1700080706050403020100001717161616151514
        140A181818180A0E0B0B0B0E170009080706050403020100170C0C0C0C0C0C0C
        140A181818180A0E0E0E0E0E1700000000000000000000001717171716161615
        150A181818180A17171717171717171717171717171717171717171717161616
        150A181818180A0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
        0E0A181818180A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0D0A0D0A
        0D0A181818180A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A
        0A0A181818181818181818181818181818181818181818181818181818181818
        1818181818181818181818181818181818181818181818181818181818181818
        1818181818181818181818181818181818181818181818181818181818181818
        1818181818181818181818181818181818181818181818181818181818181818
        1818181818181818181818181818181818181818181818181818181818181818
        18181818FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000003
        C0000003C0000003C0000003C0000003C0000003C0000003C0000003C0000003
        C0000003C0000003C0000003C0000003C0000003C0000003C0000003C0000003
        C0000003C0000003C0000003C0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF}
      Visible = False
    end
    object download_open_image: TAdvGDIPPicture
      Left = -36
      Top = 80
      Width = 28
      Height = 25
      ImageTypes = []
      Visible = False
      Version = '1.4.3.0'
    end
    object pdf_icon: TImage
      Left = -34
      Top = 75
      Width = 32
      Height = 32
      Picture.Data = {
        055449636F6E0000010001002020000001002000A81000001600000028000000
        2000000040000000010020000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000091908FFF908F8EFF
        8F8E8DFF8E8E8CFF8D8D8BFF8D8C8BFF8C8B8AFF8B8A89FF8A8A88FF8A8987FF
        898886FF888786FF878685FF868684FF868583FF858482FF848381FF838281FF
        838280FF82817FFF81807EFF0000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000919190FFFBFBFAFF
        FBFBFAFFC3C3C3FFE8E8E8FFFBFBFAFFFBFBFAFFFBFBFAFFFBFBFAFFFBFBFAFF
        FBFBFAFFFBFBFAFFFBFBFAFFFBFBFAFFFBFBFAFFFBFBFAFFFBFBFAFFFBFBFAFF
        FBFBFAFFFBFBFAFF82817FFF0000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000929290FFFBFBFAFF
        F7F6F5FF8A8A8AFFD3D2D1FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FF
        F7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FF
        F7F6F5FFFBFBFAFF838280FF0000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000939291FFFBFBFBFF
        F7F7F6FF8A8A8AFFD3D2D2FFD3D2D1FFE5E4E3FFF7F6F5FFF7F6F5FFF7F6F5FF
        D3D2D1FFE5E4E3FFDCDBDAFFEEEDECFFF7F6F5FFD3D2D1FFF7F6F5FFF7F6F5FF
        F7F6F5FFFBFBFAFF838281FF0000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000949392FFFCFBFBFF
        F8F7F6FF8B8A8AFF818181FFAFAFAEFF787878FFD3D2D2FFF7F6F6FF818181FF
        939393FFA5A5A5FF787878FFD3D2D1FFF7F6F5FF666666FFF7F6F5FFF7F6F5FF
        F7F6F5FFFBFBFAFF848381FF0000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000949493FFFCFBFBFF
        F8F7F6FF8B8A8AFFCACAC9FFF8F7F6FFC1C1C0FF949393FFD4D3D2FF818181FF
        F7F6F6FFF7F6F5FF818181FFD3D2D1FFF7F6F5FF666666FFF7F6F5FFF7F6F5FF
        F7F6F5FFFBFBFAFF858482FF0000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000959594FFFCFBFBFF
        F8F7F6FF8B8A8AFFD4D3D2FFF8F7F6FFD4D3D2FF8B8A8AFFD4D3D2FF8B8A8AFF
        F8F7F6FFF8F7F6FF8A8A8AFFD3D2D1FFF7F6F5FF666666FFF7F6F5FFF7F6F5FF
        F7F6F5FFFBFBFAFF868583FF0000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000969595FFFCFBFBFF
        F8F7F7FF8B8A8AFF8B8A8AFFD4D3D2FF8B8A8AFFAFAFAEFFF8F7F6FF787878FF
        B8B8B7FFCACAC9FF6F6F6FFFD3D3D2FFDCDBDAFF666666FFD3D2D1FFF7F6F5FF
        F7F6F5FFFBFBFAFF868684FF0000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000979695FFFCFCFBFF
        F9F8F7FFC2C1C1FFDDDDDCFFB8B8B8FFC1C1C1FFF8F7F7FFF8F7F7FFEFEEEDFF
        AFAFAEFFC1C1C0FF8B8A8AFFD4D3D2FFC1C1C0FF666666FFAFAEAEFFF7F6F5FF
        F7F6F5FFFBFBFAFF878685FF0000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000979796FFFCFCFBFF
        F9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF8F8F7FFF8F7F7FF
        F8F7F7FFF8F7F6FF8B8A8AFFD4D3D2FFF8F7F6FF666666FFF7F6F6FFF7F6F5FF
        F7F6F5FFFBFBFAFF888786FF0000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000989897FFFCFCFBFF
        F9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FF
        F8F8F7FFF8F7F7FF8B8A8AFFD4D3D2FFF8F7F6FFAFAFAEFF818181FFD3D2D2FF
        F7F6F5FFFBFBFAFF898886FF0000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000999998FFFCFCFCFF
        F9F8F8FFF9F8F8FFF9F8F8FFF9F8F8FFD8D7D6FFDDDCDBFFDCDCDBFFD6D6D5FF
        F5F4F3FFF7F7F6FFF8F7F7FFF8F7F6FFF8F7F6FFF8F7F6FFF8F7F6FFF8F7F6FF
        F7F6F6FFFBFBFAFF8A8987FF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000009A9999FFFCFCFCFF
        F9F9F8FFF9F9F8FFD9D9D8FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F5F5F5FFD7D6D6FFF3F3F2FFF8F7F7FFF8F7F6FFF8F7F6FFF8F7F6FFF8F7F6FF
        F8F7F6FFFBFBFAFF8A8A88FF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000009B9A9AFFFDFCFCFF
        F7F6F5FFE6E5E5FFFFFFFFFFEDC9A4FFDA8E40FFCF6F0BFFCF6E0AFFD98C3DFF
        ECC69DFFFFFFFFFFE9E8E8FFE7E6E5FFF8F7F7FFF8F7F6FFF8F7F6FFF8F7F6FF
        F8F7F6FFFBFBFBFF8B8A89FF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000009B9B9AFFFCFCFCFF
        E3E3E3FFFFFFFFFFDA9040FFD37918FFD37B1BFFD37B1BFFD37B1BFFD37B1BFF
        D37A19FFD98C38FFFFFFFFFFE5E5E4FFF2F2F1FFF8F7F7FFF8F7F6FFF8F7F6FF
        F8F7F6FFFCFBFBFF8C8B8AFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000009C9C9BFFDFDEDEFF
        FFFFFFFFDE9F58FFD37C1BFFD98C37FFD47E1DFFD47D1DFFD47F1FFFD37D1DFF
        D47D1DFFD47E1EFFDC974BFFFFFFFFFFD6D6D5FFF6F6F5FFF8F7F7FFF8F7F6FF
        F8F7F6FFFCFBFBFF8D8C8BFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000009D9D9CFFE5E5E5FF
        F6E7D5FFD27A13FFD58221FFE1A660FFE1A864FFD37E19FFDE9643FFD4801DFF
        D48120FFD48120FFD37D17FFF3DEC6FFE6E6E6FFF2F1F0FFF8F8F7FFF8F7F6FF
        F8F7F6FFFCFBFBFF8D8D8BFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000009E9D9DFFF7F7F8FF
        E7B981FFD68523FFD68522FFD48019FFF0D5B1FFEDC597FFE49F53FFD98D31FF
        D58522FFD68522FFD68523FFE5B478FFFEFFFFFFEDECEBFFF8F8F7FFF8F7F7FF
        F8F7F6FFFCFBFBFF8E8E8CFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000009D9D9DFFFFFFFFFF
        E1AC66FFD68925FFD68925FFDE9640FFE6A25AFFFFFEECFF997D9EFFE7A14AFF
        D58720FFD68925FFD68925FFDFA55AFFFFFFFFFFD8D7D7FFF9F8F7FFF8F8F7FF
        F8F7F6FFFCFBFBFF8F8E8DFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000009F9F9FFFFEFFFFFF
        E3B574FFD88F29FFD88F28FFD78F28FFE09C4AFFC68543FF2D39F5FFB7887EFF
        DF9B49FFD88F29FFD88F29FFE2AF69FFFFFFFFFFE5E4E3FFF9F8F7FFF8F8F7FF
        F8F7F7FFFCFBFBFF908F8EFF0000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000A0A0A0FFEDEDEDFF
        EDD1A9FFD8922AFFD8932BFFD8932AFFD9932DFFE4A35AFFE19D41FF4949DCFF
        D6922DFFD8932BFFD8932BFFEBCC9FFFF2F2F2FFEEEDECFFF9F8F7FFF9F8F7FF
        F8F7F7FFFCFBFBFF91908FFF0000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000A1A1A0FFE3E3E3FF
        FFFFFFFFD7952EFFD9952EFFD9952EFFD9952DFFDF9D43FFD8952BFFE39B21FF
        8E6E8AFFDE9828FFD69228FFFFFFFFFFE0E0E0FFE1E1E0FFE9E8E7FFE9E8E7FF
        E8E8E7FFECEBEBFF919190FF0000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000A2A1A1FFF5F5F5FF
        F7F6F6FFF5EAD7FFD79324FFDA9930FFDA992FFFDA992FFFDA9930FFDA992FFF
        DF9C2AFFD39028FFF4E5CFFFF9F9F9FFDEDEDEFFA6A6A6FF8C8C8CFF8C8C8CFF
        8C8C8CFF8C8C8CFF929290FF0000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000A2A2A2FFFDFDFDFF
        E0E0DFFFFEFEFEFFF6EDDEFFD9A346FFDA9828FFDB9C2FFFDB9C30FFDA9929FF
        D9A141FFF5EAD8FFFFFFFFFFD4D4D3FFF6F6F6FFA6A6A6FFEBEBEBFFE9E9E9FF
        E5E5E5FFD3D3D3FF989797EF0000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000A3A3A3FFFDFDFDFF
        FAFAFAFFDFDFDEFFF1F0F0FFFFFFFFFFF4EBDDFFECD4ACFFEBD4ABFFF3EAD9FF
        FFFFFFFFF4F4F4FFD7D6D5FFF1F1F0FFFCFCFCFFA6A6A6FFEFEFEFFFECECECFF
        D9D9D8FF9A9998EF949392300000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000A4A4A4FFFDFDFDFF
        FBFBFBFFFBFBFAFFF9F8F8FFDEDDDDFFE2E2E2FFEBEBEBFFEBEBEBFFE2E2E2FF
        DCDCDCFFEEEDECFFF7F6F5FFF9F9F8FFFCFCFCFFA6A6A6FFF2F2F2FFDEDDDDFF
        9B9B9AEF95959430000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000A5A5A5FFFDFDFDFF
        FDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFBFFFAFAF9FFF9F9F8FFFAF9F9FF
        FBFAFAFFFDFCFCFFFDFCFCFFFCFCFCFFFEFEFEFFA6A6A6FFE0E0E0FF9D9D9CEF
        9796953000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000A5A5A5FFA5A5A5FF
        A4A4A4FFA3A3A3FFA2A2A2FFA2A1A1FFA1A1A0FFA0A0A0FF9F9F9FFF9E9E9EFF
        9E9D9DFF9D9D9CFF9C9C9BFF9B9B9AFF9B9A9AFF9A9999FF9F9F9EEF98989730
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFFFFFFFFFFFFFFF800003FF800003FF800003FF800003FF800003F
        F800003FF800003FF800003FF800003FF800003FF800003FF800003FF800003F
        F800003FF800003FF800003FF800003FF800003FF800003FF800003FF800003F
        F800003FF800003FF800003FF800007FF80000FFF80001FFF80003FFFFFFFFFF
        FFFFFFFF}
      Visible = False
    end
    object zip_icon: TImage
      Left = -42
      Top = 67
      Width = 32
      Height = 32
      Picture.Data = {
        055449636F6E0000010001002020000001002000A81000001600000028000000
        2000000040000000010020000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000049C8EBFF48C7EBFF
        48C7EBFF48C7EBFF48C6EAFF48C6EAFF48C6EAFF48C5EAFF47C5E9FF47C5E9FF
        47C4E9FF969696FF8D8D8DFF858585FF7D7D7DFF46C3E8FF46C2E8FF46C2E7FF
        46C2E7FF46C1E7FF45C1E7FF45C1E6FF45C0E6EF000000000000000000000000
        00000000000000000000000000000000000000000000000049C8ECFF8EE4FFFF
        8EE4FFFF8DE3FFFF8CE3FFFF8BE3FFFF8BE3FFFF8AE2FFFF89E2FFFF88E2FFFF
        88E2FFFF9E9E9EFFC8C8C8FFBDBDBDFF858585FF84E0FFFF83E0FFFFAEEBFFFF
        33BFEBFF6BD6FCFF73DAFFFF71DAFFFF45C1E6FF000000000000000000000000
        00000000000000000000000000000000000000000000000049C8ECFF8FE4FFFF
        73DDFDFFB5EDFFFF8DE3FFFF8CE3FFFF8BE3FFFF8BE3FFFF8AE2FFFF89E2FFFF
        88E2FFFFA6A6A6FFD3D3D3FFC8C8C8FF8D8D8DFF85E1FFFF84E0FFFFAEEBFFFF
        48C6EEFF6BD7FCFF74DAFFFF73DAFFFF45C1E7FF000000000000000000000000
        00000000000000000000000000000000000000000000000049C9ECFF90E4FFFF
        73DDFDFFB5EDFFFF8EE4FFFF8DE3FFFF8CE3FFFF8BE3FFFF8BE3FFFF8AE2FFFF
        89E2FFFF4A93AAFFCCCCCCFF346777FF4993AAFF85E1FFFF85E1FFFFAFEBFFFF
        49C6EEFF6DD7FCFF75DBFFFF74DAFFFF46C1E7FF000000000000000000000000
        00000000000000000000000000000000000000000000000049C9ECFF90E5FFFF
        74DDFDFFB6EDFFFF8EE4FFFF8EE4FFFF8DE3FFFF8CE3FFFF8BE3FFFF8BE3FFFF
        8AE2FFFF4A93AAFF346777FFE6E6E6FF4A93AAFF86E1FFFF85E1FFFFB0EBFFFF
        46C6EEFF6ED8FCFF76DBFFFF75DBFFFF46C2E7FF000000000000000000000000
        00000000000000000000000000000000000000000000000049C9EDFF91E5FFFF
        74DDFDFFB7EDFFFF8FE4FFFF8EE4FFFF8EE4FFFF8DE3FFFF8CE3FFFF8BE3FFFF
        8BE3FFFF4A93AAFFCCCCCCFF346777FF4A93AAFF87E1FFFF86E1FFFFB0EBFFFF
        5BCEF2FF6FD8FCFF77DCFFFF76DBFFFF46C2E7FF000000000000000000000000
        0000000000000000000000000000000000000000000000004ACAEDFF92E5FFFF
        75DDFDFFB7EEFFFF90E4FFFF8FE4FFFF8EE4FFFF8EE4FFFF8DE3FFFF8CE3FFFF
        8BE3FFFF4B93AAFF346777FFE6E6E6FF4A93AAFF88E2FFFF87E1FFFFB0EBFFFF
        57CCF1FF70D9FCFF79DCFFFF77DCFFFF46C2E8FF000000000000000000000000
        0000000000000000000000000000000000000000000000004ACAEDFF93E5FFFF
        75DDFDFFB7EEFFFF90E5FFFF90E4FFFF8FE4FFFF8EE4FFFF8EE4FFFF8DE3FFFF
        8CE3FFFF4B93AAFFCCCCCCFF346777FF4A93AAFF88E2FFFF88E2FFFFB1EBFFFF
        4BC7EEFF71D9FCFF7ADDFFFF79DCFFFF46C3E8FF000000000000000000000000
        0000000000000000000000000000000000000000000000004ACAEDFF93E6FFFF
        76DDFDFFB8EEFFFF91E5FFFF90E5FFFF90E4FFFF8FE4FFFF8EE4FFFF8EE4FFFF
        8DE3FFFF4B93AAFF346777FFE6E6E6FF4A93AAFF89E2FFFF88E2FFFFB2ECFFFF
        59CCF1FF72D9FCFF7BDDFFFF7ADDFFFF46C3E8FF000000000000000000000000
        0000000000000000000000000000000000000000000000004ACBEEFF94E6FFFF
        76DEFDFFB9EEFFFF92E5FFFF91E5FFFF90E5FFFF90E4FFFF8FE4FFFF8EE4FFFF
        8EE4FFFF4B93AAFFCCCCCCFF346777FF4B93AAFF8AE2FFFF89E2FFFFB2ECFFFF
        62CFF1FF62D2F7FF7CDEFFFF78DBFEFF47C3E8FF000000000000000000000000
        0000000000000000000000000000000000000000000000004ACBEEFF95E6FFFF
        77DEFDFFB9EFFFFF93E5FFFF92E5FFFF91E5FFFF90E5FFFF90E4FFFF8FE4FFFF
        8EE4FFFF4C94AAFF346777FFE6E6E6FF4B93AAFF8BE3FFFF8AE2FFFFA3E8FFFF
        A8E9FDFF4DC8EEFF69D6FAFF5BCEF1FF47C4E9AF000000000000000000000000
        0000000000000000000000000000000000000000000000004ACBEEFF96E6FFFF
        77DEFDFFB9EFFFFF93E6FFFF93E5FFFF92E5FFFF91E5FFFF90E5FFFF90E4FFFF
        8FE4FFFF4C94AAFFCCCCCCFF346777FF4B93AAFF8BE3FFFF8BE3FFFF8CE3FFFF
        AAEAFFFF8CDEF8FF42C4EAFF47C4E9CF47C4E910000000000000000000000000
        0000000000000000000000000000000000000000000000004ACCEEFF96E7FFFF
        78DEFDFFBAEFFFFF94E6FFFF93E6FFFF93E5FFFF92E5FFFF91E5FFFF90E5FFFF
        90E4FFFF4C94AAFF356777FFE6E6E6FF4B93AAFF8CE3FFFF8BE3FFFF8BE3FFFF
        94E5FFFFB2ECFFFF44C4E9FF47C5E93000000000000000000000000000000000
        0000000000000000000000000000000000000000000000004BCCEFFF97E7FFFF
        78DFFDFFBBEFFFFF95E6FFFF94E6FFFF93E6FFFF93E5FFFF92E5FFFF91E5FFFF
        90E5FFFF4C94AAFFCCCCCCFF356777FF4C94AAFF8DE3FFFF8CE3FFFF8BE3FFFF
        90E4FFFFB3ECFFFF48C5EAFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000004BCCEFFF97E7FFFF
        79DFFDFFBBEFFFFF96E6FFFF95E6FFFF94E6FFFF93E6FFFF93E5FFFF92E5FFFF
        8EDFF9FF3D7788FF2B535FFFB8B8B8FF3D7788FF8ADEF9FF8DE3FFFF8CE3FFFF
        8BE3FFFFB3EDFFFF48C6EAFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000004BCDEFFF97E7FFFF
        79DFFDFFBBEFFFFF96E7FFFF96E6FFFF95E6FFFF94E6FFFF93E6FFFF93E5FFFF
        75B7CCFFC1C1C1FFBDBDBDFFBABABAFFB6B6B6FF72B7CCFF8EE4FFFF8DE3FFFF
        8CE3FFFFB3EDFFFF48C6EAFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000004BCDEFFF97E7FFFF
        79DFFDFFBBEFFFFF97E7FFFF96E7FFFF96E6FFFF95E6FFFF94E6FFFF93E6FFFF
        75B7CCFFC5C5C5FF1C363EFF787878FFBABABAFF72B7CCFF8EE4FFFF8EE4FFFF
        8DE3FFFFB4EDFFFF48C6EAFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000004BCDEFFF97E7FFFF
        79DFFDFFBBEFFFFF97E7FFFF97E7FFFF96E7FFFF96E6FFFF95E6FFFF94E6FFFF
        76B8CCFFC8C8C8FF6B6B6BFF1C363EFFBDBDBDFF73B7CCFF8FE4FFFF8EE4FFFF
        8EE4FFFFB5EDFFFF48C7EBFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000004BCEF0FF97E7FFFF
        79DFFDFFBBEFFFFF97E7FFFF97E7FFFF97E7FFFF96E7FFFF96E6FFFF95E6FFFF
        77B8CCFFCCCCCCFFC8C8C8FFC5C5C5FFC1C1C1FF73B7CCFF90E4FFFF8FE4FFFF
        8EE4FFFFB5EDFFFF48C7EBFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000004CCEF0FF97E7FFFF
        79DFFDFFBBEFFFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF96E7FFFF96E6FFFF
        77B8CCFFCFCFCFFFCCCCCCFFC8C8C8FFC5C5C5FF74B7CCFF90E5FFFF90E4FFFF
        8FE4FFFFB5EDFFFF48C7EBFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000004CCEF0FF97E7FFFF
        79DFFDFFBBEFFFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF96E7FFFF
        78B8CCFFD3D3D3FFCFCFCFFFCCCCCCFFC8C8C8FF75B7CCFF91E5FFFF90E5FFFF
        90E4FFFFB6EDFFFF49C8EBFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000004CCFF0FF97E7FFFF
        79DFFDFFBBEFFFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF
        76B6C8FFD6D6D6FFD3D3D3FFCFCFCFFFCCCCCCFF73B4C8FF92E5FFFF91E5FFFF
        90E5FFFFB7EDFFFF49C8ECFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000004CCFF1FF97E7FFFF
        79DFFDFFBBEFFFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF
        74A3B2FFDADADAFFD6D6D6FFD3D3D3FFCFCFCFFF6E9FAEFF93E5FFFF92E5FFFF
        91E5FFFFB7EEFFFF49C8ECFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000004CCFF1FF97E7FFFF
        79DFFDFFBBEFFFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF
        71939DFFB9B9B9FF636363FF606060FFB1B1B1FF698B96FF93E6FFFF93E5FFFF
        92E5FFFFB7EEFFFF49C9ECFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000004CD0F1FF97E7FFFF
        79DFFDFFBBEFFFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF
        79949CFFB4B4B4FFDBDBDBFFDBDBDBFFABABABFF6E8A92FF94E6FFFF93E6FFFF
        93E5FFFFB8EEFFFF49C9ECFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000004DD0F1FF97E7FFFF
        79DFFDFFBBEFFFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF
        929EA2FFB7B7B7FFDBDBDBFFDBDBDBFFAEAEAEFF748184FF95E6FFFF94E6FFFF
        93E6FFFFB9EEFFFF49C9EDFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000004DD0F2FF97E7FFFF
        97E7FFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF97E7FFFF90DCF2FF
        BAC0C2FF808080FFDBDBDBFFDBDBDBFF757575FFA2A8AAFF8EDBF2FF95E6FFFF
        94E6FFFFB9EFFFFF4ACAEDFF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000004DD1F2FF4DD0F2FF
        4DD0F1FF4CD0F1FF4CCFF1FF4CCFF1FF4CCFF0FF4CCEF0FF4CCEF0FF48C6E6FF
        D3D3D3FFACACACFFA0A0A0FF9B9B9BFF9E9E9EFFB6B6B6FF47C3E4FF4ACBEEFF
        4ACBEEFF4ACAEDFF4ACAEDCF0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        D8D8D8AFD3D3D3FFCDCDCDFFC8C8C8FFC2C2C2FFBCBCBCAF0000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFFFFFFFFFFFFFFF800000FF800000FF800000FF800000FF800000F
        F800000FF800000FF800000FF800000FF800000FF800000FF800000FF800001F
        F800003FF800003FF800003FF800003FF800003FF800003FF800003FF800003F
        F800003FF800003FF800003FF800003FF800003FF800003FF800003FFFFE07FF
        FFFFFFFF}
      Visible = False
    end
    object other_icon: TImage
      Left = -26
      Top = 83
      Width = 32
      Height = 32
      Picture.Data = {
        055449636F6E0000010001002020000001002000A81000001600000028000000
        2000000040000000010020000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000B5B4B587D9D8D9FF
        D6D6D6FFD5D5D5FFD5D5D5FFD5D4D5FFD3D3D4FFD3D2D3FFD2D2D2FFD2D1D2FF
        D1D1D1FFD0D0D0FFCFCFD0FFCFCFCFFFCECECFFFCECECEFFCDCCCDFFCCCCCDFF
        CCCBCCFFCBCBCCFFCDCDCEFF9C9B9D8700000000000000000000000000000000
        000000000000000000000000000000000000000000000000B1B0B180FDFDFDFF
        F5F5F5FFF5F5F5FFF4F4F4FFF4F4F4FFF4F4F4FFF3F3F3FFF3F3F3FFF2F2F2FF
        F2F2F2FFF1F1F1FFF0F0F0FFF1F1F1FFF0F0F0FFF0F0F0FFEFEFEFFFEEEEEEFF
        EFEFEFFFEEEEEEFFF7F8F7FF98989A8000000000000000000000000000000000
        000000000000000000000000000000000000000000000000B2B1B280FDFDFDFF
        F6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4F4FFF4F4F4FFF3F3F3FFF3F3F3FF
        F3F3F3FFF3F3F3FFF2F2F2FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FF
        EFEFEFFFEFEFEFFFF8F8F8FF9A989B8000000000000000000000000000000000
        000000000000000000000000000000000000000000000000B3B2B380FDFDFDFF
        F6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4F4FFE8E8E8FFE4E4E4FF
        E2E2E2FFE2E2E2FFE5E5E5FFEBEBEBFFF2F2F2FFF1F1F1FFF0F0F0FFF0F0F0FF
        F0F0F0FFEFEFEFFFF8F8F8FF9B9A9B8000000000000000000000000000000000
        000000000000000000000000000000000000000000000000B5B4B480FDFDFDFF
        F7F7F7FFF6F6F6FFF6F6F6FFF4F4F4FFE3E3E3FFE7E7E7FFF8F8F8FFFEFEFFFF
        FFFFFFFFFFFFFFFFFDFDFEFFF4F4F4FFE3E3E3FFE6E6E6FFF1F1F1FFF0F0F0FF
        F0F0F0FFF0F0F0FFF8F8F8FF9B9B9D8000000000000000000000000000000000
        000000000000000000000000000000000000000000000000B5B5B580FDFDFDFF
        F7F7F7FFF7F7F7FFF2F2F2FFE2E2E2FFFEFEFEFFFFFFFFFFF9EFE4FFEECFB0FF
        E8BC8EFFE9C196FFF2DAC1FFFDF9F5FFFFFFFFFFF5F5F5FFE1E1E1FFF1F1F1FF
        F0F0F0FFF0F0F0FFF9F9F9FF9D9C9D8000000000000000000000000000000000
        000000000000000000000000000000000000000000000000B7B6B680FDFDFDFF
        F7F7F7FFF2F2F2FFE9E9E9FFFFFFFFFFF9EDE1FFDC9A53FFD17516FFD17311FF
        D17616FFD17515FFD07210FFD37B20FFE5B580FFFFFEFEFFFEFEFEFFE2E2E2FF
        F1F1F1FFF0F0F0FFF9F9F9FF9E9E9F8000000000000000000000000000000000
        000000000000000000000000000000000000000000000000B7B7B780FDFDFDFF
        F7F7F7FFE4E4E4FFFFFFFFFFF4E1CCFFD27A1BFFD3791AFFD37A1BFFD37A1AFF
        D37A1AFFD37A1AFFD3791AFFD37A1BFFD27817FFDA9245FFFDFBF7FFFDFDFDFF
        E4E4E4FFF1F1F1FFF9F9F9FFA09FA08000000000000000000000000000000000
        000000000000000000000000000000000000000000000000B9B7B880FDFDFDFF
        E6E6E6FFFEFEFEFFF9EEE2FFD37D1DFFD48024FFD48125FFD37C1CFFD37C1CFF
        D37C1DFFD37C1CFFD37C1CFFD37C1CFFD37C1CFFD27B19FFDC9B52FFFFFFFFFF
        F1F1F1FFEAEAEAFFF9F9F9FFA0A0A18000000000000000000000000000000000
        000000000000000000000000000000000000000000000000BAB9B980FEFEFEFF
        EAEAEAFFFFFFFFFFDD9E54FFD47F1EFFD37D1AFFE5B47CFFD88D37FFD47F1DFF
        D37E1DFFDB8F39FFD47F1DFFD4801FFFD4801FFFD4801FFFD37C18FFEDCFABFF
        FFFFFFFFE7E7E7FFFAFAFAFFA2A1A38000000000000000000000000000000000
        000000000000000000000000000000000000000000000000BBBABA80F1F1F1FF
        F8F8F8FFF9EFE4FFD3801DFFD48120FFD48120FFD4801CFFF5E4CFFFDFA157FF
        D58321FFE29F55FFD4801CFFD4811FFFD48120FFD48120FFD58120FFDB9849FF
        FFFFFFFFECECECFFFBFBFBFFA2A2A38000000000000000000000000000000000
        000000000000000000000000000000000000000000000000BCBCBC80EEEEEEFF
        FEFEFFFFEDD0ACFFD4821CFFD58622FFD58622FFD58420FFD88F35FFFFFFFFFF
        EDC598FFE49E51FFDD9440FFD7892AFFD58622FFD58622FFD58623FFD58624FF
        FCF6F0FFF6F6F6FFF6F6F6FFA4A4A58000000000000000000000000000000000
        000000000000000000000000000000000000000000000000BEBDBD80F0F0F0FF
        FFFFFFFFE8C391FFD68721FFD68824FFD68925FFDE9843FFE5A158FFECC191FF
        FCFFFFFFA37D88FFE7A251FFD58722FFD68823FFD68824FFD68824FFD58620FF
        F8EEE1FFF9F9F9FFF3F3F3FFA6A5A68000000000000000000000000000000000
        000000000000000000000000000000000000000000000000BFBEBE80F0F0F0FF
        FFFFFFFFE9C698FFD68A23FFD78C27FFD78C26FFD68B25FFD98F2FFFE09A44FF
        9279A2FF2232FFFFBD8C7EFFE5A359FFDC953CFFD78C26FFD78C27FFD58923FF
        F8F0E4FFF8F8F8FFF3F3F3FFA6A6A88000000000000000000000000000000000
        000000000000000000000000000000000000000000000000C0BFBF80EEEEEEFF
        FDFEFEFFF0DBBEFFD68B21FFD88F28FFD89028FFD78F28FFDA9435FFE2A051FF
        E6A04AFF9071A2FF383EEFFFD38C2BFFD78F28FFD89029FFD89029FFD79331FF
        FCFBF8FFF5F5F5FFF9F9F9FFA8A8A88000000000000000000000000000000000
        000000000000000000000000000000000000000000000000C0BFBF80F4F4F4FF
        F6F6F6FFFCF9F4FFD79430FFD9932BFFD8932BFFD9932BFFD8932BFFD79128FF
        E5A55FFFDD9628FFA57869FF6757B6FFDE9624FFD9932BFFD9932BFFE0B06AFF
        FFFFFFFFEBEBEBFFFDFDFDFFA9A8AA8000000000000000000000000000000000
        000000000000000000000000000000000000000000000000C2C0C180FEFEFEFF
        E6E6E6FFFFFFFFFFE5C189FFD9932AFFD9942CFFD9942CFFD9942CFFD9942BFF
        DF9C45FFD9942CFFDA952AFFBA8551FFAA7C65FFDB952BFFD79126FFF3E9D8FF
        FEFEFEFFEBEBEBFFFBFCFBFFABA9AB8000000000000000000000000000000000
        000000000000000000000000000000000000000000000000C3C2C180FCFCFCFF
        EBEBEBFFF8F8F8FFFEFDFCFFDAA650FFD9972CFFD9982EFFDA982EFFD9982EFF
        DA982FFFDA982FFFDA982EFFDA992EFFD59535FFD79428FFE7C99AFFFFFFFFFF
        EEEEEEFFF2F2F2FFFCFCFCFFABABAB8000000000000000000000000000000000
        000000000000000000000000000000000000000000000000C4C3C380FCFCFCFF
        F8F8F8FFE3E3E3FFFEFEFEFFFCFAF6FFDCAC5DFFD9982BFFDA9B31FFDA9A31FF
        DA9B31FFDA9A31FFDA9A31FFDA9A30FFD8972AFFE6CA9AFFFFFFFFFFF9F9F9FF
        EBEBEBFFF6F6F6FFFCFCFCFFADACAD8000000000000000000000000000000000
        000000000000000000000000000000000000000000000000C5C4C380FCFCFCFF
        F7F7F7FFF5F5F5FFE5E5E5FFFEFEFEFFFEFFFFFFEAD4AEFFDBA952FFD99C34FF
        D8992DFFD8992DFFD99F3AFFDEB46AFFF3E8D7FFFFFFFFFFF8F8F8FFEAEAEAFF
        F7F7F7FFF6F6F6FFFCFCFCFFADADAD8000000000000000000000000000000000
        000000000000000000000000000000000000000000000000C6C5C480FCFCFCFF
        F7F7F7FFF7F7F7FFF6F6F6FFE4E4E4FFF2F2F2FFFFFFFFFFFFFFFFFFFAF7F1FF
        F6EFE2FFF8F2E7FFFCFAF8FFFFFFFFFFFFFFFFFFEEEEEEFFEBEBEBFFF8F8F8FF
        F7F7F7FFF6F6F6FFFDFDFDFFAFAEAF8000000000000000000000000000000000
        000000000000000000000000000000000000000000000000C7C5C680FCFCFCFF
        F7F7F7FFF7F7F7FFF7F7F7FFF8F8F8FFECECECFFE6E6E6FFEFEFEFFFF7F7F7FF
        FAFAFAFFFAFAFAFFF5F5F5FFEBEBEBFFE9E9E9FFF5F5F5FFFCFCFCFFFBFBFBFF
        FBFBFBFFFBFBFBFFFFFFFFFFB0AFB08000000000000000000000000000000000
        000000000000000000000000000000000000000000000000C8C7C780FCFCFCFF
        F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF8F8F8FFF7F7F7FFEFEFEFFF
        EBEBEBFFECECECFFF2F2F2FFF8F8F8FFF7F7F7FFE5E5E5FFCBCBCBFFC9C9C9FF
        C8C8C8FFC6C6C6FFC4C4C4FFBBBABA8200000000000000000000000000000000
        000000000000000000000000000000000000000000000000CAC8C780FCFCFCFF
        F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FF
        F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFE4E4E4FFEFEFEFFFE9E9E9FF
        E7E7E7FFE4E4E4FFC4C3C3D30000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000CBCAC880FCFCFCFF
        F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FF
        F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFE5E5E5FFEBEBEBFFE7E7E7FF
        E3E4E4FFC5C4C4D300000000BBBBBB0000000000000000000000000000000000
        000000000000000000000000000000000000000000000000CCCACA80FCFCFCFF
        F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FF
        F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFE5E5E5FFE9E9E9FFE4E4E4FF
        C7C6C6D300000000BDBDBD000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000CCCBCB80FBFCFCFF
        F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FF
        F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFE5E5E5FFE5E5E5FFC8C7C7D3
        00000000BFBFBF00000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000D1CFCF87E7E6E6FF
        E5E4E4FFE5E4E4FFE4E4E3FFE4E3E3FFE3E3E2FFE3E2E2FFE2E2E1FFE2E1E1FF
        E1E0E1FFE0E0E0FFE0DFDFFFDFDFDFFFDFDEDEFFD4D4D4FFCBCBCBD300000000
        C1C1C10000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000C3C3C300
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFFFFFFFFFFFFFFF800001FF800001FF800001FF800001FF800001F
        F800001FF800001FF800001FF800001FF800001FF800001FF800001FF800001F
        F800001FF800001FF800001FF800001FF800001FF800001FF800001FF800001F
        F800001FF800001FF800003FF800007FF80000FFF80001FFF80003FFFFFFFFFF
        FFFFFFFF}
      Visible = False
    end
    object DownloadListViewCSV: TListView
      Left = -261
      Top = 60
      Width = 250
      Height = 150
      Columns = <
        item
          Caption = 'name'
        end
        item
          Caption = 'folder'
        end
        item
          Caption = 'desc'
        end>
      TabOrder = 1
      ViewStyle = vsReport
      Visible = False
    end
    object ListViewDownloads: TListView
      Left = 1
      Top = 0
      Width = 713
      Height = 415
      Align = alClient
      BorderStyle = bsNone
      Columns = <
        item
          Caption = 'Download'
          Width = 700
        end>
      FlatScrollBars = True
      GridLines = True
      IconOptions.Arrangement = iaLeft
      ReadOnly = True
      RowSelect = True
      ShowColumnHeaders = False
      SmallImages = DownloadIcons
      TabOrder = 0
      ViewStyle = vsReport
      OnClick = ListViewDownloadsClick
      OnDblClick = ListViewDownloadsDblClick
    end
  end
  object Panel_Profile: TPanel
    Left = 280
    Top = 186
    Width = 714
    Height = 415
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    DoubleBuffered = True
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 10
    Visible = False
    object Label1: TLabel
      Left = 16
      Top = 46
      Width = 105
      Height = 13
      AutoSize = False
      Caption = 'History Folder:'
      EllipsisPosition = epEndEllipsis
    end
    object Label2: TLabel
      Left = 16
      Top = 83
      Width = 105
      Height = 13
      AutoSize = False
      Caption = 'Bookmarks:'
      EllipsisPosition = epEndEllipsis
    end
    object Label3: TLabel
      Left = 16
      Top = 158
      Width = 105
      Height = 13
      AutoSize = False
      Caption = 'Profile Folder:'
      EllipsisPosition = epEndEllipsis
    end
    object Label4: TLabel
      Left = 16
      Top = 121
      Width = 105
      Height = 13
      AutoSize = False
      Caption = 'Widgets:'
      EllipsisPosition = epEndEllipsis
    end
    object Label6: TLabel
      Left = 16
      Top = 192
      Width = 105
      Height = 13
      AutoSize = False
      Caption = 'Download Folder:'
      EllipsisPosition = epEndEllipsis
    end
    object Bevel3: TBevel
      Left = 0
      Top = 0
      Width = 1
      Height = 305
      Align = alLeft
      Shape = bsLeftLine
      ExplicitHeight = 432
    end
    object Panel4: TPanel
      Left = 6
      Top = 6
      Width = 505
      Height = 22
      BevelOuter = bvNone
      Color = 15329252
      ParentBackground = False
      TabOrder = 0
      object textopt7: TLabel
        Left = 8
        Top = 4
        Width = 41
        Height = 13
        Caption = 'Folders'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object capbar: TPanel
      Left = 0
      Top = 305
      Width = 714
      Height = 110
      Align = alBottom
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Bevel4: TBevel
        Left = 0
        Top = 0
        Width = 1
        Height = 110
        Align = alLeft
        Shape = bsLeftLine
        ExplicitLeft = 8
        ExplicitTop = 8
        ExplicitHeight = 32
      end
      object AdvSmoothCapacityBar1: TAdvSmoothCapacityBar
        Left = 1
        Top = 0
        Width = 713
        Height = 110
        Align = alClient
        Appearance.AutoFormatValues = False
        Appearance.BackGroundFill.Color = clWhite
        Appearance.BackGroundFill.ColorTo = clWhite
        Appearance.BackGroundFill.ColorMirror = clNone
        Appearance.BackGroundFill.ColorMirrorTo = clNone
        Appearance.BackGroundFill.GradientType = gtVertical
        Appearance.BackGroundFill.GradientMirrorType = gtSolid
        Appearance.BackGroundFill.BorderColor = clNone
        Appearance.BackGroundFill.Rounding = 0
        Appearance.BackGroundFill.ShadowOffset = 0
        Appearance.BackGroundFill.Glow = gmNone
        Appearance.Color = 15592683
        Appearance.ColorTo = 14605788
        Appearance.CapacityFont.Charset = DEFAULT_CHARSET
        Appearance.CapacityFont.Color = clBtnText
        Appearance.CapacityFont.Height = -12
        Appearance.CapacityFont.Name = 'Tahoma'
        Appearance.CapacityFont.Style = []
        Appearance.CapacityFormat = '%.0f MB'
        Appearance.FreeFormat = '%.0f MB'
        Appearance.LegendFormat = '%.0f MB'
        Appearance.LegendFont.Charset = DEFAULT_CHARSET
        Appearance.LegendFont.Color = clBlack
        Appearance.LegendFont.Height = -12
        Appearance.LegendFont.Name = 'Tahoma'
        Appearance.LegendFont.Style = []
        Appearance.CapacityTextShadowColor = clWhite
        Appearance.LegendTextShadowColor = clWhite
        Items = <>
        CapacityDescription = 'User, Profile Size'
        FreeDescription = 'Free'
        TotalCapacity = 700.000000000000000000
        ExplicitTop = 24
        ExplicitWidth = 663
        ExplicitHeight = 126
      end
    end
    object ButtonedEdit1: TButtonedEdit
      Tag = 2112018
      Left = 124
      Top = 43
      Width = 345
      Height = 21
      Color = clBtnFace
      Images = ImageList_IconsPNG
      ReadOnly = True
      RightButton.ImageIndex = 7
      RightButton.Visible = True
      TabOrder = 2
      OnRightButtonClick = ButtonedEdit1RightButtonClick
    end
    object ButtonedEdit3: TButtonedEdit
      Tag = 2112018
      Left = 124
      Top = 118
      Width = 345
      Height = 21
      Color = clBtnFace
      Images = ImageList_IconsPNG
      ReadOnly = True
      RightButton.ImageIndex = 7
      RightButton.Visible = True
      TabOrder = 4
      OnRightButtonClick = ButtonedEdit3RightButtonClick
    end
    object ButtonedEdit4: TButtonedEdit
      Tag = 2112018
      Left = 124
      Top = 155
      Width = 345
      Height = 21
      Color = clBtnFace
      Images = ImageList_IconsPNG
      ReadOnly = True
      RightButton.ImageIndex = 7
      RightButton.Visible = True
      TabOrder = 5
      OnRightButtonClick = ButtonedEdit4RightButtonClick
    end
    object ButtonedEdit5: TButtonedEdit
      Tag = 2112018
      Left = 124
      Top = 189
      Width = 345
      Height = 21
      Color = clBtnFace
      Images = ImageList_IconsPNG
      ReadOnly = True
      RightButton.ImageIndex = 7
      RightButton.Visible = True
      TabOrder = 6
      OnRightButtonClick = ButtonedEdit5RightButtonClick
    end
    object Panel3: TPanel
      Left = 6
      Top = 222
      Width = 505
      Height = 22
      BevelOuter = bvNone
      Color = 15329252
      ParentBackground = False
      TabOrder = 7
      object Label7: TLabel
        Left = 8
        Top = 4
        Width = 104
        Height = 13
        Caption = 'Security && Privacy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object ScrollBox1: TScrollBox
      Left = 7
      Top = 250
      Width = 625
      Height = 175
      BorderStyle = bsNone
      TabOrder = 8
      object Button2: TButton
        Left = 0
        Top = 47
        Width = 490
        Height = 41
        Caption = 'Edit trusted pages for open pop-ups'
        Style = bsCommandLink
        TabOrder = 0
        OnClick = Button2Click
      end
      object Button1: TButton
        Left = 0
        Top = 0
        Width = 490
        Height = 41
        Caption = 'Phishing and Malware Protection list'
        Style = bsCommandLink
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 0
        Top = 94
        Width = 489
        Height = 41
        Caption = 'Edit Adblock address list'
        Style = bsCommandLink
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button5: TButton
        Left = 0
        Top = 141
        Width = 489
        Height = 41
        Caption = 'Clear cache on exit'
        Style = bsCommandLink
        TabOrder = 3
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 0
        Top = 188
        Width = 489
        Height = 41
        Caption = 'Clear History'
        Style = bsCommandLink
        TabOrder = 4
        OnClick = Button6Click
      end
      object Button4: TButton
        Left = 0
        Top = 235
        Width = 489
        Height = 41
        Caption = 'Web Explorer Network Identification'
        Style = bsCommandLink
        TabOrder = 5
        OnClick = Button4Click
      end
    end
    object ButtonedEdit2: TButtonedEdit
      Tag = 2112018
      Left = 124
      Top = 80
      Width = 345
      Height = 21
      Color = clBtnFace
      Images = ImageList_IconsPNG
      ReadOnly = True
      RightButton.ImageIndex = 7
      RightButton.Visible = True
      TabOrder = 3
      OnRightButtonClick = ButtonedEdit2RightButtonClick
    end
  end
  object SpeedDialTemplate: TMemo
    Left = -196
    Top = 140
    Width = 185
    Height = 89
    Lines.Strings = (
      
        '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "' +
        'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">'
      '<html xmlns="http://www.w3.org/1999/xhtml">'
      '<head>'
      '<title>Speed Dial</title>'
      
        '<link href="css\speeddial.css" rel="stylesheet" type="text/css" ' +
        '/>'
      
        '<link href="css\jq-metro.css" rel="stylesheet" type="text/css" /' +
        '>'
      
        '<script src="js\jquery-1.7.2.min.js" type="text/javascript"></sc' +
        'ript>'
      
        '<script src="js\jquery.metro-btn.js" type="text/javascript"></sc' +
        'ript>'
      
        '<script src="tiles.js" type="text/javascript"></script><meta nam' +
        'e="generator" content="WebExplorerSPD/14.5.0">'
      '<script>'
      
        'function startTime() {    var today=new Date();    var h=today.g' +
        'etHours();    var m=today.getMinutes();    m = checkTime(m);  do' +
        'cument.getElementById('#39'MenuTitle'#39').innerHTML = h+":"+m;  var t =' +
        ' setTimeout(function(){startTime()},500);'
      
        '} function checkTime(i) {    if (i<10) {i = "0" + i};   return i' +
        '; }'
      
        '$(document).ready(function(){ $('#39'body'#39').css('#39'display'#39', '#39'none'#39'); ' +
        '$('#39'body'#39').fadeIn(800); });  alert("WebExplorerSPD/14.5.0_Version' +
        '_File");'
      '</script>'
      '<style>'
      'body'
      '{   overflow:hidden;'
      '    margin:0px;'
      '    font-family:Verdana, Tahoma;'
      
        '   background: #34495e url("../../../Bin/Resources/Pages/images/' +
        'bg.jpg"); background-size: 100% auto; background-position: cente' +
        'r center; background-repeat: no-repeat; background-attachment: f' +
        'ixed; background-size: cover;'
      '    color: #FFF;'
      '    padding:20px;'
      '}'
      ''
      '#search button {'
      
        '    background: url("../../../Bin/Resources/Pages/images/searchb' +
        'ar.png") no-repeat scroll center center #34495e;'
      '    cursor: pointer;'
      '    height: 40px;'
      '    text-indent: -99999em;'
      '    transition: background 0.3s ease-in-out 0s;'
      '    width: 40px;'
      '    border: 2px solid #fff;'
      '}'
      '</style>'
      '</head>'
      '<body onload="startTime()">'
      
        '<video id="video_background" preload="auto" autoplay="true" loop' +
        '="loop" muted="muted" volume="0"> <source src="../../../Bin/Reso' +
        'urces/Pages/images/bg1.ogv" type="video/ogg">Video not supported' +
        ' </video>'
      
        '<div id="MenuBT"><a href="wespd://close"><img src="../../../Bin/' +
        'Resources/Pages/images/close.png" /></a></div><div id="MenuST"><' +
        '/div><div id="MenuBT"><a href="wespd://close"><img src="../../..' +
        '/Bin/Resources/Pages/images/close.png" /></a></div><div id="Menu' +
        'ST"></div><div id="MenuBT"><a href="wespd://openconfig"><img src' +
        '="../../../Bin/Resources/Pages/images/gear.png" /></a></div>'
      '<div id="metroaqui" class="metro-panel">'
      
        '<div id="MenuTitle"><img src="../../../Bin/Resources/Pages/image' +
        's/border.png" /></div>'
      
        '<div id="MenuTitle2"><img src="../../../Bin/Resources/Pages/imag' +
        'es/border.png" /></div>'
      '<div id="MenuBar">'
      
        '<form method="get" id="search" class="cabecalho" action="search:' +
        '//"><input type="text" class="search" onblur="if(this.value == '#39 +
        'Digite um endere'#231'o'#39') { this.value = '#39'Type and hit enter'#39'; }" onf' +
        'ocus="if(this.value == '#39'Type and hit enter'#39') { this.value = '#39'Dig' +
        'ite um endere'#231'o'#39'; }" name="s">'
      '              <button type="submit">Submit</button>'
      '</form></div>'
      ''
      '</div>'
      ''
      '<div class="clear">'
      '</div>'
      '    <div id="metroaqui_novo" class="metro-panel2"></div>'
      '    <div id="metroaqui" class="metro-panel"></div>'
      ''
      '</body>'
      '</html>')
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 23
    Visible = False
  end
  object PopupMenu1: TPopupMenu
    Left = 64
    Top = 296
    object Folders1: TMenuItem
      Caption = 'Edit Folders'
      object RenameFolder1: TMenuItem
        Caption = 'Rename Folder'
        OnClick = RenameFolder1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object NewFolder1: TMenuItem
        Caption = 'New Folder'
        OnClick = NewFolder1Click
      end
      object RemoveFolder1: TMenuItem
        Caption = 'Delete Folder'
        OnClick = RemoveFolder1Click
      end
    end
    object Links1: TMenuItem
      Caption = 'Edit Links'
      OnClick = Links1Click
      object EditLink1: TMenuItem
        Caption = 'Edit, Move Link'
        OnClick = EditLink1Click
      end
      object RenameLink1: TMenuItem
        Caption = 'Rename Link'
        OnClick = RenameLink1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object NewLink1: TMenuItem
        Caption = 'New Link'
        OnClick = NewLink1Click
      end
      object DeleteLink: TMenuItem
        Caption = 'Delete Link'
        OnClick = DeleteLinkClick
      end
    end
  end
  object PopupMenu2: TPopupMenu
    OnPopup = PopupMenu2Popup
    Left = 152
    Top = 296
    object ImportandExport1: TMenuItem
      Caption = 'Import or Export'
      OnClick = ImportandExport1Click
    end
    object Import1: TMenuItem
      Caption = 'Import'
      Visible = False
      OnClick = Import1Click
    end
    object Export1: TMenuItem
      Caption = 'Export'
      Visible = False
      OnClick = Export1Click
    end
  end
  object HTMLParserImport: TJvHTMLParser
    Parser.Strings = (
      'Link'
      '<A HREF="'
      '"'
      '-1'
      '3')
    OnKeyFound = HTMLParserImportKeyFound
    Left = 16
    Top = 416
  end
  object ImportExportTaskDialog: TTaskDialog
    Buttons = <
      item
        Caption = 'Cancel'
        ModalResult = 101
      end
      item
        Caption = 'Continue'
        ModalResult = 100
      end>
    Caption = 'Library - Web Explorer '
    CommonButtons = []
    CustomMainIcon.Data = {
      0000010001002020000001002000A81000001600000028000000200000004000
      0000010020000000000000000000000000000000000000000000000000000000
      000000000000000000000000000B0000002C0000003400000033000000330000
      0033000000330000003300000033000000330000003300000033000000330000
      0033000000330000003300000033000000330000003300000030010101120000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C0AAE0E0E1E2DBDBDBE5DBDBDCE5DBDBDCE5DBDB
      DCE5DBDBDCE5DBDBDCE5DBDBDCE5DBDBDCE5DBDBDCE5DBDBDCE5DBDBDCE5DBDB
      DCE5DBDBDCE5DBDBDCE5DBDBDCE5DBDBDCE5DBDBDCE5C5C5C6CA0000002E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CACACACBF9FAFBFFF7F7F8FFF6F6F7FFF6F7F8FFF7F6
      F7FFF5F6F6FFF4F5F6FFF4F5F6FFF4F5F6FFF4F5F6FFF4F5F6FFF4F5F6FFF4F5
      F6FFF4F4F5FFF4F5F6FFF4F5F5FFF3F4F5FFF3F4F5FFDDDDDEE2000000370000
      0009000000080000000100000000000000000000000000000000000000000000
      00000000000000000000CACACACBF9FAFCFFF6F7F8FFF7F7F8FFEEF1F6FFD7E1
      F0FFF6F6F5FFF5F6F7FFF4F5F6FFF5F6F7FFF5F6F7FFF5F6F7FFF4F5F6FFF5F6
      F7FFF8F8F7FFD6E0EEFFECEFF3FFF4F5F6FFF3F4F5FFD2D2D3EC0000007B0000
      005B000000490000000F00000000000000000000000000000000000000000000
      00000000000000000000CACACACBF9FAFCFFF7F8F9FFF7F7F8FFE6EBF3FF4286
      D2FF87B3E3FFE7EBF1FFF7F6F7FFF5F5F6FFF4F6F7FFF5F6F7FFF6F6F7FFE3E9
      F1FF74A6E4FF3075D0FFE8ECF2FFF4F4F5FFF3F4F5FFE2E2E3FFCACACBFFFFFF
      FFFF6060608E0000001700000000000000000000000000000000000000000000
      00000000000000000000CACACACBFAFAFCFFF6F7F8FFF6F7F8FFF8F8F7FF8AB8
      E7FF38A6F6FF4C97E0FFCEDAECFFFCFAF8FFF4F5F6FFF7F7F6FFC3D3E9FF3E8A
      E3FF0576F4FF7CA7E0FFF4F4F5FFF4F5F6FFF4F4F5FFE0E0E1FFC0C0C1FFF7F8
      F9FF545455970000002F0000001B000000110000000100000000000000000000
      00000000000000000000CACACACBFAFAFCFFF7F8F9FFF6F7F8FFFAF9F9FFADC5
      E6FF61BFF7FF2CABFEFF3191E5FF9FC0E6FFE5EAF2FF92B8E4FF1F82E8FF118A
      FFFF0D77EAFFB9CAE3FFF7F7F7FFF5F5F6FFF4F5F6FFE0E0E1FFC0C0C1FFF8F9
      FAFF595959D0484848A15B5B5B96000000460000000500000000000000000000
      00000000000000000000CACACACBFAFBFCFFF8F7F8FFF7F7F8FFF7F7F8FFDBE4
      F1FF61B1EAFF46C0FFFF32B0FEFF2EA3F6FF3694E5FF2498F8FF1E96FFFF1790
      FDFF3E8FE5FFEAEDF0FFF5F6F7FFF5F6F7FFF4F5F6FFE0E0E1FFC0C0C1FFF7F8
      F9FEA2A3A4FFE1E1E2FFFFFFFFFF000000500000000700000000000000000000
      00000000000000000000CACACACBFAFCFDFFF8F8F9FFF7F7F8FFF6F8F9FFEAED
      F4FF6CACE3FF57C9FFFF3AB7FFFF36B2FFFF32B0FFFF2BA5FFFF269FFFFF1E96
      FCFF73AAE5FFFCFBF8FFF4F5F6FFF5F6F7FFF4F5F6FFE0E1E1FFC0C2C2FFF8F8
      F9FFA0A1A2FFDDDEDFFFFDFDFEFF000000500000000700000000000000000000
      00000000000000000000CACACACBFAFCFDFFF8F8F9FFF7F8F9FFF6F7F8FFF4F5
      F7FF92BDE9FF51C7FBFF40BFFFFF3CB9FFFF37B3FFFF32ADFFFF2CA7FFFF299D
      FAFF9FC3EAFFFBF9F8FFF4F5F6FFF5F6F7FFF4F5F6FFE0E1E1FFC0C1C2FFF8F9
      FAFFA0A1A2FFDDDEDFFFFDFDFEFF000000500000000700000000000000000000
      00000000000000000000CACACACBFBFCFDFFF8F9FAFFF8F8F9FFF8F8F9FFBED5
      EEFF4CB1ECFF50D2FFFF47C6FEFF44C1FFFF3EBCFFFF38B5FFFF34AFFEFF2DA8
      FDFF3C96E9FFC9DAEEFFF6F6F7FFF5F5F7FFF4F5F6FFE0E1E1FFC0C1C2FFF8F9
      FAFFA1A1A2FFDDDEDFFFFDFDFEFF000000500000000700000000000000000000
      00000000000000000000CACACACBFCFCFDFFF9F9FAFFFAF9FAFF8AB7E8FF4CC1
      F4FF54D6FFFF4FD2FEFF4CCDFFFF47C9FFFF44C3FFFF40BDFFFF3AB7FFFF35B1
      FFFF2EA9FEFF319DF5FFA5C6EAFFFDF9F7FFF5F6F6FFE0E1E1FFC0C1C2FFF8F9
      FAFFA1A1A2FFDEDFE0FFFDFDFEFF000000500000000700000000000000000000
      00000000000000000000CACACACBFBFCFDFFEAEFF7FF84C1EDFF4BC6F7FF5DE2
      FFFF58DBFEFF57D9FEFF52D3FFFF4ECFFEFF49CBFFFF45C4FFFF42BFFFFF3DBA
      FFFF39B5FEFF35B0FFFF2094F2FF87BBECFFEAEFF5FFE1E1E1FFC0C1C2FFF8F9
      FAFFA1A1A2FFDEDFE0FFFDFDFEFF000000500000000700000000000000000000
      00000000000000000000CACACACBE7F1FBFF64A6E7FF5DBBF0FF66C2F1FF65BF
      F0FF65BFF0FF66C2F1FF6ED9FBFF54D5FFFF4FD0FEFF4CCCFFFF43BFFBFF50B0
      F0FF59B1F0FF58AFF0FF56ADF1FF4FA6EEFF62A4E7FFEAE6E2FFC1C1C2FFF8F9
      FAFFA1A1A2FFDEDFE0FFFDFDFEFF000000500000000700000000000000000000
      00000000000000000000CACACACBF4F8FDFFCDE0F3FFCBDAF1FFC9D9F1FFC9D9
      F1FFC9D9F1FFC6D6F0FF7EC3F1FF6BDDFDFF54D6FFFF4ECDFDFF79BDF0FFD1DC
      F0FFCBDAEFFFCADAEFFFCADBF0FFCBDBF0FFC5DAF1FFE4E2E2FFC2C1C2FFF8F9
      FAFFA1A1A2FFDEDFE0FFFDFDFEFF000000500000000700000000000000000000
      00000000000000000000CACAC9CBFEFEFFFFFCFBFCFFFBFBFBFFFBFAFBFFFBFA
      FBFFFAFAFBFFFCFBFAFFB3D1F2FF70D3FBFF58DAFFFF55CBF9FFD8E7F6FFF9FA
      FAFFF9F9F9FFF9F9F9FFF9F8F8FFF9F8F9FFF8F8F9FFE0E0E1FFC0C1C2FFF9F9
      FAFFA1A1A2FFDEDFE0FFFDFDFEFF000000500000000700000000000000000000
      00000000000000000000CACAC9CBFEFEFFFFFAFBFCFFFAFAFBFFF9F9FAFFF9FA
      FBFFFAFAFBFFFAFAFBFFECF1F9FF74C5F6FF5BDCFFFF66C7F7FFECF0F8FFF8F9
      FAFFF8F9FAFFF8F9FAFFF8F8F9FFF8F8F9FFF7F7F8FFE0E0E1FFC1C2C3FFF9FA
      FBFFA2A1A2FFDEDFE0FFFDFDFEFF000000500000000700000000000000000000
      00000000000000000000CACAC9CBFEFEFFFFFBFBFCFFFAFAFBFFF9FAFBFFFAFA
      FBFFFAFAFBFFF9F9FAFFFFFDFBFF8BC6F5FF62DFFFFF7ABAF2FFFBF9F9FFF9F9
      FAFFF8F9FAFFF7F8F9FFF7F9FAFFF7F8F9FFF3F3F3FFE3E3E4FFC9CACBFFF9FA
      FBFFA2A2A2FFDFDFE0FFFDFDFEFF000000500000000700000000000000000000
      00000000000000000000CACAC9CBFEFEFFFFFBFBFCFFFAFAFBFFFAFBFCFFFAFA
      FBFFFAF9FAFFFAFAFBFFFCFBFBFFC4DDF8FF4DC1F9FFBAD2F4FFFBFAFAFFF9F9
      FAFFFAFBFCFFFBFBFCFFFAFAFBFFF7F7F6FFEDEDEDFFD6D6D6FFC8C8C9FFFBFC
      FDFF9F9FA0FFDEDFE0FFFDFDFEFF000000500000000700000000000000000000
      00000000000000000000CAC9C9CBFEFEFFFFFBFAFBFFFBFBFCFFFAFAFBFFF9FA
      FBFFF9FAFBFFFAF9FAFFF9F9FAFFE2EFFAFF3C9EF1FFFFFFFBFFF8FAFBFFECED
      EEFFB7B7B7FFB8B8B8FFB7B7B7FFB8B8B8FFCFCFD0FF999A9AFFF0F0F1FFF9F9
      F9FF9F9FA0FFDFE0E1FFFEFEFFFF000000500000000700000000000000000000
      00000000000000000000C9C9C9CBFFFFFFFFFBFBFCFFFBFAFBFFFAFBFCFFFBFB
      FCFFFAFAFBFFF9FAFBFFFAFAFBFFF9F9FBFFF6F8FAFFFAFAFBFFFAF9FBFFE8E8
      E9FFF1F1F1FFFFFFFFFFF7F7F7FFDDDDDDFFA3A4A4FFE3E4E5FFF5F6F6FFF4F4
      F4FFA7A8A9FFE4E5E6FFFEFEFFFF000000500000000700000000000000000000
      00000000000000000000C9C9C9CBFFFFFFFFFBFCFDFFFAFBFCFFFBFAFBFFFAFB
      FCFFFBFBFCFFFAFBFCFFF9FAFBFFFAF9FAFFFAFAFBFFF9F9FAFFF9F9FBFFEAEA
      E9FFE9E9E9FFF2F2F1FFDEDEDFFFB1B1B1FFE8E8E8FFFAFAFAFFF3F3F3FFE0E0
      E0FFB5B5B5FFEBEBECFFFEFEFFFF000000520000000700000000000000000000
      00000000000000000000C9C9C9CBFFFFFFFFFBFCFDFFFBFBFCFFFAFAFBFFFBFB
      FCFFFBFBFCFFFBFBFCFFFAFAFBFFFAFBFCFFF9FAFBFFFAF9FAFFF8F8F8FFE4E4
      E4FFDDDDDDFFD9D9D9FF999999FFA8A8A8FFB8B8B8FFB6B6B6FFB1B1B2FFB1B2
      B3FFD0D1D2FFF9F9F9FFFDFDFEFF0000004E0000000500000000000000000000
      00000000000000000000C9C9C9CBFFFFFFFFFCFCFDFFFBFBFCFFFAFAFBFFFBFB
      FCFFFBFBFCFFFAFBFCFFFBFBFCFFFAFAFBFFFAFBFCFFF7F7F7FFF3F3F3FFDFDF
      DFFFD0D0D1FFAFAFAFFFA3A3A3FFFFFFFFFFF9F9F9FFE4E4E4FFAFAFAFFFCACA
      CBFFF4F4F5FFF3F3F3FFF9F9F9FF000000510000000500000000000000000000
      00000000000000000000C9C9C9CBFEFEFFFFFBFBFCFFFBFBFCFFFAFAFBFFFAFA
      FBFFFAFAFBFFFAFAFBFFFAFAFBFFFAFAFBFFFBFBFCFFF7F7F7FFF2F2F2FFD3D3
      D3FFAFAFB0FFE1E1E1FFB7B7B7FFFAFAFAFFE3E3E3FFBABABBFFBBBBBBFFE7E7
      E7FFE5E5E5FFDCDCDCFFBEBEBEFD0000001D0000000100000000000000000000
      00000000000000000000D3D3D3D9DCDCDCFFDCDCDCFFDCDCDCFDD9D9D9FFD9D9
      DAFFD9D9DAFFDADADAFFDADADAFFDADADAFFDADADAFFD9D9DAFFD9D9D9FFCFCF
      CFFFE6E6E6FFF7F7F7FFB8B8B8FFE6E6E6FFB1B2B2FF9D9D9DFFECECECFFE7E7
      E7FFD9D9D9FEC3C3C3FF46464664000000040000000000000000000000000000
      000000000000D6D6D600000000000000000000000000D6D6D7FFFFFFFFFFFEFE
      FFFFFDFDFEFFFDFDFEFFFDFDFEFFFDFDFEFFFDFDFEFFFDFDFEFFFDFDFEFFFCFD
      FDFFF5F5F5FFF0F0F0FFBDBDBDFFC3C3C3FFD3D3D3FFB9B9B9FFFBFBFBFFEBEB
      EBFFCECECFFF6262628400000005121212000000000000000000000000000000
      00000000000000000000000000000000000000000000D5D5D6FFFBFBFCFFFAFA
      FBFFFAFAFBFFFAFAFBFFFAFAFBFFFAFAFBFFFAFAFBFFFAFAFBFFFAFAFBFFFAFA
      FBFFF5F5F6FFEDEDEDFFA6A6A7FFD2D2D2FFF8F8F8FFB6B6B6FFEAEAE9FECECE
      CFFF6969696F000000067A7A7A00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D6D9D3D3D2CBD2D2
      D2D5D9D9D9FFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDB
      DBFFDBDBDBFFDBDBDBFFE6E6E6FFF5F5F5FFF8F8F8FFB3B3B3FFD0D0D1FF5F60
      6081000000041212120000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6D6D6000000000000000000C6C6
      C62FF2F2F3FFFDFDFEFFFDFDFEFFFCFCFDFFFCFCFDFFFCFCFDFFFCFCFDFFFCFC
      FDFFFCFCFDFFFCFCFDFFF9F9F9FFF2F2F2FFE7E7E6FEBFBFC0FF6C6C6C720000
      0005626363000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCCC
      CC35E8E8E8FFEFEFF0FFEFEFF0FFEFEFF0FFEFEFF0FFEFEFF0FFEFEFF0FFEFEF
      F0FFEFEFF0FFEFEFF0FFEFEFF0FFEDEDEDFFD5D5D6FF5D5D5C7A000000030C0C
      0C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D7D7
      D70AD3D3D335D2D2D233D2D2D233D2D2D233D2D2D233D2D2D233D2D2D233D2D2
      D233D2D2D233D2D2D233D2D2D233D2D2D233D7D7D73700000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFE00001FFE00001FFE00001FFE000003FE000003FE000000FE000000FE000
      000FE000000FE000000FE000000FE000000FE000000FE000000FE000000FE000
      000FE000000FE000000FE000000FE000000FE000000FE000000FE000000FE000
      000FE000001FFC00001FFC00007FFC00007FFF8001FFFF8003FFFFFFFFFF}
    Flags = [tfUseHiconMain, tfAllowDialogCancellation]
    MainIcon = 0
    RadioButtons = <
      item
        Caption = 'Export selected folder'
      end
      item
        Caption = 'Import to folder'
      end>
    Text = 'Select an one option to import or export bookmarks'
    Title = 'Import or Export Bookmarks'
    Left = 104
    Top = 416
  end
  object OpenDialog1: TOpenDialog
    Filter = 'HTML Files (*.HTML) (*.HTM)|*.html;*.htm'
    Title = 'Select File to Import'
    Left = 200
    Top = 416
  end
  object SelectDownloadFolder: TJvBrowseForFolderDialog
    Options = [odOnlyDirectory, odStatusAvailable, odNewDialogStyle]
    Left = 16
    Top = 472
  end
  object ImageList1: TImageList
    Height = 76
    Masked = False
    Width = 76
    Left = 200
    Top = 472
  end
  object PopupMenu3: TPopupMenu
    Left = 60
    Top = 343
    object DeleteItem1: TMenuItem
      Caption = 'Delete Item'
      OnClick = DeleteItem1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object MoveUp1: TMenuItem
      Caption = 'Move Up'
      OnClick = MoveUp1Click
    end
    object MoveDown1: TMenuItem
      Caption = 'Move Down'
      OnClick = MoveDown1Click
    end
  end
  object PopupMenu4: TPopupMenu
    OnPopup = PopupMenu4Popup
    Left = 148
    Top = 351
    object SetcustomWallpaper1: TMenuItem
      Caption = 'Set custom Wallpaper'
      OnClick = SetcustomWallpaper1Click
    end
    object S4: TMenuItem
      Caption = 'Set color as Background'
      OnClick = S4Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object SetAnimatedBackground11: TMenuItem
      Caption = 'Set Lake Theme (Animated)'
      OnClick = SetAnimatedBackground11Click
    end
    object SetMontainThemeAnimated1: TMenuItem
      Caption = 'Set Montain Theme (Animated)'
      OnClick = SetMontainThemeAnimated1Click
    end
    object SetAnimatedBackground31: TMenuItem
      Caption = 'Set Geyser Theme (Animated)'
      OnClick = SetAnimatedBackground31Click
    end
    object SetAnimatedBackground21: TMenuItem
      Caption = 'Set Observatory Theme (Animated)'
      OnClick = SetAnimatedBackground21Click
    end
    object SetRainThemeAnimated1: TMenuItem
      Caption = 'Set Rain Theme (Animated)'
      OnClick = SetRainThemeAnimated1Click
    end
    object S1: TMenuItem
      Caption = 'Set Aurora Theme (Animated)'
      OnClick = S1Click
    end
    object S2: TMenuItem
      Caption = 'Set Mangrove Theme (Animated)'
      OnClick = S2Click
    end
    object SetIslandsThemeAnimated1: TMenuItem
      Caption = 'Set Islands Theme (Animated)'
      OnClick = SetIslandsThemeAnimated1Click
    end
    object S3: TMenuItem
      Caption = 'Set Beach Theme (Animated)'
      OnClick = S3Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object SetdefaultwallpaperStatic1: TMenuItem
      Caption = 'Set default wallpaper (Static)'
      OnClick = SetdefaultwallpaperStatic1Click
    end
  end
  object ImageList2: TImageList
    ColorDepth = cd32Bit
    Height = 32
    Width = 32
    Left = 272
    Top = 472
    Bitmap = {
      494C010107003800480320002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000D2D28217112110F4900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00EFEFEF00E2E2E200DADADA00D6D4
      D300D4D1CE00D2CECA00D0CBC700CDC7C300CAC5C000C8C4C100CAC7C500D2D0
      D000DFDFDF00EDEDED00F9F9F900000000000000000000000000000000000000
      000000000000000000000000000000000000090601000B0701000E090100100A
      0100120B0200140D0200160E0200180F0200191002001A1103001D1303001D13
      03001E1303001F140300201503002015030020150300201503001F1403001E13
      03001D1303001D1303001A1103001A110300180F0200160E0200140D0200120C
      0200100A01000E0901000C070100090601000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001E1C1A5B9D968ACFEAD5B6FFE2CFB4FC635E57A2050504260000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F4F4F400D1D1D100B7B7B700ADABAA00AEA6A100B2A5
      9B00B6A69800B9A69600B9A59400B9A49300B6A19000B2A09000AF9E9200ADA1
      9800AFAAA600B7B6B600CACACA00E6E6E600F6F6F600F9F9F900FBFBFB00F9F9
      F900000000000000000000000000000000000B0701000E090100100A0100120C
      0200140D0200160E0200180F02001A1103001D1303001D1303001F1403002015
      0300231603002316030024170300241703002417030024170300231603002116
      030020150300201503001E1303001D1303001A110300180F0200160E0200140D
      0200120C0200100A01000E0901000B0701000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D0C
      0B3E7E776CBBEDE1D0FFF1E7D7FFF5E9D9FFE2ECE8FFAAE0EBFF90BEC4F0383F
      3D8A010101140000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00D2D2D200979797008B8B8B00908A8400A18F7F00A889
      6F00A77D5C00AF835F00B2856100AC7F5C00A57A5500A67B59009A7251008D6D
      54007D6B5D006A6868006E6E6E00747474008B8B8B009F9F9F00C8C8C800CECE
      CE00000000000000000000000000000000000E090100100A0100130C0200140C
      010012090000150B0000180C00001A0E00001C0F00001E1000001F1100002012
      00002215020026180400281A0400291A0400291A040027190400231400002213
      000021130000201200001E1000001C0F00001A0E0000180C0000160B00001208
      0000130C0000130D0200100A01000D0801000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040325635B51A8E3D5
      C0FDEBDECBFFEFE3D2FFF2E8D8FFF9EDDEFF95D6E1FF5FC5D9FF68C7D8FF6CC7
      D6FF689FA5E32324236A00000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD00C6C6C600828282007575750082664E00AA693700C18C
      6200AA8365008B6A4E008260440078533600755439006B452700705743006C55
      44007F6F64009C9B9B00CECECE00EEEEEE00F3F3F300EBEBEB00ECECEC00CFCF
      CF0000000000000000000000000000000000100A0100120C0200130C02003427
      0A007E6B370088753D0088743C0089753C008A753C008B763C008A753B007862
      2800523C06002F1C0000291A03002C1C04002A1B03003D2B0800826D35008E79
      3E008D773D008C773C008B763C008A763C0089753C0088743C0088743C008070
      3B003D300F00130B0200120C0200100A01000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000202011C403A328AC8B9A3F1E5D5BFFFE9DC
      C7FFECE1CEFFF0E5D5FFF3EADBFFF9EDDFFF8FD3DFFF67C8DCFF70C9DAFF71C8
      D8FF6EC6D5FF75C6D2FF84908CCE151412510000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EDEDED008E86810094501D00A0511400984C12009249
      0F007D3905005A27020041220A005542320083776F00ADACAC00D4D6D800F3F5
      F600F2F4F500F0F0F000EEEEEE00EBEBEB00EAEAEA00E9E9E900E8E8E800C6C6
      C60000000000000000000000000000000000120C0200140D0200110900006654
      2000FFFFED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F200EEE5C500A9955900473000002E1D03002B1A010060481000FFF8DA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FC007E6C360012090000140D0200120C02000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000B25211C6CB3A28AE8E4D2B7FFE7D6BFFFE6D9C3FFEADE
      CAFFEEE3D1FFF1E7D7FFF4EBDDFFFEF0E1FFB1E0E7FF62C7DBFF6FCADBFF71C9
      D9FF72C8D6FF70C5D1FF7EC9D5FFCAD7C9FF515A42B80909083A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDA08C009C4C0F0091450D00893F0A00873D09008239
      05008E5F3E00BEC4CA00EAEDEF00FBFDFE00F8F9FA00F4F4F400EFEFEF00EFEF
      EF00F0F0F000E7E7E700D3D3D300BFBFBF00BABABA00B7B7B700E7E7E700CBCB
      CB0000000000000000000000000000000000140D0200160E0200140A00006C58
      2100FFFEEE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C2AF7500432B00002D1B0100674D1100F9F3DB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00836F3700150B0000160E0200140D02000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001916125B8F7E67D3D6C0A2FFE3CFB2FFAC9F8DFFC0B4A1FFEFE2CCFFEBE0
      CDFFEFE4D3FFF2E9D9FFF5EDDFFFF9EDDFFFF0F7F5FF7CD2E4FF68C8DAFF70C9
      D9FF72C8D7FF73C7D4FF6CC2CEFFADD8DFFFB6C3A1FF678E52FE3D4432A00605
      042C000000000000000000000000000000000000000000000000000000000000
      000000000000BF9375008B3B0500863D06007F3705007F3705007D3403007831
      02008D58330000000000F3F3F300FCFBF300F0EFE600E3E3E200F3F3F300C2C2
      C200BABABA00C2C2C200D6D6D600EBEBEB00F0F0F000F0F0F000EBEBEB00EAEA
      EA00EDEDED00000000000000000000000000160E0200180F0200170C00006C58
      2100FFFDEC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF500886E2D00301B0000684E1000F9F2D900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FC00806D3600170C000019100200160E02000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0A0841695B
      47B9D0B693FFDAC2A1FFDAC5A9FFE7D4B9FF6F685CFF948C7DFFF5E8D3FFEEE2
      CFFFF0E6D6FFF3EADBFFF6F1E3FFF3E0D3FFF4AFAAFFD9F1F6FF6DCEE0FF6AC7
      D9FF71C9D8FF72C7D5FF71C4D1FF85C9D3FFE7E6DCFF7A9D67FF608C4DFF6B87
      54F22A2C21820101001300000000000000000000000000000000000000000000
      0000CBA99100545926003F693400813000007D3200007E3100007E350000742C
      0000611F000000000000EBEBE1004046C900363DB400BCBABA00FFFFF700F5F5
      F500F6F6F600F4F4F400F0F0F000DDDDDD00C8C8C800BABABA00CFCFCF00F3F3
      F300DEDEDE00000000000000000000000000180F02001A110300190E00006D59
      2100FFFDEC00FFFFFF00FFFFFF00EEE4C3009C81370090783A00A8904D00EFE6
      C600FFFFFF00FFFFFF00FFFFFF00C4B27B003C230000694E1100F9F2D900FFFF
      FF00FFFFFF00F5EFD600A58B3F008F783B0090793C008E783C008D783D008674
      3B00453510001C1202001A110300180F02000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003030321463B2D9AC5A880FFCEB2
      8EFFC3AB8EFF9E8E77FFE2CEB1FFD9C8B0FF5D574DFF726C62FFEFE2CFFFF0E4
      D3FFF1E8D8FFF4ECDDFFF7F2E5FFF5E6D9FFE06966FFF29B9AFFD3EAEFFF79D5
      E5FF67C6D8FF70C7D6FF69C2D1FF93CED5FFFBF2EDFF9DB48BFF648E50FF6890
      53FF668C4EFF5E7046DB1E1D16670000000E000000000000000000000000EADD
      D30070410E002D733300336A3000823102006E440F00624C1800853601007A30
      04005F1B0000DBD1C900FBFBF600495BDC00687FFC00041BD7006A6CB500D9D9
      D700BCBCBC00BCBCBC00BFBFBF00D0D0D000E5E5E500F2F2F200F1F1F100EFEF
      EF00D7D7D700000000000000000000000000191002001D1303001B0F00006F5A
      2100FFFDEC00FFFFFF00FFFFFF00E1D5AC00462C00002D190000371E0000A086
      3F00FFFFFC00FFFFFF00FFFFFF00DFD1A5004C3000006B4F1000F9F2D900FFFF
      FF00FFFFFF00F0E6C600583D00002B1700002D1A00002A180000261600002213
      000022150100211503001D1303001A1103000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B39D83EBC0A176FFC8AB86FFD5BA
      96FFAC997EFF544C42FFDDCAAFFFC0B39DFF524D45FF655F57FFD5CABAFFF6EC
      DAFFF3EADBFFF5EDE0FFF8F3E7FFF6E6D9FFE1716EFFDE5E5DFFED8583FFE6D0
      D0FFA3DAE4FF75C9D8FF99D4DCFFE6ECE8FFFFF5F0FFA4B994FF638E50FF6B92
      56FF6C9054FF678C4EFF718C50FF2F291D800000000000000000000000009253
      280041733C00316C2F00446A3300923600006256210061582200883603007E32
      0400651F0000B0988900DBE3FF00959DD200EBE8D800B1B6CB003641E900C4C3
      DD00FCFCFA00F8F8F800F8F8F800F4F4F400E4E4E400CFCFCF00BEBEBE00F2F2
      F200D1D1D1000000000000000000000000001A1103001E1303001D100000705B
      2100FFFDEC00FFFFFF00FFFFFF00E2D6AF004C32000034210400352000008166
      2300FFFEEE00FFFFFF00FFFFFF00E4D8B000533500006D501000F9F2D900FFFF
      FF00FFFFFF00F0E7C8005D430800311E030033200500301F04002C1C0400291A
      040026180400231603001F1403001A1103000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C2A278FFC4A67DFFCAAF8AFFDABF
      9DFF91816CFF423C34FFAEA08CFFA79C8AFF57534BFFA0988BFFB3AB9DFFFBF0
      DFFFF4EBDDFFF6EFE1FFF9F5E9FFF6E7DAFFE1706DFFE06565FFDF6362FFE46B
      68FFF9D9D6FFEDF8F7FFFBF6F1FFFDF5F0FFFCF4F0FF8FAC80FF649053FF6B93
      57FF6B9155FF6C8F53FF698C4FFF262D19900000000000000000DAC1B200624B
      1600337033002766240045703C006C4B190077571C004C673100994207008A3D
      0A007A2D02008560490000000000F5F4F000FAFAFA00FDFDFA00FEFDF200FBFB
      F800CBCBCB00BDBDBD00BEBEBE00BFBFBF00CDCDCD00E0E0E000F0F0F000F3F3
      F300CFCFCF000000000000000000000000001D1303001F1403001E110000715B
      2100FFFDEC00FFFFFF00FFFFFF00E3D7AF004F340000382305003A2300008165
      2200FFFCEB00FFFFFF00FFFFFF00E4D8B0005638000070521100F9F2D900FFFF
      FF00FFFFFF00F0E7C80060450900352103003623050033210500301E04002C1C
      0400281A040024170300201503001D1303000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C2A278FFC6A983FFCDB38FFFD6BE
      9CFF695F50FF6E6457FF908574FF7A7265FF706B61FFE0D4C2FF928C81FFF3EA
      D9FFF6EDDEFFF7F0E3FFFAF6EAFFF7E7DAFFE06764FFDE5C5CFFDD5D5CFFE171
      70FFFAF1EEFFFFFDF9FFFFFBF9FFFDF8F4FFB8C9ACFF659357FF699459FF6B93
      58FF6B9156FF6C9053FF6C8E51FF28351E9E0000000000000000A3633B004571
      3D00376D32002867250044713A005B6B3400A4440700994D0F00A24D0C009443
      0C008C3B0900662E0B0000000000E5E5E500D2D2D200D7D7D700D0D0D000F8F8
      F800EBEBEB00F9F9F900FAFAFA00FAFAFA00F8F8F800F0F0F000DBDBDB00E4E4
      E400ECECEC00F4F4F40000000000000000001D130300201503001F120000725C
      2100FFFDEC00FFFFFF00FFFFFF00E3D7AF00503500003A2505003C2500008367
      2200FFFCEC00FFFFFF00FFFFFF00E5D9B1005939000072531100F9F2D900FFFF
      FF00FFFFFF00F0E7C80062460900372204003824050035220500312004002D1D
      0400291B040026180400211603001D1303000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4A67DFFC9AC87FFD2B996FFCBB4
      97FF534A40FFA99B88FFA79B89FF49443DFF988F83FFFBF0DCFF8C857AFFD6CD
      BFFFFBF3E4FFF8F1E4FFFAF6EBFFF7E7DAFFEDAEAAFFF4C8C8FFEFB3B3FFE998
      97FFFBF3F1FFFDFEFCFFD5E0CFFF88AD7EFF629458FF67955AFF6A955AFF6A94
      58FF6B9256FF6C9054FF6C8F52FF29351E9E00000000F9F5F3008F390100437C
      4900336C2E0041743C00407640007A672C00A0470B009D4B0F00A04C0E009745
      100098450E0071290200EDEBE900ECECED00E9E9E90000000000D6D6D600FAFA
      FA00EBEBEB00D0D0D000C1C1C100BFBFBF00BFBFBF00C5C5C500D6D6D600ECEC
      EC00F9F9F900E5E5E50000000000000000001E1303002316030021130000735C
      2100FFFCEC00FFFFFF00FFFFFF00E3D7AF00513600003B2505003D2400008C6F
      2900FFFFF300FFFFFF00FFFFFF00E2D5A9005939000074551100F9F2D900FFFF
      FF00FFFFFF00F0E8C80063460900392304003925050036230500322105002F1E
      04002B1C040027190400231603001E1303000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6A982FFCBB08BFFD8BE9DFFB7A5
      8AFF4F483FFFCCBDA6FFC5B8A3FF4C4841FFB7AD9FFFFDF4E1FFAEA69AFFB2AA
      9FFFFDF7E9FFF8F2E6FFFAF5EBFFF9F2E4FFFDFFFCFFFFFFFFFFFFFFFFFFF3C9
      C8FFF6D3D1FFFCFEFBFF77A572FF599051FF66975CFF68975CFF69965BFF6A94
      59FF6B9357FF6B9155FF6C8F53FF27341E9B00000000DDC5B200983D04004874
      3F003A73390049733B00358B59009A531400AC511100A54F1200A24C1200A751
      1200A54F120096400400BEAFA50000000000CECECE00E1E1E100C4C4C400FCFC
      FC00EAEAEA00E9E9E900FAFAFA00FCFCFC00FCFCFC00FBFBFB00F7F7F700ECEC
      EC00F6F6F600DDDDDD0000000000000000001F1403002316030021130000735D
      2100FFFCEC00FFFFFF00FFFFFF00E3D6AC005032000039210000482A0000B59C
      5600FFFFFF00FFFFFF00FFFFFF00D0BD86005131000077571200F9F2D900FFFF
      FF00FFFFFF00F0E8C800644709003A2404003B2606003824050034210500301E
      04002C1C0400281A0400231603001F1403000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8AC86FFCCB28FFFDCC4A2FF9586
      71FF595147FFE4D3BAFFABA08FFF4E4A44FFD0C6B6FFFAEFDDFFDCD3C4FF908A
      81FFF9F2E3FFFAF4E8FFFBF6EBFFF9F2E5FFFCFAF6FFFFFFFFFFEB9B9AFFDD5D
      5CFFDF6362FFF6BABBFFAECEAFFF599153FF66985DFF67975CFF68965BFF6A95
      5AFF6B9358FF6B9256FF6C9054FF26311C9700000000CCA18300815018003B8B
      5900457C430045794000418249004C784500B6551000B3591500B1591400B45B
      1500B3591500B1540D00A581680000000000EAEAEA00FFFEF60000000000FBFB
      FB00FBFBFB00F1F1F100DCDCDC00C5C5C500BEBEBE00BFBFBF00C0C0C000D1D1
      D100F9F9F900DADADA0000000000000000001F1403002316030022140000745D
      2100FFFDEC00FFFFFF00FFFFFF00EEE4C300A18537009A7F3D00BCA46100F8F2
      DD00FFFFFF00FFFFFF00FFFFFD00A3863F004B2C00007A591200F9F2D900FFFF
      FF00FFFFFF00F1E8C800654809003B2504003B2606003824050034220500301F
      04002C1C0400281A040024170300201503000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CAAF8AFFCFB694FFDCC5A5FF7469
      59FF736A5DFFEFDEC5FF857C70FF4F4A44FFB0A79AFFFCF1E0FFF6ECDCFF8D88
      7EFFE8E0D3FFFEF7ECFFFCF6EDFFF9F2E5FFFDFFFAFFF9DEDEFFDF6261FFE067
      66FFE06766FFE36E6DFFF1DFDAFF7BAB79FF5F9457FF67975CFF68975CFF6995
      5AFF6A9459FF6B9357FF6B9155FF242F1B9300000000C58F6A006F632A00407C
      4300367639003E7B3F0050793E0043814600606A3000C15A1200C0621900C163
      1900BB5F1700BB5E15009B5D2C0000000000F1F0E6005B61DB008988B900E3E2
      D60000000000D4D4D400E8E8E800F6F6F600FEFEFE00FEFEFE00FDFDFD00FCFC
      FC00F8F8F800D7D7D70000000000000000001F1403002316030022140000745D
      2100FFFDEC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D9C89300674403004D2F03007B5A1200F9F2D900FFFF
      FF00FFFFFF00F1E8C800654809003B2504003C2706003924050035220500311F
      04002D1D0400291A040024170300201503000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCB28EFFD3BA99FFD6C1A3FF5E55
      49FF9E9281FFE7D7C0FF605B52FF8B8478FF999287FFF2E7D7FFFCF7E7FFA7A1
      97FFB0AAA0FFFBF6E9FFFCF7ECFFF9F2E5FFFEFFFEFFF1B8B9FFDE5B5BFFE067
      66FFE06968FFDD615FFFF7B9BAFFD2E6D4FF609657FF65975BFF67975CFF6996
      5BFF6A9559FF6B9358FF6B9155FF222D1A8F00000000C48A62006F652C003C7F
      4400387A3C003B80420042844700368040003D9558005D7D4500D3651700CA6B
      1D00C5671B00C5661A00A74C0600FAFEFF00DFE1EF005568E6004D65F800424D
      C800C8C6D80000000000F6F6F600E6E6E600D3D3D300C1C1C100BFBFBF00BDBD
      BD00ECECEC00EDEDED00F9F9F900000000001F1403002316030022140000745D
      2100FFFDEC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFEFC00D7C17D00704D0100513206004E3005007B5A1200F9F2D900FFFF
      FF00FFFFFF00F1E8C800654809003B2504003C2706003924050035220500311F
      04002D1D0400291A040024170300201503000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CEB593FFD9C1A1FFC1AF95FF524B
      40FFC9BBA5FFCEC1AEFF4E4943FFC1B8A9FFA79F93FFB9B2A6FFF4EFE0FF8A85
      7BFF7A776EFFF3EDE0FFFEFAF1FFF9F0E1FFFDFFFAFFF0B4B5FFDE5A5AFFE066
      66FFE06867FFDE6261FFEBA09EFFFFFFFFFF97B0A2FF5E9454FF669858FF6896
      5BFF69955AFF6A9459FF6B9256FF202B198C00000000C5946F0052773F004785
      4D00397D3F003A814200337E3E004593540038A873002FB17E00AB6D2500D56F
      1E00D06D1D00CD6B1E00C8610E00E0D3C400A9B9FF00BFC0DD00FFFFF500909C
      DD002A31D500DBDBD700D4D4D300E4E4E400F2F2F200FCFCFC00FDFDFD00FCFC
      FC00FAFBFC00FDFFFF00EBEBEB00000000001F1403002316030022140000745D
      2100FFFDEC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00EADEB60085641B004F3103004C2F04007A5A1200F9F2D900FFFF
      FF00FFFFFF00F1E8C800654809003B2504003B2606003824050034220500301F
      04002C1C0400281A040024170300201503000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0B796FFDFC9A9FF9F917CFF564F
      44FFE4D5BEFFB0A696FF534F48FFDDD2C2FF9F988DFF625D57FFCAC3B7FFD1CC
      C0FFF6EFE4FFFCF7EDFFFFFCF6FFF5E0C4FFF7F0E1FFF9D2D5FFDE5B5BFFE065
      65FFE06767FFDE605FFFEBA4A3FFFFFFFFFFC5C0EFFF6675ACFF68946AFF6799
      55FF689755FF6A9557FF6B9355FF202B188B00000000AEB89D004B8048004B8B
      530038803F0036803F00509A5F003EA66F0061945700926E2B00BC661E00E36F
      1E00DA732200D5722200D0681500DBAC890000000000DEDEDB00E5E5E500FAF9
      F40000000000000000000000000000000000000000000000000000000000FEFF
      FF00EDE3DC00E8DACF00F7F7F700000000001F1403002316030021130000735D
      2100FFFCEC00FFFFFF00FFFFFF00EEE4C300A08437009D833F00D1BE8400FFFE
      F800FFFFFF00FFFFFF00E3D5A60063420300482C020079591200F9F2D900FFFF
      FF00FFFFFF00F1E8C800644709003A2404003B2606003724050034210500301E
      04002C1C0400281A0400231603001F1403000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D3BB9BFFE0CBACFF7C7161FF6F66
      59FFEFE0C9FF7B746AFF524E48FFA69F93FFBAB1A5FFE4DCCEFFF8F2E4FFFFFB
      F0FFFFFAF1FFFFFCF6FFF2ECDBFFC7BA8DFFCEC8A8FFFBF6F2FFF2878AFFE25C
      5DFFE06464FFDE5E5DFFF4CAC9FFFFFFFFFFCBC9EDFF6B65DCFF7371CFFF6F81
      A2FF6C8F74FF6B9263FF6C9161FF20291D8B00000000C9DBC900408348004689
      4D003A8344003A8746003C8B4A0047AF77009E8238002DBE7C002DC17E004B9F
      6000D06B1D00DD752200DB6E1A00B98C57000000000000000000000000000000
      000000000000F1F4F000CCDCCC00B0C8AF0099967B00955D3900864111008233
      00008B3B0000D2AF940000000000000000001E1303002316030021130000735C
      2100FFFDEC00FFFFFF00FFFFFF00E3D6AC004E310000371F00005D3D0000E2D3
      A500FFFFFF00FFFFFF00FFFFF3008C6F28004327000077571200F9F2D900FFFF
      FF00FFFFFF00F0E8C80063470900392304003925050036230500332005002F1E
      04002B1C040027190400231603001E1303000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6BFA0FFDCC8ACFF5F574BFF7168
      5CFFBDB19FFF928B7EFFD0C6B6FFEBE2D1FFFDF4E4FFFDF4E7FFFFF6ECFFFFF6
      ECFFDCE6D5FF98C8A8FF4BA674FF369E69FF389E6AFF58B184FFAAC1ABFFD77D
      78FFEC696CFFF19C9EFFFFFBFBFFFFFFFDFFB7B5E9FF6865D6FF726ED7FF756D
      D9FF766FD0FF7672C3FF7672BDFF2321378B00000000F9FBF9003E8144003880
      40003D894A003D8A4A00479F620051B1800081A25F003DB976003BBF7B0015E4
      9C004EB56E00F66C1800BC7226003BAB6B00C9E4D2009BCBA80078B184004C90
      5700337D3D0018661C001A641D002A6B290035733600415B2400723F0A00893E
      070092480F00ECDDD20000000000000000001D130300201503001F120000725C
      2100FFFDEC00FFFFFF00FFFFFF00E3D7AF004F3500003722050043290000C2AD
      7200FFFFFF00FFFFFF00FFFFFF00A88E4D004226000074551200F9F2D900FFFF
      FF00FFFFFF00F0E7C80061460900372204003824050034220500312004002D1D
      0400291B040025180300211603001D1303000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEC7A8FFB4A490FF70695EFFA69B
      8AFFE1D4C0FFF4E8D4FFF7EDDBFFF9EDDFFFFFF1E6FFF4EDDFFFC6DAC2FF7BBA
      93FF3CA270FF2C9E69FF31A16DFF33A36FFF32A26EFF2B9E68FF27A069FF41A6
      74FF8EB395FFDAE9DEFFFFFFFFFFF2ECFFFF807DE1FF6C6AD8FF726FD7FF736F
      D4FF7570D1FF766FCEFF766ECAFF2421398B000000000000000077A97D003A84
      4400398644003D8F4E00489F5F005DAF750074AC690046CB8C0028D79000BF7E
      310055A8650037BB77003CB6740045AE6A003AA05A003A985400388F4D003383
      400025722C002B7431002D7230002B6C2B003A7439003C662E0086310000873D
      08009A5521000000000000000000000000001D1303001F1403001E110000715B
      2100FFFDEC00FFFFFF00FFFFFF00E3D7AF004E3400003622050040260000BCA7
      6C00FFFFFF00FFFFFF00FFFFFF00B0985A004025000071541100F9F2D900FFFF
      FF00FFFFFF00F0E7C800604509003520030036220500322005002F1E04002C1C
      0400281A040024170300201503001D1303000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAC5A8FFCFBDA4FFE2D1BBFFF0E1
      CAFFECDFCCFFF5E5D5FFFAEADBFFDEDFCAFFA4C8A8FF64AF83FF3DA571FF3BA8
      73FF41AA76FF3FA573FF3B9F6FFF399C6CFF389D6CFF38A16FFF39A672FF34A9
      72FF2AA66DFF35A26DFF71BA91FF819DB8FF716CD6FF736AE1FF706CDCFF726F
      D6FF7470D1FF7570CDFF766FC9FF2422388B0000000000000000CEE1D0003A86
      47003B88470040925100429C5C0065A76A005BBC7C0049D192006DBB7A005BBF
      770038D389002FD78F0037CB850048B4710043A764003A955100388F4C003786
      450025742D002F7936002A702C002D6F2C0037763A00595C28007B2F0000883E
      0700CDAB92000000000000000000000000001A1103001E1303001C100000705B
      2100FFFDEC00FFFFFF00FFFFFF00E2D6AF004C320000321F04003D240000BFAB
      7000FFFFFF00FFFFFF00FFFFFF00AE985A003D2300006F521100F9F2D900FFFF
      FF00FFFFFF00F0E7C8005E430800321F030033210500301F04002D1D0400291B
      040026180400221603001E1303001A1103000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAC6A9FFE1CFB5FFE8D6C0FFF0DD
      CAFFEEDFCCFFC6D0B5FF8EBB96FF54A675FF42A470FF48AA76FF3D8D64FF2F72
      50FF2D6C4EFF2F7151FF317353FF2F7453FF2F7152FF2D6F50FF2B6D4EFF2A6F
      4FFF30825BFF36A16EFF2FA46DFF31A167FF4DA07BFF648EA1FF797AC5FF796D
      DAFF746CD9FF746FD1FF746FCCFF2421388A00000000000000000000000064A1
      6D004593560049A0610050B173007EA6630063BA7A0048D897004FD999004FE0
      A0003CDE97003AD1890049BC76003FAC660042A9650041A05E003C9452003083
      3D0023722A0026712C002F7533003F7C40003F7A4200802D0000505D29009348
      130000000000000000000000000000000000191002001D1303001A0F00006F59
      2100FFFDEC00FFFFFF00FFFFFF00E1D5AC00462B00002C1800004D300000DACB
      9900FFFFFF00FFFFFF00FFFFFF00A9925400392000006D501100F9F2D900FFFF
      FF00FFFFFF00F0E7C8005B4208002F1D0300311F04002E1E04002B1C0400271A
      040024170300211503001D130300191002000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFCBB2FFE8D2BBFFDCD2B9FFAFC2
      A1FF78AE83FF4FA06EFF49A06DFF51A774FF4B986BFF295B41FF26573EFF367A
      56FF408F65FF39815BFF38835DFF40966AFF45A675FF42A372FF3E996CFF3684
      5EFF296347FF21533BFF348A61FF3CA874FF36A46DFF34A669FF46A470FF6196
      8EFF7883B1FF7D72CEFF776ECEFF2D272D8A000000000000000000000000E6F1
      E800499D6000659A5F00A17B3C00EC7427007E955B0059CF8D0052DD9A0075C7
      850082C7840042E1A00046BE770041B0690040A7630040A15F003C9653003C8C
      4D002A793400216D25002A712E00367738004968320061471600664E1900DCC6
      B60000000000000000000000000000000000180F02001A110300180E00006D59
      2100FFFDEC00FFFFFF00FFFFFF00EEE4C3009B813600927A3A00C2AE7000FEFC
      F200FFFFFF00FFFFFF00FFFFFC0090773600321C00006B4F1100F9F2D900FFFF
      FF00FFFFFF00F0E7C800594008002C1B02002E1D04002B1C0400281A04002518
      0300221603001F1403001A110300180F02000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCCDB1FF93B086FF66A170FF519B
      67FF529D6AFF57A06EFF58A371FF549B6CFF244732FF2D5D42FF52A876FF4B9B
      6EFF234B36FF356E4FFF418C63FF376F51FF3A805BFF47A171FF47A473FF4AAC
      79FF4AAC79FF3B7C59FF1F3C2AFF3C8F64FF42A976FF3FA473FF3AA471FF37A6
      6CFF3FA66BFF519B7CFF999782FF3F32208F0000000000000000000000000000
      0000BFD8C000589F66008D8B4E00997F450068AF730064C584007AC4810070CD
      8A00B59B57005DD5970060C487004CB5730040A8630040A25F00449E5F003E91
      50002F7E3A001F6B24002D743100437E45002E733300505C2900B19374000000
      000000000000000000000000000000000000150E0200180F0200160C00006C58
      2100FFFDEC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F6EECF0061470C002E1B0000684E1100F9F2D900FFFF
      FF00FFFFFF00F0E7C800573E0700291902002B1C0400281A0400261804002316
      03001F1403001C12030019100200160E02000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000027241E6E4E6B4CCF5A9966FF5798
      64FF599A67FF5B9C6AFF5DA26EFF50895FFF1D3323FF4B865CFF5DAA74FF539B
      6BFF417754FF407955FF4B9066FF36694CFF2F5A41FF3F7E59FF386D4FFF3E7E
      5AFF4FAD78FF4CA071FF203827FF3B7754FF49AD79FF45A574FF41A473FF3BA3
      70FF3DA472FF3E825CDF373A2F8E050403290000000000000000000000000000
      000000000000BAC7A900857E470064A367004FAE6E005EB4770074B4780065C2
      840092985E0066C88D0062C3870066BD850062B77E004FA669003D9755003989
      4900327F3C00257029002D7331003C7D410033723300A7795700000000000000
      000000000000000000000000000000000000140D0200160E0200140A00006B58
      2100FFFEEE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700A38D4E00372200002D1B0100664D1100F9F3DB00FFFF
      FF00FFFFFF00F0E8C900543D070025170200281A040026180400231603002015
      03001D1303001A110300160E0200140D02000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000040A0B093D3542
      319F5A875DEC599762FF589863FF5D9C69FF3A5D41FF2F4D36FF528E61FF5DA1
      6DFF60A872FF5CA46FFF59A06EFF3A6346FF3E6C4DFF529669FF57A371FF5096
      69FF4E9769FF315A3FFF2E543BFF4CA070FF47A573FF44A370FF4F9E72F83E5D
      47B9131512550000000D00000000000000000000000000000000000000000000
      00000000000000000000DCCAB00067A669004FB2740052B87A0057BF80005DC6
      870057C182005EC084005EB97F0064BC820063B27C0064AD770064AA75004E95
      5B00337E3C0025712B0030763500516832009EA5890000000000000000000000
      000000000000000000000000000000000000110B0200140D0200110800006654
      2000FFFFED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFE
      EF00E9DFBC009B8546003D2700002E1D04002A1A01005F481000FFF8DA00FFFF
      FF00FFFFFF00F4ECC9004E380700221502002517030022160300201503001D13
      03001A110300170F0200140D0200110C02000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010101171A1E1768455B43BF619664FC5B9963FF46704BFF35543AFF4067
      47FF497853FF4D8258FF4F885CFF518D60FF4A8057FF477954FF477C56FF3E6D
      4CFF345B3FFF3D734FFF4EA16FFF55A674FF4B7457D128312783050504280000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0ECE20085AB780076A2670054BE82005ABC
      80005FBF840061BF85005CB87E0060B6800061B37C0066AF7B0065AB79006DAD
      7F006EA87A0064996900578D5A00D3D9CB000000000000000000000000000000
      0000000000000000000000000000000000000F0A0100120B0100120B02003327
      0A007D6B370087753D0088743C0089753C008A753C008B763D0088743900735E
      24004C3603002D1A00002A1B04002B1C04002A1B03003D2B0800816D35008E79
      3E008D793F007A6631003323050022160200211503001F1403001D1303001A11
      0300180F0200150D0200120C0200100A01000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000060705322F392C94557A54DC5D9761FF5388
      57FF4B7750FF466E4BFF436A48FF406845FF426C49FF46734EFF497B54FF4D8C
      5EFF549E6AFF5B956AED3D4F3EAA10100E4B0000000400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8D5C000B1A2710084A0
      650061BA820077AA70009B9157008D8A570094915D008A9F6F0097AD84009A8B
      5E0096956C00C1D7C30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D080100100A0100130C0200130C
      010011090000150A0000180C00001A0E00001B0F00001D1000001F1100001F12
      0000221502002518040027190400281A0400281A040027190300221300002213
      0000201200001F11000022150300201503001E1403001C1203001A100300180F
      0200150D0200130C0200100A01000E0901000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000B1416115A3849
      35AA629360F85E9860FF5D9A62FF5E9C65FF5C9C65FF5A9C64FF629F6AFF5067
      4EC51F231C6F0202011B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAF6
      F200E6D1BD00E0BB9F00E1BDA200E4C6B000E8CDBC00E8CEBE00E8D3C400F6EE
      E900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B0701000D080100100A0100120B
      0100140D0200160E0200180F02001A1103001D1303001D1303001F1403002015
      0300231603002316030023160300231603002316030023160300231603002215
      0200201503001F1403001E1303001D1303001A11030019100200180F0200140D
      0200120C0200100A01000E0901000B0701000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000405042B232A207F546D4DD36F9864FF65845CE8323A2D940B0C0A400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000090601000B0701000D0801000F0A
      0100110B0200140C0100150E0200180F0200191002001A1103001D1303001D13
      03001E1303001F1403001F1403001F1403001F1403001F1403001F1403001E13
      03001D1303001D1303001A11030019100200180F0200160E0200140D0200120C
      02000F0A01000E0901000B070100090601000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000015151518393939A72F2F2FBF2F2F2FBF2F2F2FBF2F2F2FBF2F2F2FBF2F2F
      2FBF2F2F2FBF2F2F2FBF2F2F2FBF2F2F2FBF2F2F2FBF2F2F2FBF2F2F2FBF2F2F
      2FBF2F2F2FBF2F2F2FBF2F2F2FBF2F2F2FBF2F2F2FBF2F2F2FBF2F2F2FBF2F2F
      2FBF393939A71515151800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AF8E92FFC2A9ABFFBEA6A8FFBCA3A7FFBBA2A5FFBBA3A6FFBBA4A8FFBBA4
      A7FFB8A2A4FFB49FA2FFB39D9FFFAF9C9DFFAE999CFFAB979AFFA99597FFA794
      96FFA69395FFA39294FFA28F93FFA18E91FF9F8D90FF9F8E90FFA18F8AFF7460
      5AFF393939A71515151800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003D8447C129C942FF36A8
      45DE468E4DB84A7650904761497139443A4D2124222702020203000000000000
      00000000000000000000000000000000000001010102050505060A0A0A0B0C0C
      0C0D0C0C0C0D0C0C0C0D0C0C0C0D0C0C0C0D0C0C0C0D0C0C0C0D0C0C0C0D0C0C
      0C0D0C0C0C0D0C0C0C0D0C0C0C0D0C0C0C0D0C0C0C0D0C0C0C0D0C0C0C0D0C0C
      0C0D0C0C0C0D0C0C0C0D0C0C0C0D0C0C0C0D0C0C0C0D0C0C0C0D0C0C0C0D0C0C
      0C0D0C0C0C0D0A0A0A0B05050506010101020000000000000000000000000000
      0000C1AEB2FFEFEDECFFF7EEE8FFF5EDE7FFF7EDE7FFFCF3ECFF7E7978FF8885
      84FFC1BBB7FFFFF6EEFFFFF5ECFFFFF2E9FFFBF0E6FFF9EEE5FFF8ECE3FFF7EB
      E1FFF7EAE0FFF5EADEFFF5E8DEFFF4E8DDFFF4E7DBFFF6E8DCFFF9EBDEFFA18F
      8AFF393939A71515151800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000202020317171719666666837E7D7DB6858484D08C8A89E9747271E04A4A
      4960000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003742394F209833FF29D64DFF25C8
      3CFF27CD39FF29CC3AFF2DCB3CFF34CB3FFF39CC41FF3ECA42FF49BC4BEA50A3
      50D2475C487600000000000000000000000005050506141414161E1E1E232020
      2026202020262020202620202026202020262020202620202026202020262020
      2026202020262020202620202026202020262020202620202026202020262020
      2026202020262020202620202026202020262020202620202026202020262020
      2026202020261E1E1E2314141416050505060000000000000000000000000000
      0000C0ADB2FFEEF0ECFFFAF3E8FFF9F1E5FFFCF3E7FFF2EADDFF636466FFB5B6
      B7FF8C8D8EFF2C2F30FF282825FF5C5850FF989186FFCEC6B6FFFFF2DDFFFEF0
      DAFFFBECD8FFFAEBD5FFF7E8D1FFF5E7CFFFF4E3CDFFF4E3CAFFF6E9DCFF9F8E
      90FF393939A71515151800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000222222253D3D
      3D45818180B3939291D9B6B4B3FFBEBCBBFFC6C4C4FFDFDDDDFFAEABABFF726F
      6EF4313131390000000000000000000000000000000000000000000000000000
      000000000000000000000000000032343C4149557D883C55B7D3464B5C880000
      000000000000000000000000000000000000267E30E71D9733FF29D457FF25C6
      46FF26C840FF29C93CFF2BCB3BFF30CD3FFF36D242FF3ED644FF45DE48FF4BE3
      4CFF488A4CC92222222806060607000000006361618184807EF7888481FF8884
      81FF888481FF888481FF888481FF888481FF888481FF888481FF888481FF8884
      81FF888481FF888481FF888481FF888481FF8A8683FF8C8986FF8F8C89FF8F8A
      87FF8B8785FF888482FF888481FF888481FF888481FF888481FF888481FF8884
      81FF888481FF666564941E1E1E230A0A0A0B0000000000000000000000000000
      0000C2AEB3FFEEEFECFFFAF3E8FFF8F1E7FFFAF2E8FFCDC9C0FF91938FFF9B9C
      9BFF9E9FA1FFEDEEF0FFECEDEFFFD7D9DAFFB1B2B4FF747577FF3D4042FF4D4B
      48FF5C564FFF948D80FFD0C5B4FFFCECD5FFF9EAD2FFF6E5CEFFF6E8DCFF9F8E
      90FF393939A71515151800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000022222224717171918C8B8AC3ADADABFAC1C0
      C0FFE2E0E0FFDDDCDCFFD8D7D9FFE3E2DFFFDAD8D8FFE6E5E5FFBDBBB9FFA7A7
      A6FF787775E02626262A00000000000000000000000000000000000000002323
      2629454D67724359A3B82953E9FA2855F8FF2957FFFF2A54FEFF203889FF3D49
      6FBF0D0D0D0E00000000000000004360477B187E26FF1B9A3AFF29D663FF25C8
      54FF26CA4FFF28CB47FF2BCE42FF2FD041FF34D341FF39D542FF42DB48FF47DE
      49FF49874CBF2525252D1515151803030304888481FFF7F2EFFFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FF888481FF202020260C0C0C0D0000000000000000000000000000
      0000C4B0B5FFEEF0EEFFFAF4EAFFF9F2E8FFFAF4ECFFCCC3B0FFFBEDD2FFA29D
      91FFA09A8DFFE9E5D7FFD7D7CFFFCACCC8FFAAABA9FFC4C6C8FFD8D9DCFFEBEC
      EEFFEBECEEFFC3C4C7FF4B4C4EFF2F3234FF4B4946FFD5C7B2FFF7EADFFFA28F
      91FF393939A71515151800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      04054343434E7777779AA1A1A0ECB1B1B0FBD9D8D6FFE3E1E3FFDBD8DBFFC4C1
      C6FFB6B6B8FFACAEAEFF8B948CFFD3D3D3FFDAD8D8FFDEDEDCFFC2C0BEFF9F9E
      9CFFA6A4A3FF64646497030303040000000000000000474B69792E49C2EF2451
      EFFF2756FEFF2857FEFF2756FBFF2753F8FF2854FCFF2A4FF5FF1F358FFF2239
      91FF2C3F7EEB2222242800000000199A25FE18842BFF1D9E43FF28D771FF24CA
      63FF25CC5DFF27CD56FF2ACF4FFF2ED348FF33D847FF38D844FF40DD46FF44DF
      49FF498D4EC01C1C1C200D0D0D0E01010102888481FFF7F2EFFFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFAF9
      F5FFF9F7F5FFF8F6F4FFF6F5F4FFF5F4F3FFF3F3F3FFF1F1F1FFEFF1F1FFEFEF
      F0FFEEEFF0FFEEEFF0FFEEEFF0FFEEEFF0FFEEEFF0FFF0F1F1FFF0F1F1FFF1F2
      F3FFFBF9F6FF888481FF202020260C0C0C0D0000000000000000000000000000
      0000C6B3B6FFF0F1EFFFFAF4ECFFF9F4ECFFFBF7F1FFD2B580FFF5D198FF5249
      3AFFF7D9A7FFF2DBB4FFF2E1C1FFF8EBD1FFD9D2C3FF66645CFFD8D3C5FFC6C5
      BDFFB6B7B3FFBDBEBFFFD8D9DCFFEFF0F2FF86888BFFDCD0BCFFF7EADFFFA390
      94FF393939A71515151800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000053535363848484BB9D9D
      9BE5BFBEBDFFD7D6D6FFE8E1E2FFD6D3D5FFBEBDC1FFACADADFFA2A9A3FF95A1
      95FF8FA38FFF8FA68FFF7C977EFFD7D6D5FFDCD8DAFFD7D5D4FFD7D7D6FF8A87
      86FFE0E0E0FF6A6969B11212121401010102000000003E51BBD72552F2FF2556
      FBFF2554F7FF2654F6FF2753F6FF2751F6FF2A51FAFF2B50F2FF1F3595FF2037
      97FF223995FF1F2790FE405E5DB4199D29FF178936FF1DA24EFF28D981FF24CD
      71FF25CF6DFF26D066FF29D15EFF2DD454FF32D74DFF36DA49FF3DDE48FF40E0
      48FF4A8F4EBE121212140404040500000000888481FFF7F3F1FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFF9F7F5FFF7F6F5FFF6F6F4FFF4F4F3FFF3F3F2FFF1F2
      F2FFF0F1F1FFEFEFF0FFEEEFF0FFEEEFF0FFEEEFEFFFECECECFFEDECEDFFEEED
      EEFFF9F8F5FF878380FE202020260C0C0C0D0000000000000000000000000000
      0000C8B5B8FFF1F2F0FFFCF6EEFFFAF5F1FFDEDDDDFFE7AF33FFF0BC51FF3E31
      18FFF0C165FFECC276FFEDC888FFF2D19BFF887960FFBFA781FFF4DDB5FFF3E1
      C1FFF7EAD1FFFDF5E2FF53534FFFDBD8CEFF969891FFF9EAD4FFF6EADEFFA392
      94FF393939A71515151800000000000000000000000000000000000000000000
      0000000000002D2D2D315F5F5E758D8C8CCDA6A4A3FFB9B9B9FFDAD5D5FFD6C7
      CAFFCCB8B8FFC7ADACFFA4AAA4FF979E92FF93A696FF8CA18DFF93AA93FF90AC
      90FF90A890FF93AB93FF839983FFD6D6D4FFDDDBDBFFDAD9D8FFDDDBDAFF8B88
      87FFDFDFDFFF6A6968BD2424242C0C0C0C0D000000004059BBCB2455F6FF2457
      F8FF2558F6FF2658F6FF2754F6FF2851F4FF2B50F8FF2D4DF1FF1F3597FF2037
      9AFF20379AFF222DA2FF1F4F76FF19A12CFF17903FFF1DA659FF28DA8EFF24D0
      82FF25D27DFF26D375FF28D36CFF2CD563FF30D859FF34DB4FFF39E14CFF3EE2
      49FF4A9250BC080808090000000000000000888481FFF8F6F5FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFAF9F5FFF9F7F5FFF8F6F5FFF6F5F3FFF4F4
      F3FFF3F3F3FFF1F1F1FFF0F1F1FFEFEFF0FFEFEFF0FFEEEEEEFFEDEEEDFFEFEF
      EFFFFBF9F6FF878481FE202020260C0C0C0D0000000000000000000000000000
      0000C9B7B9FFF1F3F1FFFDF7F0FFFEFAF5FFD6C7AAFFDE9F23FFC59229FF5E45
      14FFE8AE34FFE6AF36FFE9B343FFF0BD55FF4F3F20FFF1C265FFEEC376FFEDC8
      88FFF1D09BFFAD9976FF9B8A6DFFF7E2BCFFD9CCB8FFF6E7D5FFF6E9DFFFA593
      95FF393939A715151518000000000000000000000000000000002929292D6565
      65838E8E8CDDA8A6A4FFBEBDBCFFC7C5C7FFCCCACDFFBBB8B9FFABB1AEFF9FB4
      AEFF6FBCB5FF3FD8D3FF20E6E4FF5E9674FFBFCDAFFF95AC94FF94AD95FF98AF
      98FF92AA92FF90A68FFF7D947DFFD8D7D6FFE1DEDFFFCDCCCBFFD9D9D8FF8D89
      87FFE1E0E1FF747272D2303030411D1D1D22000000003D5EC7CF245DF7FF2360
      F6FF2461F6FF2560F6FF265DF5FF2858F4FF2B53F7FF2D4DEFFF1F3596FF2037
      9BFF20379FFF202CA8FF1D506FFF19A635FF179448FF1DAA62FF27DC98FF24D2
      8EFF25D48BFF26D585FF27D67AFF2BD770FF2FD865FF34DC59FF39E14FFF3DE4
      4AFF499951C0010101020000000000000000888481FFF7F6F3FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF7
      F4FFF9F5EEFFF9EFE7FFF7EEE5FFF7EEE5FFF9EFE7FFF9EFE7FFF7F0E7FFF8F5
      F1FFF6F5F4FFF5F4F3FFF3F2F2FFF1F2F2FFF0F0F1FFEFEFF1FFEEEEEEFFF0F1
      EFFFFBF9F6FF888681FD202020260C0C0C0D0000000000000000000000000000
      0000CBB9BBFFF2F3F3FFFDF8F3FFFFFCF8FFC59D5AFFD59018FF785311FFAB77
      1CFFDB9E29FFDCA02AFFE1A52AFFE9AD2DFF3C2B05FFEAAF2FFFE8B034FFE9B3
      43FFEFBC56FF614E29FFDFB360FFEFC47AFFD7CAB4FFF5E9D6FFF5E8DFFFA694
      96FF393939A7151515180000000000000000000000007372729CA09F9DFFBEBD
      BDFFD0CED1FFC4C2C5FFB6B6B6FFA5ABA5FFA0ACA3FFA6A18FFF48AE9FFF19EB
      EAFF29EBEDFF26EBEFFF2AF2F1FF25D2C7FFDAC8ADFFC5E3CAFF91A891FF9CB6
      9DFF9FBCA0FFAFC7B0FF9CB19EFFD5D6D4FFA3A2A2FF787878FFB7B7B8FF9492
      90FFE3E3E2FF807F7DDF303030402323232B000000003964D2D82367F6FF226B
      F6FF226CF6FF236BF6FF2466F5FF2660F4FF2A5AF7FF2D4FEFFF1F3599FF2037
      9DFF2039A3FF1F2895FF1C4A5BFF19A940FF189951FF1DAF6BFF26DDA1FF23D4
      98FF22D594FF26D68FFF27D787FF2BD87CFF2FDA6FFF33DC63FF37DF58FF3CE5
      4DFF479D51C2000000000000000000000000888481FFF7F5F3FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFDFDDDAFFF3F1EEFFFBF9F6FFFBF7F4FFF9EF
      E5FFEECAABFFE9BC96FFE9BB95FFEABB93FFEBBD94FFECC4A1FFF3DBC6FFF6EC
      E1FFF9F5F3FFF8F7F5FFD8D7D7FFF4F4F3FFF3F3F3FFF1F1F1FFEFF1F0FFF2F2
      F0FFFBF9F6FF878581FC202020260C0C0C0D0000000000000000000000000000
      0000CDBBBCFFF3F4F4FFFFFAF6FFFFFFFCFF695E4DFFA17D47FF3B2E1BFFB172
      0EFFD18D18FFAF7D48FF9F8085FF9E838EFFA28B94FF967556FFC08A29FFE1A5
      2CFFE8AD33FF3C2C0BFFEBB032FFCC9A2EFFE6DED5FFF5E9D8FFF5E9E0FFA995
      98FF393939A71515151800000000000000000909090A8F8F8EEEE5E4E3FFC1C1
      C1FFA9B3ABFFB2C2B2FFA2B3A2FFAFC4AFFFB2D7B4FFD9E3D1FFA7B79CFF15EA
      E5FF38F2F7FF2FF7F9FF32F9FCFF1AF8FDFF83AF8FFFF5FBE2FFD5F3D9FFD7F4
      D8FFD0F2D1FFD6E8D7FFB2CAB3FFCFCFCEFF929192FFFFFFFFFFBFBEBEFF9F9B
      9AFFE3E3E3FF8A8A89EA1C1C1C2011111113000000003768D5DC206DF6FF2071
      F6FF2073F6FF2172F6FF2270F5FF2467F3FF2860F6FF2D54EFFF1F379CFF2037
      A3FF21369AFF1E2274FF1B3C4CFF18A242FF199D56FF1EB273FF25E2ABFF28DA
      A7FF26D9A2FF25D89AFF24D78EFF27D883FF2CDA76FF30DC6BFF37DF60FF3BE3
      54FF47A251C7000000000000000000000000888481FFF7F5F3FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFEAE8E5FF9A9A97FFD2D1CFFFFBF9F6FFFBF9F6FFD789
      4BFFD37121FFDD7D2CFFE58936FFEC903FFFF5A052FFE18D44FFE5A872FFF3DD
      CAFFF9F3ECFFEDE7DFFF979796FFD5D4D3FFF6F5F4FFF4F4F3FFF2F3F2FFF2F3
      F3FFFBF9F6FF888480FD202020260C0C0C0D0000000000000000000000000000
      0000CEBDBEFFF4F6F5FFFFFCF7FFD2D0CBFF484B4EFFF0F3F7FFFFFFFFFFDDE3
      EAFF706067FF846A73FF7D666DFF887176FFA99095FFDCC3C8FFA28C8EFFBB82
      24FFCD9022FF48320AFFDE9D24FFC8A051FFF8EDE3FFF4E9D8FFF4E9E1FFA996
      99FF393939A71515151800000000000000004B4B4B59A1A1A0FFEEEBEAFFA1A2
      A1FF617661FF526052FF6F7970FFEBEBEBFFD0F2D3FFD7F5DCFFF1EBD1FF70B6
      9EFF21FAFEFF37FCFEFF30FDFFFF32FFFEFF22DCD2FFDAD6B5FFE2FBE6FFD2F5
      D5FFCCEECFFFCFEAD0FFAAC3ABFFD2D1D1FF949294FF525454FFB7B7B6FF9A98
      97FFE6E6E5FF8D8C8AEA040404050101010200000000336CD9E12072F6FF2076
      F6FF2078F6FF2077F5FF2274F4FF226CF2FF2562F4FF305BEEFF223DA5FF2036
      A2FF1E2F75FF1F2270FF1C3D4FFF189037FF1AA25DFF1EBA70FF3DD49DFF54DB
      B2FF53DEB3FF52DEAFFF52E1ABFF53E3A4FF48E395FF45E286FF44E778FF46E8
      6BFF43A958D3000000000000000000000000888481FFF7F5F3FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFB3B3B0FF9A9A97FFEEE8E5FFFBF9F6FFECC7A7FFC25A
      09FFCF6B16FFDF802AFFE88B35FFF19844FFF19F51FFF3AA63FFF5AC62FFEBC1
      9DFFF7E8DAFFF9F3EEFFADA8A4FFA4A2A0FFF7F5F2FFFBF9F6FFFBF9F6FFF6F7
      F8FFFBF9F6FF898380FE202020260C0C0C0D0000000000000000000000000000
      0000D1BFBFFFF5F7F6FFFFFCF8FFF0ECE7FF9C9A96FF5E5C5BFF525251FF454B
      4DFF8B676AFF5B474AFF665154FF5F4A4DFF584447FF846B71FFD4B9BEFF8266
      56FF7C5C27FF734904FFD08811FFCDB080FFF8EEE1FFF7EADAFFF4EAE1FFAC97
      9AFF393939A71515151800000000000000006F6E6E97B6B5B3FFEAE7E7FFB2B8
      B3FF57645BFF737373FF6E726EFFE8F6EEFFCAEFCFFFCDEED3FFDAFBE2FFE1D6
      B5FF3CD3C7FF32FFFEFF34FFFDFF35FDFFFF21FBFFFF7ABEA3FFF0F6D9FFCAF2
      D4FFC5E8C9FFC9E9CDFFA4C3AAFFD1D0CFFF979697FF848483FFB8B8B8FFA5A2
      A1FFE5E5E5FF8C8A8AE90000000000000000000000002E6EE0E92075F6FF2079
      F6FF1E77F5FF1E77F4FF2377F4FF357CF4FF4881F6FF4577FEFF1341BEFF0C2D
      8BFF092A74FF1F2270FF04425EFF008C35FF00B464FF00C97BFF00C17DFF00C8
      83FF0FC67CFF28C376FF2DC16FFF35C66BFF4CD373FF51D772FF48D868FF4ADA
      62FF4D8E58A7000000000000000000000000888481FFF7F5F3FFFBF9F6FFFBF9
      F6FFFBF9F6FFDCDBD8FF959493FFC7C2C0FFFBF9F6FFFBF7F2FFC7671CFFBF57
      02FFC65E09FFD5721DFFE1812BFFEC923FFFE79447FFFBB36CFFFFBD78FFE79B
      55FFF3DCC8FFF9F1E8FFE4D7CDFF959493FFC7C5C3FFFBF9F6FFFBF9F6FFF7F8
      F9FFFBF9F6FF888481FF202020260C0C0C0D0000000000000000000000000000
      0000D3C2C1FFF6F8F7FFFFFCF8FFFFFEF9FFFFFFFBFFFFFFFEFFFFFFFFFFFFFF
      FFFF986E6FFFA4898BFFBB9FA0FFAD9294FF7E676BFF574345FF977E82FFB79C
      9FFFD7D9DEFFF2F6FDFF5F646CFFCABFB0FFF8EEE0FFF6EAD9FFF5EAE1FFAE99
      9CFF393939A7151515180000000000000000747373A2BAB9B7FFE9E5E6FFB8BB
      B9FF263129FF565D57FF909F95FFDFFCE9FFC7ECD3FFC9ECD4FFC7EDD2FFDDFB
      E0FFBAC4A2FF20F2EDFF38FFFEFF35FDFFFF37FDFFFF1DE8E3FFCACAA9FFD3F5
      DCFFBBE4C8FFC0E6CDFF9DBEA7FFD1D1CFFF959595FF7D7D7EFFB9B9BAFFAAA6
      A4FFE6E5E5FF8D8C8BEA000000000000000000000000296DEAF22275F6FF2D83
      F7FF3E8DF6FF4592F5FF4891F5FF3E86F5FF397BFDFF4060E1FF393DA8FF3529
      55FF402D55FF4B2955FF563B39FF605F19FF6F6325FF7D5E29FF8D5A27FFAA4B
      1CFF587137FF0CB467FF21BE64FF24C05AFF2CC651FF31CB49FF37C644FF4F8D
      51A505050506000000000000000000000000888481FFF7F5F3FFFBF9F6FFFBF9
      F6FFF3F1EEFFA1A09EFFA5A3A2FFFAF5F2FFFBF9F6FFDEA16EFFB64C00FFBC52
      00FFC15802FFC9620DFFDC7B26FFE18735FFEB9C52FFF7AD64FFF8B16AFFF5AD
      64FFE8B07EFFF5E2D1FFF9F3EDFFBFB7B2FF979694FFE3E1DEFFFBF9F6FFF7F8
      F9FFFBF9F6FF888481FF202020260C0C0C0D0000000000000000000000000000
      0000D4C3C2FFF6F8F8FFFFFFF9FFFFFFFBFFE4E1D9FFA3A19EFF9B9B97FF9B9D
      9AFFB98B89FFEDDBD8FFF3E5E5FFE7CDCBFFBCA0A1FF6F595BFF6A5458FFAC90
      91FF5B5756FF55595BFF3A3D3FFFFEF4E6FFF8EDDFFFF6EBDBFFF5EBE2FFAF9A
      9CFF393939A7151515180000000000000000818080C6C7C5C6FFE9E8E7FFABAD
      ADFF688371FF73897BFF93A99DFFD4FDE3FFC3E8D1FFC4EAD2FFC4EAD2FFC2EA
      D3FFDCEDD4FF94BDA2FF28FFFEFF39FDFFFF34F9FFFF23F1FFFF59C4B8FFDCE6
      C4FFB8E4CBFFBBE1CAFF97BBA4FFD1D1CFFF959393FF797979FFB8B9B9FFA9A8
      A7FFE6E5E5FF8D8D8BEA000000000000000000000000276EF8FF3984F5FF3B86
      F4FF2C7CF3FF2575F3FF226FF2FF1B6BFAFF1F5DF6FFDC3200FFEA3800FFE93E
      00FFED4000FFF14200FFF53E00FFF93700FFF93500FFFB3700FFFA3800FFFF34
      00FFAC420FFF009A50FF209B4AFF26B551FF2EC752FF39CB4EFF49AB53CD0000
      000000000000000000000000000000000000888481FFF6F5F3FFFBF9F6FFFBF9
      F6FFBBBAB8FF979694FFDFDDD8FFFBF9F6FFF3DECAFFB84E05FFB34500FFB649
      00FFBA4E00FFC05500FFC25C0CFFD78137FFEB9C52FFED9F55FFF1A45BFFF5AE
      67FFE8994EFFF0D0B6FFF9F0E8FFF3EDE8FFA09E9CFFABAAA8FFFBF9F6FFF7F8
      F9FFFBF9F6FF888481FF202020260C0C0C0D0000000000000000000000000000
      0000D8C6C5FFF9FBFCFFFFFFFEFFABAAA4FF5E74B1FF426DE9FF83A0F0FF4F7C
      F2FFC0AAB8FFFCF0ECFFFFFEFDFFEEDEDEFFD7BAB8FF826B6DFF5D484AFF9172
      75FFFBF2E7FFFFF9ECFFFEF4E7FFFAEEE1FFF6ECDEFFF7ECDDFFF4EAE3FFB09B
      9EFF393939A7151515180000000000000000888686DDD2D2D1FFEBE9E9FFA2A6
      A4FF3D4A41FF6D716EFF819089FFD3FBE8FFBDE0CAFFBEE4D0FFBEE4CEFFBCE1
      CCFFBEECDAFFE1D7BEFF53C9B5FF3BF7FFFF2CF6FFFF27EFFFFF08DDF5FF9AC4
      A9FFC7E0C8FFB1DAC9FF90B59FFFD0D0CEFF9C9B9DFFFFFFFFFFB3B3B4FFA5A3
      A2FFE6E5E5FF908E8DE9000000000000000000000000353845473B66C7D3226F
      F2FF2070F3FF2171F4FF256EF3FF2069FBFF295BF1FFE84200FFE24500FFDD47
      04FFDF4704FFDF4602FFE34603FFE34702FFE54802FFE74902FFE94A02FFFF4D
      00FFC13408FF03964DFF199A43FF229C40FF2EB546FF3BBF4DEC070707080000
      000000000000000000000000000000000000888481FFF6F4F3FFFBF9F6FFFBF9
      F6FFAAA8A6FF9E9C9BFFF3F1EEFFFBF9F6FFE0A678FFBA5309FFBB560CFFBE5B
      11FFC26116FFCA6E23FFCD742CFFD47D34FFD9843AFFDA863CFFDB883EFFDD8C
      43FFDA863CFFEBC3A0FFFBF5F0FFFBF9F6FFABAAA8FF9E9C9BFFFBF9F6FFF7F8
      F9FFFBF9F6FF888481FF202020260C0C0C0D0000000000000000000000000000
      0000D9CAC7FFFEFFFEFFD3D1CCFF5770B2FF4576F3FFC5D4F4FFE1EAF5FF5586
      F3FF598AF5FFCAA09EFFEAD5D2FFEAD3D1FFCBAEAEFF766063FF725C5EFFA58E
      8DFFFFFAEFFFFBF2E7FFF8F0E4FFF7ECE0FFF6EBDEFFF6EDDDFFF4EBE4FFB29C
      9FFF393939A7151515180000000000000000898987EBDBDAD7FFECE8E7FFA0AB
      A6FF394940FFA29FA1FF3F564CFFCAF8E8FFB7DCCDFFB9DFD1FFB8E0CFFFBEE3
      D5FFCED5C3FF8CC0A9FF26FBFEFF33F3FFFF26EEFFFF21E6FFFF0FDCFFFF29BC
      D1FFBBC9AEFFB2DBCBFF85AC9CFFD3D2D0FF908F8FFF565758FFB9B7B7FFA19F
      9DFFE6E7E6FF949191E80000000000000000000000000000000000000000414B
      6062306AE0EE2668EDFF2663E8FF1B59E9FF2049D8FFF05000FFEB5301FFE653
      07FFE85207FFEA5005FFEB4E03FFEC4C01FFEE4B00FFF04C00FFF24D00FFFF54
      00FFD62702FF4950466F0A0A0A0B0E0E0E0F1011111204040405000000000000
      000000000000000000000000000000000000888481FFF6F4F2FFFBF9F6FFFBF9
      F6FFDBD9D6FF959493FFBBBAB8FFFBF9F6FFF7E9E1FFE4AB71FFE0A164FFDD96
      55FFD88C48FFD7843DFFE19A5BFFCC712AFFCD7229FFCE742BFFCE752CFFCE75
      2DFFD27B37FFF9EFE7FFFBF9F6FFD5CFCCFF939291FFC7C5C3FFFBF9F6FFF7F8
      F9FFFBF9F6FF888481FF202020260C0C0C0D0000000000000000000000000000
      0000DCCDC9FFFFFFFFFF8C8F95FF5C8BF5FF83A9F6FFFFFFFFFFECF2FDFF78A4
      F6FF6E9DF7FFD5E4F7FFC4AAA3FFC5A19DFFA3797BFF967777FFBC9F9EFFA696
      92FFFDF8EDFFF9F1E7FFF7EEE3FFF6EEE2FFF6ECE0FFF7ECDEFFF5EBE4FFB49D
      A1FF393939A71515151800000000000000008A8988EADADADAFFEAE5E5FF8F9A
      96FF223630FF65726EFF7D9991FFB8ECD6FFB1D7C5FFC5D3C4FFC3D1BEFFAAC1
      AAFF69CEBDFF2CF8FFFF37EEFFFF1BE9FFFF45C2C2FF1CCFEBFF12D5FDFF00C2
      F3FF50AAAFFFC5D9BBFF85AD9FFFCECECDFF8B8C8CFF737372FFC6C5C5FF9693
      91FFE8E8E8FF959393E600000000000000000000000000000000000000000000
      0000050505064958818D204BC9FF093ED0FF2E48ACCDF86101FFF46204FFEE60
      0AFFF05F09FFF25B07FFF35805FFF45402FFF65000FFF74F00FFF95000FFFF59
      00FFD13706FF4739395800000000000000000000000000000000000000000000
      000000000000000000000000000000000000888481FFF6F4F2FFFBF9F6FFFBF9
      F6FFFBF9F6FFBDBDBBFF979694FFDFDDDAFFFBF9F6FFEBC093FFE7B178FFE2A4
      65FFDD9855FFD98C46FFD48034FFDC8D4AFFC56519FFC96C22FFC96E24FFC768
      1EFFF1D7BFFFFBF9F6FFF3ECE8FF9E9C9BFFAAA8A6FFF7F5F2FFFBF9F6FFF7F8
      F9FFFBF9F6FF888481FF202020260C0C0C0D0000000000000000000000000000
      0000DDCFCAFFFFFFFFFF677592FF6696F9FFB8D0FCFFF5F9FFFFE0EAFEFF9DBF
      FAFF91B7F8FFB5CEFAFFC2CDDFFFB9BAB6FFFFFFFAFFD9D0CAFFBFA6A5FFB4AA
      A5FFFDF7ECFFF8F1E7FFF7EFE5FFF7EEE3FFF6EEE2FFF7EDE1FFF5EBE5FFB59E
      A2FF393939A71515151800000000000000008A8A88EADADADAFFE9E4E4FF878E
      8AFF9DC6B5FFCEE6D9FFD0E3D3FFC2C7B4FF96C8B4FF59C4AEFF2FE5DBFF3CF7
      FFFF39F3FFFF2DECFFFF2CD8E5FF70BFB8FFD0CCB1FF82BAAEFF09B6E1FF06B6
      F5FF0096CEFF7EB7B1FF9AB39BFFCFCFCFFFC3C1C1FFCBCAC9FFE6E6E5FF8A87
      85FFEAEAEAFF929190E500000000000000000000000000000000000000000000
      00000000000000000000080808090505050601010102FB7103FBF5700BFFF670
      0CFFF76D0BFFF86709FFFB6206FFFB5C04FFFC5601FFFB5200FFFB5200FFFF59
      00FFCB3B08FF6344427E00000000000000000000000000000000000000000000
      000000000000000000000000000000000000888481FFF7F6F4FFFBF9F6FFFBF9
      F6FFFBF9F6FFF6F4F1FFA09E9CFFABAAA8FFF7F5F2FFFAF5EEFFEBC08BFFEABC
      87FFE5AF73FFE1A163FFDC9553FFDB904CFFCE7934FFC16114FFC2641BFFDB95
      5CFFFBF9F6FFFBF9F6FFC0BDBBFF979694FFE4E3E0FFFBF9F6FFFBF9F6FFF7F8
      F9FFFBF9F6FF888481FF202020260C0C0C0D0000000000000000000000000000
      0000E1D2CCFFFFFFFFFF929493FFFFFFFFFFBBD2FEFFB3CFFCFFC0D8FDFFFFFF
      FFFFFFFFFFFFB1CCFDFF6E9DFAFFC3C2BDFFFFFFF8FFBDABA7FFBFA5A6FFDAD2
      CCFFFCF7EEFFFAF3E9FFF7F0E6FFF7EFE5FFF7EEE3FFF7F0E3FFF5ECE6FFB8A1
      A4FF393939A71515151800000000000000008B8988E9DADBDAFFE9E5E5FF8A8E
      8AFF87AD96FF99C5B6FF69D5CAFF47F5ECFF3BFFFCFF39FFFEFF20F6FFFF0DF2
      FEFF42D2D1FF86C5B6FFBACDB6FFCCDBC7FFBBE5D7FFCCE3C9FF99BCA9FF129D
      D1FF008ED8FF0083C9FF658C80FFDCD7D3FFE9E5E6FFE3E2E0FFE0DEDDFF8D8D
      8AFFEBEAEAFF888685CC00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FC7B0CFFFA7B0FFFF97C
      0EFFFA780DFFFA710CFFFB6A0AFFFB6306FFFB5B04FFFB5500FFFA5200FFFF59
      00FFCC3D07FF6045427D00000000000000000000000000000000000000000000
      000000000000000000000000000000000000888481FFFCFCFDFFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFD0CECCFF959493FFDFDDDAFFFBF9F6FFF2D9C0FFF2D2
      A6FFEEC593FFE8B67EFFE3A86BFFDE9C5CFFE09F60FFC1631AFFC4661DFFF7EB
      DFFFFBF9F6FFF4EEEBFF9A9A97FFBBBAB8FFFBF9F6FFFBF9F6FFFBF9F6FFF7F8
      F9FFFBF9F6FF888481FF202020260C0C0C0D0000000000000000000000000000
      0000E1D3CDFFFFFFFFFF9A9CA0FFFFFFFBFFDAE9FFFFCDE1FFFFE3EEFFFFFFFF
      FFFFFFFFFFFFA3C4FDFF7A99CFFFE9E4DEFFFFFFF9FFC0A0A0FFAC9293FFFFFF
      F6FFF1EBE4FFF0EAE2FFFAF4E9FFF7F0E6FFF7EFE5FFF8F0E4FFF3E9E3FFB99F
      A2FF393939A71515151800000000000000008B8A88E9DBDCDCFFECE4E5FF8C8F
      87FF08DED5FF44F2F5FF3EFBFDFF45FFFEFF54ECE6FF79D7CCFF9CCEC0FFBBC7
      B4FFCAD2C0FFC2DCC7FFBBE0D1FFB7DFD2FFB9DBCFFFBCDFD5FFCAE4CBFF9DC3
      A4FF298BB3FF0062B6FF22749BFFEBDED1FFDBD8D8FFD1D1CFFFDDDCDAFF9997
      96FFE9E8E8FF807F7EC000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FA8610FFF98610FFF984
      0FFFF9810FFFFA7A0EFFFA710CFFFB6809FFFB6005FFFC5801FFFB5200FFFF58
      00FFCA3C08FF6247448000000000000000000000000000000000000000000000
      000000000000000000000000000000000000898583F6FCFCFCFFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFF7F5F2FFC7C5C3FFF3F1EEFFFBF9F6FFFBF9F5FFF0CA
      A0FFF5D9ADFFF1CD9EFFEBC08DFFE7B47BFFE2A569FFDA9353FFF1D7C3FFFBF9
      F6FFFBF9F6FFF7F5F2FFC9C7C5FFF0EEEBFFFBF9F6FFFBF9F6FFFBF9F6FFF7F8
      F9FFFBF9F6FF888481FF202020260C0C0C0D0000000000000000000000000000
      0000E2D4CEFFFFFFFFFFE0E1E2FFA3A4A6FFFFFFFFFFD9EAFFFFF9FDFFFFFFFF
      FFFFDEECFFFFA8C9FFFFA4ACBCFFFFFFF9FFFFFFFAFFD1ABABFFBCA09EFFFFFF
      F9FFD1CAC3FF9B8D8BFFFEF9EFFFF9F3E8FFF7F0E6FFF8F1E6FFF2E7E1FFBA9D
      A0FF393939A71515151800000000000000008C8B89E9DDDEDEFFEBE5E6FF8B91
      8AFF48DDCEFF95ECE4FFAFD8C8FFC1D1C1FFCFDBCBFFD4DACCFFD3E2D3FFC6E7
      D9FFBCE2D7FFB4DDCEFFAED7C5FFA0D4C1FF97D0B9FF8ECEB4FF87CDB7FF97D9
      BAFFA6D0A9FF449AB8FF2A7590FFE5DBCFFFDDDBDAFFD5D3D3FFDFDEDCFF9E9B
      9AFFE9E8E8FF7170709C00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F88F10FFF89010FFF88E
      10FFF88810FFF9810FFFF9770DFFFA6C0AFFF96207FFF75804FFF35000FFFF52
      00FFC53808FF6748448600000000000000000000000000000000000000000000
      000000000000000000000000000000000000898583F6FCFCFCFFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFF7F8
      F9FFFBF9F6FF888481FF202020260C0C0C0D0000000000000000000000000000
      0000E4D6CFFFFEFFFFFFFFFFFFFFCBCBCDFF989A9EFFCED2D6FFD8E5FAFFE7F2
      FFFFAFC5E5FF9FA7B5FFFBF8F1FFFFFFFAFFEAE0DDFFD4B9BAFFDCC3BFFFFFFD
      F7FF7A6162FF564143FFFFFCF5FFFAF5EBFFF8F1E7FFF8F2E8FFF1E4DEFFBA9D
      9FFF393939A71515151800000000000000008C8B89E8E3E3E1FFEBE8E8FF8F94
      90FF6F876FFF919287FF8F9D93FFBDE6D6FFA8D6C4FFA3D8C5FFA0D5C5FF9CD3
      BEFF9AD2BFFF9AD3C0FF98D6C0FF97D5C0FF95D1BAFF8CC9B3FF8AC4ADFF7DB4
      A2FF76A594FF90A177FF226982FFC3D1DBFFE2DBD8FFD7D5D5FFDCDBDBFFA9A9
      A8FFE7E7E6FF6C6C6C9400000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F79510FFF69610FFF694
      10FFF58C10FFF58210FFF4770FFFF26C0CFFEF600AFFEC5406FFE94B02FFF24C
      00FFC13B0AFF6948438D00000000000000000000000000000000000000000000
      000000000000000000000000000000000000898583F6FCFCFBFFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F5FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F5FFFBF9F6FFF7F8
      F9FFFBF9F6FF888481FF202020260C0C0C0D0000000000000000000000000000
      0000E6D9D1FFFEFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFC0C1C4FFB6B7B8FFB5B5
      B7FFDDDBD9FFFFFFFDFFFFFEFBFFFFFFFBFFC7B9B7FFD6BEBEFFDBC2BEFFB18A
      8BFF795455FF523639FFFFFFF8FFFBF5EFFFF9F4EBFFFAF5EAFFF0E1DCFFBB9B
      9EFF393939A71515151800000000000000008C8B89E8E7E6E6FFF1EBECFF8B94
      92FF31463FFF8E9291FF6E857CFFAAE9D2FF9FD4C2FF9ED5C2FF9ED5C2FF9DD7
      C1FF98CCBAFF92C2AFFF8BB7A6FF86AE9DFF7EA897FF779B8EFF6C8D82FF5B7E
      73FF4A6E61FF4C6B59FF164E4FFFC5CCD1FFDDD8D6FFDEDCDCFFDCDDDCFFB9B6
      B5FFBFBDBCFF5E5E5D7800000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2970EFFF19B11FFF095
      11FFEF8C13FFEE8313FFEE7813FFEC6C11FFEA600EFFE9560CFFE64C07FFF149
      00FFC03E08FF6C4A468F00000000000000000000000000000000000000000000
      000000000000000000000000000000000000898583F6FBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9F6FFFBF9
      F6FFFBF9F6FF888481FF202020260C0C0C0D0000000000000000000000000000
      0000E7DBD2FFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFCFFFFFEFCFFFFFFFFFFAD9F9EFFC5AEAFFF976969FFB681
      7EFF96686AFF8A6D6CFFFFFFFAFFF9F6F0FFF7F3ECFFF8F3E9FFF0E0D7FFBC9A
      9EFF3A3A3AA51515151800000000000000008C8B89E9E9E8E7FFF5EFF1FF8996
      93FF495E57FFA7A9A6FF758980FFAAE1CBFF9AC4B6FF96BDAEFF8EB2A3FF85A4
      9AFF7A9B8FFF6F9385FF63897AFF517769FF3A5B51FF305045FF3A554AFF4F60
      5AFF6F7B78FF838C88FFB7B4AFFFF6F2F1FFF4F4F3FFFFFFFFFFF3F0F0FFC1BF
      BFFFA6A5A5E52F2E2E3400000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDA645FFEDAD55FFEBA6
      4FFFEAA04FFFE8964DFFE68E4CFFE3834AFFE17847FFDD6F44FFDA623CFFD944
      15FFC04214FF6D4C459000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008A8583F6F7F5F3FFF8F9FAFFF7F8
      F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8
      F9FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF8F8F9FFF7F8F9FFF7F8F8FFF7F8
      F8FFF7F8F8FFF7F8F8FFF7F8F8FFF7F8F9FFF7F8F9FFF7F8F9FFF7F8F9FFF8F9
      FAFFFBF9F6FF888481FF202020260C0C0C0D0000000000000000000000000000
      0000EADDD4FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFEFEFFFEFEFDFFFFFFFDFFFFFFFFFFAD9C9DFF957E80FF785556FFA472
      72FFB38080FFEFE7E2FFE3DBDEFFD9D1D6FFDBCDCDFFDCCAC5FFDCC5BCFFB794
      9BFF3F3F3F85141414160000000000000000898888DAE2E3E2FFF6F0F1FF7A87
      83FF314D44FF76817DFF7C988DFF89AA9CFF769689FF5E8375FF4E7065FF4364
      59FF3C5A4DFF40554DFF475852FF6E7975FFA8ACABFFCBCBCBFFE2DFDFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E3E3FFCCCBC9FFC0BFBDFFACAAA7FFBEBD
      BDFF91908FCB0B0B0B0C00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000926A469FDC8916FFDB81
      16FFD57B15FFD17215FFCC6814FFC65D12FFC0530FFFBC4B0DFFB7430AFFB641
      06FFC14416FF714F479200000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8987F6CBC9C7FFCBC9C7FFCBC9
      C7FFCBC9C7FFCBC9C7FFCBC9C7FFCBC9C7FFCBC9C7FFCBC9C7FFCBC9C7FFCBC9
      C7FFCBC9C7FFCBC9C7FFCBC9C7FFCBC9C7FFCBC9C7FFCCCAC9FFCDCBCAFFCDCC
      CAFFCDCCCAFFCDCBC9FFCCCAC8FFCCCAC8FFCBC9C7FFCBC9C7FFCBC9C7FFCBC9
      C7FFCBC9C7FF888481FF1E1E1E230A0A0A0B0000000000000000000000000000
      0000EBDFD5FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFEFEFFFFFFFFFFFDFBF8FFC3ADAEFF695455FF5A3E3FFF8E6B
      6BFFF4EAE6FFFFFFFFFFCAA58DFFE4AB2AFFDA9C1DFFD18F16FFC9850CFF9F74
      53F22323232B000000000000000000000000818180BFD6D5D6FFFCF6F8FF5E67
      63FF3E6F5CFF5D8374FF436558FF355146FF3B5149FF5A6762FF858E8BFF979B
      9BFFC9C3C6FFFFFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E2
      E1FFC6C4C3FFB6B5B3FFA19F9DFF8B8785FF848280FF8C8B8AF2848382EF8382
      82B53E3E3E460000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000038322E3BBB7A2EDBD17C
      15FFCF7615FFCC6E16FFC66515FFC35C12FFC0520FFFBD4A0CFFBA4409FFB942
      06FFC2440BFF6C4F4A8100000000000000000000000000000000000000000000
      0000000000000000000000000000000000008A8886FEE6DED8FFDFD7D1FFDED7
      D1FFDED7D1FFDED7D1FFDED7D1FFDED7D1FFDED7D1FFDED7D1FFDED7D1FFDED7
      D1FFDED7D1FFDED7D1FFDED7D1FFDED7D1FFDED7D1FFDED7D1FFDED7D1FFDED7
      D1FFDED7D1FFDED7D1FFDED7D1FF917867FFDED7D1FF917867FFDED7D1FF9178
      67FFDED7D1FF888481FF14141416050505060000000000000000000000000000
      0000EDE1D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE9DBDBFFB39191FF57393AFFA79C9BFFFDFB
      F7FFFFFFFDFFFFFFFDFFCFB2ABFFEDD0A0FFECC686FFEEC475FFB49071F02323
      232A000000000000000000000000000000007474749EC9C8C8FFFBF9FAFF6668
      67FF505D59FF808684FFB8B8B8FFE0DFDFFFEEEBEDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF3F2F1FFE0DFDEFFCDCCCBFFAFACABFF9D9B9AFF8F8C8BFF8682
      81F8838280EA7D7B7BC5666565874343434D2929292B20202021010101020000
      0001000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000036302D38BA73
      2AE5C06C22F2BA6727E9B86127E7B45B2AE1AC572CD9A7532DD4A45130CE9F53
      35C5A05430C74C3F3B5400000000000000000000000000000000000000000000
      00000000000000000000000000000000000061605F7C888481FF888481FF8884
      81FF888481FF888481FF888481FF888481FF888481FF888481FF888481FF8884
      81FF888481FF888481FF888481FF888481FF888481FF888481FF888481FF8884
      81FF888481FF888481FF888481FF888481FF888481FF888481FF888481FF8884
      81FF888481FF6361618105050506010101020000000000000000000000000000
      0000EFE5DAFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFAFFF4F0EDFFFFFFFFFFFFFF
      FDFFFFFDF9FFFFFEFBFFD0B7B0FFEFD7ADFFEFCD93FFB59680F02323232A0000
      0000000000000000000000000000000000006B6B6B8DBDBCBCFFFAF9F9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFFF0EFEFFFDEDDDCFFC0BEBDFFADAB
      AAFF989694FF898885FF878584FB7C7A79C96E6E6D9A5E5E5D783F3F3F491414
      1415000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2E7DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFE
      FDFFFFFEFBFFFFFFFCFFD3BFB8FFF3DFBAFFB89C8AF02323232A000000000000
      00000000000000000000000000000000000046464651AAA9A8FFD9D8D7FFD7D6
      D3FFC2C2C0FFB6B5B3FFA3A1A0FF979493FF888584F681807EE67D7D7BD06F6E
      6E97454444501F1F1F220D0D0D0E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4EADFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFEFFFFFFFDFFFFFFFDFE
      FFFFFCFDFFFFFBFDFFFFFBFEFEFFFAFDFEFFF9FCFEFFF9FAFDFFF7FAFAFFF6F9
      F9FFF6F9FAFFF7FCFBFFD4C0BAFFB19995EF2222222900000000000000000000
      000000000000000000000000000000000000000000004D4D4D5C7F7D7CD57B79
      77D3787776B66D6C6C995F5F5F7C484847551717171800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0E2CFFFF4EADFFFF1E7DBFFEFE5D8FFEDE1D7FFEBDFD5FFE9DDD3FFE7DB
      D2FFE5D8D1FFE3D5CFFFE2D3CCFFDFD1CBFFDDCFC9FFDBCBC8FFD9CAC6FFD7C7
      C5FFD7C6C4FFD5C7C5FFA68B89DA121212140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000FE0001FF0000000000000000
      00000000FC00000F000000000000000000000000F800000F0000000000000000
      00000000F800000F000000000000000000000000FC00000F0000000000000000
      00000000FC00000F000000000000000000000000F80400070000000000000000
      00000000F0040007000000000000000000000000E00000070000000000000000
      00000000E0000007000000000000000000000000C00200070000000000000000
      00000000C0020003000000000000000000000000800040030000000000000000
      0000000080010003000000000000000000000000800120030000000000000000
      0000000080010803000000000000000000000000800004010000000000000000
      000000008000000100000000000000000000000080008FE10000000000000000
      000000008000F803000000000000000000000000800000030000000000000000
      00000000C0000007000000000000000000000000C00000070000000000000000
      00000000E000000F000000000000000000000000E000000F0000000000000000
      00000000F000001F000000000000000000000000F800003F0000000000000000
      00000000FC00007F000000000000000000000000FE0000FF0000000000000000
      00000000FF8003FF000000000000000000000000FFE00FFF0000000000000000
      00000000FFFFFFFF0000000000000000FFFFFFFFFFFFFFFFF0000003FFFFFFFF
      FFFFFFFFFFFFFFFFF0000003FFFFFFFFFFFF803F00000000F0000003FFFFF007
      FFFF000700000000F0000003FFFFC007FE1F000100000000F0000003FFFE0003
      E006000000000000F0000003FFE000018002000000000000F0000003FF800000
      8000000100000000F0000003F80000008000000300000000F0000003C0000000
      8000000300000000F0000003800000008000000700000000F000000300000000
      8000000700000000F0000003000000008000000700000000F000000300000003
      8000000700000000F0000003000000038000000700000000F000000300000003
      8000001F00000000F0000003000000038000001F00000000F000000300000003
      E000003F00000000F000000300000003F00003FF00000000F000000300000003
      FC0003FF00000000F000000300000003FF8003FF00000000F000000300000003
      FF8003FF00000000F000000300000003FF8003FF00000000F000000300000003
      FF8003FF00000000F000000300000003FF8003FF00000000F000000300000003
      FF8003FF00000000F000000300000003FF8003FF00000000F000000700000007
      FF8003FF00000000F000000F0000000FFFC003FF00000000F000001F00000FFF
      FFFFFFFFFFFFFFFFF000003F0001FFFFFFFFFFFFFFFFFFFFF000007F807FFFFF
      FFFFFFFFFFFFFFFFF00000FFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object SMVersionInfo1: TSMVersionInfo
    Left = 272
    Top = 416
  end
  object StartPlugin: TTimer
    Enabled = False
    Interval = 250
    OnTimer = StartPluginTimer
    Left = 344
    Top = 416
  end
  object CapbarSizeTimer: TTimer
    Enabled = False
    Interval = 250
    OnTimer = CapbarSizeTimerTimer
    Left = 340
    Top = 471
  end
  object Icons_List: TImageList
    Height = 32
    Width = 32
    Left = 424
    Top = 464
  end
  object ListWidgetTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = ListWidgetTimerTimer
    Left = 424
    Top = 416
  end
  object WidgetsMenu: TPopupMenu
    Left = 248
    Top = 296
    object AddWidgets1: TMenuItem
      Caption = 'Install Widgets'
      OnClick = AddWidgets1Click
    end
    object WninstallWidget1: TMenuItem
      Caption = 'Uninstall Widget'
      OnClick = WninstallWidget1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CreateShortcut1: TMenuItem
      Caption = 'Create Shortcut'
      OnClick = CreateShortcut1Click
    end
  end
  object ComplementsMenu: TPopupMenu
    Left = 244
    Top = 355
    object WindowsPlugins1: TMenuItem
      Caption = 'Web Explorer Plugins'
      Checked = True
      RadioItem = True
      OnClick = WindowsPlugins1Click
    end
    object WebExplorerExtensions1: TMenuItem
      Caption = 'Web Explorer Extensions'
      RadioItem = True
      OnClick = WebExplorerExtensions1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object WebExplorerServices1: TMenuItem
      Caption = 'Web Explorer Services'
      RadioItem = True
      OnClick = WebExplorerServices1Click
    end
  end
  object PluginsViewPNG: TPngImageList
    PngImages = <
      item
        Background = clWindow
        Name = 'gear'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DE0C1A171E321B4B56AF0000039A49
          44415478DA45537D4C1B65187FDE5E7BD79696D57ED04269CB26EDE2F8630D1D
          3063FCFCC364897FE892256ED99CCC4C62988E75F323AB74822C0A84C222412C
          0E9D6848345BB225C62D46638C331931A398912D8EAEF403B8426115583FAE77
          3D9FBBE87C93F72E79DEE7FD3DBF8F3B02B88E1FF4C3B9AF4370E24C403BD875
          3627D5862F7CF9B2ABCE35A9542A21114F5E6D3B70608F54777A1F273B1EAD83
          A79EF089A7FDA7808C8F7F07AB8A3592988DE91B77EFFAE9CEECECF9DEE099D1
          81F0E8B7CDBE5DFB68A50AFE988940FB2B874947E7699BDDEEF851AB665E6A7F
          F5C85CCFD01010994167A7A1A9C9776587DBF3E4DAE606C463F3E0A9AF07A154
          C25311D46A8D98585A22857C1E5A9A9B20128940729175F79F6C9B9301FA4746
          BA3CEEFAA0AE42275FD06834C0A6D3502C1681500A100511AA6D56208440892B
          02A356C3F51B5353EFB51F6B216393937074FF7E088547AF6D777B9EC71E8827
          53505B53035A6C14A509588C279360D85209953A3DDCB97B17DE6C3D220F971F
          D2FA7462627A5B9DCB3B9F4882DD66030A274B13398E0315A3421680AC58301A
          8DB096CD426A69AE32783CB041063F1FFB05293F5DA9D7038570F942114CD884
          7AF9DBD1E8F7E51277CF59EB6CB558CC062991682C062E87534CB18B44E0F932
          19BEF045D4595BBBAD2C9471C23258AD167932CBB2B76F46661AC303A142B0AF
          77A2D1BBF3A04438BBBE8E3274A0A255B0B2921149682CFC97D56271AB109D13
          04A0F12DE95ADFDCCCFC796BF6B9F46A3AD5E069B8D8F0D8F667058187023254
          A3377C8987D5EC7D203D8343CD948AAAA055F4CF35E8B4D16281CCF2B26C9CD5
          6C5E530014D84CC686980A05D6184C288B1ECCC7E3230C435F7E6862D740FF80
          C3E1F09B4C6639BE7C2E0742B92CCBA1081AAA544075750D2C6042A95412021D
          27FE4FE1F01BC74C5EDFCE84D160D096455176DA5C6581D8BD18700866B7DB81
          52296131B5003CCF0385326F4E4FBF75EEC39E4F64007FF0FDD1A696DDAF6F6E
          AC13BC0FE82ED0340DAEAD75C0306A58C08BAB99158C568975251410F4412E7F
          351E4FBEF850C2BBDDDDAD55D6AA71D417158818AE6034BD8F988C80E4E17EF6
          6F8C35770525AD68B5DAD70A85C27074EED6C96F3EFB8A9301F6ECDD0B3F5CBA
          04EF7477FBFB82C190540BF47EDC516DB50D521405E934FBE083536FEBFEFD6F
          9EC997B8A999DFAFE76FFCFA9BF81F030A372D7FB484184551D41F6A3BFA82D7
          E7EB936C4AC6E72F0E9DFD2880674A3C63B1AF889BC75DFA07FC037DD8C5D58E
          810000000049454E44AE426082}
      end>
    Left = 492
    Top = 467
    Bitmap = {}
  end
  object ComplementsIcons: TImageList
    Height = 48
    Width = 48
    Left = 572
    Top = 467
    Bitmap = {
      494C010103000800300230003000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C00000003000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD03FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFC
      FC06FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFC
      FC06FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFC
      FC06FCFCFC06FCFCFC06FCFCFB06000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD03FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFC
      FC06FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFC
      FC06FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFCFC06FCFC
      FC06FCFCFC06FCFCFC06FCFCFB06000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BCBBB8898E8A84FF938E89FF938F8AFF928E89FF928E89FF928E
      89FF928E89FF928E89FF928E89FF928E89FF928E89FF938F8AFF918E89FA918E
      89F8928E89F7928E89F8928E89F8928E89F8928E89F8928E89F8928E89F8928E
      89F8918E89F8938F8AF88A8681FBFDFCFC050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BCBBB8898E8A84FF938E89FF938F8AFF928E89FF928E89FF928E
      89FF928E89FF928E89FF928E89FF928E89FF928E89FF938F8AFF918E89FA918E
      89F8928E89F7928E89F8928E89F8928E89F8928E89F8928E89F8928E89F8928E
      89F8918E89F8938F8AF88A8681FBFDFCFC050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BABAB889B5A99DFFC2B4A7FFBFB2A5FFBFB2A5FFBFB2A5FFBFB2
      A5FFBFB2A5FFBFB2A5FFBFB2A5FFC1B4A7FFC0B3A6FFBFB2A5FFBFB2A5FFBFB2
      A5FFBFB2A5FFBFB2A5FFBFB2A5FFBFB2A5FFBFB2A5FFBFB2A5FFBFB2A5FFBFB2
      A5FFBFB2A5FFC8B8A9FF94908AFFFCFCFC060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE01FCFCFC03B8B8B58BB5A99DFFC2B4A7FFBFB2A5FFBFB2A5FFBFB2A5FFBFB2
      A5FFBFB2A5FFBFB2A5FFBFB2A5FFC1B4A7FFC0B3A6FFBFB2A5FFBFB2A5FFBFB2
      A5FFBFB2A5FFBFB2A5FFBFB2A5FFBFB2A5FFBFB2A5FFBFB2A5FFBFB2A5FFBFB2
      A5FFBFB2A5FFC8B8A9FF94908AFFFCFCFC060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE01FCFCFC03C9C9C958939393B7808080D87D7D7DDC7F7F7FDB7F7F7FDB7F7F
      7FDB7F7F7FDB7F7F7FDB7F7F7FDB818181DC818181DC808080DC7F7F7FDB7F7F
      7FDB7F7F7FDB7F7F7FDB7F7F7FDB7F7F7FDB808080D8919191BBC7C7C75F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BAB9B789BCB0A6FFCCBFB4FFCABDB2FFCABFB2FFCABFB2FFCABF
      B2FFCABFB2FFCABFB2FFCABFB2FFC9BFB2FFC9BFB2FFCABFB2FFCABFB2FFCABF
      B2FFCABFB2FFCABFB2FFCABFB2FFCABFB2FFCABFB2FFCABFB2FFCABFB2FFCABE
      B2FFC9BDB2FFD3C4B7FF948F8AFEFCFCFC060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD02FAFAFA05F5F5F50AECECEC13E8E8
      E820E4E4E42BACABA9A1BCB0A6FFCCBFB4FFCABDB2FFCABFB2FFCABFB2FFCABF
      B2FFCABFB2FFCABFB2FFCABFB2FFC9BFB2FFC9BFB2FFCABFB2FFCABFB2FFCABF
      B2FFCABFB2FFCABFB2FFCABFB2FFCABFB2FFCABFB2FFCABFB2FFCABFB2FFCABE
      B2FFC9BDB2FFD3C4B7FF948F8AFEFCFCFC060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD02FAFAFA05F5F5F50AECECEC13DEDE
      DE31A0A0A0A2868686FFA8A8A8FFB5B5B5FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6
      B6FFB5B5B5FFB4B4B4FFB3B3B3FFB1B1B1FFB1B1B1FFB1B1B1FFB3B3B3FFB4B4
      B4FFB5B5B5FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFAAAAAAFF898989FFAAAA
      AA91E8E8E8250000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BAB9B789BCB1A8FFCDC1B7FFCABFB6FFCABFB7FFCABFB7FFCABF
      B7FFCABFB6FFCABFB5FFCABFB7FFCABFB6FFCAC0B7FFCAC0B7FFCAC0B6FFCABF
      B7FFCABFB5FFCABFB7FFCABFB7FFCABFB7FFCABFB7FFCABFB7FFCABFB7FFCABF
      B7FFCABFB5FFD3C5BAFF94908BFCFCFCFC060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC03F5F5F50AE8E8E819E2E2E237E1E1E163E6E6E68FE9E9
      E9AEEDEDEDC2B2B2AFE9BCB1A8FFCDC1B7FFCABFB6FFCABFB7FFCABFB7FFCABF
      B7FFCABFB6FFCABFB5FFCABFB7FFCABFB6FFCAC0B7FFCAC0B7FFCAC0B6FFCABF
      B7FFCABFB5FFCABFB7FFCABFB7FFCABFB7FFCABFB7FFCABFB7FFCABFB7FFCABF
      B7FFCABFB5FFD3C5BAFF94908BFCFCFCFC060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC03F5F5F50AE8E8E819E2E2E237E1E1E163D2D2D2A19D9D
      9DDE959595FFC5C5C5FFAFAFAFFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
      AAFFA9A9A9FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8
      A8FFA9A9A9FFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAEAEAEFFC6C6C6FF9C9C
      9CFF9E9E9EA7DBDBDB3E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BAB9B789BEB5ADFFCDC3BBFFCAC2BCFFCAC2BCFFCAC2BCFFCAC2
      BCFFCAC2BCFFCAC1BAFFCAC2BCFFCAC2BCFFCBC2BDFFCBC3BDFFCBC3BCFFCAC2
      BDFFCAC2BCFFCAC2BCFFCAC2BCFFCAC2BCFFCAC2BCFFCAC2BCFFCAC2BCFFCAC2
      BCFFC9C1B9FFD5C9C0FF95918CFAFCFCFC060000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC03F4F4F40BE5E5E524E0E0E05BE4E4E498F0F0F0CFF8F8F8F0FDFDFDFCFFFF
      FFFEFFFFFFFFBAB9B7FFBEB5ADFFCDC3BBFFCAC2BCFFCAC2BCFFCAC2BCFFCAC2
      BCFFCAC2BCFFCAC1BAFFCAC2BCFFCAC2BCFFCBC2BDFFCBC3BDFFCBC3BCFFCAC2
      BDFFCAC2BCFFCAC2BCFFCAC2BCFFCAC2BCFFCAC2BCFFCAC2BCFFCAC2BCFFCAC2
      BCFFC9C1B9FFD5C9C0FF95918CFAFCFCFC060000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC03F4F4F40BE5E5E524E0E0E05BE4E4E498F0F0F0CFF8F8F8F0A6A6A6FE9F9F
      9FFFBDBDBDFFACACACFFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8
      A8FFA8A8A8FFA9A9A9FFAAAAAAFFAAAAAAFFA9A9A9FFA8A8A8FFA8A8A8FFA8A8
      A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA9A9A9FFBDBD
      BDFFA8A8A8FF9E9E9EA700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BAB8B68AC0B6B0FFCEC6C0FFCCC5BFFFCCC6C2FFCCC7C2FFCCC6
      C2FFCCC6C1FFCCC5C0FFCDC6C1FFCDC7C2FFCEC8C3FFCEC8C3FFCEC8C2FFCDC7
      C2FFCCC6C1FFCCC5C0FFCCC6C1FFCCC7C2FFCCC7C2FFCCC7C2FFCCC7C2FFCCC6
      C1FFCBC3BEFFD7CCC5FF95918CF9FCFCFC060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8F8F807E7E7
      E71CDEDEDE58E8E8E8ACF6F6F6E6FDFDFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFBAB8B6FFC0B6B0FFCEC6C0FFCCC5BFFFCCC6C2FFCCC7C2FFCCC6
      C2FFCCC6C1FFCCC5C0FFCDC6C1FFCDC7C2FFCEC8C3FFCEC8C3FFCEC8C2FFCDC7
      C2FFCCC6C1FFCCC5C0FFCCC6C1FFCCC7C2FFCCC7C2FFCCC7C2FFCCC7C2FFCCC6
      C1FFCBC3BEFFD7CCC5FF95918CF9FCFCFC060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8F8F807E7E7
      E71CDEDEDE58E8E8E8ACF6F6F6E6FDFDFDFCFFFFFFFFD4D4D4FF7C7C7CFFD0D0
      D0FFACACACFFABABABFFABABABFFABABABFFABABABFFABABABFFAAAAAAFFA9A9
      A9FFAAAAAAFFACACACFFADADADFFADADADFFACACACFFABABABFFAAAAAAFFA9A9
      A9FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFABABABFFABABABFFABABABFFABAB
      ABFFC6C6C6FF838383FFC9C9C95B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B9B7B58BBFB6B0FFD0C7C2FFCFC8C2FFCFC9C5FFCFC9C5FFCFC9
      C5FFCFC9C4FFCFC8C3FFD1CAC4FFD1CBC6FFD1CCC7FFD2CCC7FFD1CBC6FFD0CA
      C5FFD0C9C4FFCFC8C3FFCFC8C3FFCFC9C5FFCFC9C6FFCFC9C5FFCFC9C6FFD0C9
      C4FFCDC6C0FFD6CBC5FF95918DF7FCFCFB060000000000000000000000000000
      000000000000000000000000000000000000FEFEFE01F3F3F30CE1E1E137E4E4
      E493F3F3F3DEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFC
      FAFFFBF5EFFFB7B0AAFFBFB6B0FFD0C7C2FFCFC8C2FFCFC9C5FFCFC9C5FFCFC9
      C5FFCFC9C4FFCFC8C3FFD1CAC4FFD1CBC6FFD1CCC7FFD2CCC7FFD1CBC6FFD0CA
      C5FFD0C9C4FFCFC8C3FFCFC8C3FFCFC9C5FFCFC9C6FFCFC9C5FFCFC9C6FFD0C9
      C4FFCDC6C0FFD6CBC5FF95918DF7FCFCFB060000000000000000000000000000
      000000000000000000000000000000000000FEFEFE01F3F3F30CE1E1E137E4E4
      E493F3F3F3DEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF989898FFB1B1B1FFBEBE
      BEFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAEAE
      AEFFAEAEAEFFAEAEAEFFAFAFAFFFAFAFAFFFAFAFAFFFAEAEAEFFADADADFFACAC
      ACFFABABABFFAAAAAAFFAAAAAAFFACACACFFADADADFFAFAFAFFFAFAFAFFFAFAF
      AFFFBBBBBBFFB9B9B9FF8D8D8DC4000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B9B8B58BC1BAB4FFD4CAC5FFD1CBC7FFD2CCC8FFD2CCC8FFD2CC
      C8FFD3CBC7FFD2CBC7FFD2CCC8FFD3CDC9FFD3CEC9FFD4CFCAFFD3CEC9FFD2CD
      C8FFD1CCC7FFD1CBC6FFD2CAC6FFD2CCC7FFD1CCC8FFD2CCC8FFD2CCC8FFD2CC
      C8FFD1C8C4FFD9D0CBFF95918DF6FDFCFC050000000000000000000000000000
      0000000000000000000000000000FDFDFD02EFEFEF10E0E0E054EAEAEAB8FCFC
      FCF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7F2FFF5E2CEFFEDC9A4FFE5B2
      7DFFDE9D5AFFA7855FFFC1BAB4FFD4CAC5FFD1CBC7FFD2CCC8FFD2CCC8FFD2CC
      C8FFD3CBC7FFD2CBC7FFD2CCC8FFD3CDC9FFD3CEC9FFD4CFCAFFD3CEC9FFD2CD
      C8FFD1CCC7FFD1CBC6FFD2CAC6FFD2CCC7FFD1CCC8FFD2CCC8FFD2CCC8FFD2CC
      C8FFD1C8C4FFD9D0CBFF95918DF6FDFCFC050000000000000000000000000000
      0000000000000000000000000000FDFDFD02EFEFEF10E0E0E054EAEAEAB8FCFC
      FCF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7F2FF777573FFCDCDCDFFB7B7
      B7FFB3B3B3FFB3B3B3FFB3B3B3FFB4B4B4FFB3B3B3FFB4B3B3FFB4B3B3FFB3B3
      B3FFB2B2B2FFB2B2B1FFB3B3B2FFB2B2B2FFB2B2B2FFB1B1B1FFB0B0B0FFAFAF
      AFFFAEAEAEFFADADADFFAEAEAEFFAFAFAFFFB0B0B0FFB3B3B3FFB3B3B3FFB3B3
      B3FFB6B6B6FFCFCFCFFF757575EB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE010000
      0000F8F8F807B4B3B090C3BCB6FFD7CEC8FFD4CEC9FFD4CECAFFD4CECAFFD4CD
      CAFFD3CCC9FFD4CDC9FFD4CEC9FFD4CEC9FFD4D0CBFFD5CFCBFFD4CECAFFD3CE
      CAFFD3CDC9FFD2CCC8FFD3CCC9FFD4CDCAFFD5CECAFFD4CECAFFD4CECAFFD4CE
      CAFFD3CCC7FFDDD4CEFF95928EF4FDFDFC050000000000000000000000000000
      00000000000000000000FDFDFD02EDEDED12E0E0E063F0F0F0CEFDFDFDFEFFFF
      FFFFFFFFFFFFFFFFFFFFFBF6F0FFF0D5B9FFE1A76AFFD78937FFD37D22FFD177
      18FFD17718FFA47A4CFFC3BCB6FFD7CEC8FFD4CEC9FFD4CECAFFD4CECAFFD4CD
      CAFFD3CCC9FFD4CDC9FFD4CEC9FFD4CEC9FFD4D0CBFFD5CFCBFFD4CECAFFD3CE
      CAFFD3CDC9FFD2CCC8FFD3CCC9FFD4CDCAFFD5CECAFFD4CECAFFD4CECAFFD4CE
      CAFFD3CCC7FFDDD4CEFF95928EF4FDFDFC050000000000000000000000000000
      00000000000000000000FDFDFD02EDEDED12E0E0E063F0F0F0CEFDFDFDFEFFFF
      FFFFFFFFFFFFFFFFFFFFFBF6F0FFF0D5B9FFE1A76AFF746D66FFD3D3D3FFBBBB
      BBFFB7B7B7FFB7B7B7FFB8B8B8FFB8B8B7FFB7B7B6FFB7B7B7FFB8B7B7FFB8B7
      B7FFB7B7B7FFB7B6B6FFB6B6B6FFB5B5B5FFB4B4B4FFB3B3B3FFB2B2B2FFB1B1
      B1FFB0B0B0FFAFAFAFFFB0B0B0FFB1B1B1FFB2B2B2FFB5B5B5FFB7B7B7FFB7B7
      B7FFBABABAFFD4D4D4FF767676EC000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE01FDFD
      FD02FCFCFC03FAFAFB05F2F2F20EEAEAEA16DFDFE021D6D6D72ACDCDCE37C6C6
      C741B7B7B84E959492B2C3BDB7FFD7D0CAFFD4CECAFFD4CECCFFD4CECCFFD4CE
      CBFFD5CFCAFFD4CEC9FFD4CFCBFFD5D1CCFFD6D1CCFFD5D0CCFFD5D0CCFFD4CF
      CBFFD4CFCBFFD4CECAFFD4CFCBFFD5D0CCFFD5D0CEFFD4CECCFFD4CECCFFD4CE
      CBFFD4CEC8FFDED6D0FF95918DF4FDFDFC050000000000000000000000000000
      000000000000FEFEFE01EFEFEF10E2E2E263F0F0F0D4FFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFDFFF3DDC6FFE1A96EFFD5842FFFD17718FFD27819FFD27819FFD278
      19FFD27819FFA47A4CFFC3BDB7FFD7D0CAFFD4CECAFFD4CECCFFD4CECCFFD4CE
      CBFFD5CFCAFFD4CEC9FFD4CFCBFFD5D1CCFFD6D1CCFFD5D0CCFFD5D0CCFFD4CF
      CBFFD4CFCBFFD4CECAFFD4CFCBFFD5D0CCFFD5D0CEFFD4CECCFFD4CECCFFD4CE
      CBFFD4CEC8FFDED6D0FF95918DF4FDFDFC050000000000000000000000000000
      000000000000FEFEFE01EFEFEF10E2E2E263F0F0F0D4FFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFDFFF3DDC6FFE1A96EFFD5842FFFD17718FF856D54FFC1C1C1FFC8C8
      C8FFBBBBBBFFBBBBBBFFBBBBBBFFBCBCBBFFBCBBBBFFBCBBBBFFBDBCBCFFBCBB
      BBFFBBBABAFFBAB9B9FFB9B8B8FFB8B7B7FFB7B6B6FFB6B5B5FFB5B4B4FFB4B3
      B3FFB3B2B2FFB2B2B2FFB3B3B3FFB4B4B4FFB6B6B6FFB9B9B9FFBBBBBBFFBBBB
      BBFFC5C5C5FFC9C9C9FF888888CD000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE01FCFCFC03FBFAFB05F9F9F907F6F6F60AE8E8E818DEDEDF22D2D1D22FC6C6
      C73BBABABB47AFAFB052A8A8AA5DA5A4A6659E9E9F719A9A9B7B909092828585
      8787949496978E8C8AD5C5C0B9FFD9D3CEFFD6D2CEFFD6D2CEFFD6D2CEFFD6D2
      CEFFD6D2CEFFD6D1CDFFD6D2CEFFD7D2CEFFD7D3CFFFD7D2CEFFD7D2CFFFD6D2
      CEFFD6D1CDFFD5D1CDFFD5D1CDFFD6D1CEFFD6D2CEFFD6D2CEFFD6D2CEFFD6D2
      CEFFD6D0CDFFE0DBD3FF95928EF2FDFCFC050000000000000000000000000000
      000000000000F3F3F30CE0E0E054EFEFEFCEFFFFFFFFFFFFFFFFFFFFFFFFFCF8
      F3FFECC9A2FFD99042FFD2791AFFD2791AFFD2791AFFD2791AFFD2791AFFD279
      1AFFD2791AFFA57B4DFFC5C0B9FFD9D3CEFFD6D2CEFFD6D2CEFFD6D2CEFFD6D2
      CEFFD6D2CEFFD6D1CDFFD6D2CEFFD7D2CEFFD7D3CFFFD7D2CEFFD7D2CFFFD6D2
      CEFFD6D1CDFFD5D1CDFFD5D1CDFFD6D1CEFFD6D2CEFFD6D2CEFFD6D2CEFFD6D2
      CEFFD6D0CDFFE0DBD3FF95928EF2FDFCFC050000000000000000000000000000
      000000000000F3F3F30CE0E0E054EFEFEFCEFFFFFFFFFFFFFFFFFFFFFFFFFCF8
      F3FFECC9A2FFD99042FFD2791AFFD2791AFFD2791AFFAF7333FF888888FFDFDF
      DFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0BFBFFFC0BEBEFFC0BFBFFFBFBF
      BFFFBEBEBEFFBDBDBDFFBCBCBCFFBBBBBBFFBABABAFFB9B9B9FFB8B8B8FFB7B7
      B7FFB7B7B7FFB8B8B8FFB9B9B9FFBABABAFFBBBBBBFFBEBEBEFFC0C0C0FFC0C0
      C0FFDBDBDBFF929292FFC4C4C464000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAFA05CECE
      CF37C5C5C63FB6B5B74AAAAAAB55A1A0A2609D9D9F6C9D9C9E739A9A9C7C9797
      99859695978F95959697A3A2A4A2AEAEAFAFBEBDBFBDD3D3D4D2ABABACA18B8B
      8B74DEDEDED7B0AEABF5C5C0BBFFDAD5D0FFD9D4D0FFD9D6D2FFD9D6D2FFD9D5
      D1FFD9D4D0FFD8D3D0FFD9D4D1FFD9D4D0FFD9D4D1FFDAD5D1FFD9D4D1FFD8D3
      D0FFD8D4D0FFD7D3CFFFD9D5D1FFD9D5D1FFD9D6D2FFD9D6D2FFD9D6D2FFD9D5
      D1FFD8D3CFFFE0DBD6FF96938FF0FDFCFC050000000000000000000000000000
      0000F9F9F906E1E1E13AECECECBBFEFEFEFFFFFFFFFFFFFFFFFFFCF7F1FFE8BD
      8FFFD6852DFFD27A1AFFD37A1AFFD37A1AFFD37A1AFFD37A1AFFD37A1AFFD37A
      1AFFD37A1AFFA57B4DFFC5C0BBFFDAD5D0FFD9D4D0FFD9D6D2FFD9D6D2FFD9D5
      D1FFD9D4D0FFD8D3D0FFD9D4D1FFD9D4D0FFD9D4D1FFDAD5D1FFD9D4D1FFD8D3
      D0FFD8D4D0FFD7D3CFFFD9D5D1FFD9D5D1FFD9D6D2FFD9D6D2FFD9D6D2FFD9D5
      D1FFD8D3CFFFE0DBD6FF96938FF0FDFCFC050000000000000000000000000000
      0000F9F9F906E1E1E13AECECECBBFEFEFEFFFFFFFFFFFFFFFFFFFCF7F1FFE8BD
      8FFFD6852DFFD27A1AFFD37A1AFFD37A1AFFD37A1AFFD37A1AFF8A6F50FFC1C1
      C1FFDCDCDCFFC5C5C5FFC5C5C5FFC4C4C4FFC3C3C3FFC2C2C2FFC3C2C2FFC2C1
      C1FFC1C0C0FFC0BFBFFFBFBEBEFFBEBDBDFFBDBCBCFFBCBBBBFFBBBABAFFBBBA
      BAFFBCBBBBFFBDBCBCFFBEBDBDFFBFBEBEFFC1C0C0FFC4C3C3FFC4C4C4FFDDDD
      DDFFCCCCCCFF8D8D8DC200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F20F8888
      8A87959597829D9C9E909E9D9F98A4A3A59FB4B3B4B1BFBFC0BDCCCCCDC8D7D7
      D7D4E6E6E6E3EDEDEDEAF1F1F1EEF3F3F3F2F8F8F8F7FFFFFFFFBBBABCB08E8E
      8E71F2F2F3EFB8B7B4FFC7C2BEFFDCD7D3FFDBD7D4FFDBD7D4FFDBD7D4FFDCD8
      D5FFDBD7D4FFDAD5D2FFDCD8D5FFDBD6D3FFDBD6D3FFDBD7D4FFDBD6D2FFDBD6
      D4FFDAD5D1FFDCD7D4FFDCD8D4FFDBD7D5FFDBD7D5FFDBD7D4FFDBD7D4FFDCD7
      D5FFDAD5D1FFE3DDD9FF96938FEFFCFCFC05000000000000000000000000FDFD
      FD02E7E7E71AE4E4E493FCFCFCF9FFFFFFFFFFFFFFFFFCF9F5FFE8BC8DFFD582
      28FFD37B1BFFD37B1BFFD37B1BFFD37B1BFFD37B1BFFD37B1BFFD37B1BFFD37B
      1BFFD37B1BFFA47C4EFFC7C2BEFFDCD7D3FFDBD7D4FFDBD7D4FFDBD7D4FFDCD8
      D5FFDBD7D4FFDAD5D2FFDCD8D5FFDBD6D3FFDBD6D3FFDBD7D4FFDBD6D2FFDBD6
      D4FFDAD5D1FFDCD7D4FFDCD8D4FFDBD7D5FFDBD7D5FFDBD7D4FFDBD7D4FFDCD7
      D5FFDAD5D1FFE3DDD9FF96938FEFFCFCFC05000000000000000000000000FDFD
      FD02E7E7E71AE4E4E493FCFCFCF9FFFFFFFFFFFFFFFFFCF9F5FFE8BC8DFFD582
      28FFD37B1BFFD37B1BFFD37B1BFFD37B1BFFD37B1BFFD37B1BFFB67630FF8A6F
      51FFC1C1C1FFF1F1F1FFCDCDCDFFC9C9C9FFC9C9C9FFC6C5C5FFC5C5C5FFC3C2
      C2FFC2C1C1FFC1C0C0FFC0BFBFFFBFBEBEFFBFBFBEFFC0C0BFFFC1C1C0FFC2C2
      C2FFC4C4C4FFC5C5C5FFC6C6C6FFC8C8C8FFCBCBCBFFD5D5D5FFF2F2F2FFC9C9
      C9FF8D8D8DC2CACACA5900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F0F1108281
      838EAFAFB1A4EEEEEEEBF0F0F0EFF6F6F6F4F8F8F8F7FAFAFAF9FCFCFCFBFDFD
      FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABCB08E8E
      8E71F0F0F0ECB7B6B4FFCDC6C1FFE1DBD6FFDDD7D6FFDDD9D6FFDDD9D6FFDDD9
      D6FFDDD9D6FFDDD7D4FFDDD8D7FFDDD9D5FFDDD7D5FFDDD9D7FFDDD8D3FFDDD8
      D6FFDDD8D3FFDDD8D7FFDDD9D6FFDDD9D6FFDDD9D6FFDDD9D6FFDDD9D6FFDDD8
      D7FFDDD7D4FFE9E2DDFF989490EDFCFCFC05000000000000000000000000F5F5
      F50AE2E2E25DF4F4F4E2FFFFFFFFFFFFFFFFFEFDFCFFEBC8A1FFD6862EFFD37C
      1CFFD37C1CFFD37E20FFD27C1DFFD37C1CFFD37C1CFFD37C1CFFD37C1CFFD37C
      1CFFD37C1CFFA47C4EFFCDC6C1FFE1DBD6FFDDD7D6FFDDD9D6FFDDD9D6FFDDD9
      D6FFDDD9D6FFDDD7D4FFDDD8D7FFDDD9D5FFDDD7D5FFDDD9D7FFDDD8D3FFDDD8
      D6FFDDD8D3FFDDD8D7FFDDD9D6FFDDD9D6FFDDD9D6FFDDD9D6FFDDD9D6FFDDD8
      D7FFDDD7D4FFE9E2DDFF989490EDFCFCFC05000000000000000000000000F5F5
      F50AE2E2E25DF4F4F4E2FFFFFFFFFFFFFFFFFEFDFCFFEBC8A1FFD6862EFFD37C
      1CFFD37C1CFFD37E20FFD27C1DFFD37C1CFFD37C1CFFD37C1CFFD37C1CFFB877
      2FFF8D7050FFAFAFAFFFE0E0E0FFCDCDCDFFCDCDCDFFCBCBCBFFC9C8C8FFC7C6
      C6FFC6C5C5FFC5C4C4FFC4C3C3FFC4C3C3FFC5C5C4FFC7C7C6FFC9C9C8FFCBCB
      CAFFCDCDCCFFCECECEFFD0D0D0FFD3D3D3FFD2D2D2FFE6E6E6FF919191FF9292
      92B9CFCFCF500000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBBBBBBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECB8B6B4FFCDC6C4FFE2DDDAFFDEDAD7FFDEDAD8FFDEDAD8FFDEDA
      D8FFDEDAD8FFDEDAD6FFDEDAD7FFDEDAD7FFDEDAD7FFDEDAD8FFDEDAD7FFDEDA
      D7FFDEDAD6FFDEDAD7FFDEDAD8FFDEDAD8FFDEDAD8FFDEDAD8FFDEDAD8FFDEDA
      D7FFDDD9D6FFEBE3E1FF989590EBFCFCFC050000000000000000FDFDFD02E5E5
      E525EAEAEAAFFDFDFDFEFFFFFFFFFFFFFFFFF3DEC6FFDA9242FFD37D1CFFD37D
      1CFFD37D1CFFD6872FFFDB9649FFD48124FFD37D1CFFD37D1CFFD37D1CFFD37D
      1CFFD37D1CFFA47C4EFFCDC6C4FFE2DDDAFFDEDAD7FFDEDAD8FFDEDAD8FFDEDA
      D8FFDEDAD8FFDEDAD6FFDEDAD7FFDEDAD7FFDEDAD7FFDEDAD8FFDEDAD7FFDEDA
      D7FFDEDAD6FFDEDAD7FFDEDAD8FFDEDAD8FFDEDAD8FFDEDAD8FFDEDAD8FFDEDA
      D7FFDDD9D6FFEBE3E1FF989590EBFCFCFC050000000000000000FDFDFD02E5E5
      E525EAEAEAAFFDFDFDFEFFFFFFFFFFFFFFFFF3DEC6FFDA9242FFD37D1CFFD37D
      1CFFD37D1CFFD6872FFFDB9649FFD48124FFD37D1CFFD37D1CFFD37D1CFFD37D
      1CFF947149FFBDBDBDFFE2E2E2FFD1D1D1FFD1D1D1FFD0CFCFFFCFCECEFFCECD
      CDFFCDCCCCFFCCCBCBFFCBCACAFFCAC9C9FFCBCBCBFFCDCDCDFFCFCFCFFFD0D0
      D0FFD1D1D1FFD2D2D2FFD4D4D4FFD5D5D5FFD5D5D5FFEBEBEBFF979797FFCACA
      CA57000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBABABBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECB7B6B3FFCCC6C2FFE3DEDAFFE0DBD7FFE1DBD9FFE1DBD9FFE1DB
      D9FFE0DBD9FFE0DBD8FFE0DBD9FFE0DCD9FFE1DDD9FFE1DDDAFFE1DDD9FFE1DD
      D9FFE0DBD8FFE1DBD8FFE1DBD9FFE0DBD9FFE0DBD9FFE0DBD9FFE0DBD9FFE0DB
      D8FFE0DBD7FFEAE4E0FF989490EAFCFCFC050000000000000000F6F6F609E1E1
      E15BF5F5F5E6FFFFFFFFFFFFFFFFFBF5EFFFE2AC6EFFD47E1EFFD47E1DFFD47E
      1DFFD47E1DFFD47E1EFFE0A460FFE5B37AFFD7872EFFD47E1DFFD47E1DFFD47E
      1DFFD47E1DFFA47C4FFFCCC6C2FFE3DEDAFFE0DBD7FFE1DBD9FFE1DBD9FFE1DB
      D9FFE0DBD9FFE0DBD8FFE0DBD9FFE0DCD9FFE1DDD9FFE1DDDAFFE1DDD9FFE1DD
      D9FFE0DBD8FFE1DBD8FFE1DBD9FFE0DBD9FFE0DBD9FFE0DBD9FFE0DBD9FFE0DB
      D8FFE0DBD7FFEAE4E0FF989490EAFCFCFC050000000000000000F6F6F609E1E1
      E15BF5F5F5E6FFFFFFFFFFFFFFFFFBF5EFFFE2AC6EFFD47E1EFFD47E1DFFD47E
      1DFFD47E1DFFD47E1EFFE0A460FFE5B37AFFD7872EFFD47E1DFFD47E1DFFD47E
      1DFFAB7639FFA0A0A0FFECECECFFD5D5D5FFD5D5D5FFD4D4D3FFD3D3D2FFD2D2
      D1FFD2D2D1FFD1D1D0FFD1D1D0FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD2D2
      D2FFD3D3D3FFD4D4D4FFD5D5D5FFD7D7D7FFD8D8D8FFEDEDEDFF979797FFC7C7
      C759FEFEFE010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBABABBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECB6B4B2FFD9D4D0FFF6F1EDFFF2EDEBFFEAE7E5FFEAE7E5FFEAE7
      E5FFECE8E6FFEDEAE8FFECE9E8FFECE9E7FFF0EDEAFFF4EFEDFFF4EFEEFFF3EF
      EDFFEBE7E7FFEAE7E5FFEAE7E5FFECE7E5FFECE8E6FFEDEAE8FFECE8E7FFEFEB
      EAFFF2EDEAFFFDF8F4FF9A9792E8FCFCFC0500000000FEFEFE01EBEBEB19E8E8
      E8A1FFFFFFFEFFFFFFFFFEFFFFFFEED2B2FFD5872DFFD47F1EFFD47F1EFFD47F
      1EFFD47F1EFFD47F1EFFD6872BFFEAC193FFEBC499FFD9903CFFD37F1EFFD47F
      1EFFD47F1EFFA37C4FFFD9D4D0FFF6F1EDFFF2EDEBFFEAE7E5FFEAE7E5FFEAE7
      E5FFECE8E6FFEDEAE8FFECE9E8FFECE9E7FFF0EDEAFFF4EFEDFFF4EFEEFFF3EF
      EDFFEBE7E7FFEAE7E5FFEAE7E5FFECE7E5FFECE8E6FFEDEAE8FFECE8E7FFEFEB
      EAFFF2EDEAFFFDF8F4FF9A9792E8FCFCFC0500000000FEFEFE01EBEBEB19E8E8
      E8A1FFFFFFFEFFFFFFFFFEFFFFFFEED2B2FFD5872DFFD47F1EFFD47F1EFFD47F
      1EFFD47F1EFFD47F1EFFD6872BFFEAC193FFEBC499FFD9903CFFD37F1EFFD47F
      1EFFD17E1EFF6E6E6EFFFBFBFBFFE1E1E1FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9
      D9FFD8D8D8FFD7D7D7FFD6D6D6FFD6D6D6FFD7D7D7FFD6D6D6FFD7D7D7FFD8D8
      D8FFD9D9D9FFD8D8D8FFDADADAFFDBDBDBFFDDDDDDFFFDFDFDFF7A7A7AFFDFDF
      DF3CFDFDFD020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBABABBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECB7B6B3FFA09C98FFAAA6A2FFAAA7A3FFDCDBD8FFDDDBD7FFD8D8
      D5FFD4D2D0FFD0CECCFFD2CFCAFFD8D4CEFFC4C1BDFFB3B2AFFFB3B1B0FFB5B3
      B1FFDCD9D5FFDDDBD8FFDBD9D7FFD7D6D3FFD1CFCEFFCFCECBFFD7D2CEFFBDB9
      B5FEAFACAAFFB0ADAAFF8B8883F7FCFCFC0500000000FBFBFB04E5E5E53EF3F3
      F3D7FFFFFFFFFFFFFFFFFBF6F1FFE1AB6CFFD4811FFFD4811FFFD4811FFFD481
      1FFFD4811FFFD4811FFFD4811FFFDA9543FFF2DABEFFF0D3B2FFDC9A4BFFD481
      1FFFD4811FFFA57F51FFA09C98FFAAA6A2FFAAA7A3FFDCDBD8FFDDDBD7FFD8D8
      D5FFD4D2D0FFD0CECCFFD2CFCAFFD8D4CEFFC4C0BCFFB3B2AFFFB3B1B0FFB5B3
      B1FFDBD8D4FFDDDBD8FFDBD9D7FFD7D6D3FFD1CFCEFFCFCECBFFD7D2CEFFBDB9
      B5FEAFACAAFFB0ADAAFF8B8883F7FCFCFC0500000000FBFBFB04E5E5E53EF3F3
      F3D7FFFFFFFFFFFFFFFFFBF6F1FFE1AB6CFFD4811FFFD4811FFFD4811FFFD481
      1FFFD4811FFFD4811FFFD4811FFFDA9543FFF2DABEFFF0D3B2FFDC9A4BFFD481
      1FFFD4811FFF9A7447FF9A9A9AFFFEFEFEFFE8E8E8FFDDDDDDFFDEDEDEFFE0E0
      E0FFEAEAEAFFE7E7E7FFE1E1E1FFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
      DDFFDDDDDDFFDDDDDDFFDDDDDDFFDEDEDEFFE8E8E8FFF3F3F3FF7E7E7EFCEAEA
      EA4FF8F8F8070000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBABABBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECF3F3F3FFE9E9E8FFEDEDECFF94918EFFD2CFC9FFD2CECAFFC7C6
      C2FFBAB8B6FFB0ADA9FFB4B1A7FFC3BDAFFFA49F98FFD2D1D0FFF3F3F3FF9997
      93FFCECCC4FFD4D0CAFFCDCCC8FFC2C1BEFFB4B3B1FFB1AEA8FFBDB7ACFFA19D
      96FFD0CFCE67EAEAE92BEBEAE929FEFEFE0100000000F5F5F50AE0E0E069FAFA
      FAF0FFFFFFFFFFFFFFFFF4E4D0FFD9923DFFD48220FFD48220FFD48220FFD482
      20FFD48220FFD48220FFD48220FFD48220FFE2AA67FFF9EFE3FFF4DFC5FFE0A5
      5FFFD48221FFCC8128FFC5812DFFD39855FF928B83FFD2CFC9FFD2CECAFFC7C6
      C2FFBAB8B6FFB0ADA9FFB4B1A7FFC3BDAFFFA49F98FFB88548FFCC832BFF9385
      74FFCECBC3FFD4D0CAFFCDCCC8FFC2C1BEFFB4B3B1FFB1AEA8FFBDB7ACFFA19D
      96FFC9C7C66FE9E9E82CEBEAE929FEFEFE0100000000F5F5F50AE0E0E069FAFA
      FAF0FFFFFFFFFFFFFFFFF4E4D0FFD9923DFFD48220FFD48220FFD48220FFD482
      20FFD48220FFD48220FFD48220FFD48220FFE2AA67FFF9EFE3FFF4DFC5FFE0A5
      5FFFD48221FFD48220FF97754BFF8F8F8FFFF7F7F7FFFFFFFFFFFCFCFCFFF8F8
      F8FFC8C8C8FF817B74FFECECECFFE8E8E8FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
      E0FFE0E0E0FFE0E0E0FFE0E0E0FFE3E3E3FFFFFFFFFF909090FFBABABAFBEBEB
      EB7DF1F1F10EFEFEFE0100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBABABBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECFFFFFFFFFFFFFFFFFFFFFFFF989592FFD5D2CCFFD3D1CDFFCAC8
      C4FFBAB7B7FFB2AEA9FFB5B0A7FFC6BFAFFFA39E96FFDFDEDEFFFFFFFFFF9A97
      93FFD3CFC9FFD7D3CDFFD0CCC9FFC3C1BFFFB5B3B1FFB2AEA8FFBEBAACFFA19D
      95FFE0DFDE41000000000000000000000000FEFEFE01EDEDED13E3E3E38FFCFC
      FCFBFFFFFFFFFFFFFFFFEAC99FFFD48524FFD58321FFD58321FFD58321FFD583
      21FFD58321FFD58321FFD58321FFD58321FFD58625FFE9BF8CFFFDFBF7FFF7E8
      D6FFE4B173FFD88B30FFDB8F37FFE4A159FF968E84FFD5D2CCFFD3D1CDFFCAC8
      C4FFBAB7B7FFB2AEA9FFB5B0A7FFC6BFAFFFA39E96FFC08339FFD58321FF9383
      6EFFD3CEC8FFD7D3CDFFD0CCC9FFC3C1BFFFB5B3B1FFB2AEA8FFBEBAACFFA19D
      95FFD3D2D253FDFDFD020000000000000000FEFEFE01EDEDED13E3E3E38FFCFC
      FCFBFFFFFFFFFFFFFFFFEAC99FFFD48524FFD58321FFD58321FFD58321FFD583
      21FFD58321FFD58321FFD58321FFD58321FFD58625FFE9BF8CFFFDFBF7FFF7E8
      D6FFE4B173FFD88B30FFDB8F37FFAC8860FF7C7369FF727272FF787878FF6F6C
      67FF95744DFFA57740FF777777FFFAFAFAFFF2F2F2FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFEBEBEBFFF6F6F6FFB8B8B8FFA7A7A7FFFEFEFEFFEDED
      EDA7EDEDED18FDFDFD0200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBABABBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECFFFFFFFFFFFFFFFFFFFFFFFF999692FFD9D5D0FFD6D4D0FFCCCA
      C7FFBDBCB9FFB4B2ABFFB8B4A9FFC8C1B1FFA39F96FFDFDEDEFFFFFFFFFF9A98
      93FFD4D0CCFFD9D6D0FFD3D1CDFFC5C3C3FFB8B6B3FFB4B2AAFFC0BCAEFFA09B
      93FFE0DFDE3F000000000000000000000000FDFDFD02E7E7E71FE9E9E9AEFFFF
      FFFFFFFFFFFFFCF9F5FFE1AF71FFD48421FFD58522FFD58522FFD58522FFD585
      22FFD58522FFD58522FFD58522FFD58522FFD58522FFD9923AFFF1D6B5FFFFFF
      FFFFFAF2E9FFEFC9A1FFE7A967FFE6A661FF968E84FFD9D5D0FFD6D4D0FFCCCA
      C7FFBDBCB9FFB4B2ABFFB8B4A9FFC8C1B1FFA39F96FFC0843AFFD58522FF9384
      6EFFD4CFCBFFD9D6D0FFD3D1CDFFC5C3C3FFB8B6B3FFB4B2AAFFC0BCAEFFA09B
      93FFD3D2D15DFCFCFC030000000000000000FDFDFD02E7E7E71FE9E9E9AEFFFF
      FFFFFFFFFFFFFCF9F5FFE1AF71FFD48421FFD58522FFD58522FFD58522FFD585
      22FFD58522FFD58522FFD58522FFD58522FFD58522FFD9923AFFF1D6B5FFFFFF
      FFFFFAF2E9FFEFC9A1FFE7A967FFE6A661FFE7A763FFDB994FFFCD8732FFD686
      25FFD88A2CFFD68726FF9D7646FF707070FFDEDEDEFFFFFFFFFFEDEDEDFFEAEA
      EAFFEBEBEBFFF2F2F2FFFCFCFCFF9C9C9CFFA4A19EFFF3F3F3FFFFFFFFFFF5F5
      F5CCEDEDED28FCFCFC0300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBABABBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECFFFFFFFFFFFFFFFFFFFFFFFF999692FFD0CECAFFCDCDC9FFCCCB
      C8FFCAC8C6FFB6B4B0FFB8B6ADFFC2BCB2FFA09A94FFE0DFDEFFFFFFFFFF9B98
      94FFC7C1BFFFD1CFCBFFCCCAC7FFC8C6C3FFC5C3BFFFB6B4B0FFBFBBB2FFA09B
      94F7E1E0DF3B000000000000000000000000FCFCFC03E6E6E62BEFEFEFC8FFFF
      FFFFFFFFFFFFF9F2E8FFDC9E51FFD58623FFD58623FFD58623FFD58623FFD586
      23FFD58623FFD58623FFD58623FFD58623FFD58623FFD58622FFDFA358FFF8EA
      D9FFFFFFFFFFFDF9F5FFF1D2AEFFE0A053FF968D81FFD0CECAFFCDCDC9FFCCCB
      C8FFCAC8C6FFB6B3AFFFB8B5ACFFC2BCB2FFA09A94FFC0853AFFD58623FF9484
      6FFFC7C0BEFFD1CFCBFFCCCAC7FFC8C6C3FFC5C3BFFFB6B4B0FFBFBBB2FF9F9A
      93FED1D0CF66FBFBFB040000000000000000FCFCFC03E6E6E62BEFEFEFC8FFFF
      FFFFFFFFFFFFF9F2E8FFDC9E51FFD58623FFD58623FFD58623FFD58623FFD586
      23FFD58623FFD58623FFD58623FFD58623FFD58623FFD58622FFDFA358FFF8EA
      D9FFFFFFFFFFFDF9F5FFF1D2AEFFE0A053FFDF9845FFE5A35CFFE39F55FFE19B
      4DFFDD943EFFD78827FFD58623FFB67E37FF8A7355FFA2A2A2FFE2E2E2FFF9F9
      F9FFF4F4F4FFC4C4C4FF787878FFA27F55FFF6EBDCFFFFFFFFFFFFFFFFFFF9F9
      F9E2EAEAEA38FBFBFB0400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBABABBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECFFFFFFFFFFFFFFFFFFFFFFFFA5A3A0FF999793FF9A9794FF9B98
      95FF9B9995FF9E9B98FF9E9B98FF9E9B98FF9A9793FFE6E5E4FFFFFFFFFFA9A7
      A3FF9B9995FF9A9794FF9A9895FF8E8B88F185827FEB989692D69B9995D59996
      93C9E6E5E42F000000000000000000000000FCFCFC03E5E5E534F4F4F4DBFFFF
      FFFFFFFFFFFFF7ECDEFFDA9844FFD68724FFD68724FFD68724FFD68724FFD687
      24FFD68724FFD78B2BFFDB9238FFDD9640FFDE9641FFDE9743FFE09B4BFFEFC9
      9FFFFDF8F3FFFFFFFFFFFEFCFBFFF0D4B0FF9C8C7AFF948879FF96897BFF9688
      77FF94836EFF958169FF958067FF947E63FF907A60FFC58332FFD68724FF9C82
      60FF94846EFF93826EFF93836FFF948573FF98938CFF9B9995FF9B9995FF9795
      91FBD4D3D26BFAFAFA050000000000000000FCFCFC03E5E5E534F4F4F4DBFFFF
      FFFFFFFFFFFFF7ECDEFFDA9844FFD68724FFD68724FFD68724FFD68724FFD687
      24FFD68724FFD78B2BFFDB9238FFDD9640FFDE9641FFDE9743FFE09B4BFFEFC9
      9FFFFDF8F3FFFFFFFFFFFEFCFBFFF0D4B0FFD2934CFFDC933AFFE5A45EFFE3A0
      55FFD78C2CFFD68724FFD68724FFD68724FFD68724FFAF7C3CFF887255FF7A6F
      60FF7E6F5CFF9B7649FFC7822CFFD8933AFFF3E2CCFFFFFFFFFFFFFFFFFFF9F9
      F9EBE9E9E94AFAFAFA0500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBDBDBEB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBEB48F8F
      8F70FAFAFAF8FFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBEB38483858CF0F0F110000000000000
      000000000000000000000000000000000000FBFBFB04E4E4E439F8F8F8E3FFFF
      FFFFFFFFFFFFF5E8D6FFD99740FFD68924FFD68924FFD68924FFD68924FFD689
      24FFD68924FFD68A27FFDA9135FFE09B4AFFE5A35BFFE7A763FFE7A764FFE7A9
      67FFEFD1AAFFFEFDFCFFFEFEFEFFC1C3FBFF8470B5FFC28040FFE19C4DFFE4A1
      57FFD88D2DFFD68924FFD68924FFD68924FFD68924FFD68924FFD58824FFD689
      24FFD68924FFD68924FFD68924FFD79136FFF1DDC3FFFFFFFFFFFFFFFFFFFAFA
      FAEEEBEBEB54F9F9F9060000000000000000FBFBFB04E4E4E439F8F8F8E3FFFF
      FFFFFFFFFFFFF5E8D6FFD99740FFD68924FFD68924FFD68924FFD68924FFD689
      24FFD68924FFD68A27FFDA9135FFE09B4AFFE5A35BFFE7A763FFE7A764FFE7A9
      67FFEFD1AAFFFEFDFCFFFEFEFEFFC2C4FCFF8470B5FFC28040FFE19C4DFFE4A1
      57FFD88D2DFFD68924FFD68924FFD68924FFD68924FFD68924FFD68924FFD689
      24FFD68924FFD68924FFD68924FFD79136FFF1DDC3FFFFFFFFFFFFFFFFFFFAFA
      FAEEEBEBEB54F9F9F90600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F0118383
      858D959597869F9FA1929E9E9F919E9E9F919E9E9F919E9E9F919E9E9F919E9E
      9F919E9E9F919E9E9F919E9E9F919E9E9F919E9E9F919F9FA192959496878D8C
      8E7E9C9C9E8F9E9E9F919E9E9F919E9E9F919E9E9F919E9E9F919E9E9F919E9E
      9F919E9E9F919E9E9F919E9E9F919E9E9F919E9E9F919E9E9F919E9E9F919E9E
      9F919E9E9F919E9E9F919F9FA192959597868383858DF0F0F011000000000000
      000000000000000000000000000000000000FBFBFB04E4E4E439F9F9F9E3FFFF
      FFFFFFFFFFFFF5E7D5FFD99840FFD68A25FFD68A25FFD68A25FFD68A25FFD68A
      25FFD68A25FFD68A25FFD68A25FFD68B28FFDA9134FFDF9946FFE5A45DFFE4A1
      57FFDEA151FFF3E0C9FFBBBFFDFF5861FDFF323CF8FF826291FFDA9649FFE6A5
      60FFDF9A47FFDA9032FFD68B27FFD68A25FFD68A25FFD68A25FFD68A25FFD68A
      25FFD68A25FFD68A25FFD68A25FFD79236FFF1DDC3FFFFFFFFFFFFFFFFFFFBFB
      FBEEEBEBEB56F9F9F9060000000000000000FBFBFB04E4E4E439F9F9F9E3FFFF
      FFFFFFFFFFFFF5E7D5FFD99840FFD68A25FFD68A25FFD68A25FFD68A25FFD68A
      25FFD68A25FFD68A25FFD68A25FFD68B28FFDA9134FFDF9946FFE5A45DFFE4A1
      57FFDEA151FFF3E0C9FFBBBFFDFF5861FDFF323CF8FF826291FFDA9649FFE6A5
      60FFDF9A47FFDA9032FFD68B27FFD68A25FFD68A25FFD68A25FFD68A25FFD68A
      25FFD68A25FFD68A25FFD68A25FFD79236FFF1DDC3FFFFFFFFFFFFFFFFFFFBFB
      FBEEEBEBEB56F9F9F90600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F0118484
      868C8D8D8F7E8B8B8D7B8B8A8C7C8B8A8C7C8B8A8C7C8B8A8C7C8B8A8C7C8B8A
      8C7C8B8A8C7C8B8A8C7C8B8A8C7C8B8A8C7C8B8A8C7C8B8B8D7B8D8D8F7E8F8F
      91808B8A8C7D8C8B8D7B8B8A8C7C8B8A8C7C8B8A8C7C8B8A8C7C8B8A8C7C8B8A
      8C7C8B8A8C7C8B8A8C7C8B8A8C7C8B8A8C7C8B8A8C7C8B8A8C7C8B8A8C7C8B8A
      8C7C8B8A8C7C8B8A8C7C8B8B8D7B8D8D8F7E8484868CF0F0F011000000000000
      000000000000000000000000000000000000FBFBFB04E5E5E536F6F6F6DFFFFF
      FFFFFFFFFFFFF6EBDCFFDA9A44FFD78C26FFD78C26FFD78C26FFD78C26FFD78C
      26FFD78C26FFD78C26FFD78C26FFD78C26FFD78C26FFD78C28FFDF9B49FFE5A3
      5BFFD98F2FFFCB996AFF6B66D7FF2D3AFFFF2E3BFFFF4143E7FFA77E8BFFE7A7
      64FFE7A764FFE5A35CFFE09B4BFFDB9338FFD88E2BFFD78C26FFD78C26FFD78C
      26FFD78C26FFD78C26FFD78C26FFD9963BFFF2E1C9FFFFFFFFFFFFFFFFFFFAFA
      FAECEAEAEA4EF9F9F9060000000000000000FBFBFB04E5E5E536F6F6F6DFFFFF
      FFFFFFFFFFFFF6EBDCFFDA9A44FFD78C26FFD78C26FFD78C26FFD78C26FFD78C
      26FFD78C26FFD78C26FFD78C26FFD78C26FFD78C26FFD78C28FFDF9B49FFE5A3
      5BFFD98F2FFFCB996AFF6B66D7FF2D3AFFFF2E3BFFFF4143E7FFA77E8BFFE7A7
      64FFE7A764FFE5A35CFFE09B4BFFDB9338FFD88E2BFFD78C26FFD78C26FFD78C
      26FFD78C26FFD78C26FFD78C26FFD9963BFFF2E1C9FFFFFFFFFFFFFFFFFFFAFA
      FAECEAEAEA4EF9F9F90600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBCBBBCB0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBCB18E8E
      8E71F3F3F3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBBBCB08483858CF0F0F110000000000000
      000000000000000000000000000000000000FCFCFC03E5E5E52FF1F1F1CFFFFF
      FFFFFFFFFFFFF8F0E6FFDAA04FFFD78D27FFD78D27FFD78D27FFD78D27FFD78D
      27FFD78D27FFD78D27FFD78D27FFD78D27FFD78D27FFD68D27FFDC963CFFE6A5
      60FFDF9A46FFD68E2CFFA57565FF574FC9FF2F3BFEFF2E3AFFFF5D56D7FFC591
      75FFE2A052FFE29F51FFE19E4EFFDF9A47FFDB9437FFD78E29FFD78D27FFD78D
      27FFD78D27FFD78D27FFD78D27FFD99B43FFF5E9D8FFFFFFFFFFFFFFFFFFF9F9
      F9E5E9E9E93DFAFAFA050000000000000000FCFCFC03E5E5E52FF1F1F1CFFFFF
      FFFFFFFFFFFFF8F0E6FFDAA04FFFD78D27FFD78D27FFD78D27FFD78D27FFD78D
      27FFD78D27FFD78D27FFD78D27FFD78D27FFD78D27FFD68D27FFDC963CFFE6A5
      60FFDF9A46FFD68E2CFFA57565FF574FC9FF2F3BFEFF2E3AFFFF5D56D7FFC591
      75FFE2A052FFE29F51FFE19E4EFFDF9A47FFDB9437FFD78E29FFD78D27FFD78D
      27FFD78D27FFD78D27FFD78D27FFD99B43FFF5E9D8FFFFFFFFFFFFFFFFFFF9F9
      F9E5E9E9E93DFAFAFA0500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBABABBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBAF8483858CF0F0F110000000000000
      000000000000000000000000000000000000FDFDFD02E7E7E723EBEBEBB6FFFF
      FFFFFFFFFFFFFBF7F1FFDEAE6BFFD78E28FFD78F28FFD78F28FFD78F28FFD78F
      28FFD78F28FFD78F28FFD78F28FFD78F28FFD78F28FFD8912DFFE09C49FFE5A4
      5DFFE6A55FFFE09C4AFFDC9537FFB78262FF6A5CC2FF313CFCFF303BFDFF765F
      AAFFCD8B39FFD8902BFFD7902AFFD78F2AFFD78F29FFD78F28FFD78F28FFD78F
      28FFD78F28FFD78F28FFD78F28FFDBA455FFF8F1E7FFFFFFFFFFFFFFFFFFF8F8
      F8D4EDEDED2CFCFCFC030000000000000000FDFDFD02E7E7E723EBEBEBB6FFFF
      FFFFFFFFFFFFFBF7F1FFDEAE6BFFD78E28FFD78F28FFD78F28FFD78F28FFD78F
      28FFD78F28FFD78F28FFD78F28FFD78F28FFD78F28FFD8912DFFE09C49FFE5A4
      5DFFE6A55FFFE09C4AFFDC9537FFB78262FF6A5CC2FF313CFCFF303BFDFF765F
      AAFFCD8B39FFD8902BFFD7902AFFD78F2AFFD78F29FFD78F28FFD78F28FFD78F
      28FFD78F28FFD78F28FFD78F28FFDBA455FFF8F1E7FFFFFFFFFFFFFFFFFFF8F8
      F8D4EDEDED2CFCFCFC0300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBABABBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBAF8483858CF0F0F110000000000000
      000000000000000000000000000000000000FEFEFE01E9E9E917E6E6E698FDFD
      FDFDFFFFFFFFFEFEFDFFE6C595FFD68F29FFD89029FFD89029FFD89029FFD890
      29FFD89029FFD89029FFD89029FFD89029FFD8902AFFDB9536FFDD9940FFDB96
      37FFE09D49FFE6A660FFE6A660FFE6A55FFFCD9773FF7A64B2FF373FF3FF3940
      F0FF936D7FFFD7902AFFD89029FFD89029FFD89029FFD89029FFD89029FFD890
      29FFD89029FFD89029FFD78F28FFE1B77BFFFCFAF7FFFFFFFFFFFFFFFFFFF1F1
      F1B2EEEEEE1CFDFDFD020000000000000000FEFEFE01E9E9E917E6E6E698FDFD
      FDFDFFFFFFFFFEFEFDFFE6C595FFD68F29FFD89029FFD89029FFD89029FFD890
      29FFD89029FFD89029FFD89029FFD89029FFD8902AFFDB9536FFDD9940FFDB96
      37FFE09D49FFE6A660FFE6A660FFE6A55FFFCD9773FF7A64B2FF373FF3FF3940
      F0FF936D7FFFD7902AFFD89029FFD89029FFD89029FFD89029FFD89029FFD890
      29FFD89029FFD89029FFD78F28FFE1B77BFFFCFAF7FFFFFFFFFFFFFFFFFFF1F1
      F1B2EEEEEE1CFDFDFD0200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBABABBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBAF8483858CF0F0F110000000000000
      00000000000000000000000000000000000000000000F1F1F10EE3E3E374FBFB
      FBF4FFFFFFFFFFFFFFFFF1DFC6FFD8993DFFD8912AFFD8912AFFD8912AFFD891
      2AFFD8912AFFD8912AFFD8912AFFD8912AFFD8912AFFD8922CFFD7912AFFD891
      2AFFD99430FFE4A257FFE7A764FFE2A153FFDC983BFFCC8C3EFF86688FFF3D42
      EAFF4D49D6FFAF7C5DFFD8912AFFD8912AFFD8912AFFD8912AFFD8912AFFD891
      2AFFD8912AFFD8912AFFD69432FFECD3B0FFFFFFFFFFFFFFFFFFFDFDFDFBEDED
      ED89F0F0F010FEFEFE01000000000000000000000000F1F1F10EE3E3E374FBFB
      FBF4FFFFFFFFFFFFFFFFF1DFC6FFD8993DFFD8912AFFD8912AFFD8912AFFD891
      2AFFD8912AFFD8912AFFD8912AFFD8912AFFD8912AFFD8922CFFD7912AFFD891
      2AFFD99430FFE4A257FFE7A764FFE2A153FFDC983BFFCC8C3EFF86688FFF3D42
      EAFF4D49D6FFAF7C5DFFD8912AFFD8912AFFD8912AFFD8912AFFD8912AFFD891
      2AFFD8912AFFD8912AFFD69432FFECD3B0FFFFFFFFFFFFFFFFFFFDFDFDFBEDED
      ED89F0F0F010FEFEFE0100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBABABBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBAF8483858CF0F0F110000000000000
      00000000000000000000000000000000000000000000F9F9F906E3E3E34AF6F6
      F6E1FFFFFFFFFFFFFFFFF9F4EBFFDEAD64FFD8922BFFD8932BFFD8932BFFD893
      2BFFD8932BFFD8932BFFD8932BFFD8932BFFD8932BFFD8932BFFD8932BFFD893
      2BFFD9942FFFE3A255FFE6A660FFDD993CFFD8932BFFD8932BFFD29033FF9570
      7EFF4948DCFF6758B6FFC68940FFD8932BFFD8932BFFD8932BFFD8932BFFD893
      2BFFD8932BFFD8922BFFDBA554FFF6EDDFFFFFFFFFFFFFFFFFFFFBFBFBEDEAEA
      EA5DF6F6F60900000000000000000000000000000000F9F9F906E3E3E34AF6F6
      F6E1FFFFFFFFFFFFFFFFF9F4EBFFDEAD64FFD8922BFFD8932BFFD8932BFFD893
      2BFFD8932BFFD8932BFFD8932BFFD8932BFFD8932BFFD8932BFFD8932BFFD893
      2BFFD9942FFFE3A255FFE6A660FFDD993CFFD8932BFFD8932BFFD29033FF9570
      7EFF4948DCFF6758B6FFC68940FFD8932BFFD8932BFFD8932BFFD8932BFFD893
      2BFFD8932BFFD8922BFFDBA554FFF6EDDFFFFFFFFFFFFFFFFFFFFBFBFBEDEAEA
      EA5DF6F6F6090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBABABBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBAF8483858CF0F0F110000000000000
      00000000000000000000000000000000000000000000FDFDFD02E8E8E823EEEE
      EEB3FFFFFFFFFFFFFFFFFEFDFDFFE9CDA3FFD79531FFD9942CFFD9942CFFD994
      2CFFD9942CFFD9942CFFD9942CFFD9942CFFD9942CFFD9942CFFD9942CFFD994
      2CFFD9942FFFE3A153FFE2A153FFD99530FFD9942CFFD9942CFFD9942CFFD793
      2EFFA4786DFF5C52C4FF866890FFD49231FFD9942CFFD9942CFFD9942CFFD994
      2CFFD9942CFFD7932DFFE5C28FFFFDFBF9FFFFFFFFFFFFFFFFFFF6F6F6CAECEC
      EC31FBFBFB0400000000000000000000000000000000FDFDFD02E8E8E823EEEE
      EEB3FFFFFFFFFFFFFFFFFEFDFDFFE9CDA3FFD79531FFD9942CFFD9942CFFD994
      2CFFD9942CFFD9942CFFD9942CFFD9942CFFD9942CFFD9942CFFD9942CFFD994
      2CFFD9942FFFE3A153FFE2A153FFD99530FFD9942CFFD9942CFFD9942CFFD793
      2EFFA4786DFF5C52C4FF866890FFD49231FFD9942CFFD9942CFFD9942CFFD994
      2CFFD9942CFFD7932DFFE5C28FFFFDFBF9FFFFFFFFFFFFFFFFFFF6F6F6CAECEC
      EC31FBFBFB040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBABABBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBAF8483858CF0F0F110000000000000
      00000000000000000000000000000000000000000000FEFEFE01F2F2F20DE4E4
      E46DFAFAFAF0FFFFFFFFFFFFFFFFF6EFE3FFDDAD63FFD8942CFFD9952DFFD995
      2DFFD9952DFFD9952DFFD9952DFFD9952DFFD9952DFFD9952DFFD9952DFFD995
      2DFFD9952FFFE1A04EFFDE9C41FFD9952DFFD9952DFFD9952DFFD9952DFFD995
      2DFFD8952CFFB3815BFF7962A2FFA5796BFFD9952CFFD9952DFFD9952DFFD995
      2DFFD8952CFFDAA553FFF2E6D3FFFFFFFFFFFFFFFFFFFDFDFDFBEFEFEF86F1F1
      F10FFEFEFE0100000000000000000000000000000000FEFEFE01F2F2F20DE4E4
      E46DFAFAFAF0FFFFFFFFFFFFFFFFF6EFE3FFDDAD63FFD8942CFFD9952DFFD995
      2DFFD9952DFFD9952DFFD9952DFFD9952DFFD9952DFFD9952DFFD9952DFFD995
      2DFFD9952FFFE1A04EFFDE9C41FFD9952DFFD9952DFFD9952DFFD9952DFFD995
      2DFFD8952CFFB3815BFF7962A2FFA5796BFFD9952CFFD9952DFFD9952DFFD995
      2DFFD8952CFFDAA553FFF2E6D3FFFFFFFFFFFFFFFFFFFDFDFDFBEFEFEF86F1F1
      F10FFEFEFE010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBABABBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBAF8483858CF0F0F110000000000000
      0000000000000000000000000000000000000000000000000000FAFAFA05E4E4
      E433F0F0F0C2FFFFFFFEFFFFFFFFFEFEFEFFECD7B5FFD89C3FFFD9962DFFD996
      2DFFD9962DFFD9962DFFD9962DFFD9962DFFD9962DFFD9962DFFD9962DFFD996
      2DFFD9962FFFDE9D44FFDB9835FFD9962DFFD9962DFFD9962DFFD9962DFFD996
      2DFFD9962DFFD9962CFFBF884CFFA27870FFC38A47FFD9962DFFD9962DFFD996
      2DFFD79836FFE8CDA3FFFEFDFDFFFFFFFFFFFFFFFFFFF6F6F6D4EAEAEA40F8F8
      F807000000000000000000000000000000000000000000000000FAFAFA05E4E4
      E433F0F0F0C2FFFFFFFEFFFFFFFFFEFEFEFFECD7B5FFD89C3FFFD9962DFFD996
      2DFFD9962DFFD9962DFFD9962DFFD9962DFFD9962DFFD9962DFFD9962DFFD996
      2DFFD9962FFFDE9D44FFDB9835FFD9962DFFD9962DFFD9962DFFD9962DFFD996
      2DFFD9962DFFD9962CFFBF884CFFA27870FFC38A47FFD9962DFFD9962DFFD996
      2DFFD79836FFE8CDA3FFFEFDFDFFFFFFFFFFFFFFFFFFF6F6F6D4EAEAEA40F8F8
      F807000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBABABBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBAF8483858CF0F0F110000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE01EEEE
      EE11E5E5E575F9F9F9F0FFFFFFFFFFFFFFFFFBF8F3FFE4C38DFFD79833FFD997
      2EFFD9972EFFD9972EFFD9972EFFD9972EFFD9972EFFD9972EFFD9972EFFD997
      2EFFDA982FFFDB9934FFD9972EFFD9972EFFD9972EFFD9972EFFD9972EFFD997
      2EFFD9972EFFD9972EFFD9972EFFCD903EFFCB903FFFD89730FFD9972EFFD796
      2FFFE1BA7CFFF9F3EBFFFFFFFFFFFFFFFFFFFDFDFDFAEFEFEF8AEEEEEE15FDFD
      FD02000000000000000000000000000000000000000000000000FEFEFE01EEEE
      EE11E5E5E575F9F9F9F0FFFFFFFFFFFFFFFFFBF8F3FFE4C38DFFD79833FFD997
      2EFFD9972EFFD9972EFFD9972EFFD9972EFFD9972EFFD9972EFFD9972EFFD997
      2EFFDA982FFFDB9934FFD9972EFFD9972EFFD9972EFFD9972EFFD9972EFFD997
      2EFFD9972EFFD9972EFFD9972EFFCD903EFFCB903FFFD89730FFD9972EFFD796
      2FFFE1BA7CFFF9F3EBFFFFFFFFFFFFFFFFFFFDFDFDFAEFEFEF8AEEEEEE15FDFD
      FD02000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBABABBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBAF8483858CF0F0F110000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA05E5E5E529ECECECABFFFFFFFDFFFFFFFFFFFFFFFFF7F1E7FFE1BA7BFFD798
      31FFDA982FFFDA982FFFDA982FFFDA982FFFDA982FFFDA982FFFDA982FFFDA98
      2FFFDA982FFFDA982FFFDA982FFFDA982FFFDA982FFFDA982FFFDA982FFFDA98
      2FFFDA982FFFDA982FFFDA982FFFDA982FFFD9982FFFDA982FFFD8972FFFDEB3
      6CFFF4EADBFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3C1EAEAEA37F8F8F8070000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA05E5E5E529ECECECABFFFFFFFDFFFFFFFFFFFFFFFFF7F1E7FFE1BA7BFFD798
      31FFDA982FFFDA982FFFDA982FFFDA982FFFDA982FFFDA982FFFDA982FFFDA98
      2FFFDA982FFFDA982FFFDA982FFFDA982FFFDA982FFFDA982FFFDA982FFFDA98
      2FFFDA982FFFDA982FFFDA982FFFDA982FFFD9982FFFDA982FFFD8972FFFDEB3
      6CFFF4EADBFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3C1EAEAEA37F8F8F8070000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBABABBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBAF8483858CF0F0F110000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE01F3F3F30CE3E3E352F5F5F5D2FFFFFFFFFFFFFFFFFFFFFFFFF5ECDEFFE0BA
      7BFFD79933FFDA9930FFDA9930FFDA9930FFDA9930FFDA9930FFDA9930FFDA99
      30FFDA9930FFDA9930FFDA9930FFDA9930FFDA9930FFDA9930FFDA9930FFDA99
      30FFDA9930FFDA9930FFDA9930FFDA9930FFDA9930FFD89830FFDEB36CFFF2E6
      D2FFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8E4EAEAEA62F2F2F20DFDFDFD020000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE01F3F3F30CE3E3E352F5F5F5D2FFFFFFFFFFFFFFFFFFFFFFFFF5ECDEFFE0BA
      7BFFD79933FFDA9930FFDA9930FFDA9930FFDA9930FFDA9930FFDA9930FFDA99
      30FFDA9930FFDA9930FFDA9930FFDA9930FFDA9930FFDA9930FFDA9930FFDA99
      30FFDA9930FFDA9930FFDA9930FFDA9930FFDA9930FFD89830FFDEB36CFFF2E6
      D2FFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8E4EAEAEA62F2F2F20DFDFDFD020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F1108483
      858CBBBBBBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBB08E8E
      8E71F0F0F0ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBAF8483858CF0F0F110000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD02ECECEC13E5E5E571F7F7F7E5FFFFFFFFFFFFFFFFFFFFFFFFF6EF
      E4FFE2C18AFFD79E3EFFD99A30FFDA9A30FFDA9A30FFDA9A30FFDA9A30FFDA9A
      30FFDA9A30FFDA9A30FFDA9A30FFDA9A30FFDA9A30FFDA9A30FFDA9A30FFDA9A
      30FFDA9A30FFDA9A30FFDA9A30FFDA9A30FFD79B38FFE0BB7CFFF3E9D9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFBFBFBF1EFEFEF84EDEDED17FBFBFB04000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD02ECECEC13E5E5E571F7F7F7E5FFFFFFFFFFFFFFFFFFFFFFFFF6EF
      E4FFE2C18AFFD79E3EFFD99A30FFDA9A30FFDA9A30FFDA9A30FFDA9A30FFDA9A
      30FFDA9A30FFDA9A30FFDA9A30FFDA9A30FFDA9A30FFDA9A30FFDA9A30FFDA9A
      30FFDA9A30FFDA9A30FFDA9A30FFDA9A30FFD79B38FFE0BB7CFFF3E9D9FFFFFF
      FFFFFFFFFFFFFFFFFFFFFBFBFBF1EFEFEF84EDEDED17FBFBFB04000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F0F1108281
      838EAFAFB1A4EEEEEEEBF0F0F0EFF6F6F6F4F8F8F8F7FAFAFAF9FCFCFCFBFDFD
      FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABCB08E8E
      8E71F0F0F0ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBAF8483858CF0F0F110000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFA05E7E7E71DE9E9E983F9F9F9ECFFFFFFFFFFFFFFFFFFFF
      FFFFFAF7F2FFE9D2ACFFDAAB5AFFD89B34FFDA9B30FFDA9B31FFDA9B31FFDA9B
      31FFDA9B31FFDA9B31FFDA9B31FFDA9B31FFDA9B31FFDA9B31FFDA9B31FFDA9B
      31FFDA9B31FFDA9B31FFD89A32FFD9A752FFE6CB9FFFF8F3EBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFCFCFCF5EFEFEF95EAEAEA23F8F8F80700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFA05E7E7E71DE9E9E983F9F9F9ECFFFFFFFFFFFFFFFFFFFF
      FFFFFAF7F2FFE9D2ACFFDAAB5AFFD89B34FFDA9B30FFDA9B31FFDA9B31FFDA9B
      31FFDA9B31FFDA9B31FFDA9B31FFDA9B31FFDA9B31FFDA9B31FFDA9B31FFDA9B
      31FFDA9B31FFDA9B31FFD89A32FFD9A752FFE6CB9FFFF8F3EBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFCFCFCF5EFEFEF95EAEAEA23F8F8F80700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F20F8888
      8A87959597829D9C9E909E9D9F98A4A3A59FB4B3B4B1BFBFC0BDCCCCCDC8D7D7
      D7D4E6E6E6E3EDEDEDEAF1F1F1EEF3F3F3F2F8F8F8F7FFFFFFFFBBBABCB08E8E
      8E71F2F2F3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBAF8483858CF0F0F110000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F8F807E7E7E721E8E8E885F9F9F9E8FFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFF3E9D8FFE5C999FFDAAA59FFD79C37FFDA9B32FFDA9B
      31FFDB9C31FFDB9C32FFDB9C32FFDB9C32FFDB9C32FFDB9C31FFDA9C31FFDA9B
      32FFD79B35FFD8A753FFE3C48FFFF1E5D1FFFDFDFCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBFBFBF2EFEFEF93EAEAEA28F7F7F708FEFEFE0100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8F8F807E7E7E721E8E8E885F9F9F9E8FFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFF3E9D8FFE5C999FFDAAA59FFD79C37FFDA9B32FFDA9B
      31FFDB9C31FFDB9C32FFDB9C32FFDB9C32FFDB9C32FFDB9C31FFDA9C31FFDA9B
      32FFD79B35FFD8A753FFE3C48FFFF1E5D1FFFDFDFCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBFBFBF2EFEFEF93EAEAEA28F7F7F708FEFEFE0100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFAFA05CECE
      CF37C5C5C63FB6B5B74AAAAAAB55A1A0A2609D9D9F6C9D9C9E739A9A9C7C9797
      99859695978F95959697A3A2A4A2AEAEAFAFBEBDBFBDD3D3D4D2ABABACA18B8B
      8B74DEDEDED7EAEAEBE8F2F2F2F0F6F6F6F4FFFFFFFEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBAF8483858CF0F0F110000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F8F807E7E7E71EE7E7E778F5F5F5D7FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFCFFF4ECDEFFE8D3AEFFE0BD80FFDBAE
      60FFD8A44AFFD79F40FFD79E3CFFD79E3CFFD79F3FFFD8A348FFDBAC5CFFDFBA
      7BFFE6CEA6FFF2E8D8FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8
      F8E4EEEEEE87EBEBEB24F7F7F708FEFEFE010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F8F807E7E7E71EE7E7E778F5F5F5D7FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFCFFF4ECDEFFE8D3AEFFE0BD80FFDBAE
      60FFD8A44AFFD79F40FFD79E3CFFD79E3CFFD79F3FFFD8A348FFDBAC5CFFDFBA
      7BFFE6CEA6FFF2E8D8FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8
      F8E4EEEEEE87EBEBEB24F7F7F708FEFEFE010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE01FCFCFC03FBFAFB05F9F9F907F6F6F60AE8E8E818DEDEDF22D2D1D22FC6C6
      C73BBABABB47AFAFB052A8A8AA5DA5A4A6659E9E9F719A9A9B7B909092828585
      8787949496979F9FA1A3B1B0B1B0B8B7B9B6CBCBCCC7D1D1D2CCDBDBDBD3E2E2
      E2DDEBEBEBE7F0F0F1EFF9F9F9F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABBAF8483858CF0F0F110000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F906E8E8E817E3E3E358F0F0
      F0B7FCFCFCF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFBF9F6FFF8F2
      E9FFF5ECDCFFF1E4CEFFEDDEC3FFEDDDC2FFF0E3CCFFF4EBDAFFF7F2E7FFFBF8
      F4FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFAF6F6F6C5EBEB
      EB65EBEBEB19F8F8F807FEFEFE01000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F9F906E8E8E817E3E3E358F0F0
      F0B7FCFCFCF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFBF9F6FFF8F2
      E9FFF5ECDCFFF1E4CEFFEDDEC3FFEDDDC2FFF0E3CCFFF4EBDAFFF7F2E7FFFBF8
      F4FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFAF6F6F6C5EBEB
      EB65EBEBEB19F8F8F807FEFEFE01000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE01FDFD
      FD02FCFCFC03FAFAFB05F2F2F20EEAEAEA16DFDFE021D6D6D72ACDCDCE37C6C6
      C741B7B7B84EB2B2B355A2A2A4699D9D9E709393957E8D8C8E878B8A8D949797
      999BA3A3A4A5ACACADACB7B7B8B2C3C2C4BBCACACCC1D5D4D6CDE0E0E0DBEAEA
      EAE6F5F5F5F2FFFFFFFFFFFFFFFFBDBDBEB38483858CF0F0F110000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC03F0F0F00FE3E3
      E335E8E8E880F4F4F4CEFDFDFDFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7F7F7D8EDEDED8CE9E9E93DF1F1
      F10EFAFAFA050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC03F0F0F00FE3E3
      E335E8E8E880F4F4F4CEFDFDFDFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7F7F7D8EDEDED8CE9E9E93DF1F1
      F10EFAFAFA050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE010000
      0000F8F8F807F4F4F50BE8E7E819E4E4E41DDBDBDC26D7D7D72BCACACB39BFBF
      C046B3B3B455A7A7A863969697778C8B8D838584868F8E8D90949797989BA0A0
      A2A0A9A9ABA6B3B3B4ABBDBDBEB3A1A0A2918484868CF0F0F011000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE01F6F6
      F609E9E9E916E5E5E541EAEAEA86F2F2F2C5F9F9F9EAFDFDFDFDFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFEFBFBFBEEF5F5F5CCEEEEEE91EAEAEA49EBEBEB16F6F6F609FDFD
      FD02000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE01F6F6
      F609E9E9E916E5E5E541EAEAEA86F2F2F2C5F9F9F9EAFDFDFDFDFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFEFBFBFBEEF5F5F5CCEEEEEE91EAEAEA49EBEBEB16F6F6F609FDFD
      FD02000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD02F9F9
      F906F4F4F40CEFEFEF11E9E9E918E5E5E51CDCDCDD26CECECF36BDBDBE4AB1B0
      B258A2A2A4689392947A8483858C8584878B7B7B7D96EFEFEF12000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC03F6F6F609EAEAEA16E3E3E332E5E5E55BEBEBEB8FF2F2F2BDF7F7
      F7DAF9F9F9E7FBFBFBEDFBFBFBF1FBFBFBF1FBFBFBEEFAFAFAE8F8F8F8DDF5F5
      F5C3EEEEEE97E9E9E961E6E6E635EBEBEB17F5F5F50AFBFBFB04FEFEFE010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC03F6F6F609EAEAEA16E3E3E332E5E5E55BEBEBEB8FF2F2F2BDF7F7
      F7DAF9F9F9E7FBFBFBEDFBFBFBF1FBFBFBF1FBFBFBEEFAFAFAE8F8F8F8DDF5F5
      F5C3EEEEEE97E9E9E961E6E6E635EBEBEB17F5F5F50AFBFBFB04FEFEFE010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD02F8F8F807F2F2F20DEAEAEA15E8E8E827E5E5
      E53BE5E5E54EE6E6E65CE7E7E763E8E8E863E7E7E75DE7E7E750E6E6E63DEAEA
      EA29EBEBEB16F2F2F20DF7F7F708FCFCFC030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFD02F8F8F807F2F2F20DEAEAEA15E8E8E827E5E5
      E53BE5E5E54EE6E6E65CE7E7E763E8E8E863E7E7E75DE7E7E750E6E6E63DEAEA
      EA29EBEBEB16F2F2F20DF7F7F708FCFCFC030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD02FBFBFB04F7F7
      F708F5F5F50AF3F3F30CF2F2F20DF2F2F20DF3F3F30CF4F4F40BF7F7F708FAFA
      FA05FDFDFD02FEFEFE0100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD02FBFBFB04F7F7
      F708F5F5F50AF3F3F30CF2F2F20DF2F2F20DF3F3F30CF4F4F40BF7F7F708FAFA
      FA05FDFDFD02FEFEFE0100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000300000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFFF8000001FFFFF8000001FFFFFFFF
      FFFF000000000000FFFFF8000000FFFFF8000000FFFFFFFFFFFF000000000000
      FFFFF8000000FFFFE0000000FFFFE000001F000000000000FFFFF8000000FFFE
      00000000FFFE00000007000000000000FFFFF8000000FFF800000000FFF80000
      0003000000000000FFFFF8000000FFE000000000FFE000000003000000000000
      FFFFF8000000FFC000000000FFC000000001000000000000FFFFF8000000FF00
      00000000FF0000000001000000000000FFFFF8000000FE0000000000FE000000
      0001000000000000FFFFD0000000FC0000000000FC0000000001000000000000
      FFC000000000F80000000000F80000000001000000000000E00000000000F800
      00000000F80000000001000000000000C00000000000F00000000000F0000000
      0003000000000000C00000000000E00000000000E00000000003000000000000
      C00000000000E00000000000E00000000007000000000000C00000000000C000
      00000000C0000000000F000000000000C00000000000C00000000000C0000000
      0007000000000000C00000000000800000000000800000000007000000000000
      C00000000000800000000000800000000007000000000000C000000000008000
      00000000800000000003000000000000C0000000000700000000000300000000
      0003000000000000C00000000007000000000003000000000003000000000000
      C00000000007000000000003000000000003000000000000C000000000070000
      00000003000000000003000000000000C0000000003F00000000000300000000
      0003000000000000C0000000003F000000000003000000000003000000000000
      C0000000003F000000000003000000000003000000000000C0000000003F0000
      00000003000000000003000000000000C0000000003F00000000000300000000
      0003000000000000C0000000003F000000000003000000000003000000000000
      C0000000003F800000000003800000000003000000000000C0000000003F8000
      00000007800000000007000000000000C0000000003F80000000000780000000
      0007000000000000C0000000003F800000000007800000000007000000000000
      C0000000003FC0000000000FC0000000000F000000000000C0000000003FC000
      0000000FC0000000000F000000000000C0000000003FE0000000001FE0000000
      001F000000000000C0000000003FE0000000001FE0000000001F000000000000
      C0000000003FF0000000003FF0000000003F000000000000C0000000003FF800
      0000007FF8000000007F000000000000C0000000003FFC000000007FFC000000
      007F000000000000C0000000003FFE00000000FFFE00000000FF000000000000
      E0000000003FFF00000001FFFF00000001FF000000000000FFC00000003FFF80
      000007FFFF80000007FF000000000000FFFFD000003FFFC000000FFFFFC00000
      0FFF000000000000FFFFFFC0003FFFF000001FFFFFF000001FFF000000000000
      FFFFFFFFFFFFFFFC0000FFFFFFFC0000FFFF000000000000FFFFFFFFFFFFFFFF
      8003FFFFFFFF8003FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object ImageList_IconsPNG: TPngImageList
    Height = 20
    Width = 20
    PngImages = <
      item
        Background = clWindow
        Name = 'home'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
          0D00000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DE0C1A171225342D9C64000001C749
          44415478DAB5D42174C2301006E0BFAE38EA4032C71C73AD446E0EDC90C38163
          6E95C531070EE4E6C0ADB23238EA885B6470AD232E4BD2D18D072B638FD534ED
          25DFBBDEDDAB252171C9CBFA7790F5AE65CA85593716EF564A4249C78179AEF7
          0394BDA6755E86A33BC91847B48AD17E7E83C6EA8F0AB44BA0C1E0247A002E6F
          AB928B14211378705D83916861625EB3053AF20BD1037033F5250F5F21EC4A8E
          D53DCFC4282127D14370EC4B46A23DCCA9D4554420610C342E46F7C05D03BE63
          D55A43D5CF569E80483812BE294473B01053D96950DF539E60AB601AC747D11C
          5CDE7BF2670CD97DABB2145BB54CC13907A33447DD57B20F825319BE4C0C5673
          5BE8767D73882729C8229BC35A6796ED55269D782A9E18B4D97A807DD5B00E6A
          188DBBD2EB3CC12E57E10F6770CA0EE68B39A2E92350B271D3236A976DBE9EF8
          59D66B35AFCDFED43ADA94EFE07038C16A4DC13709C2694FCDB583E739C5384C
          0C48832CD335FD0D683B79ED843A253835EFA2F80D9D49D594943D7D66A83FB9
          106C0FF206E81484C83AACB376BA2BE89EE838CFCAFA1BB067D64283E6F41758
          EA907CEF79E06E3C76F3A7C14A0D4E9FE57BD9809F069773FF4F3F47B71D1C07
          2F715D1CFC00D9AC60FC56DB6F020000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'fav'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
          0D00000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DE0C1A171239202CC02B000002ED49
          44415478DAB5945B4853711CC7BFF3CC36CDCDCBBC34355D2E739B9A984217A2
          28028BAC5E7A08A2878210BA40102814511851103E19F4161108D543F49051A2
          A579455187784BF37ADCD43175BAB9E3CEEDDFBF6313A2A641F63BFCF99FF3E7
          773E7C7FB7BF8A8060334DF55F819EBE2704B204815F029165BA24C8CA12E9B1
          B8FA4D7746130D5DEA21C4988A54EB02E7ED8F88C6908880C74D7F94111E6DC0
          BC4F44AAD90246AD5EF313B8454CDB1B603AFC7863A03E2B57791757FCF0BB9D
          F08C0F6025361BA9E93B101563062132647E0AA30D55C83AF9E2EF81C170D996
          6AF8F55630616A58F34F5320A10A7B31DEF80A9653551B00BB1F129D25578105
          F3C5B6BC07A7A721AB34C8E8B3431009C2CF1663BCF50D6C675EAE0F9CEB7A40
          74BBB21565445A2D04DBF6019CCE02B5180973D35370BE1568AF5480EDAB86A5
          F8F9FA4077E77D12B5D3BA5655591430D55E0321EE28C8248B1CA61A424003D1
          5602C16000E7712025BF441512E8EA282751E64C0A13D6808E8E5AF85100A9AB
          0EFBCA8B20B916E0793708CD918B186DAEC4EE0B1F430367DBEF924853C62A50
          1494DDD9598FA5C67E44EECD42FEB9AB80BF162BCD6DE04644F08129705F1711
          96740269F756F3F90B70A6ED0E89484B8314048A3CEDB72630A6ED601803ACC9
          D4C96B07A27980F3C2DBEC808FCD83B1ECADEA8F0A9D2DB7883635450105A1B3
          3DADE0861CD0EF4940760EF5953C20FE00163BC2C03A65E4DEEE091DB2A3A994
          6C316E53429528F4471E5DBDEDF0F5BB90B09FA17D28017A80EF5EC2C0E78310
          331C28385F131AC87EB949C293E21565D2CFA2B807BB203A47A0376F85AE7512
          11462D0CC7E331F05A87E5E470145E6E080D9CACBF4198F838AA8C5F2BCADC50
          0F02DF86C1FBB4483B900ED9ED87969DA0A324625E6F435E695D68E0F8A76B44
          027DA8B3721E062C4D8D61A28145645E0A12E3E80541478F2CF388681E833AC1
          064BC53A6D13B485B11AB23C3F0CEF4C3FBC734388B59521B3F0D86F5331FDAC
          92182F5DDF18F82FB6E9C0EF4112C4FCD9E47C990000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'his'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
          0D00000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DE0C1A17130FF68D64F3000002E749
          44415478DAB5946B48935118C7FFEFA6D85C339D96974DD12C426CCEBCA02414
          05A22558A250266514224949378C202884C8A8C82F5D24FCA0994298658A1654
          528D0A51283343DDC5E672CECBE6D2DD2FA7B34DC2CA991FECE17D790F87FFF3
          E379CF79FE0F4340B092C1FC57A0A9E70421C409FA8038081C4ECF9A8AE07452
          2599D7D2AF6B3F38F31EB324D0D87D9CF8470868367127C16177652F50538A6B
          8B65776BB42A1DF83BEE325E81B31FCA082F4248C536574930D9ECD0594C989A
          B3804DD3E2D6F8BBAB74BD0E3B815236898DF9F7BD03756F4B4950742460B362
          546F42E3E71148946A180C46F0385CACE60A50295E0761081B4E7A2432A9069B
          F73579074E779590E0D84868F5069C7FF509E3B4D2D4A874146D2D03C3F247BB
          A40A2FBF0EA02A3906C2B50472D914444B01352F8E92D00D5168EE93E2C98F19
          24F825A178E7497A013E686D6B43666E1E26E512D8C67A210E5341A1D022A1B0
          D13BB0BBF900B93CA042584A18AC462BCC1A137A1F0FA2FACA6D0CBF97E370C9
          31A82726D058730367728C508CEA91B8FF8177A0B2F510F111E5E348FD75F042
          38E87F26457B4D27B87E11686AA8A3620BB2730A505F578BF2B441A8677DB1A5
          A8C13B50F1E820894910628CD986AC8A53B875EE0E44F1196011077C68CB1087
          85AAD8B876B51297F21DEE9C21C52C3615D4328B02650F8BC8FA4421D4E336AC
          8ADE0BB52D1AFCC02004727DE1C726B09A2DE8EFFB88AECE7A9CCD0B0093548D
          8E9BB9D87DFAE9E2C0E1A642122B8E84D96881748C85E75F7848CEC84660001F
          415C1646E44390BCEE40AA5087ACB4D0E50163C40258E6CC705233A8B440CB3B
          7A394E0EFD6507F81C33F6A4B2A1999C414A7CF8F280512201CC7326DADC04F4
          D468CBCC7BD8E5EF792F2BBEEBDDC00B23D5C8F8F62F20159AA84B5CB9AE0141
          98DF610B81BBFA8B513E7D7169A0302E1C66BDD10DA076F60C893F6278548B74
          91D0BD7ED3A3C4F6D216EFC0A1318387413C1AF730C05F53EA57E456B47AEFC3
          95881507FE0472BD9CFC83D75A6C0000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'spd'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
          0D00000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DE0C1A17140BBEA1362D0000038F49
          44415478DABDD46D4C5B551807F0FFBDED6DE80B508AD00B6E957540A12212C2
          4BAB595333B6ECC33617D4910EE218906C46A31F36211AED62D4D9396524C604
          E31235EAA6D62824441D4370410683D259262F2D74C0461B6959A5D4A61DB7F7
          5EEF3E9868806C59169FE47C3939E797E7C9739E43F0E0713F83F85F41020491
          6C3C9EB97573561AC1C7D82BCEA920EF6D5FBE279050BEA16D386A6ECFDFAA2A
          E0C1A4B12CC552643C30E89818EE385D7F50B8C7DE35B8ADE1F3C315C5CAF6DC
          2D3388C77A5194370DF7421DA6FDBBA155C730EA5A5CF5CE872A073E6DF8ED8E
          60D5A16F6BCDA6A52F58111089E991A65842B22215B1B8044AC520B844107289
          1B0E7773E4CAF85C49FFC775D7360409142A1ADFB646AACADFE76F468D84544A
          0959BD881439039EF78156FE0C956218E07CF00572F0E3A5DAA1AE568B714370
          C7F3DF7FB5F789919A4DAACF7023F414668316701C81523A8E92BC745CF7BB30
          E61BC5A6EC7110EC02266E1CC77B9FB8F625864F74AE01099C921D3969BAFCC8
          96C3452BF11238665F824A16C2B3463938198D11CF3C1ECDCB848A1463D0730A
          C9F25FE05D3C8481116D674F7BCDBE35E0E69DEFA4ED34573A73D427725C7347
          104BD068DE2DC75480C383D999C8CD4A602EB888A1713F4AD33330EA7F0B130B
          0740DC92F6DB6D3566C1E1FE03A61A5A529E7ED234E29C59CDAF2C1885417711
          8FE93EC06B5F07D162294312751381F022FAC61CD85B540D7B4F335C811A8899
          BF7ABADAEA76AC53B258B4FFD573977C615185E9E16FA0D7FC8EC70BCFA2F9CB
          49EC379723B412C7E5C920F23517B14B578D968FCE43A62AC0D4F8A46DB2E3D8
          2BEB36257BFB9B8D4663E999D0CA2CEACC6D28545BE10997C03EE003C330A0C4
          4930142E432F8DE0DDEE3F912A7B0017DAEA9582105E038AC462924D243883E5
          640F232FD85E96F7038A358350E043E88B7330E411208D12298C1F335E0F7A9D
          F37CDFD568BDB7DB76563012EB944C480882CC90ABF5F436CBEBDFD119639A55
          8615BA5B84AADC28CA756AB8A6FFC0D5D9EBB098F2219388F0EB407FE7F9EEDE
          A619EFF4D27A2071BB37C2524AD3B559DACAEA17E8DCB2031445622512152677
          15120985E8F232C2EE9F6CB57B0CCF1D3DF672AAD56AED6A3DDDBA67C3D113E0
          2410648AF00A6E0FBF8EAE38F88C3AFB211D732BC6CEBB1DCEE8B5BE0E613FAC
          56D37C5353E319BBDD6E737BDC17EEFCDB802479614EFE95BD7092E7459488E4
          180EFFBCBBBBFEBEEE35EE3BF8376EDC94FCF0E2C1910000000049454E44AE42
          6082}
      end
      item
        Background = clWindow
        Name = 'complementos'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
          0D00000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DE0C1A17141ED37CD2C6000000E149
          44415478DA63FCCFF09F819A8071E8196896B9E43F132B07031BB700C3BFDF3F
          18FEFCFAC1706252082321399C061AA7CCFDCFCAC50FD7F4FBDB278693D3A218
          09C9E134B06DCDF5FF6C2C4C0CCC4C8C0CFF8052BFFFFC63A808D660242487D5
          40FBAA7DFFFFFDFD4D52983131B3321C6C7362C46AA06DD90EB262E870970776
          036D4AB69065E0911E1FEC065A176D22CBC0A37D7ED80DB42C584F9681C72704
          6237D022771559069E981C86DD40F3AC656419889C16510C04E504720C3C353D
          06BB81A6690BC832F0F4AC04DC2EFCF7E717498631B1B0E1762135C008341000
          CEE68FEDF2F2AE560000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'app'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
          0D00000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DE0C1A171210629E58470000025E49
          44415478DA6364A032601C3570600CD48EA862E6D6B19657D0D46AE0E3623778
          CACC67B1DD8DE71BC906020DE2FAA260A2AE696EDEEE26CE6CA727C9CFB9E9F9
          8FAF97DE33C91DF0E67F47B481408304B91DC23D7845042A342579B46395B899
          F75C7EF7DFC4589271D2C997DF3F7D65D23D1C2A7697A08106E9FD7222B63E25
          82023CC1FC9CCC125CDCEC4C010AECFFBA0FBEF95B6E2FCD32F3F11FC65B775F
          FC7CF3FC87D9C342D54B580DF43BF491E5D2894BE602221271AFFEB1C42AF273
          70480BF23278C930FF971164FC1BB4F9FD5F17657EF6D73FFF33DCFEF79F91E3
          DDFB3F3FDEFE767C91AF7404C5C0C8A58F15BE32FF88BEFE8DD9F5CD574E3386
          BFFF38FF8A09FC97E2FCF5BBCB809399979DE19FFFB68F3F19D859B819FE31FC
          67F8F907A8EB1F132313C33FB627F7525E3758CF473150DABBAAE0DFF71F624C
          DC6CBF9904D885FEFDFB6FF859D345DBC2C596DF91F1E79F0D4F7E7EBFFE9383
          8F81878D81E1FB7F20FE0C34F407D0044606F62F4F6A5E1719B561F5321F1F9F
          209012157049F2FBCBC01850535D6D222823FC6DC2FE071C376675BE61E165FB
          FE475E9F9F49415344DEC292F9EEF36F0C821F9F4C7898A45E886220D0202620
          C504E3F346350A327D7A53C0C7C9E1AB57582DBCC75B6BDB9FEF9F8F30B3B23F
          FFF7F70F0F2B8F80FA772DC7C8B08E09BAA7CE3E597729563698602CF3F1F14B
          F3D9C4CEF8F38FF9F2B763F3D731F0AA5F6167BEC5F1F3C37F5EA8927FECBEB9
          CB749D8338F625199B13950E15DCE2331EEC5A38034BD0B04058620282067A5D
          0F0FAD4B22CA40A046DE4F9F3E7D26A04612A8E6395106920A06BF8100DCD6DA
          15CCCE18A00000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'download'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
          0D00000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DF03071415034058FA31000001DC49
          44415478DA6364A032601CDA063ACC7B3913481923099D3D90249E4EB681B6B3
          9E9E09779332FEFDFB3F030B0B23C3AADDCFCE1E4E933621DB40CB690FCF04D8
          4B1B7FFAF4878197978561E3A1A7678F67C9936FA0C984DB677C6D658DDFBCF9
          C52024C4CAB0F5E893B3670A54C937D0A0F3CA196F3B45E3D7AF7F328888B033
          6C3B7CFFEC85721DF20DD46A3A7BC6DB5EC5F8D1A3770C0202AC0C87CFBF3C7B
          ADCE987C0355AB8E9EB13196307EFCF83D83A4A400C3898B2FCFDE6EB326DE40
          B9A2BD3319191991930983A58582F1B3979F19C44579184E9D7A781659EEFFFF
          FF671FF539A7E334502A677B0C5051417094B5F183D7DF401A183E7DFDCDF0F9
          DB6F066E4E16062E0E16A018038300372BC3D16D67CF022D9FF06C8AE712BC5E
          164DDD0036D429CEC5F8C4C36F98C120C2C67071ED01B061AF67072C4197C71A
          86FC712BC1861A24071A5F78FD072EAECCCFCC7077F106B0611F17852FC1A617
          67A470472C061B2A9711637CEB130383023703C38BD94BC0867D5D11BB04973E
          BCB1CC625B16C328A256209A956CFC7ADADCB3FFDFDC9AF0E770D7127C7AB019
          C80AC412A0E004C93319253B32489B46303C3DBDE2DFB9B9FBA16ADE03F13320
          FE418C81CC40CC03C45C787CF01D883F03F11F620CA40850DD4000E1A5B5156F
          FC90170000000049454E44AE426082}
      end
      item
        Background = clWindow
        Name = 'folder-horizontal-open'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
          0D00000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DF031A160C0194A16929000001EF49
          44415478DA6364A032601CFA069EE960D00352C158A4D69A54305CC269E0A976
          866420A580CD50E3F27F351FBF7F6778FFED1B43CA3D6186B76FBF31CCB9C8D3
          02947A6056C93017AB81C75B195A2DF2375431FCFDCBF0FFFF3F86FFFF90F15F
          080D9283B2191919192E2C4D6FB3AC66A8C66AE09166860EEBBCB5E5FF7EFD44
          31E81F926160369466666665B8B032B7D3A696A102AB81071B19BA6DF35797FC
          FBF993A061209A998595E1DCCA821EFB7A8652AC06EEAD67E8B3CF5D5EF8F6DA
          5E869F9F5F333080BCFDFF3F14FF03F281F43F049B898989E1F9B55D27589919
          7681C2D2B492613E8A81BB6A18265925F6E77E7C7C854154CF95E864F2F5D5BD
          FBD756574DB6AE65E84731705B25C354A3C0922C109B8B4F06EC3282698E9189
          E1C5CD7D871F9FDBD8E2DC087629C2C04D650C3355AD82D244958C1998185888
          721D331B3BC3C56D93567F7C79AFD8B793E1318A816B4B18E6CAE9BA24A918B9
          31FC01C63471E0DFE7BD8BEA17323331E485F633FC4731706501C32255ABB058
          59452D604CFE23CAB8B7CF6EDE3ABC7DE5D4F4590C93306279563AC30687802C
          7F615109A20C0325ECD307D69DDABCFB7CF9941D0C07300CCC726798A824C6A0
          43A45FC1E0DE2B86DBD37632B401999F80F8038A8140C006C402404C5C8C40C0
          5F20FE01C43FA1F470280F4905008F25012462C8E6520000000049454E44AE42
          6082}
      end
      item
        Background = clWindow
        Name = 'download open'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
          0D00000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DF041D141A074D29490C000002A349
          44415478DAADD26B4853611CC7F1DF6EBA89854D5BB917E28564497B212B0DB5
          9C8651F96221DDA8C46BA653C422B5A94B4C374B65D5D0A689EB2205562FF485
          D90543D3246F142C72565BD2454421C4A2F0B2B39E2CB436CF612FFCC3C339CF
          39870FDFED1C161C66E80252C8C11FAECDD8D6B3B8FEEF0596E313039538BF2D
          B74D0D9B8D99E27030A8579487A9708E11ECD7A2222CFB7EB17D7E9ED163F178
          18A83BA0092F420923D857016DB8B245E50AD87FF5706544098A18C1DE725CDC
          9E79A7C015F045FDD1AA28350A19C1EE3254479C6C3E43CDCF31826C9E1BFA1A
          126BA24B91CF083E2D852E32C378CA36C70C720502F41A922EC596E13423F844
          8D2B51E98DB9B6B9595A8C27F0C097F756583A2BF4647B2BAE1CC3B4E0C362D4
          EE4C33642FD0805C37778C7FF848CEEC0888D1920076DD1E0D7268C176150CD1
          29FA4CFD682842D64C42EE637502DF9946B049BA1976BF0C3C2BE3D7C757228B
          166C2BC0B59864DD09E5807C71AF108F225634B6FC7309F8F6B519C15B24F82E
          4EC5A0D6AB5151850C2750AA79D5C062B36542DB67FFF5C2B5DE763B855DFB77
          A0B3B507097E16C4893FFD05F9309BCC904825981225C154BDC1985083342730
          48D53394A78C928DCC00DF16968B457CC0DCDA01634CFFE2DE8D806F081842C0
          84D942285BD8370FEA90EC04FAE67434D8294AE68DF1C08D3E5EEB288AC2CFBD
          8720E8B88BE32113880F98FA03BAF3F172D884509914F2893CE43FF06C49ACC5
          9195FE430FB23CEBD2603C96A38DDFD7ECBB78315D360345F0F4D2431C2E0FDD
          5DCF112D8FC4EDDAA2F6410B9A6E74E111B9F5C311149225CEDA8DBC401182EE
          CDA64AFC38D6E9706ED704DDF7689D84C5F01897C9E938595F577CCBA410A410
          2E16821482142E8D13480A410A410A410A410AE9027F178214FE372CACF2AC3A
          F80B3231EE1575D8CD140000000049454E44AE426082}
      end>
    Left = 108
    Top = 475
    Bitmap = {}
  end
  object ListExtensionTimer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = ListExtensionTimer1Timer
    Left = 516
    Top = 416
  end
  object DownloadIcons: TImageList
    ColorDepth = cd24Bit
    AllocBy = 8
    Height = 32
    Width = 32
    Left = 657
    Top = 466
  end
  object GDIPPictureContainer1: TGDIPPictureContainer
    Items = <
      item
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
          0D00000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DE0C1A171210629E58470000025349
          44415438CBED944F48147114C7BFF3FB8D3BB33B3BBF9DB5F5CFA2B94B1AB26E
          9991B4566A419B18A46D06A5C41679A94BB7C010024F4527BB551045873C78D0
          48A2435228115D0A750DD94A034D37455D577367C7DD9DE9501EC2C0AD53505F
          78F00EEFFB79EFF0DE03FEEBAF13F727266F733B95761C70B93D651DCC22544C
          5356F5B4CE1A0700FE374196AFEECAD2AD3EDFF5BA3C5A5BEEB4991F4712AB6A
          342D02C81CE86D6EB74B874ED7CB0EE58AC769F506B749B43FB468A49988F1B1
          1849C7891DC0E2A6C08A0B9D458E9A6397ED8AF5A4CD4CF32D9240026E41EF18
          984FB61D2CE0EF4CA4F0653949E6230969DDB301D83818E3475E8FF81447FED9
          399D0F4A8228668B32AA0BA85168E79281BE68DA5F9C2D5C1D8AE3836E404C81
          6A84B20DC0968753EE559A3833F671E148CC5CB237B6AC9BD3B98AB1C0AF25DB
          8A792A0BD08FF7C5340826A97F5235A0A500E89C4A78628A4E6E07F0F227E060
          D7AD80AE2624229906AC8A10D27563F78AC7EF2DF2D7D8DECD69A9479F351516
          85C16A02548383B162404B1886CE716066E78609A79F5CBB09008C313B801CC5
          DFDA28BFEDC589A36595F6C22D71EE534424776F4CF1B2494DB976D988DBE370
          55EDA3E391382CBC94B3CEA1EB09638C08824001AC0188665505C2249D740E0F
          0D3996CA6BB2DE9CDFDF63CC841E90D9896E8CBE789635DC3F32170EE79E6A69
          C85B985567667B3BBB375D6CC66C05AC3A783BA5D350FCD5FD1EC8A5A3027D2F
          6A4B86FCA344171A2E75ED3CDC243E6FDDE3CB6899DD75E72EFEBA19E3BF4789
          C355DB742FE3EB608CC919D438FFE1F7F50DDF66C9D01BAAB0D3000000004945
          4E44AE426082}
        Name = 'app.png'
        Tag = 0
      end>
    Version = '1.0.0.0'
    Left = 745
    Top = 466
  end
  object Opendownload: TAdvTaskDialogEx
    CustomButtons.Strings = (
      'Open Download Directory'
      'Open Download')
    CommonButtons = [cbCancel]
    DefaultButton = 0
    DefaultRadioButton = 200
    DialogPosition = dpOwnerFormCenter
    Title = 'Download Explorer'
    Instruction = 'Open Download'
    Content = 'Select one of the following options to open download'
    Options = [doCommandLinks]
    Version = '1.8.9.0'
    OnDialogButtonClick = OpendownloadDialogButtonClick
    Left = 368
    Top = 304
  end
  object HTTPdownloadfile: TIdHTTP
    AllowCookies = True
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 16
    Top = 536
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 72
    Top = 536
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Method = sslvSSLv23
    SSLOptions.SSLVersions = []
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 144
    Top = 536
  end
  object remoteupdateext: TTimer
    Enabled = False
    OnTimer = remoteupdateextTimer
    Left = 208
    Top = 538
  end
  object CheckUpdateHTTP: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 272
    Top = 540
  end
  object ColorDialog1: TColorDialog
    Color = 6179124
    CustomColors.Strings = (
      'ColorA=5E4934'
      'ColorB=FFFFFFFF'
      'ColorC=FFFFFFFF'
      'ColorD=FFFFFFFF'
      'ColorE=FFFFFFFF'
      'ColorF=FFFFFFFF'
      'ColorG=FFFFFFFF'
      'ColorH=FFFFFFFF'
      'ColorI=FFFFFFFF'
      'ColorJ=FFFFFFFF'
      'ColorK=FFFFFFFF'
      'ColorL=FFFFFFFF'
      'ColorM=FFFFFFFF'
      'ColorN=FFFFFFFF'
      'ColorO=FFFFFFFF'
      'ColorP=FFFFFFFF')
    Left = 568
    Top = 418
  end
end
