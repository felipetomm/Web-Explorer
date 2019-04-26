object AuthenticationHubFrm: TAuthenticationHubFrm
  Left = 0
  Top = 0
  ClientHeight = 516
  ClientWidth = 797
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Win10GlassImage: TImage
    Left = 0
    Top = 0
    Width = 797
    Height = 516
    Align = alClient
    Stretch = True
    Visible = False
    ExplicitLeft = 28
    ExplicitTop = 13
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object ButtonOk: TButton
    Left = 368
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 0
    Visible = False
  end
  object ButtonClose: TButton
    Left = 449
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 3
    TabOrder = 1
    Visible = False
    OnClick = ButtonCloseClick
  end
  object OpenAuthForm: TTimer
    OnTimer = OpenAuthFormTimer
    Left = 32
    Top = 32
  end
end
