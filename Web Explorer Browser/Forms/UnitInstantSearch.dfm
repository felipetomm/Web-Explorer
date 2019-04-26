object InstantSearchFrame: TInstantSearchFrame
  Left = 0
  Top = 0
  Width = 1098
  Height = 434
  Color = clWhite
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  object LoadingBrowser: TAdvSmoothWin8Marquee
    Left = 0
    Top = 0
    Width = 420
    Height = 20
    AnimationStretchFactor = 1.700000047683716000
    Transparent = True
    Animate = False
    AnimationFactor = 3.000000000000000000
    AnimationStep = 10.000000000000000000
    Fill.Color = clWhite
    Fill.ColorTo = clWhite
    Fill.ColorMirror = clNone
    Fill.ColorMirrorTo = clNone
    Fill.GradientType = gtSolid
    Fill.GradientMirrorType = gtSolid
    Fill.BorderColor = 9470064
    Fill.Rounding = 0
    Fill.ShadowColor = clWhite
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Bullets.Color = 12615680
    Bullets.Count = 5
    Bullets.Width = 5
    Bullets.Height = 5
    Visible = False
    TMSStyle = 0
  end
  object ErrorPanel: TPanel
    Left = 312
    Top = 148
    Width = 450
    Height = 100
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    object ErrorTitlePopup: TLabel
      Left = 0
      Top = 59
      Width = 450
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Could not locate remote server'
      EllipsisPosition = epEndEllipsis
      Font.Charset = ANSI_CHARSET
      Font.Color = 10040064
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object ErrorImage1: TImage
      Left = 211
      Top = 15
      Width = 32
      Height = 32
    end
  end
  object Chromium: TChromium
    OnLoadStart = ChromiumLoadStart
    OnLoadEnd = ChromiumLoadEnd
    OnLoadError = ChromiumLoadError
    OnBeforeContextMenu = ChromiumBeforeContextMenu
    OnAddressChange = ChromiumAddressChange
    OnTitleChange = ChromiumTitleChange
    OnBeforePopup = ChromiumBeforePopup
    Left = 24
    Top = 16
  end
  object OnShowTimer: TTimer
    Interval = 50
    OnTimer = OnShowTimerTimer
    Left = 24
    Top = 64
  end
  object StartSearchTimer: TTimer
    Enabled = False
    Interval = 50
    OnTimer = StartSearchTimerTimer
    Left = 24
    Top = 116
  end
  object AnimationONTimer: TTimer
    Enabled = False
    Interval = 10
    OnTimer = AnimationONTimerTimer
    Left = 24
    Top = 168
  end
  object AnimationOFFTimer: TTimer
    Enabled = False
    Interval = 10
    OnTimer = AnimationOFFTimerTimer
    Left = 24
    Top = 216
  end
end
