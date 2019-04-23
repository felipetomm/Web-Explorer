object BackgroundGlassFrm: TBackgroundGlassFrm
  Left = 0
  Top = 0
  Caption = '!@WEBEXPLORERGLASSFRAME@!'
  ClientHeight = 720
  ClientWidth = 1109
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Win10GlassImage: TImage
    Left = 0
    Top = 0
    Width = 1109
    Height = 720
    Align = alClient
    Stretch = True
    Visible = False
    ExplicitLeft = 28
    ExplicitTop = 13
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object GlassMainFormUpdate: TTimer
    Interval = 4500
    OnTimer = GlassMainFormUpdateTimer
    Left = 1016
    Top = 560
  end
end
