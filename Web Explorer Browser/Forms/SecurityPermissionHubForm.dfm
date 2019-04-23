object SecurityPermissionHubFrm: TSecurityPermissionHubFrm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Security and Permissions'
  ClientHeight = 471
  ClientWidth = 934
  Color = clWhite
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LeftSidePanel1: TPanel
    Left = 0
    Top = 31
    Width = 280
    Height = 440
    Align = alLeft
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
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
          Header = 'Permissions'
          GroupID = 0
          State = [lgsNormal]
          HeaderAlign = taLeftJustify
          FooterAlign = taLeftJustify
          TitleImage = -1
        end
        item
          Header = 'Security'
          GroupID = 1
          State = [lgsNormal]
          HeaderAlign = taLeftJustify
          FooterAlign = taLeftJustify
          TitleImage = -1
        end>
      Items.ItemData = {
        05FA000000040000000A000000FFFFFFFFFFFFFFFF0000000000000000000000
        00134100640062006C006F0063006B0020005000650072006D00690073007300
        69006F006E0073000B000000FFFFFFFFFFFFFFFF000000000000000000000000
        1250006F0070002D007500700020005000650072006D0069007300730069006F
        006E0073000C000000FFFFFFFFFFFFFFFF000000000100000000000000114100
        630074006900760065002000500072006F00740065006300740069006F006E00
        0D000000FFFFFFFFFFFFFFFF0000000001000000000000001355007300650072
        002000410075007400680065006E007400690063006100740069006F006E00}
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
  object FormClient: TPanel
    Left = 280
    Top = 31
    Width = 654
    Height = 440
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Bevel3: TBevel
      Left = 0
      Top = 0
      Width = 1
      Height = 440
      Align = alLeft
      Shape = bsLeftLine
      ExplicitLeft = 8
      ExplicitHeight = 451
    end
  end
  object toolbar1: TW7ToolBar
    Left = 0
    Top = 0
    Width = 934
    Height = 31
    Version = '1.0.2.0'
    ShowTopBorder = False
    object tool_bt1: TW7ToolButton
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
      OnClick = tool_bt1Click
    end
  end
  object UserAccontPanel: TPanel
    Left = 280
    Top = 31
    Width = 654
    Height = 440
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 1
      Height = 440
      Align = alLeft
      Shape = bsLeftLine
      ExplicitLeft = 8
      ExplicitHeight = 420
    end
    object login_image: TImage
      Left = 297
      Top = 9
      Width = 64
      Height = 64
    end
    object UserNameLabel: TLabel
      Left = 129
      Top = 80
      Width = 400
      Height = 26
      Alignment = taCenter
      AutoSize = False
      Caption = '%USER%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object UserName2Label: TLabel
      Left = 129
      Top = 106
      Width = 400
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = '%user%@webexplorer.local'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object textopt9: TLabel
      Left = 24
      Top = 224
      Width = 210
      Height = 13
      Caption = 'Proteger o seu perfil com uma senha ou PIN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label34: TLabel
      Left = 24
      Top = 265
      Width = 513
      Height = 13
      AutoSize = False
      Caption = 'Configure or modify new password and PIN'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object openbt1: TSpeedButton
      Left = 615
      Top = 258
      Width = 20
      Height = 20
      Enabled = False
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = openbt1Click
    end
    object PswSaveButton: TAdvGlowButton
      Left = 493
      Top = 398
      Width = 150
      Height = 30
      Caption = 'Save'
      Default = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Rounded = False
      TabOrder = 0
      OnClick = PswSaveButtonClick
      Appearance.BorderColor = 11235893
      Appearance.BorderColorHot = clSilver
      Appearance.BorderColorDown = clGray
      Appearance.BorderColorChecked = clBlack
      Appearance.BorderColorDisabled = 11316396
      Appearance.BorderColorFocused = clBlack
      Appearance.Color = 11235893
      Appearance.ColorTo = clNone
      Appearance.ColorChecked = 14327846
      Appearance.ColorCheckedTo = clNone
      Appearance.ColorDisabled = 16250871
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = clGray
      Appearance.ColorDownTo = clNone
      Appearance.ColorHot = clSilver
      Appearance.ColorHotTo = clNone
      Appearance.ColorMirror = 11235893
      Appearance.ColorMirrorTo = clNone
      Appearance.ColorMirrorHot = clSilver
      Appearance.ColorMirrorHotTo = clNone
      Appearance.ColorMirrorDown = clGray
      Appearance.ColorMirrorDownTo = clNone
      Appearance.ColorMirrorChecked = 14327846
      Appearance.ColorMirrorCheckedTo = clNone
      Appearance.ColorMirrorDisabled = 16250871
      Appearance.ColorMirrorDisabledTo = clWhite
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Enabled = False
    end
    object Panel3: TPanel
      Left = 16
      Top = 132
      Width = 625
      Height = 22
      BevelOuter = bvNone
      Color = 15329252
      ParentBackground = False
      TabOrder = 1
      object Label2: TLabel
        Left = 8
        Top = 4
        Width = 295
        Height = 13
        Caption = 'Setup new password and PIN for user authentication'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object StatusLabel1: TLabel
        Left = 432
        Top = 4
        Width = 187
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Not Yet Configured'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7105791
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object optpanel5: TPanel
      Left = 556
      Top = 217
      Width = 85
      Height = 30
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object optPSW: TToggleSwitch
        Left = 7
        Top = 4
        Width = 72
        Height = 20
        Alignment = taLeftJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = optPSWClick
      end
    end
    object AuthenticationDesc: TMemo
      Left = 21
      Top = 168
      Width = 620
      Height = 44
      Cursor = crArrow
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
  end
end
