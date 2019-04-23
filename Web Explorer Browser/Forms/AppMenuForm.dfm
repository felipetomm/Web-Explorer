object AppMenu: TAppMenu
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  ClientHeight = 838
  ClientWidth = 480
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnKeyPress = FormKeyPress
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object fundo: TAdvSmoothPanel
    Left = 0
    Top = 0
    Width = 480
    Height = 838
    Cursor = crDefault
    Caption.Location = plTopCenter
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Line = False
    Fill.Color = clGray
    Fill.ColorMirror = clGray
    Fill.ColorMirrorTo = clGray
    Fill.GradientType = gtVertical
    Fill.GradientMirrorType = gtVertical
    Fill.BorderColor = clGray
    Fill.Rounding = 10
    Fill.RoundingType = rtNone
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Version = '1.5.2.1'
    Align = alClient
    TabOrder = 0
    TMSStyle = 0
  end
  object PanelFundo: TPanel
    Left = 1
    Top = 1
    Width = 478
    Height = 836
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object MenuLogo: TImage
      Left = 0
      Top = 180
      Width = 443
      Height = 282
    end
    object AppMenuBottomBar: TPanel
      Left = 0
      Top = 0
      Width = 478
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      Color = 15921906
      ParentBackground = False
      TabOrder = 2
      object LabeltitleName1: TLabel
        Left = 6
        Top = 7
        Width = 40
        Height = 19
        Caption = 'Tasks'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SaveLabel: TLabel
        Left = 369
        Top = 7
        Width = 33
        Height = 19
        Alignment = taRightJustify
        Caption = 'Save'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object AppMenuBT1: TAdvMetroButton
        Left = 446
        Top = 4
        Width = 24
        Height = 24
        Appearance.PictureColor = 3947580
        Appearance.PictureColorHover = 5592575
        Appearance.PictureColorDown = clRed
        Caption = ''
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507E10608170138734883E20000013349
          44415448C7ED95314B03411085BF0B09224408B133312036429A80E04F482182
          8D9DA545FE8CB5C43685B68242BA40D284402A4B1B11044112A21021D5C5E61D
          2CEAEDED6E2C2C7CB0CC72F366DEDCECED1CFC214429FB5FC552CB1939CFCABD
          9125700B6C58FCFBE2E47D0BD906DED58E8EA5452320063E801D57917560A244
          4360334520028AC058CFE6C09A8BC09D02EE3D0E3979935E56F22D25888182E7
          5794F8766D0297225D047CA6E7F25DD904927E360204F6E49BD8046622950204
          722E173116210A1C15DF04BE5EB427D95A4AF04FFB0415D9A94DA02F7B1A3015
          8E6407365253D52D02045E157B98457C10F1DA23795B318F2EE4AA71581D8789
          DA36F855D78A0E8CA039D002CA863F0F9C016F06AFE9DBD30AF06C24485B2F40
          7D957FC631D0D5483613DF0027FC63557C029BF162CAB3F20C39000000004945
          4E44AE426082}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Version = '1.1.2.0'
        OnClick = AppMenuBT1Click
      end
      object SaveSettings: TAdvMetroButton
        Left = 408
        Top = 4
        Width = 24
        Height = 24
        Appearance.PictureColor = 3947580
        Appearance.PictureColorHover = clGreen
        Appearance.PictureColorDown = 4227072
        Caption = ''
        Constraints.MaxHeight = 24
        Constraints.MinHeight = 24
        Picture.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507E10608170226A26AED420000009149
          44415448C7636018050308AC696978300303C37F060686654C34327C0D947D83
          DA86FB415DFE9F8181A181DA867B0E0BC33B07CC70355A1A5E0655144E82E12E
          A4044B039262622C712527CC89B5C49592082564893535520B2E4BACA89914AB
          910C0B636060B044E2F7522B7D972119FA97DA8663B3846CC399F1C81D656060
          F8C5C0C0708D8181A170B4FEA41900002038409D93E8FDE80000000049454E44
          AE426082}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Version = '1.1.2.0'
        Visible = False
        OnClick = SaveSettingsClick
      end
    end
    object AppMenu1: TAdvPolyMenu
      Left = 0
      Top = 32
      Width = 35
      Height = 804
      HorzScrollBar.Visible = False
      VertScrollBar.Range = 227
      VertScrollBar.ThumbSize = 133
      VertScrollBar.Visible = False
      List.Appearance.Normal.Color = clNone
      List.Appearance.Normal.ColorTo = clNone
      List.Appearance.Normal.ColorMirror = clNone
      List.Appearance.Normal.ColorMirrorTo = clNone
      List.Appearance.Normal.GradientType = gtVertical
      List.Appearance.Normal.GradientMirrorType = gtVertical
      List.Appearance.Normal.BorderColor = clNone
      List.Appearance.Normal.Rounding = 2
      List.Appearance.Normal.ShadowOffset = 0
      List.Appearance.Normal.Glow = gmNone
      List.Appearance.ButtonNormal.Color = clWhite
      List.Appearance.ButtonNormal.ColorTo = 15855597
      List.Appearance.ButtonNormal.ColorMirror = clNone
      List.Appearance.ButtonNormal.ColorMirrorTo = clNone
      List.Appearance.ButtonNormal.GradientType = gtVertical
      List.Appearance.ButtonNormal.GradientMirrorType = gtNone
      List.Appearance.ButtonNormal.BorderColor = 15592940
      List.Appearance.ButtonNormal.Rounding = 2
      List.Appearance.ButtonNormal.ShadowOffset = 0
      List.Appearance.ButtonNormal.Glow = gmNone
      List.Appearance.Down.Color = 14869218
      List.Appearance.Down.ColorTo = clNone
      List.Appearance.Down.ColorMirror = clNone
      List.Appearance.Down.ColorMirrorTo = clNone
      List.Appearance.Down.GradientType = gtVertical
      List.Appearance.Down.GradientMirrorType = gtVertical
      List.Appearance.Down.Opacity = 77
      List.Appearance.Down.BorderColor = clGray
      List.Appearance.Down.Rounding = 2
      List.Appearance.Down.RoundingType = rtNone
      List.Appearance.Down.ShadowOffset = 0
      List.Appearance.Down.Glow = gmNone
      List.Appearance.ButtonDown.Color = 7067902
      List.Appearance.ButtonDown.ColorTo = clNone
      List.Appearance.ButtonDown.ColorMirror = clNone
      List.Appearance.ButtonDown.ColorMirrorTo = clNone
      List.Appearance.ButtonDown.GradientType = gtVertical
      List.Appearance.ButtonDown.GradientMirrorType = gtVertical
      List.Appearance.ButtonDown.BorderColor = 3181250
      List.Appearance.ButtonDown.Rounding = 2
      List.Appearance.ButtonDown.ShadowOffset = 0
      List.Appearance.ButtonDown.Glow = gmNone
      List.Appearance.Disabled.Color = 13948116
      List.Appearance.Disabled.ColorTo = clNone
      List.Appearance.Disabled.ColorMirror = clNone
      List.Appearance.Disabled.ColorMirrorTo = clNone
      List.Appearance.Disabled.GradientType = gtVertical
      List.Appearance.Disabled.GradientMirrorType = gtVertical
      List.Appearance.Disabled.BackGroundPictureMode = pmInsideFill
      List.Appearance.Disabled.Picture.Data = {
        89504E470D0A1A0A0000000D494844520000001A0000001A0806000000A94A4C
        CE00000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
        000B1301009A9C180000000774494D4507E10602171026B5237DF50000025449
        44415448C795D64B888E511C06F0DFBCE4BE70290BA6140B21492831B69F6C94
        0D216492C53443CAB5DC8DA199685224914BB6CA6C58081B2BC36694213BB1A0
        588D4B63CC58385F5EC7396F7956DFF7BCE79CE7FC9FF3BCE7FF36F4D46A237E
        E32DE6E1AB3FB8852DFEC56B2CC6B7885F8E2718154F284ABF7745224BB03921
        328C1D099109B89112290B3D404F896F4077B4913ACE855DC73883B932283088
        B688DF88A68C65C712FC2AB4CAE35B1176F8BA448E47C77F583609D733D5D7B1
        AF482CBA17B31283BB329675634E85C87D5C2A30502267E24062F02B1C4FF035
        3457887CC4768C1489039D18713FB10DDF237E32AE85E0A43012443EC4F1CEC5
        B90B4F13FC65345654731EF7E278E7E2DC8F138945D6614385C80B1C4EBD47A9
        380F652C9B1EAAC9E12BD647F3A6151571EE446FC6B2E915427B4278CAB85864
        E2DC8F5389459A836D39DCC59588DB840D0D3DB5DA4094B421AC4854D3883E4C
        C988BCC7227C2A7133C2794D2D12713E9B1069C0D50A91E1709E9F1273A64AA4
        EC254E27166AC5EA0ACB3AF130E25AB026D52672299B9D094B1DCF1317ED9CE0
        4CB21F75E059E276BF112ECE14BE84977CB0C48DC6ED784E5DA82F63D9FED002
        72688B6E7E38183AED3F3B1E0AB11D8C9ECDCFF49E3AEE84F650C6621CC935BE
        F6E0B3A8FC9B18971179879D113736CC199318FFBDC81CF4512CAD88F2567C8E
        F80E2CCCCCD95BE047442EC3A10ACB3AF038E29AB03B33FE5EBDF1C5E55F0FD6
        A5D08B9389569EFBFA7917AA4F36BE0519918110E5D8810B9956FED76D51165A
        19BEED7268C19B885B1BBA680AED7854FFF30B42EB840474F123300000000049
        454E44AE426082}
      List.Appearance.Disabled.PicturePosition = ppStretched
      List.Appearance.Disabled.BorderColor = clNone
      List.Appearance.Disabled.Rounding = 2
      List.Appearance.Disabled.ShadowOffset = 0
      List.Appearance.Disabled.Glow = gmNone
      List.Appearance.ButtonDisabled.ColorMirror = clNone
      List.Appearance.ButtonDisabled.ColorMirrorTo = clNone
      List.Appearance.ButtonDisabled.GradientType = gtVertical
      List.Appearance.ButtonDisabled.GradientMirrorType = gtVertical
      List.Appearance.ButtonDisabled.BorderColor = clNone
      List.Appearance.ButtonDisabled.Rounding = 2
      List.Appearance.ButtonDisabled.ShadowOffset = 0
      List.Appearance.ButtonDisabled.Glow = gmNone
      List.Appearance.Hovered.Color = 15921906
      List.Appearance.Hovered.ColorTo = clNone
      List.Appearance.Hovered.ColorMirror = clNone
      List.Appearance.Hovered.ColorMirrorTo = clNone
      List.Appearance.Hovered.GradientType = gtVertical
      List.Appearance.Hovered.GradientMirrorType = gtVertical
      List.Appearance.Hovered.Opacity = 77
      List.Appearance.Hovered.BorderColor = 13948116
      List.Appearance.Hovered.Rounding = 2
      List.Appearance.Hovered.RoundingType = rtNone
      List.Appearance.Hovered.ShadowOffset = 0
      List.Appearance.Hovered.Glow = gmNone
      List.Appearance.ButtonHovered.Color = 9102333
      List.Appearance.ButtonHovered.ColorTo = clNone
      List.Appearance.ButtonHovered.ColorMirror = clNone
      List.Appearance.ButtonHovered.ColorMirrorTo = clNone
      List.Appearance.ButtonHovered.GradientType = gtVertical
      List.Appearance.ButtonHovered.GradientMirrorType = gtVertical
      List.Appearance.ButtonHovered.BorderColor = 6344178
      List.Appearance.ButtonHovered.Rounding = 2
      List.Appearance.ButtonHovered.ShadowOffset = 0
      List.Appearance.ButtonHovered.Glow = gmNone
      List.Appearance.Selected.Color = 13948116
      List.Appearance.Selected.ColorTo = clNone
      List.Appearance.Selected.ColorMirror = clNone
      List.Appearance.Selected.ColorMirrorTo = clNone
      List.Appearance.Selected.GradientType = gtVertical
      List.Appearance.Selected.GradientMirrorType = gtVertical
      List.Appearance.Selected.BorderColor = 13948116
      List.Appearance.Selected.Rounding = 2
      List.Appearance.Selected.RoundingType = rtNone
      List.Appearance.Selected.ShadowOffset = 0
      List.Appearance.Selected.Glow = gmNone
      List.Appearance.Selected.GlowGradientColor = 13948116
      List.Appearance.Selected.GlowRadialColor = clSilver
      List.Appearance.ButtonSelected.Color = 4579838
      List.Appearance.ButtonSelected.ColorTo = clNone
      List.Appearance.ButtonSelected.ColorMirror = clNone
      List.Appearance.ButtonSelected.ColorMirrorTo = clNone
      List.Appearance.ButtonSelected.GradientType = gtVertical
      List.Appearance.ButtonSelected.GradientMirrorType = gtVertical
      List.Appearance.ButtonSelected.BorderColor = 5218510
      List.Appearance.ButtonSelected.Rounding = 2
      List.Appearance.ButtonSelected.ShadowOffset = 0
      List.Appearance.ButtonSelected.Glow = gmNone
      List.Appearance.NormalFont.Charset = DEFAULT_CHARSET
      List.Appearance.NormalFont.Color = clWindowText
      List.Appearance.NormalFont.Height = -11
      List.Appearance.NormalFont.Name = 'Tahoma'
      List.Appearance.NormalFont.Style = []
      List.Appearance.DownFont.Charset = DEFAULT_CHARSET
      List.Appearance.DownFont.Color = clWindowText
      List.Appearance.DownFont.Height = -11
      List.Appearance.DownFont.Name = 'Tahoma'
      List.Appearance.DownFont.Style = []
      List.Appearance.DisabledFont.Charset = DEFAULT_CHARSET
      List.Appearance.DisabledFont.Color = clWindowText
      List.Appearance.DisabledFont.Height = -11
      List.Appearance.DisabledFont.Name = 'Tahoma'
      List.Appearance.DisabledFont.Style = []
      List.Appearance.HoveredFont.Charset = DEFAULT_CHARSET
      List.Appearance.HoveredFont.Color = clWindowText
      List.Appearance.HoveredFont.Height = -11
      List.Appearance.HoveredFont.Name = 'Tahoma'
      List.Appearance.HoveredFont.Style = []
      List.Appearance.SelectedFont.Charset = DEFAULT_CHARSET
      List.Appearance.SelectedFont.Color = clWhite
      List.Appearance.SelectedFont.Height = -11
      List.Appearance.SelectedFont.Name = 'Tahoma'
      List.Appearance.SelectedFont.Style = []
      List.Appearance.PictureContainer = GDIPPictureContainer1
      Fill.Color = 15921906
      Fill.ColorTo = 15065042
      Fill.ColorMirror = clNone
      Fill.ColorMirrorTo = clNone
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.OpacityTo = 100
      Fill.BorderColor = 15921906
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Fill.GlowGradientColor = 15921906
      Fill.GlowRadialColor = 15921906
      ListMargins.Left = 0
      ListMargins.Right = 0
      ShowFocus = False
      BorderMode = bmTransition
      BorderTypes = [btNormalRight]
      PictureContainer = GDIPPictureContainer1
      OnChange = AppMenu1Change
      OnItemSelect = AppMenu1ItemSelect
      Align = alLeft
      Ctl3D = False
      TabOrder = 0
      ParentShowHint = False
      ShowHint = True
      BevelInner = bvNone
      BevelOuter = bvNone
      DoubleBuffered = True
      Color = 15921906
      ParentCtl3D = False
      IsMainMenu = True
      TMSStyle = 0
      object UserBTPanel: TPanel
        Left = 1
        Top = 640
        Width = 32
        Height = 32
        BevelOuter = bvNone
        Color = 15592167
        ParentBackground = False
        TabOrder = 0
        object UserBT: TAdvGlowButton
          Left = 0
          Top = 0
          Width = 32
          Height = 32
          BorderStyle = bsNone
          DisabledPicture.Data = {
            89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
            F800000A4F6943435050686F746F73686F70204943432070726F66696C650000
            78DA9D53675453E9163DF7DEF4424B8880944B6F5215082052428B801491262A
            2109104A8821A1D91551C1114545041BC8A088038E8E808C15512C0C8A0AD807
            E421A28E83A3888ACAFBE17BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C008
            0C9648335135800CA9421E11E083C7C4C6E1E42E40810A2470001008B3642173
            FD230100F87E3C3C2B22C007BE000178D30B0800C04D9BC0301C87FF0FEA4299
            5C01808401C07491384B08801400407A8E42A600404601809D98265300A00400
            60CB6362E300502D0060277FE6D300809DF8997B01005B94211501A091002013
            65884400683B00ACCF568A450058300014664BC43900D82D00304957664800B0
            B700C0CE100BB200080C00305188852900047B0060C8232378008499001446F2
            573CF12BAE10E72A00007899B23CB9243945815B082D710757572E1E28CE4917
            2B14366102619A402EC27999193281340FE0F3CC0000A0911511E083F3FD78CE
            0EAECECE368EB60E5F2DEABF06FF226262E3FEE5CFAB70400000E1747ED1FE2C
            2FB31A803B06806DFEA225EE04685E0BA075F78B66B20F40B500A0E9DA57F370
            F87E3C3C45A190B9D9D9E5E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E
            3CFCF7F5E0BEE22481325D814704F8E0C2CCF44CA51CCF92098462DCE68F47FC
            B70BFFFC1DD322C44962B9582A14E35112718E449A8CF332A52289429229C525
            D2FF64E2DF2CFB033EDF3500B06A3E017B912DA85D6303F64B27105874C0E2F7
            0000F2BB6FC1D4280803806883E1CF77FFEF3FFD47A02500806649927100005E
            44242E54CAB33FC708000044A0812AB0411BF4C1182CC0061CC105DCC10BFC60
            36844224C4C24210420A64801C726029AC82422886CDB01D2A602FD4401D34C0
            51688693700E2EC255B80E3D700FFA61089EC128BC81090441C808136121DA88
            01628A58238E08179985F821C14804128B2420C9881451224B91354831528A54
            2055481DF23D720239875C46BA913BC8003282FC86BC47319481B2513DD40CB5
            43B9A8371A8446A20BD06474319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA
            8F3E43C730C0E8180733C46C302EC6C342B1382C099363CBB122AC0CABC61AB0
            56AC03BB89F563CFB17704128145C0093604774220611E4148584C584ED848A8
            201C243411DA093709038451C2272293A84BB426BA11F9C4186232318758482C
            23D6128F132F107B8843C437241289433227B9900249B1A454D212D246D26E52
            23E92CA99B34481A2393C9DA646BB20739942C202BC885E49DE4C3E433E41BE4
            21F25B0A9D624071A4F853E22852CA6A4A19E510E534E5066598324155A39A52
            DDA8A15411358F5A42ADA1B652AF5187A81334759A39CD8316494BA5ADA295D3
            1A681768F769AFE874BA11DD951E4E97D057D2CBE947E897E803F4770C0D8615
            83C7886728199B18071867197718AF984CA619D38B19C754303731EB98E7990F
            996F55582AB62A7C1591CA0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB
            548FA95E537DAE46553353E3A909D496AB55AA9D50EB531B5367A93BA887AA67
            A86F543FA47E59FD890659C34CC34F43A451A0B15FE3BCC6200B6319B3782C21
            6B0DAB86758135C426B1CDD97C762ABB98FD1DBB8B3DAAA9A13943334A3357B3
            52F394663F07E39871F89C744E09E728A797F37E8ADE14EF29E2291BA6344CB9
            31655C6BAA96979658AB48AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C7
            4A275C2747678FCE059DE753D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB44
            77BF6EA7EE989EBE5E809E4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C58
            06B30C2406DB0CCE183CC535716F3C1D2FC7DBF151435DC34043A561956197E1
            8491B9D13CA3D5468D460F8C69C65CE324E36DC66DC6A326062621264B4DEA4D
            EE9A524DB9A629A63B4C3B4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79B
            DFB7605A785A2CB6A8B6B86549B2E45AA659EEB6BC6E855A3959A558555A5DB3
            46AD9DAD25D6BBADBBA711A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D8
            06DBAEB66DB67D6167621767B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB
            1D5A1D7E73B472143A563ADE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B6
            13CB29C4699D539BD347671767B97383F3888B894B82CB2E973E2E9B1BC6DDC8
            BDE44A74F5715DE17AD2F59D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F29
            9E593373D0C3C843E051E5D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F
            9157ADD7B0B7A577AAF761EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7
            C8B7CB4FC36F9E5F85DF437F23FF64FF7AFFD100A78025016703898141815B02
            FBF87A7C21BF8E3F3ADB65F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8
            EC90AD21F7E798CE91CE690E85507EE8D6D00761E6618BC37E0C278587855786
            3F8E7088581AD131973577D1DC4373DF44FA449644DE9B67314F39AF2D4A352A
            3EAA2E6A3CDA37BA34BA3FC62E6659CCD5589D58496C4B1C392E2AAE366E6CBE
            DFFCEDF387E29DE20BE37B17982FC85D7079A1CEC2F485A716A92E122C3A9640
            4C884E3894F041102AA8168C25F21377258E0A79C21DC267222FD136D188D843
            5C2A1E4EF2482A4D7A92EC91BC357924C533A52CE5B98427A990BC4C0D4CDD9B
            3A9E169A76206D323D3ABD31839291907142AA214D93B667EA67E66676CBAC65
            85B2FEC56E8BB72F1E9507C96BB390AC05592D0AB642A6E8545A28D72A07B267
            655766BFCD89CA3996AB9E2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5
            864B572D1D58E6BDAC6A39B23C7179DB0AE315052B865606AC3CB88AB62A6DD5
            4FABED5797AE7EBD267A4D6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED
            5D4F582F59DFB561FA869D1B3E15898AAE14DB1797157FD828DC78E51B876FCA
            BF99DC94B4A9ABC4B964CF66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB4
            0DDF56B4EDF5F645DB2F97CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54
            A454F454FA5436EED2DDB561D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BE
            DB5501554DD566D565FB49FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D2
            03FD07230EB6D7B9D4D51DD23D54528FD62BEB470EC71FBEFE9DEF772D0D360D
            558D9CC6E223704479E4E9F709DFF71E0D3ADA768C7BACE107D31F761D671D2F
            6A429AF29A469B539AFB5B625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C5979
            4AF354C969DAE982D39367F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A
            0F6FEFBA1074E1D245FF8BE73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F
            6DEA74EA3CFE93D34FC7BB9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDD
            F4BD79F116FFD6D59E393DDDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD977
            27EEADBC4FBC5FF440ED41D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47
            F7068583CFFE91F58F0F43058F998FCB860D86EB9E383E3939E23F72FDE9FCA7
            43CF64CF269E17FEA2FECBAE17162F7EF8D5EBD7CED198D1A197F29793BF6D7C
            A5FDEAC0EB19AFDBC6C2C61EBEC97833315EF456FBEDC177DC771DEFA3DF0F4F
            E47C207F28FF68F9B1F553D0A7FB93199393FF040398F3FC63332DDB00000006
            624B474400FF00FF00FFA0BDA793000000097048597300000B1300000B130100
            9A9C180000000774494D4507DA0C1F1404319C66F1B3000005F54944415448C7
            8556BF6F1CC715FE666677766FEFC85BF278147F45A24221A408AA0A11352A62
            214A21110104AAB020582A0CD08D5DB870E18E8D0A01AE833880030548152085
            F3072402484324E12B041592A088244CEEFDDEE3EDDDE9766777662785740731
            9291011EB03B33EFFBDEFB66E7BD25F899B1BDBD9DB12CABA0B5FE04C04794D2
            25DBB67F9124492F4992FF68AD4B52CAEFDBEDF696E779C1C6C686FE100EF9D0
            E4CECECE479CF32F4CD3BCA9B54692241042204D53CD1823A669C2300C589685
            344D0F4F4E4EBEADD56ADFADAFAF37FE2FC1DEDEDE37B95CEE33A554CEF33C70
            CEF5E4E424715D17699A82100221049ACDA6EE743A249FCF63767616E572F9C7
            46A3F1E58D1B37B6DFC563EFBE3C7EFCF8CFAEEB7E1E0401AF542A7A7575959C
            3F7F9E504A114511A4949052C2300C148B4572EEDC39349B4D7D7070402E5EBC
            384308F9DDB56BD7FEBDBCBCDC78F4E8913E45B0B3B3F3CDD8D8D8E72727275A
            29452E5FBE4C7ABD1ECAE532BADD2E841088E318711C430881D7AF5F230C43CC
            CDCD11CBB2F0E4C9133D3F3FEFDAB67D358AA27FBE7AF5AA53AFD7610C34CFE5
            729F054100A514595A5AC2F1F1317ABD1E00406B0D4208D2347DA32B21208440
            4A89288AE0BA2E161717C9C1C1815E5858F8D5850B17FE4408B90920A26FBF96
            2F0821B97ABDAE57565650AD56D1E97420A544922408C310CF9F3F479AA64892
            6498899412711CC3F77D188681919111D26AB5742E97FBFD83070F6E03A0D4B2
            AC82699A373DCFC3E2E222F17D1F411020491224490229258E8F8F71E7CE1DEC
            EFEF0F8107E0837D4110A05028A05C2E93A9A92992C9643E5E5B5BCB52ADF527
            5A6B504AF5D8D8186AB51A945243902449A0B5461CC7585F5F47AFD743188643
            F2C11E2104A228C2E8E8283CCF23232323176FDFBEBD4201FC564A897C3E4F5A
            ADD67B8E030200B02C0B57AF5E1D92BC1B88520AFD7E7F900572B9DCB8E3384B
            9410F29BB704E8F7FBD05A0F1D9552830B363C6CC77170EBD62DF8BE8F7EBF8F
            344D91A629945288E318D96C16420830C62C42C8B8C13977C330D4F57A9D30C6
            D0E97486DA2AA56018C6F082F57A3D28A5A0B5C6BD7BF7F0F0E143388E034A29
            4CD3442E9743A55201004D293518639386522A314DD36CB55A68B55A90526250
            0A38E7608C41080100C3C33F73E60C4AA5D2705D4A0921044E4E4EE0380E0821
            444A89344D634329F5C2B2AC15A514B2D92CA22882699A608CC1300C30C64029
            0500445184D9D959ECEDEDC1F77DE4F37928A5C0181B1AA5148C312449124B29
            BB546BBD4B29459AA6DAB66D98A63934C330609A26087953B2C6C6C6F0ECD933
            74BB5DE4F37998A609CE390CC318662CA584EBBA88A22888A2E8279A24C9F786
            6180524A0821A71C0644841030C650AD56E1791E5CD77D2F88C1B3520A131313
            3A0CC37AA5527945DBEDF6569AA687B3B3B30882403B8E33241858A150C0D6D6
            16AAD52A6666668660030907D2C4718CA9A9299D2409E9F7FB3FBC78F1A2423D
            CF0B7CDFFF766E6E0E8EE390300C4F696A18062626263032328262B108D33461
            591638E74322C6DED44CCE395CD725711C47A552E96FC56231A21B1B1BBA5EAF
            7F777070F0E3952B5790248916428010724A2AC77160DB362CCB3A05FC4ED1D3
            E3E3E3D05AC3F3BCAF7DDFAF70CEBB1400D6D7D71BBEEF7FF9F2E5CB9F2E5DBA
            441863BADD6E434A09C6D8306AC771E0380E2CCB82611800805EAF87288A5028
            1448369B4D1B8DC61F777777FF353A3ADADCDCDC1474D00FAE5FBFBE7D7474F4
            07DFF78FCF9E3D4BA6A7A775BD5E47A5528110029C73D8B60DDBB6A1B546BBDD
            46B95C86699A7A7A7A1A8EE3A056ABFD657777F7AFD96CB6ACB5EEBCD7D19697
            971B42887F64329925DBB617E6E7E7A1B5269EE7E1F0F010FBFBFBFAF0F09034
            9B4D98A68999991970CE8994323A3A3AFA6A7B7BFBEF9CF32300ADCDCDCDF483
            3D7975759528A5ACFBF7EF7F9CCD663F751CE797994CC6A594661863E46D714B
            E238EE0A219AFD7EFF8752A9F4B0D96C964747477DAD753000FFD9BF8AB783AE
            ADADE5EEDEBDFB6BCEF902A5B4482975D3345552CA208EE36AAD567BF9F4E9D3
            A3C9C9C99073DEDDDCDC14FF0BF25FD744730470D8EA0D0000000049454E44AE
            426082}
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          Transparent = True
          TabOrder = 0
          OnClick = UserBTClick
          Appearance.BorderColor = 15065042
          Appearance.BorderColorHot = 10079963
          Appearance.BorderColorDown = 4548219
          Appearance.Color = 15921906
          Appearance.ColorTo = 15921906
          Appearance.ColorChecked = 7915518
          Appearance.ColorCheckedTo = 11918331
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 7778289
          Appearance.ColorDownTo = 4296947
          Appearance.ColorHot = 15465983
          Appearance.ColorHotTo = 11332863
          Appearance.ColorMirror = 15065042
          Appearance.ColorMirrorTo = 15921906
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
        end
      end
      object Tasks_MenuItem: TWedgeItem
        Tag = 0
        Y = 3
        Height = 40
        Width = 34
        Level = 0
        Index = 0
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D494844520000001A0000001A0806000000A94A4C
          CE00000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507E1071510362A8AAAE2E90000015C49
          44415448C7CD96C16DC24014441F1105B8047710D201254007E63077A8005201
          DCE7605201E9209440092EC11D2497EF68832C6C621365254BDEF1DAB37FFEFF
          E39D900C499FDC37CEC09BED63D7C227868D39504A5A772D9CB445647BD2F5A2
          A439F09140AFB677A34764FB7C056D25ED1E251D7DC9C6266AC8D67F4104B097
          B41893E8728B2C9D4C87B0D87EB9AAC40C58002590DF4524E90464C0D2762D29
          8FDD7E6309710D1C259577E5287AA5B98A80F3D8758A31C819A2578E49352D02
          3B24D86C3051D3F191F42C3E9C0556055606368C28745F01353003F62D583146
          44D8BE44140085A4A24DD6B1DC3B95A76A79560D268A846F637AB07D8E8A5C27
          CE7D1923A2A62F2ADB9BB83F35EE70EBF7D09B48D23E120EB00CAC4CA45C0D2E
          EF70811FF2482A922ADB7449D6D782EA68CE7922CF3BF00CE4B60F7D2B69DAA3
          87366943B661633903A971DEC21E790A629074BF38DFFD9F88BE006F0D933484
          6B82AA0000000049454E44AE426082}
        ImageHeight = 26
        ImageWidth = 26
        WedgePositions = []
      end
      object Print_MenuItem: TWedgeItem
        Tag = 0
        Y = 48
        Height = 40
        Width = 34
        Level = 0
        Index = 1
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D494844520000001A0000001A0806000000A94A4C
          CE00000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507E10715103717CBD99FB9000000B449
          44415448C7ED94D10D823018843F0903300223E006ACE004FA76AF308123F87C
          53C806388A23B881BEF4810748046AA3863F69DAA4C95DAF77394834BBA90B49
          CF2580B64731B3548AF2A52F9CFB03C9146D44EBE22DA900CE400D5491B0EF40
          67BB1D2A6AC2AA228A288146D26518EF63D80FB6BB182C926AA0074E409B0DD8
          B1DD49BA4AEAD712D9BE856331158612787CBC196CEF7F3ADEF9D6DE5FDFDE79
          0C5FDEC148AB68CC87FF4D5D0CDF922A4A362F5555385542452F510000000049
          454E44AE426082}
        ImageHeight = 26
        ImageWidth = 26
        WedgePositions = []
      end
      object Extras_MenuItem: TWedgeItem
        Tag = 0
        Y = 93
        Height = 40
        Width = 34
        Level = 0
        Index = 2
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D494844520000001A0000001A0806000000A94A4C
          CE00000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507E10715102129162037C5000002CC49
          44415448C7A5D64B685D651007F0DF8D69AD29F5157165FB95FAA24240C40782
          7E3E4185E24A51243BA11B952E5C882EBA94EAA22028E8D28D2BADA275216217
          538B5D942EDAA2205A72742148D257DAD89AE6C6CD184E6F6FC2BDC96C2EDF99
          3BE7FFCDCC7FFE733A86B05A6B07E3B80E8B381B11B383C48E18CE9EC417F815
          BF604FAD75DB2081D70C91CD047EC22DF80EFFE0799452CAFEA669E6578AEFF4
          29CD466C40B7E59AC53EECC09B11B13733D983A7F01ABEC2589F8A9D8A88EE68
          8F630C2F64F0E5FCE3222EA0E67F3E808838596BFD1A2FE20D3C96BDFB3F81F9
          3CEFC2742FD0860499C414E6B2BC1D9C4427221632FB119CCEE7D767FF16F33D
          177177BE6F773FA0C5BCC914DECA86AF6FF996C81311DD5AEBE1BCD4A59E369C
          C1DEEC6117469761E205FC1C1127566A7044CC2441FA916766257ACFE23CD6B5
          3259AD5D6E1F465B37B8113BF178D67855566BBD094FE0FEAB806AADDBF12D36
          E7B3DF70ED2A4026F06E1263AC3DAB237983F7B1051FE14E3C8AA34382DC8C57
          F11CBEC403B8238965149BD27900BB23E2DC2AAB762B1EC661BC871311B1D84B
          860ECEAF01A4AD3467526C17AFD0BA52CA0826F06C29655D29E5F752CAC652CA
          7CD3340B83229452BAB81D2F61AC94F2672965532965B6699AEE48449CC6DB38
          9753FC0702F70D934A449CC2A73898EC3D96A4DABA54BA88388EED498AA91CD8
          4BC3D62D228EE265BC9EAA020B7A24651AEFE09B96385A05D874447C821F5752
          861B5220E7F1EF1A8931BAEC21AD9B3BE99EDC4F57886A441C69CDCE38EE5A46
          54C75702EAA4CE6DCD5968AF89B9FCBDB7B5261EC487E95BDF674D2C55AD17E8
          227E6889627BF14D6659DB2B6533B6E1108EF72CBE23793EDB0F680E9F637F9F
          55BE053B6AADAF44C4672878247D1F675CDF557ED537C30082790C33F81EB7E5
          AC1DC464B276ED5F414DD3FC5D4A398487F07466B80FBB22E2AFA12838801DC0
          33C9CA6E6ADA994102FF03AD4CEE08F13FA7090000000049454E44AE426082}
        ImageHeight = 26
        ImageWidth = 26
        WedgePositions = []
      end
      object Options_MenuItem: TWedgeItem
        Tag = 0
        Y = 138
        Height = 40
        Width = 34
        Level = 0
        Index = 3
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D494844520000001A0000001A0806000000A94A4C
          CE00000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507E1071510210123959F3F000003A749
          44415448C7ADD6698895651407F0DF75665C6ACC282B6C7BA3B00F452BB4993D
          34129654689285145952199554D087A285165A90A220B40F8A168645B6A81158
          8AD669C18A329208A3A00B455A90A93336D9E8F4E5DCB85DA6BA812F5CEEFB9E
          E73C6779CEFFFC9F53D3E6534A390C23506B12EF8E881FDBD9DFA9FD671D4E68
          917D8FA3DAD93CACCD6C46E020F4617DFEFAD0554A397C9F39C2A918850F2362
          52444CC23BD83FD7FEF3E96889FC98AAAACEAAAAAAB75EAFF7A5EC28DC8A8978
          B1AAAA77ABAAAAA1C214F45755F555BD5EFFA551CBAAAA7AAAAA1AA8D7EBDB1A
          B66B4D4E46E301CCC2FB588BBDB80C176033AE8D880DA97F0A96E2247C8437B0
          03E7E142BC823B2362DB5F8E4A29355C826529DBBF25F36772EDB388D8DD14DC
          6998891B3126C57D89CE4E4C8D8855CD8E0EC2729C99596D400F0E45607544F4
          FE03503A313903FD156FE1B4B453C7E488D85A4B44DD84A7F1362E8E888152CA
          708C8C881D4D7D740D8EC1687C810511B12BD7C76020221AB57D0957E20E2CE8
          CC3AF4658067630EE6E711EDCE4D13F008CE4557EA0EE0F252CAED11B12122B6
          3765791DCE6FCEBC717423311D4B527E3FE645C46029A51B2BF228E7630DB6E3
          0ADC824F7069446C2DA574602E1ECC3ACDC54BE8ED8488E8C7B252CAEF8996F1
          1889DF32C3F3F002EE452F06B131839A83ABF16444EC29A58CC3010990C511B1
          67A886DD95FFBFA13FDF4FC1702CC6CE88D81B118311B1130B135D1387C0C94F
          0D2743391ADE701811832D6B836DB2C8AE165B7F7794BD74407E8E2DA5EC97EF
          1FE077CC4077937E37AECF003635D9387828C2EE4C8551B8088FE20FFCDC84AE
          15B82169A8564A79229B7346CA36E1B9ACF56029E5DB0C6C493A7E2D22FA6BA5
          94AEA49D85D889BB23627E4B535E90F03EA3E53EDA84FB2262658BFE6C3C960D
          7F33160DCBE3EB6E3AA605A9DC95998A88B5D9170F65862BF030A6359C945246
          25BCE1F9E44B380E5D8D3E1A9BA4783CEEC19798900CB02E22D6FDCB5DD591F0
          EFC9C67F1727E3716C49A6F9AE9954A7E2F5E4ABCEA62CB7E259AC8A888D4D0E
          BA706236FA2C1C9D4BBD89BC4392709747C4DE0EA8D7EBAAAADA8203339AF7B2
          66EB310E57E19CAAAA36D7EBF5EFA0AAAAB3B02819620B9EC2EA2CC5B178B599
          0B6B2DC77064DE981B23E287948DC75D988D79B83B217D5B1A7F39E9EAD3D43F
          226D7C83AF1BFD586B7366E8C14ABC19113353B614D3303D22D6ECAB29E8E32C
          F494524A0318A7A7ECF3760CD4DA74A494F2E550E35644B4356EFD9FB96ED250
          0364BB9BFF04C4F95B5EE77E8C5C0000000049454E44AE426082}
        ImageHeight = 26
        ImageWidth = 26
        WedgePositions = []
      end
      object Help_MenuItem: TWedgeItem
        Tag = 0
        Y = 183
        Height = 40
        Width = 34
        Level = 0
        Index = 4
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D494844520000001A0000001A0806000000A94A4C
          CE00000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507E107151202263BB2895B000001FC49
          44415448C7BD96CD51E34010853FBB084021980C44042B6E73C344601C015604
          5B442013C13A039B5BDF1019682340212803F6F2C6D516A31FD82ABA4AE5B26A
          665EBFD76FBA053F148BA90521840C28800DB0D203D0EA79014E66D67D0B4800
          BF8107209B91F41E7836B376365008A1008E0EA056E6B5582066397007ACDDF6
          7B333B4D028510766292010DF094DAD8DB932BB128EBD6CC0E83403D267B8174
          730B1E42A8805D8AD9A25793F7086266E577DCE5C03AE026D6ECCAADD909A405
          9E46CC51685D2DC617C537B352CAE45ABF3D33EAB1B935B33A01F29E70DF45D6
          6EFD4AEB01AECDAC5DEA4FCCF2D4075154CE1C37C0AD184596F458B54034C31A
          20026DF4FB32207DA1DFD2CC1A25B3F50725229EF5CBD728DAB249ED30B3EBC4
          EBA94B5CFB24AF7A9BBA99CE2A80C7DE81A3B1FC2A902EF45192354039A042E7
          CF5EBA06E9251C8B476D2EE5D0762021DF7CCFD235F27D3E5427172B65BC9F58
          97FBBA47A03775E93B674B062459CC6C12D1C97FBD74B127ADD520C76AF41142
          F898D164E395389C8154B8C8E4F83F93545DA4720DA0F58C70EE59A9310E4A37
          21DF4E6C3ADF335363E2354ECCAF74F0C444BE98494383AF728ED99A5933A326
          7F9CD33E253936CA5FDDAB839C599B59ABEC33597DA3CB9B49AEB23F5DE77C9C
          5492622A3AC77EFEC7490230DEB1F8B9D5E969C5F43425EF8FC53FBBD0D6640F
          58E9AB0000000049454E44AE426082}
        ImageHeight = 26
        ImageWidth = 26
        WedgePositions = []
      end
    end
    object Print_List: TAdvPolyList
      Left = 35
      Top = 32
      Width = 443
      Height = 804
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      List.Appearance.Normal.Color = clNone
      List.Appearance.Normal.ColorTo = clNone
      List.Appearance.Normal.ColorMirror = clNone
      List.Appearance.Normal.ColorMirrorTo = clNone
      List.Appearance.Normal.GradientType = gtVertical
      List.Appearance.Normal.GradientMirrorType = gtSolid
      List.Appearance.Normal.BorderColor = clNone
      List.Appearance.Normal.Rounding = 2
      List.Appearance.Normal.ShadowOffset = 0
      List.Appearance.Normal.Glow = gmNone
      List.Appearance.ButtonNormal.Color = clWhite
      List.Appearance.ButtonNormal.ColorTo = 15855597
      List.Appearance.ButtonNormal.ColorMirror = clNone
      List.Appearance.ButtonNormal.ColorMirrorTo = clNone
      List.Appearance.ButtonNormal.GradientType = gtVertical
      List.Appearance.ButtonNormal.GradientMirrorType = gtNone
      List.Appearance.ButtonNormal.BorderColor = 15592940
      List.Appearance.ButtonNormal.Rounding = 2
      List.Appearance.ButtonNormal.ShadowOffset = 0
      List.Appearance.ButtonNormal.Glow = gmNone
      List.Appearance.Down.Color = 7067902
      List.Appearance.Down.ColorTo = clNone
      List.Appearance.Down.ColorMirror = clNone
      List.Appearance.Down.ColorMirrorTo = clNone
      List.Appearance.Down.GradientType = gtVertical
      List.Appearance.Down.GradientMirrorType = gtSolid
      List.Appearance.Down.BorderColor = 3181250
      List.Appearance.Down.Rounding = 2
      List.Appearance.Down.ShadowOffset = 0
      List.Appearance.Down.Glow = gmGradient
      List.Appearance.ButtonDown.Color = 7067902
      List.Appearance.ButtonDown.ColorTo = clNone
      List.Appearance.ButtonDown.ColorMirror = clNone
      List.Appearance.ButtonDown.ColorMirrorTo = clNone
      List.Appearance.ButtonDown.GradientType = gtVertical
      List.Appearance.ButtonDown.GradientMirrorType = gtSolid
      List.Appearance.ButtonDown.BorderColor = 3181250
      List.Appearance.ButtonDown.Rounding = 2
      List.Appearance.ButtonDown.ShadowOffset = 0
      List.Appearance.ButtonDown.Glow = gmNone
      List.Appearance.Disabled.ColorMirror = clNone
      List.Appearance.Disabled.ColorMirrorTo = clNone
      List.Appearance.Disabled.GradientType = gtVertical
      List.Appearance.Disabled.GradientMirrorType = gtSolid
      List.Appearance.Disabled.BorderColor = clNone
      List.Appearance.Disabled.Rounding = 2
      List.Appearance.Disabled.ShadowOffset = 0
      List.Appearance.Disabled.Glow = gmGradient
      List.Appearance.ButtonDisabled.ColorMirror = clNone
      List.Appearance.ButtonDisabled.ColorMirrorTo = clNone
      List.Appearance.ButtonDisabled.GradientType = gtVertical
      List.Appearance.ButtonDisabled.GradientMirrorType = gtSolid
      List.Appearance.ButtonDisabled.BorderColor = clNone
      List.Appearance.ButtonDisabled.Rounding = 2
      List.Appearance.ButtonDisabled.ShadowOffset = 0
      List.Appearance.ButtonDisabled.Glow = gmNone
      List.Appearance.Hovered.Color = 9102333
      List.Appearance.Hovered.ColorTo = clNone
      List.Appearance.Hovered.ColorMirror = clNone
      List.Appearance.Hovered.ColorMirrorTo = clNone
      List.Appearance.Hovered.GradientType = gtVertical
      List.Appearance.Hovered.GradientMirrorType = gtSolid
      List.Appearance.Hovered.BorderColor = 6344178
      List.Appearance.Hovered.Rounding = 2
      List.Appearance.Hovered.ShadowOffset = 0
      List.Appearance.Hovered.Glow = gmGradient
      List.Appearance.ButtonHovered.Color = 9102333
      List.Appearance.ButtonHovered.ColorTo = clNone
      List.Appearance.ButtonHovered.ColorMirror = clNone
      List.Appearance.ButtonHovered.ColorMirrorTo = clNone
      List.Appearance.ButtonHovered.GradientType = gtVertical
      List.Appearance.ButtonHovered.GradientMirrorType = gtSolid
      List.Appearance.ButtonHovered.BorderColor = 6344178
      List.Appearance.ButtonHovered.Rounding = 2
      List.Appearance.ButtonHovered.ShadowOffset = 0
      List.Appearance.ButtonHovered.Glow = gmNone
      List.Appearance.Selected.Color = 4579838
      List.Appearance.Selected.ColorTo = clNone
      List.Appearance.Selected.ColorMirror = clNone
      List.Appearance.Selected.ColorMirrorTo = clNone
      List.Appearance.Selected.GradientType = gtVertical
      List.Appearance.Selected.GradientMirrorType = gtSolid
      List.Appearance.Selected.BorderColor = 5218510
      List.Appearance.Selected.Rounding = 2
      List.Appearance.Selected.ShadowOffset = 0
      List.Appearance.Selected.Glow = gmGradient
      List.Appearance.ButtonSelected.Color = 4579838
      List.Appearance.ButtonSelected.ColorTo = clNone
      List.Appearance.ButtonSelected.ColorMirror = clNone
      List.Appearance.ButtonSelected.ColorMirrorTo = clNone
      List.Appearance.ButtonSelected.GradientType = gtVertical
      List.Appearance.ButtonSelected.GradientMirrorType = gtSolid
      List.Appearance.ButtonSelected.BorderColor = 5218510
      List.Appearance.ButtonSelected.Rounding = 2
      List.Appearance.ButtonSelected.ShadowOffset = 0
      List.Appearance.ButtonSelected.Glow = gmNone
      List.Appearance.NormalFont.Charset = DEFAULT_CHARSET
      List.Appearance.NormalFont.Color = clWindowText
      List.Appearance.NormalFont.Height = -11
      List.Appearance.NormalFont.Name = 'Tahoma'
      List.Appearance.NormalFont.Style = []
      List.Appearance.DownFont.Charset = DEFAULT_CHARSET
      List.Appearance.DownFont.Color = clWindowText
      List.Appearance.DownFont.Height = -11
      List.Appearance.DownFont.Name = 'Tahoma'
      List.Appearance.DownFont.Style = []
      List.Appearance.DisabledFont.Charset = DEFAULT_CHARSET
      List.Appearance.DisabledFont.Color = clWindowText
      List.Appearance.DisabledFont.Height = -11
      List.Appearance.DisabledFont.Name = 'Tahoma'
      List.Appearance.DisabledFont.Style = []
      List.Appearance.HoveredFont.Charset = DEFAULT_CHARSET
      List.Appearance.HoveredFont.Color = clWindowText
      List.Appearance.HoveredFont.Height = -11
      List.Appearance.HoveredFont.Name = 'Tahoma'
      List.Appearance.HoveredFont.Style = []
      List.Appearance.SelectedFont.Charset = DEFAULT_CHARSET
      List.Appearance.SelectedFont.Color = clWindowText
      List.Appearance.SelectedFont.Height = -11
      List.Appearance.SelectedFont.Name = 'Tahoma'
      List.Appearance.SelectedFont.Style = []
      Fill.Color = clWhite
      Fill.ColorTo = clWhite
      Fill.ColorMirror = clNone
      Fill.ColorMirrorTo = clNone
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtSolid
      Fill.BorderColor = clSilver
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      ShowFocus = False
      BorderMode = bmTransition
      BorderTypes = []
      OnItemSelect = Print_ListItemSelect
      Align = alClient
      TabOrder = 6
      Visible = False
      BevelInner = bvNone
      BevelOuter = bvNone
      DoubleBuffered = True
      TMSStyle = 0
      object ImageTextItem16: TImageTextItem
        Tag = 0
        X = 3
        Y = 3
        Height = 38
        Width = 436
        Level = 0
        Index = 0
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'Print Preview'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DC0A1911193917689E17000003F149
          44415458C3C5974F4C9B651CC73FCFFB502D0CD6528A14A5305688069211C510
          504E44810C931E898B37176F9E24F1A217F5E0C59B89276E5C168909B2650716
          131298B28E0C9259C7D2166C3B6817FE145BFAE7FDEB015C50FEACC592FD6EEF
          9BDFFB3CDF3FBFDFEF7D1EC129110CFE6E7186C8E5F27477778B62722B9E97E0
          F3B5950C607535C2ECECAC954AA5F0FBFDA26400879987C3A19298E77259DC6E
          37522AD4D5B9CEAEC0599967321956561EE3743AF1F97C2C2E2E5AA7D921CAE5
          F93FCC3737370FD60A72F5EA08369B8D783C7E624D1C017056E6C9E45352A9D4
          33E6C9649250284457D715AAAB6B0887C3241209464747454945584CD4D6BAD8
          DCDCA4AECE453018C4E7F3D1D4D404C0F4F44D1C8E8B381C4E3C1ECF916F9572
          00703A9D54565671E9522BDDDD6F333F3FCFCECE360D0D0DF4F4F460182676BB
          9D542A557A1B9612F5F5F5D86CB623CC3B3A3A9052A1B2B2EA7C14D82FC42C96
          65E2705C3C96792C163BB62DCBA6C0D6D63653533FFFEBDD61E68B8BF7C9E7F3
          E707607878F8D9E0CAE5F26432190062B1187D7D7D671BC5DF4DFC42C114ECE4
          257B9A20AD490A8660AB20D92D285061E3FE975D270EB07038C4CACAA3639917
          05E0B38F06FE972A3E5F1B737373A7E628BCE028CA82BCAE90D3F707D89E26C8
          EA92ECC1F35F9A425657C86A823D5D80A2F0C7D76F9607C04916C4E371028100
          DBDBDB5454D8686969A6B7B717BBDD5E5E05FE1B9AA631337387783CCEE5CBAD
          343737A3AA2AE97486898909868686F07ABDE7634156B5781A59A2D5056DDDEF
          B1920735AA93D3ECE81AD45C68E38BEF7FE237D1C3CAB77DE5B7607D7D9DDBB7
          C30C0C0CD0D8D888AAAA589685100204ECA67619BAF20AE14808CB328B065074
          172412095C2E1717AAAB49A7D3A8AA8A61181886816998545555A2AA05D69FAC
          9F8F05ABA147F4B4B9F8E1561087D3C99E6A6118267BBAA06028140C81CC6D11
          79B8C327E50270D882E565271B1B1BBCF3EE5B284220A50438B0613F27B22AB9
          FB725D490A146D81DBED26994820150521048AA220A5444A054591E89A4E2C1A
          A5BFBFFFC4354CD33CBB057BAA49F2CF3CE91BB728D4BE412A67617FC946D650
          C86B26F6EC137EBCB3847CDD43F0AB73B040D334262737A890160F1F4C323C34
          4C63A3874C26C3F2F212B58DB57C73E3F3A299976481AEEB4C4D4DF1AAC7C383
          A5653EBE7E9DFAFA3AA2D12885421EBFDFCFC80723A7AEB1B0708F8E8E4E51F2
          24344D93999919BCAF79F975E12ED7AE7D88D7BB7FE06C6F6F2F5AEAF1F17151
          B2029665110804A8A976108A84686E6EA1B3B3B3A42A3F8979511713CB82D0E3
          352CA1B1B6B6CAE0E060C93F9BD3367F6E81B6B4B47C3A3D7D531F1B1BBB0754
          BE88F342534D4DCDFB52CA86F3DAE06F38CAD3276CFF8FAA0000000049454E44
          AE426082}
        ImageHeight = 32
        ImageWidth = 32
      end
      object SplitterItem5: TSplitterItem
        Tag = 0
        X = 3
        Y = 46
        Height = 5
        Width = 436
        Level = 0
        Index = 1
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        ReadOnly = True
        Selectable = False
        LineMargin.Left = 1
        LineMargin.Top = 1
        LineMargin.Right = 1
        LineMargin.Bottom = 1
      end
      object ImageTextItem17: TImageTextItem
        Tag = 0
        X = 3
        Y = 56
        Height = 38
        Width = 436
        Level = 0
        Index = 2
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'Print Page'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DF0714133B1BEA50237F0000055D49
          44415458C3ED965B6C54551486BF7D286D8719E874A45C84D2360ED542690701
          51D3562AD76A29A7B1BED868AD1AABC607D07889213E181FF4C120092931128B
          461A8D510785121453A183401BD341AB23ED98B62360EF4EECD061E65CB60F1D
          7AA12D9892F8222BD9C9C9D9D9F9BFB5F65A7B2DB86937EDA6FDDF4D4CE7D0DA
          82FB915202D0D850FFDF00E46FD88CAE1BAA94729B9452551405C330DCC041C0
          3D5D986B026CDE5A4A54D354D334B799A6A19AA6B44B29B97A0141C02DA51C81
          69F27C3F3D80B2F2C7884422AAA11BDB0CC3504DD3B49BA68961184422978944
          22A42F49A5203F9FEF3C4D0C0D0E100A8500899420A50CC620FE15CC38808AA7
          AA6A86C261D5300CBB6118E8BA41383C44786888C50B175054B4057BC67D28B3
          D3381F9424DB40EFFB91EE762F4DA74E3230D04F287469243FFE0DCC3880175E
          794D4A29314D939EDE5EC2E13086AEB37C591625C50F206F598BEF6298D4B9DD
          FCD6D94677771B9A1161A0AF8FBEDE1ED2E764629B1987DFF7137D7DFD0C8642
          574046AE093878A72BD7FDDE9EDDE301D6E4AD432DD92AFDBFFF8EA669CC4B49
          E14AE87B7A7B8946A324262470D7EA55DC96E9448B37F8ECF051FC177416DE7A
          07C58579E4AD486559DADC09616EF5FB397CE428BF9D6BA57FE02F060707C537
          87DC1323D0F9C77909D0D1D9C9A9D38D9C6B6B1B07A3EB3ADD3D3D23306BD7AC
          26CD99C53D772E67E18205787C1E0E9CA8A5C1E721D01B006049CA12F2B3F228
          2F7884DC5417BBF75473C752A778B8ECA1A901C6DA64308661A069C330F9F7DE
          CDE34F94F3EC7BCFF1F5D94368E93ADA7C03738E091294BF156676CF6066471C
          5B5DC5ECADAA2669565225B05F08313980DFEFC7E974723D988DEBEF679B5AC4
          036F16D31CF17239278A8C8BF920632BF62D34486C4960A5C545DDCE4324CD4A
          2A1542B82705D8B069334EE75256AF5EC5FAC2423232D227C004027F909B934D
          D5FB55B8CF7F457855649CE084EF586558BC89A86925D4EE3810043226052858
          5788DD710B42081445617E4ACA0498D9361BBFFCF933456F3FC8A5C2CB537A3E
          567C381202EB490B475E3D4C5E56DE0E652CC09F5D5D747476121F9F40CE8A15
          58AD561445E16257175F1FAEE385975FE199E79E67DF073558ADB33870A2162D
          5DBFAEB8CB914B7B991F9723173943A2A5EA1C38510B5011172B41175051FBC9
          A7ACCBCFE7B4E7380E8783AEEE6E3C3F9CE2C8D16F39D7DA4A2412198179E3F5
          9D34F83C68B71BD715AFDF726CF43FA0CDD569F079005C71008B17DDDA1C8D6A
          2C5EB488E5CBB270381C002C983F9FB25295B25275020C40A03780B96638DBD7
          CDBB8F60348877E0ECA4E285751BF0F60FEF995673A44CE3006C365B06A0FEFC
          CBAF15A7CE34BA6C361BAB56BA28DAB491CCA5CE713039D9D9ECDBFFD1E8BDC5
          BCADB9771FF6F8240A8F6EC4DBEF9D521C799D66F4E8934FA7032A50110A8546
          600CC3E47883870B172EA06951CE369D267B7B0EBECC56CCD926AEE45CEA377D
          0BC08EC617D975D73B538A2B830A5981DB6979F7A76BB7E3B1308140C0D5DBD3
          D3619AA63B65DEBCE37507BFD8F5D2C72FA5D75CFC90C86D1A487025E750BFE5
          18F6783BC1687072CF252474C653B9A482BD55D55E31DD49464AB9DDE3F3EC2A
          7AEB412E1584913386155CC9B97CB9FE734A8F3D34A9B8D005D633A365782300
          76A0FD915DE57677E02BC2B997C764FF140F1260694944CD187D889469CF7242
          0481CABD55D5ACB4B8B07813119A98525CE8024B4B222B6D2EF6565503540A21
          82CA0D0D9442B893662555D6ED3C849A5682F5A48584F6789441655CC22574C6
          633D6341CD28B9D2072A8510EE694FC5575D05B144ADF1F83CF66BB5E3BCACBC
          60CC73B79412216E587E7C4E4829B74B299BE5446B8EEDD9AF3EF70FA3FC157F
          2226364E0000000049454E44AE426082}
        ImageHeight = 32
        ImageWidth = 32
      end
      object ImageTextItem18: TImageTextItem
        Tag = 0
        X = 3
        Y = 99
        Height = 38
        Width = 436
        Level = 0
        Index = 3
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'Print only text of  page'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DF0714133B2FCBE4D7CA000005C549
          44415458C3ED966F6C93D715871F3B764C12A7D8CE5F9AB038604A0205DC91C0
          E8624868A161428D3B75DDE89651CA566D4C9AD62F9DA6496CD224B44DEA264D
          DD4659D904AC524B59153A0121C9DA6404989AB165300912E2850402896D825B
          1CDBAFEDF79E7D083136094BC7F8328923DD0FF7D579EF79CEEFDC73EF8507F6
          C01ED8FF9BAD5EBB3E63BECAD3F03FAD67F8244E6B3734F2E7F6566AEBD66332
          19BD22D224225E1109019DC0E10F4F7CD0525B574F4F77E7FD01686CFA3CAD87
          DFE5F1FA4D58E6647995524D4AE95EA5C42622DC398010D02222877BBA3B3F31
          4C06C0735FD9CAC1DFEFA371F3D398E7E478F5A4DEA4EBBA572965534AA1EB3A
          9A1643D3349C9F9ACF5A8F873F75F710B9394E381C060411B8A54C0B302B4C06
          C037BFFD329148E4779168D4ABEBBA4DD77592499D6834423412A17C5E299B36
          3562AB5C8731BF822B21C16E8564F00C6383BDF49C3EC9F8F875C2E189295566
          854901D4D6D5F369F70AF2F2F24444504AE10F048846A3E8C9244B9754F3F4E6
          CF2105AB397F35CAFCC2312E0C5D646CEC22095D633C182418F0E37CE811AC66
          1303E7CF120C5EE766383C05922A13B0AFA7BBB3739A026FBEFD0E97868665C0
          E7239148505C54C494F4FE4080783CCE1C8B8555352B59F8888B44B6CE3B478E
          33309264DEC3556C6EA8C3693770A5EF6F1C7EEF3D6EDC9C004316F1440211C1
          61B75352528C52AAF3C0DE3D0DD300862E5F0110804B43439CFECB87F45DBC98
          01934C2619F3FB5330AB6B6BA87055130F8FF3874387E8F7F9C8CB9F8BC99C8D
          8862EEDCB914171621225C1B1D65FCC60D963FBA34B477F72FEDFF1120DD6682
          D1759D44620A4623994CA26E952EDF9A8FC36E47D7935CBD3619D4B5A092450B
          17E05A5089C562E18BCF7DC10060BA5B7B0C0C0CE072B900705654E0ACA89811
          E6E1AA1242B61B3416AE4789204A31B987041195FAA64430994C98B2B232E2DC
          15E01B3BBE85CBB5889A9A953CD1D04065A5734698AEB3DDF88C0328119EDFB2
          25F5BFDCA1E5C1836FE376BB3979EA14B9B979B303C4E371AE8E8EF2C7234739
          72AC9592A2A2BBC26CE5CB747DF03E00BAAE90A9C89259CFC2C2421E5FB38613
          DD27A703D4D6D5E31B1C243727074DD3C8CEB6B07CD932FE353888A669B3C24C
          F57DA6049993FDFBF74F06CDCE9EF11C70035BD7ACAEFD4EBDC7C33ACF677138
          1C8C8E8DD17DEA34C78EB7D3D7DF8FA6692412090C0603CB973DCA8F7EF80300
          DEEFE8A0F9ABCD1C3B7A749A9A1B366E4CA9613265B16FCF6FD8F25128A4C2E1
          974D005F6A7E012D1EFF7B3C9EA0BCAC8CA54BAA71381C00949694F0EC335E9E
          7DC63B0DC668BCBDA14414001B373E9596F3F452681341624AA7AFACCCE66C6D
          FD7916C03FCFF652FB9935FB72727286FC8140E9D1E36DA5475ADB18BE7C0587
          DD4E41C1248CD56A65497515D58B1713B83E8E168FB3CE530780CF37807B851B
          95510A4346350C917EB2CFBF80257F3E87FE7A2D14B35A1B66BC0D9BB7BFE404
          BCC0D67038ECB65AADAC7CCC8DAE2BBA4E743332324222116791CBC5CEEF7F0F
          9BCD465BEB31B66D7B919D3B7712D362ECDAB58BF6B6B6D49A0F655D6355DE6F
          D1135186AF2A7A3FF23C763952D13BEB7B201D667878D81DF0FB2F29A55A8A8A
          8BBB9C4E6713E09D575A6A5B5851CEF617B7F3CA775F418BC578F5D59F65646E
          BAB08358E463FCD7CDB48D3C497D69BBA1EAF933F7F68AA95AE6A679FB4BE990
          DEDDBB5F97643229B19826D1B4111B3F27C9531E0977AC10DF5B3512F69F931F
          FFE4A7A93A19EF05E0C2B95E0EECDD939A1FD8BBA7458942EEE8BEF4CCC78266
          0AD6BE41B6BD0A756BC3DE33C04C36750E74B4B7D1D1DE8661A21F39F7756291
          8F1919059FE56B9C387379D257C9EC27E17F6B4ADDEEB51C630853DF0E628928
          63413325EBDFA0DCB6F8B66F5AA7DC470526657DE2C90DAC5A54CC44A23C25BB
          392D78BAEF7D0598CC4A3099B2F8F55B5D18CBB631AFF110B9454B319B4DA991
          52EB7E974094F08BD75E439460CC2DE057EFFE03915E942844C9E4B52CEAD635
          7D1BE0DF3AD945B657AFD0350000000049454E44AE426082}
        ImageHeight = 32
        ImageWidth = 32
      end
    end
    object Help_List: TAdvPolyList
      Left = 35
      Top = 32
      Width = 443
      Height = 804
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      List.Appearance.Normal.Color = clNone
      List.Appearance.Normal.ColorTo = clNone
      List.Appearance.Normal.ColorMirror = clNone
      List.Appearance.Normal.ColorMirrorTo = clNone
      List.Appearance.Normal.GradientType = gtVertical
      List.Appearance.Normal.GradientMirrorType = gtSolid
      List.Appearance.Normal.BorderColor = clNone
      List.Appearance.Normal.Rounding = 2
      List.Appearance.Normal.ShadowOffset = 0
      List.Appearance.Normal.Glow = gmNone
      List.Appearance.ButtonNormal.Color = clWhite
      List.Appearance.ButtonNormal.ColorTo = 15855597
      List.Appearance.ButtonNormal.ColorMirror = clNone
      List.Appearance.ButtonNormal.ColorMirrorTo = clNone
      List.Appearance.ButtonNormal.GradientType = gtVertical
      List.Appearance.ButtonNormal.GradientMirrorType = gtNone
      List.Appearance.ButtonNormal.BorderColor = 15592940
      List.Appearance.ButtonNormal.Rounding = 2
      List.Appearance.ButtonNormal.ShadowOffset = 0
      List.Appearance.ButtonNormal.Glow = gmNone
      List.Appearance.Down.Color = 7067902
      List.Appearance.Down.ColorTo = clNone
      List.Appearance.Down.ColorMirror = clNone
      List.Appearance.Down.ColorMirrorTo = clNone
      List.Appearance.Down.GradientType = gtVertical
      List.Appearance.Down.GradientMirrorType = gtSolid
      List.Appearance.Down.BorderColor = 3181250
      List.Appearance.Down.Rounding = 2
      List.Appearance.Down.ShadowOffset = 0
      List.Appearance.Down.Glow = gmGradient
      List.Appearance.ButtonDown.Color = 7067902
      List.Appearance.ButtonDown.ColorTo = clNone
      List.Appearance.ButtonDown.ColorMirror = clNone
      List.Appearance.ButtonDown.ColorMirrorTo = clNone
      List.Appearance.ButtonDown.GradientType = gtVertical
      List.Appearance.ButtonDown.GradientMirrorType = gtSolid
      List.Appearance.ButtonDown.BorderColor = 3181250
      List.Appearance.ButtonDown.Rounding = 2
      List.Appearance.ButtonDown.ShadowOffset = 0
      List.Appearance.ButtonDown.Glow = gmNone
      List.Appearance.Disabled.ColorMirror = clNone
      List.Appearance.Disabled.ColorMirrorTo = clNone
      List.Appearance.Disabled.GradientType = gtVertical
      List.Appearance.Disabled.GradientMirrorType = gtSolid
      List.Appearance.Disabled.BorderColor = clNone
      List.Appearance.Disabled.Rounding = 2
      List.Appearance.Disabled.ShadowOffset = 0
      List.Appearance.Disabled.Glow = gmGradient
      List.Appearance.ButtonDisabled.ColorMirror = clNone
      List.Appearance.ButtonDisabled.ColorMirrorTo = clNone
      List.Appearance.ButtonDisabled.GradientType = gtVertical
      List.Appearance.ButtonDisabled.GradientMirrorType = gtSolid
      List.Appearance.ButtonDisabled.BorderColor = clNone
      List.Appearance.ButtonDisabled.Rounding = 2
      List.Appearance.ButtonDisabled.ShadowOffset = 0
      List.Appearance.ButtonDisabled.Glow = gmNone
      List.Appearance.Hovered.Color = 9102333
      List.Appearance.Hovered.ColorTo = clNone
      List.Appearance.Hovered.ColorMirror = clNone
      List.Appearance.Hovered.ColorMirrorTo = clNone
      List.Appearance.Hovered.GradientType = gtVertical
      List.Appearance.Hovered.GradientMirrorType = gtSolid
      List.Appearance.Hovered.BorderColor = 6344178
      List.Appearance.Hovered.Rounding = 2
      List.Appearance.Hovered.ShadowOffset = 0
      List.Appearance.Hovered.Glow = gmGradient
      List.Appearance.ButtonHovered.Color = 9102333
      List.Appearance.ButtonHovered.ColorTo = clNone
      List.Appearance.ButtonHovered.ColorMirror = clNone
      List.Appearance.ButtonHovered.ColorMirrorTo = clNone
      List.Appearance.ButtonHovered.GradientType = gtVertical
      List.Appearance.ButtonHovered.GradientMirrorType = gtSolid
      List.Appearance.ButtonHovered.BorderColor = 6344178
      List.Appearance.ButtonHovered.Rounding = 2
      List.Appearance.ButtonHovered.ShadowOffset = 0
      List.Appearance.ButtonHovered.Glow = gmNone
      List.Appearance.Selected.Color = 4579838
      List.Appearance.Selected.ColorTo = clNone
      List.Appearance.Selected.ColorMirror = clNone
      List.Appearance.Selected.ColorMirrorTo = clNone
      List.Appearance.Selected.GradientType = gtVertical
      List.Appearance.Selected.GradientMirrorType = gtSolid
      List.Appearance.Selected.BorderColor = 5218510
      List.Appearance.Selected.Rounding = 2
      List.Appearance.Selected.ShadowOffset = 0
      List.Appearance.Selected.Glow = gmGradient
      List.Appearance.ButtonSelected.Color = 4579838
      List.Appearance.ButtonSelected.ColorTo = clNone
      List.Appearance.ButtonSelected.ColorMirror = clNone
      List.Appearance.ButtonSelected.ColorMirrorTo = clNone
      List.Appearance.ButtonSelected.GradientType = gtVertical
      List.Appearance.ButtonSelected.GradientMirrorType = gtSolid
      List.Appearance.ButtonSelected.BorderColor = 5218510
      List.Appearance.ButtonSelected.Rounding = 2
      List.Appearance.ButtonSelected.ShadowOffset = 0
      List.Appearance.ButtonSelected.Glow = gmNone
      List.Appearance.NormalFont.Charset = DEFAULT_CHARSET
      List.Appearance.NormalFont.Color = clWindowText
      List.Appearance.NormalFont.Height = -11
      List.Appearance.NormalFont.Name = 'Tahoma'
      List.Appearance.NormalFont.Style = []
      List.Appearance.DownFont.Charset = DEFAULT_CHARSET
      List.Appearance.DownFont.Color = clWindowText
      List.Appearance.DownFont.Height = -11
      List.Appearance.DownFont.Name = 'Tahoma'
      List.Appearance.DownFont.Style = []
      List.Appearance.DisabledFont.Charset = DEFAULT_CHARSET
      List.Appearance.DisabledFont.Color = clWindowText
      List.Appearance.DisabledFont.Height = -11
      List.Appearance.DisabledFont.Name = 'Tahoma'
      List.Appearance.DisabledFont.Style = []
      List.Appearance.HoveredFont.Charset = DEFAULT_CHARSET
      List.Appearance.HoveredFont.Color = clWindowText
      List.Appearance.HoveredFont.Height = -11
      List.Appearance.HoveredFont.Name = 'Tahoma'
      List.Appearance.HoveredFont.Style = []
      List.Appearance.SelectedFont.Charset = DEFAULT_CHARSET
      List.Appearance.SelectedFont.Color = clWindowText
      List.Appearance.SelectedFont.Height = -11
      List.Appearance.SelectedFont.Name = 'Tahoma'
      List.Appearance.SelectedFont.Style = []
      Fill.Color = clWhite
      Fill.ColorTo = clWhite
      Fill.ColorMirror = clNone
      Fill.ColorMirrorTo = clNone
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtSolid
      Fill.BorderColor = clSilver
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      ShowFocus = False
      BorderMode = bmTransition
      BorderTypes = []
      OnItemSelect = Help_ListItemSelect
      Align = alClient
      TabOrder = 4
      Visible = False
      BevelInner = bvNone
      BevelOuter = bvNone
      DoubleBuffered = True
      TMSStyle = 0
      object ImageTextItem7: TImageTextItem
        Tag = 0
        X = 3
        Y = 3
        Height = 38
        Width = 436
        Level = 0
        Index = 0
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'Support Center'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000005274455874536F6674776172650053746172646F636B2049636F6E44
          6576656C6F7065722076657220312E322E302C204275696C6420313036362020
          2D20687474703A2F2F7777772E736B696E73747564696F2E6E6574B521C47C00
          00086C49444154789CE5977B7054D51DC7BFF7DEB3EFBB9B4DC2868424F210C2
          23BC449E8DA8D81165B0653A68C7EA58A41D6B6DAB43530667505B8B281DDF42
          C74CC748508240D5764451C1AA850A128324929890AC6CB2796D92CDBEEFFB75
          FA079B183182F887D3997E67CEECCEDD3DF3F99EEFF9ED39BF05FEDFC55CEC0B
          7337EECBD7A979BFA268B72BA2104CC4A38F2807B6BCFFBD1828DFB8CF31C1EF
          DE5331357F6D54D470B42D82B3A14EE19A89FCCD8BC77B1A35830608217650CA
          301C6B310C744D35245595E24FFFF9DEE4B731402EF4A166D2B9334BBC6B57CF
          2E44675CC49948061DC4C94BB2F9C77472E8C9B6F6A03634D827A9AAA2332CE0
          72786C134A263AC6179778376FABCE302C1BD13529F8F843BF93BE9381494E83
          B40F88A8EB4C6030A320252A201C4130D41AA9FBB0E6A0A22A26009A1DC36201
          F00E8F3F70E592AB8AAF5A71E30D0F3FF9523891887DF6DCA395E6F90CEE9BE0
          8F3E555332D56FBFAE2941171E399BF08487447054453231A0162A3DCF25BADA
          1A74432759208B73DB39FCAA9ABA12EFEE68EF3CF6E1DB718F2F77FAB4193367
          309CB3B723D8AC5DD4C0438FD7AC70FAFCBF4D0EF54BF56FD7EE1810F5005804
          664F2C701612EDD3801CD9961728623A43ED2200138075DEA059231C0021D8D2
          1892152DB070F1F2B9F5274F74524335C6DC824D5B5F2484303FF7F8FC37B57C
          76F2C8BE9DCFBEAC2A6262FA8CC8E7D35CF3277066D13B7C4E4E31884D2F2D2D
          55BF29BDAC68D61C0098278EBC7DB46842C98DABD7FCF4EA03FB5E782F6B14EC
          E8192C4BD7F3BE9CDB9A1AEB3E7EE9F9BF54AB8A6800F08223A95CDED56A53C5
          A3765F5EB1EE1B3767774D957C11035FD33FF7EEFC78C6CCD9459EDCA292E167
          235BB071EBDFD6F21EDF6FBA3A830DBBAB1EDF4E2D7D384E31161DD04F7FD660
          CC5F7E9D4B77E7FDC4B0E74C1E37AB624F57FDE1AF15D58565A94E4F4EDEACF2
          B925679A3F6D1F49A0F2E1AA521B47EE52342573607FF51ED350149C8B50C2A8
          0AE72E9B17CF24124646B39673BEBC072F3501001004B1AFA0B03807800B00D8
          CA2D550CCB629DDDE92C696EA8ABEFEFE968C926F315380098067544A3D1B3A1
          D327371A60372DBBFFE50D976AE0CA451529A7C3C98C18A0269DC230CCB59665
          494DA78E9FCC4265648B64B4544D0D488A6289C9A11DED9F1CFD7D2A957A62D1
          FDAF3CB17453ADFDDB1A282A2C209465866B8F2100E6B1C45E188F0E857BC35F
          9CC982F5B126EB86393D99CC4422475ED10054B9F9CAA498119EF1E607965EBB
          79CF56AFC7F1C19B0FDC3CE6DCBC3B7794C6BF68150732AA0F9AAC66192CB118
          5A0C8663857442D414490260E0BCE801E0973B0EDA7A93CAA2FE9EEE86E1679D
          6F3CBD7755E58E58475ADCDB0FF2AEC971876E79EACDFD019FE3FDE7EF5AD905
          00651B6A17526A6DD47563119D3423DD2A39DADCE1700D0001004740E1A3A649
          1996E31886B128A5635636CB9239BDDDDDB3CA264F79F2C7F7D52DEBE8E9BF3B
          D4175D144E8B5E4910E5F460229274922543B9BE8A40BEDFB8F599B7BA2DA035
          A3585797E6F2853159415B6F124DB1F47C39C639C1388E80AA1A615956322CCD
          F2E5E5E57B7CF9B9422ADA33960151516F5329E72DBA6CEA9F5E7EF3C3993DC1
          B606C8E95DB0B47A70F641CE868C66B711A5DF991B7390D20E42565E366FE9BA
          9B2BE678CA0B3DE84E4890158A64468431A17C0DC64FBB05FDCDBBC9E060A46B
          DCB802C3EDC9C99959BEA0A2FEF8A1A6F3E1DBFE7162EA5BF51DF7A40499849A
          1A7B8D58F77D30E87174BC37929689733F1B09E80070AA64CD86775C9EDC2BFC
          4E7699DFC921EDB4C1E538776D300CC0174D5920F437EF669B4F7DDCA8CA7AC2
          D03473C19215D797942DCA1D0DFFC3CE7F8DEB8A8A35A160AB920A9EFC8571E2
          C59B103CFC9FD1F0B1644E5CCAF5A564A32E9CC047A1048E7524D09B9460992A
          5449C4B4A9933520DB905CB3EA679B2AAE5D75073535F1DF8D9F9F69A77E810F
          4C2A53E5E4605961DE94D860DFDCCE334D2BC563B5C72F043D5F8B2B773E1835
          ED8F047C6EC88A8A644684984E411792DA725F7C4D01310F1300686E385E3DBD
          6CC6BC4CEEE40AD715D72F59CC718825D28813A0B93B0653949A1C45539AC44B
          806F7FE1B5CB39A73BB2F7F3584B4B6470160340174450352DCC76A51E2BB06B
          A73493B3110088F587E37F7FF7F0AB37DEF7D8AD2B8B5DC8B1B3681B70A23E1C
          87A29990A935C714A24F00F8F585A05B9EADE55986B9DCEBF52EF0E5F8270DF5
          75F724DEF9EBEA784FBCBC6C61C555395E5E1FEF318FE5DBAD16833254550C6D
          E43A1EFF83D5375C1E70B30B8A79B8EC2C6C8443774242DF1081CCB200B0E6F6
          CA47F74E2918DF221BA6CEB21CCBB08CDB41084F08E7E5386E12CFF3D3780FEF
          CFA493A903AFD71E3B74607F9D28A424009DED878207EF5C7F9783321C6F5006
          9665255FDF5F4D0900CC7DE00DCE6D63CA0D55864979581685492D508B02B0C0
          510A8D23854E3E6F3BEFE1DB1C942A0C432C9BD3C6396D3693E3584B1625211C
          6A0F35357C72F2938F3E389D4A4663006CD9410118BB6A5E506F5F7F8FB6A7A6
          6AE4A02300206512964648A27580C0E120F0D908DA62227A533274DD8461EA20
          A6699A8A9816441B3128F598BA9A14D2A97057D7D99E4838D4D7153E1B8AF677
          F700D0B2507BF6FD578EE6D17060545B5E7A77F53A8FC7B52BDFE7066159A425
          154941842C64204B229C99DEC6405FDDBDC1B69698A6A92660C9D4B2C42C64F8
          E26271EE4830F00D47FAF91AA901C3D05E4DA6D41FA545652D0BC0B274989A0A
          5912C16862A2CC2E6CB3BC9E4E5511935920931DC38D8B892FFBC36FAD918E48
          6838A87B665F7FD0AE0C394D4D9E24CA8AD35445C96F0975F3DDA9CD13BDCC71
          774E9EDA7CFA542ABB3A1D5F466CE0CB66F49234E63FA31FDEB6A1D4C11AF339
          C692FCC40CB20C0CDD82C11276A8B6BAEA9256F89D0C0CEB8EF5BFE22CCAB94C
          C3B00C86CAAFEDAEBEE415FECFEBBF9B9A515CAAED83530000000049454E44AE
          426082}
        ImageHeight = 32
        ImageWidth = 32
      end
      object ImageTextItem9: TImageTextItem
        Tag = 0
        X = 3
        Y = 46
        Height = 38
        Width = 436
        Level = 0
        Index = 1
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'Report Bugs'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000005274455874536F6674776172650053746172646F636B2049636F6E44
          6576656C6F7065722076657220312E322E302C204275696C6420313036362020
          2D20687474703A2F2F7777772E736B696E73747564696F2E6E6574B521C47C00
          0008FC49444154789C8D97CBAFDDD755C73F6BEFFDFB9DF33B8F7BAEAFED1B27
          37718C892B35325594C46A83682A5530A1519010830831EAB0127F001595AA76
          C080116360005227304220152AA1164A10D1859008272669EAC775EEB17D1F3E
          F771CEF93DF66375F0FB5DDBD8AEC4918E741EBFBDD6777DD6DA6BAF2DFC3F5F
          97AF5CB1400EAC00432003E491B702B17B0378E01858749F01B8BAB9A98FDA95
          5FE24C1EF94F010B8C7C5DBF9D65D9779AA639CCB26C68AC5DB5D614AA244DC9
          07EFBDC2A1736E1062FC0BEBDCBF02D7813D20743613A02742EC539C1B4DE98C
          8808D0031C30F475FD2D6BED9FBCFAD5AF9E3BBC7FFFB9B5F5B3678AC170E4B2
          ACDF1F0C8AD1643234C68C8BD168FD575F7E79F5EEEDDB5F46B532D6EE016547
          2C57D5B1882C76A6539E10D0456E51FD12AA7F24221F02ABC1FBAF03DFB3D6AE
          ECDEB983AF6BEA6549535544EF89DE539525DE7B29170BF6EEDEC51893C7184F
          59E7B63AF33D4DE93BC07511D9DE994E9F24B0BEB121801391399050FDB318C2
          9AC0B77B45B19A524255C9B28C3CCF2906038A7E9F7E51906519CE5A1448B12D
          0397E7ABC137E78DB5B5A6F46D44FE5C8CF929E04F08B8A79440041A11B99A52
          FA2B54FFD4F57A2EA584CD329C73F4F29C95C984D3CFAC5314035413CBF982D9
          FE3EC65A96C610BC47555D9EF7BED8D4F50B2ECFBF0BFCEFE3CEFE0F819DE994
          F58D8D93DF27AF8E166FCFE9BDAE3613DB4598E739CF9D7F81172FBDC4787595
          FE7040311C325A9D508C8654E512DF78B25E8FFE6040AC4BF38DE2AED94AA30F
          23720FD807EAA7A6A04B8301863DC2E5DF5C9B7FFF599DE75BBE4FB419E3C984
          57DE7883B5F5B338E7B0D6816A4B26CB198CC73CFB2B170821707C7840737CC0
          2BB2C76B6B4B3BA9EE5FBE91261F26CC3E70BCBEB11176A6D3A716610E3C7F45
          A67F7CA1B77CF94B5F5897CB2B91D9DE9C591538982FE91705C568CC603C6230
          9960ACC57BCFC1FE3ED7DEFF6FF66E7CC67A33E3EBFD1D7EEB9553F872499FD0
          0F75339932BEDA512877A6537DBC0604181AF4C5B3B6FA4A915B39DADFE5FC85
          E7F9EE1B5FE4FACDFB7C76F32657DFFF8CBBEAA870787138228551D6FAF0D68A
          B27A49B9787E8D959517B875ED63AC13067D27E7ECF2D724E805456E008797AF
          5C498F0B30C0EA25F6DE7A66A0A7B2CC62ADE5686F8FE6F880CBBFFE355E7FE3
          F283875595BFFDCBBFE3F7BEF93B18F3B0A7A514F9FCA30FB877FDD3B6D0AC25
          CB94738330B97834FB8D9FB3F611701768CC63F87BC0E967CDE26BE3C21A6304
          E704672D26B3186B094D4D8A014D09110191CEB9A2291143430A816A7E88C92C
          CE5A9C6B9F19175636CCFC35E01C3000E451022702D687263EE38CC138106331
          56705668CA3959BF2005C16639068B2A688AA41888BE6909C480318AB342B0D2
          DA700167849109A7499CEA7C3D216020226732D1BE3560A4756E0D88B534CB63
          AC351DFE48D61F90B48BBCA989A115E0EB25C6592424AC09182B18B15813C844
          7B4041DB9ACDE302B25CFDC4199C180103465AE722502D0EC98BE241942EEF93
          544929E29B124D6D076C164774D941ACC54800036284CCA8CD89A306EB1E2700
          6087DAACE6162762DAE3504ED4097E79842F47189701109A821023BE5A12EA65
          272C522F8F5AE10F17B767B618728B1B683369A4C81F276080ACC68E02D6264D
          68525254628CA460085E58CCF6E80D571063410F0831313F9821A94153A25E1C
          916224F8480AB15D1BB5B585E293981A3BEA8AB0E7BA1D60804255DF5C90BFE9
          937892DA94204625C5448809131252D578BFDFE1071F22E57281C48A5097A82A
          242584764D8AA9B5915AE04D687C497645557F2E22DBEEA4FBA9EA5BA8FE36C6
          FCA4897A3919478AA98BC6604C448CB4798D86D0CC893EE27D2495737C5D3E40
          A99AF0BEA5107C6B23C544928C261211F93129BDA930775D967354DF11911F01
          E3B9D745CA86C3148E08C1604C424C020224C5E60630A8F7F898F0DE1362EADC
          2762D30AF03E114322442519476A228B682B0C0B11F927557DEBA406A218F387
          C059E0A5FDD0BB5E567EDDE403080D105AB4EA4809320563144D4DEBA86A48DD
          0E48491F44EE1B4FD3244280D41FB29CEDB09706DB18B611F95044FEDED1CE7C
          35B00B2C017753D6FEEDD2DEF4B54B179FCD62DD16956A2425B07924068B7186
          7E013E469226820F6DA431114224348A0F89A08AF44744DF70E738F99BB2F69F
          C00DE0363033DD701869E7B64360776E8B4F7716BA1FAA0AE94F88E4D441A8EA
          48B98C2C979EA60E1CCF1B7C482C170D5515A9960DCB8567B18C9475A20E4036
          465D0F7F7CC8BDD21E2E6DFF63E07360065406DA51F9EAE66697640E81DBD764
          FD875BDB7B312298E12A9AF5F049A8BDB2AC024D93880962527C84AA6A052DCA
          48DD40C062872BD01F110EF7F97C16E2C7B2FE2FC0CF68A7E4FAEAE6A63E388C
          1E5410CC81ADFB6EE5BD5B65B6757CEF2E2A0E3B3E831DAFA136232403C61093
          92921293A22234418838A43F209B9C46F321E1E83EF3E30537CADE9D03377E97
          764C3FEE52FFD4914C3B21EE9E4C8EC68BDDD74F9B456E872B483EC416635C31
          64D017E6A567EBCE9CE7CEAD301C15846C42BE720AD31BA0628987BB3447875C
          DD49E57BD9C5BF569177814F80B223CEE3044E281C03B7A2986BFF212FFECD47
          77EA506D5F27CE67A858342F08F998FB8B76EBCD1642CC2748B142348ED434F8
          7BB7A88F0EF89F9D18DF7317FE2189F9A08B7ED1F9E009028F500010545F6A30
          6F4FCDE4FDC1FCFEF9413CCE6C394353C2B88C8FAE6DD3F8C8B28133AB0362B9
          20CEEE120F7799979E6BFB5AFEBBB9F88F15EE39814D446E75C51E7FE950DA75
          C64C537A07F85D31E60751ECF4A659BBA6E5F2AC56E5EAD8D5667E70C0D66E05
          626802F4E31163B36431AFB8358BF1E379717333BBF88320F65D11F9A1AAFE3E
          3014914F80667D6323ED4CA74FBD179C0CA6AF22F2CF5DCE7C42D6FECB9CBF75
          2DD42FBF7AFBE61F4CFA32C89D735145721775FF38B13B4FF576D3FFFC13B3FE
          9332EB7D407B0FD8060C223F42F5B5768C7A78277DE272DA1D4C03E04C27E4A8
          C3D603D681E781E7054E175A9F2E5273AA11572F4C7F969023DA2D761BD8A26D
          6E15300226B40DEF80B6E1A5AB9B9B4F4CC5F0B033EE75DFDB5EDC6ECF39700F
          F854A1584AAFB7B4BDAC7BAEEE842E688BB8ECD6C1C346173B7BE9E476FC0B48
          D10E043E13D3DE0000000049454E44AE426082}
        ImageHeight = 32
        ImageWidth = 32
      end
      object SplitterItem3: TSplitterItem
        Tag = 0
        X = 3
        Y = 89
        Height = 5
        Width = 436
        Level = 0
        Index = 2
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        ReadOnly = True
        Selectable = False
        LineMargin.Left = 1
        LineMargin.Top = 1
        LineMargin.Right = 1
        LineMargin.Bottom = 1
      end
      object ImageTextItem8: TImageTextItem
        Tag = 0
        X = 3
        Y = 99
        Height = 38
        Width = 436
        Level = 0
        Index = 3
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'About Web Explorer'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DF080C1131225BC37F320000070E49
          44415458C3AD976B6C93D719C77FEFC5766CC7C4B143A009A9713C2E35AB563A
          58CAD0BA8821543A0D964DA3938ABA7D284274573626A4B288555327761585F6
          4B8B88D6AD942AB4CB982A3A313565FD402865D22EDC09892121908B13DBF1E5
          F5EBF79C7DF06BE3A4415CCA233DF27B8ECF73CEFF39CF39FFF33CF0E945B1F5
          9E8DEF461C8006386DD5EC39045000F2F677DE6EDF17000AA0ABAAEA13427881
          D9BB77EF7E2C1A8D8667CD9A15541485542A95E8EDEDED6F6F6F3F393C3C3C04
          E480B40D24F769B6575755D50F7CA6B3B373E7F0F0F069791B89C7E37D478E1C
          F91DF030300FF001FABD84C60934ECD9B3E747D96C7642DEA598A6993F74E8D0
          0B404451943AA0EA4E43A0E8BAEE2A140A4DE7CE9DDBBD68D1A2272BFF3C7565
          9CEED82467460D4633052410706B2C0EBA78FC412F2BC3C129935DBB76ED5463
          63E3264DD3AE5996950232B703E0009A474646DEA9ABAB8B963ABBFE7783DF9F
          186542B8706A0A204156CEA2600A895B1AFCE0F301363EFA4079C2C9C9C9E1FA
          FAFA758661F409211280712B002AD0303838F897868686650039B3C077DEEEE5
          6C4A4357E51DC54F48850697C9816F46F07B9C0024128901BFDFBF1618022600
          ABB46025187F7777F7F3A5C5935993557FBCC885948A86440AEE48152919CAE9
          ACFA532F4389E225A8A9A99977FAF4E95D408D7D30990E406F6D6D7DA4B5B575
          4BB12959F7662F19A1DF6211E596000CC5812F37895074D61DECC7302D00A2D1
          E857B76FDFFE254DD3DCF6212F0350809A7DFBF6ED28A1D9F1F72B8CE755A425
          91E293AA4849D0A123E5D4FE9CA2B3F5E3D7893B7D484B92972ACF1DEE2B7BB9
          6DDBB61D9665B901CF1400F5F5F5F32391C82A80C1892C07CF668A1EC99915A9
          D0E8AEC2B264B94FB32CDEEBFA1E0716AE45B544B15FC0878316FF1A48025057
          57B760D3A64DCB0117A0A9008AA2383B3A3A9E2AA17CE5C4281E878690729A82
          10C56F55824FD7706B1A9690D4A7C7E8E97C8657A36D8CB86AA6D8B93485574E
          8C957761F3E6CD6D3600870A28524AF792254B5696061C3E9B445AB2C8EA152A
          2D49ADC30116CCA97222243C12F4F3B5642FFFE8DACC47B3A3BCD5BC9A22D20A
          3B2179FF7286D2BD0D87C32B6C76D44B21700483C1450057E259D205D5F676AA
          4A09E339931573FCCC72E87C309A61E13FDF60D7E19F5270B8F9F1979FA7DA32
          CB0B0B4B966D354DE3E49549000281C083D30138BD5E6F00E0723C8F46D1DB99
          D430050E55E1F8F5142FFEB7839F9D7A0D805FADDFC5F239B57C718E9F70B51B
          0DA508DAB65325F4C5F3E5308442A1B980AADBFBA22A4A919326F3022940C8A9
          A46349A8F738995FE3266F49362CF1F18DAD3F870D27E8A87E945381C598C92C
          97C63353D84D56D04CD2B0CAAD4824E28EC5628A5AF19E0350A5AB53B64E0850
          515850EB61AED7896109AA5D0ABF5EDB009A83E3BB0EF0CBC51B69F0680C2473
          3043E884004B48DCFA4DDA191C1CCC03B2F44CE6D3E974CAEBF5FA427E278502
          E8150FA8292417473348205710FC61FD02008E9C4DB3EBFD04AB9B83F48E6568
          ACAEA2379EB5EFE954290849C8EF2AB7CF9F3F7F032894018C8D8D5DF27ABD4B
          17D4BB410A2CA1CE38C90B6BE612AA75F293BF5EA32796E5E139D55C4DE4B838
          9606945B6638D9BCC517425E002626266ED80F5241B5C3645CB870A1A734F889
          45BE626FE53594B0B4C1C3B32D419E7CF532EFFC6782A184C160D2C012128482
          32EDDA56DAB6CCF3E0B443108BC53E024CC02CB9996F6F6F7FAB04E0FB2B6793
          CE5945D2B189470AC94B6D8D7CEE37E738733D0B4222A5E4D248DA663C7973FC
          34354CC1732B6FE6099D9D9D7FB353B58252F11604FAFBFB8F8642A1A500DFEE
          E8E3782C0312F296646B6B3D2F7F3882A24C39DA0809B51E9D44B670CBDCAA39
          E0A0FB870B4BDB3F5C5B5BBB02B801A4D58ADB92DAB973E78B25BB8EA743A8B2
          E8A5CFA5F2D2B11B206FEE484941329E3167A0EDA26DDE141CFC6EB88C67FFFE
          FDBF5555D52825ABCAB47CA0F6E4C993FB972D5BB61EE0D288C1E3BB2FA0A9F7
          96F61BA6E4DD2DCD2CB70F5F7F7FFFA97038BC01B85E4ACD66CA88C22323231F
          D4D5D5CD03B83A9E67CDCB9748E6C4DD15109AC2BB5B9A59F2801B804C2633E9
          F57A57ABAA7A5E0831315342827D66AF3635357D3D994C8E0134D53A39DB1EE5
          D9150172790B6149FBB1F9A44A21C918164F2DF5D3FB8B687971C3308CD6D6D6
          6F699AD6278448DD362B76BBDDAE6C36BB786060E0406363E343953CF0E71371
          DE3B93E4DF0359AEA74C9030BB5AE7B38D6ED62CF6F1CC63413CCE9B7EC5E3F1
          EB2D2D2D4FC762B1D3A6698EDD4DC5E404E6757575EDB52C4BDE8B1C3B76EC0D
          E0215DD703761977D7A2020160597777F7EBA9546AF2768B1A8661F6F4F4BC1D
          8944BE62574655F7A536B43359DFC68D1B5BDADADA5A9A9A9AE67B3C9E80A228
          4A2693490C0D0D5D397AF4E8C77BF7EE3D6ED785E336DD5AF7B33AD66C75D99E
          69153C620259FBB770A713FE1F8AC387A22A2C46440000000049454E44AE4260
          82}
        ImageHeight = 32
        ImageWidth = 32
      end
      object ImageTextItem10: TImageTextItem
        Tag = 0
        X = 3
        Y = 142
        Height = 38
        Width = 436
        Level = 0
        Index = 4
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'About Plataform'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DF0906112C2EFFC496D1000002CE49
          44415458C3ED574B4F1351143EE7CEDC7B67CA74E64EA72D8DB414AC8F087161
          70EB0F307127FF01893B371A08093F40FD0FA871850B22896E60431416B2D100
          31111F91888105A5109C81CE1C3725C1F2680B1858F44B26F766927BEE3767CE
          E33B004D9C31F02487F317B2080808000C0090889031A633C614226600205179
          D20090DC3DB7F8E3FBF0EE5E3FCCF8F56B5D48448888B0B5B5C57CDFD7894884
          61C8A594BA1042047E10D774CD638CA501402162061195D5D2225C2FC16CDB66
          8EEDE8B6529AEBBA7C726262F9F7F2B2BFF79E7F0814F21D66B95C364BA592BE
          F473C92222238A2243086E1BA6694B2913827337226A0982C0E9BCD869653219
          D196CD1AB663EBA9545A24939E91F0922DADADADAE7295AD94726CDB762AFE7E
          F6F2F98B6F871200803B9AA639A9544AC4EDB823856171C1E34A39B15C7BBB99
          CBE66297AF5EF1A6DFBDFFFAF8E99385F1B76F6E2BA5E29665594208699AB118
          E2E1BF753B08C2EA77D5046E162E158CBEFEFE1B09CF33939E67B909CF8AC54C
          83EB3AD739E7A669C628229F003E7677777721229E24E0AA09FCE9E9E949DEED
          EDBD7594A188220200088220300CC3384920B3636506D1A9A5213BEB3AD024B0
          8F00FDC7CBA81E02820BAD9621C33078656D28030EB28D559570584AC952E9B4
          8CC2F04067308D61B158DC592FAE97B3B99CC43AFB09D3345C5D5909822088F6
          F682338F01A8F6C0D0C0E008D5C0EBB1B1490078400D62686070A490EF183E32
          06B677B6C35A447DDFDFA9AC7E231F78906D76AA02E118BDA05988CE2581DAC5
          104F2F52AAF580393B3BBBF96A7474EA2841C29021008094529E36810F8B5F16
          9D81878F3E1F25C96666A67F21009F9B9B9B6F4492511D04C6C33034D7D6D6F4
          D595D57DA2540891109CAB88C8C9B76553F7FBEE4D35224A85945ADD695F4396
          7321043FAE2CAF6B2EF8B4304F7BBC1601401900FCEAC18488300CC37F0693D2
          C686DAD8DC3C743069E25CE12F41F84C9CD8531C930000000049454E44AE4260
          82}
        ImageHeight = 32
        ImageWidth = 32
      end
      object SplitterItem4: TSplitterItem
        Tag = 0
        X = 3
        Y = 185
        Height = 5
        Width = 436
        Level = 0
        Index = 5
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        ReadOnly = True
        Selectable = False
        LineMargin.Left = 1
        LineMargin.Top = 1
        LineMargin.Right = 1
        LineMargin.Bottom = 1
      end
      object ImageTextItem11: TImageTextItem
        Tag = 0
        X = 3
        Y = 195
        Height = 38
        Width = 436
        Level = 0
        Index = 6
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'Check Updates'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DE0907152601DA135F1E0000081B49
          44415458C3D5577B8C5F4515FEE6CC9DB9F7FEDEFBEAF605A52D5D282DD4B216
          682DC59208693545038A1110A331B188100A11A9C66034506204148201051114
          A909D8622D8AD096525A9796F2E8FBBD2D6CB7BB65F7B7FB7BDDD73CFC63975A
          D86D81FA87F124F78F3B7326E79BEFCC7CE70CF03F3676B2C92F3CB8112B6E9C
          71ECFFCB8FBCE9736646EE391AD4E9A07F725C2E3698A8C21C91EA92A9D49ECD
          4BAE7C1D002EBC6B2DDA16CFF9EF005CFBC48EB37ACBE16C6692CB1D4ED31CCE
          5A1C6218F8088C0861AC104409CAB50061184101E032B51A8CEEDF70FBACE7E6
          DEFB2FAC5E74D12933909D72F5ED3BC7CEFCD22822620E67900E472D08D1DBDD
          896AA502E20EB8EB810B0F8C0BE824C4D8D1A34104286D0F8489B9F6C55B2E5C
          FFD95F6CC09A5B670E1B84861B9C76EB530050F626CEBCBB5CADB24819D46283
          7D3BB7A27DCB6BA8967A4144E052823B2E487AA81CDA0A99CAA1166B1863E14B
          3EBE2E2D5EBDE2A14D0FAEB97526E63FB0F1933130E327FF7C82885FC71C0966
          1214F76E06630CDC4D818407727D70E981A48FCAA1ED10E93CDCFA31107E1A29
          E9202D099EE420C61029B3FAD9EFB45E3AFF818D58F9BD191F0DA0F587CBEF05
          D82D8C0B0016E5F6B7C048805C0F5CA6C0A50FEE0D00B13AC1BB2FFDCEA6469F
          C5B8F4ACCC352235EA4CE4EBEA5956307882C000848979F6D985AD579E948196
          EBEF41AA69DC5C30B68A3807E302D58E5DB01603415D1F22530F922E1897E0AE
          8F8E971EEFD37150700BCD3049049344D07100991F619BA7CCB263C7B7508A5B
          C4C62088F5B79EFBEE8CC74ECAC079373DDECD889AC00554AD1FAA52040DEE58
          661BD1BD79250AE3CE4566622B1C22ACFBFEAC46004EFD9439B37313A6DFE416
          46CDD12A844D62E8B00AB7D064A6CE9E47BEE4A8460AED3D35F9C68FE624430E
          E139DFFE15A6DEF0F002AB9326AB15AC8AA16A2590F006769E2EA0EBB5E7CAC5
          2D6B2FEF7E7BCD164F4A24E59E3F03E801D0D5BB6DED33ED7FFDE5A5BD3BD65D
          EF169A8DD73006FE8871B096D15B2FAFB051ACACE484C68CBB64D85BB0FD3737
          C16A7583B106C62898A80A7224C8F5E1F879F4ED6AEBEE58F5784BB573F70B7D
          3B5F5DD0DFB11BB5F7DE7DF44304EAA39B563CD1B5E12FF39C541E22DB00996F
          8248E7D9D68DAF5822B2C6DA9B8F5FC08FFF696A9DFFE4B19C180D700EEEB8D0
          51051D6B9E9C9E947B0E01808EAA7D75532E19B3ED911BEF1FEE10D78EECDB57
          7FCEEC825BD77C11172EC8910018AB05A1C9E4EB78E1A2AB5F8D4BDDFB6B9D7B
          FFC3C0A46B7E7631E31CD65AC01A58C640C4C11C81A878E4BE6AC7AE3DC707D9
          F1DB9B178EBF62D109AFF18EC716FD80840FEE6721D2058874019572898C3106
          565FFEDEE6BF7F30058CF80C226119D10088F7CD1A1CDDB472C93031F481E5F7
          DA93286904AB5791F4C0FD2C9C741E6EB69E95FA8A8681CE1FAA844637314768
          E2028C3B6044B0603049DCDDBF6F53F7A9543A72E42647B8703D0FC2CF80FB19
          286D0198E6F77D9C63CEC2F5191131F2C07402A315602DACD5FB4EB5D47266F3
          9E601044881910311F8AB8A3E3800F01C0B8E8372A6622530793C44012C11A05
          6630E25401904E2E909C20388113408C212617411CF60C498135BA5DD54ACCF1
          7296BBFEA0E6BB605C4E9C70D5627EA2202DD7DD3D646CD49CAF41369F9D771C
          67BA27089E20B882C3178494E46030878600088EEC7D997181A45634DCCD80BB
          A941DDF7903DED9C5B4E0460F79377E0DC850F9D7FFC58E7DAA73066D6820773
          8D23E10A82741804679082E0090EA3E2F543001C7CFED7FBAD51BD41D74112AE
          67B8971E60C1F541D2FD79EB1DCB0BAD8B970D0BC268BDDE6F385D8EBEE41A00
          40FDB997CE6B3EFBD3D74AA6C1191B547C064E0C440C07DA5E58316C3F90947B
          1E2547B0DE5D6DD6F77DEBF81970370D2E53B0D0DBDC4C839C7EDB9F8EF94FFA
          EA9D387FF1B2A9D933A6B94EB6B0F4F0CB7F4461D2855F19396DEECAD1674C82
          746820EFCA20D1064A598495D2F69E171F6A1F16C081E5F72DD1710863343FF2
          F65AE3394C4B2F0DEEA5C1657A54542DF6939BFEFCFBFE7B9EBE1326ACDEA082
          321A3F75D917FDE6091B46B67E6EE9A48B17C0E580430CD65A5442855AAC1128
          83EE77F6FFF4A4D5F0F4790BEFF21AC6DE015818A56CFDB8C9263D6A028561CC
          741CC0C4218C49BA4D1C3F6D8D7A5D87954745A6DE91B94644BD87D1707A0B7C
          0E78922039A12F5028470AD65A2441655FDB8F2F3BF3A31A1236FE8A453B9D54
          BE65F076008049359D06991F61E0480E6374D4D7C582EE762EF34D10993A387E
          6EF0E07A708503CF2168A3D1D75F060360AD46C7AADF4F3FFCCAD36F7E644744
          C21B336EDEC26D4E2A970763002C2C1860CD80382985F23BDB911B7F1E646E04
          1C3F0BF252E0C2030917DCF501AD10F47602D602B0E8DDBEEEBA77FEF1F01F3E
          764FE8A4F2678E99FBF55764AE6124090F8CF8A0321A843DEF420565A49ACE80
          C837C1F152608E071212E4489824425C3A0AAB12189D84C5EDEBBED1D5B66CE9
          C7EE8A0140D5FAF71EFCDB0393AB87F73E6FB502E302E4A7016B91548AE0D287
          3109741CC0683D5041558CB8FF28A26227745843522BA177DBDAD55D6DCB967E
          A0C09DA81F18C692F2C1B7D7553B7797B8F4CE167E2E13977B615504EE65C1A5
          0FE20E18633049041594A1C2327450850E4A5041098C6842FAB4C9C5DBBE79D5
          6B9FF86936389F01301AC0543036AB30E982CF887CD33837DB50CFFD9C24EEC0
          A8D8A8B05A4E2A3D7D3A0A2B3AAC14E3D27B3BE362679B0A2BEB01EC9F7EFB33
          E11BF75CF989011CCF940F2007A000A001401D80D4E09C025003500250015004
          D007A00A2006604FE9717A9235744C5F3FA4CA83C10CFE5FECDF383C70B5DE2B
          4E4F0000000049454E44AE426082}
        ImageHeight = 32
        ImageWidth = 32
      end
    end
    object leftbarbuttonPanel: TPanel
      Left = 34
      Top = 32
      Width = 1
      Height = 366
      BevelOuter = bvNone
      Color = 15921906
      Locked = True
      ParentBackground = False
      ParentShowHint = False
      ShowCaption = False
      ShowHint = False
      TabOrder = 7
      object leftimagebavel: TImage
        Left = 0
        Top = 0
        Width = 1
        Height = 366
        Align = alClient
        Picture.Data = {
          07544269746D61703A000000424D3A0000000000000036000000280000000100
          0000010000000100180000000000040000000000000000000000000000000000
          0000D4D4D400}
        Stretch = True
        ExplicitLeft = -509
        ExplicitTop = -19
        ExplicitWidth = 510
        ExplicitHeight = 385
      end
    end
    object Extras_List: TAdvPolyList
      Left = 35
      Top = 32
      Width = 443
      Height = 804
      HorzScrollBar.Visible = False
      VertScrollBar.Range = 442
      VertScrollBar.ThumbSize = 366
      VertScrollBar.Visible = False
      List.Appearance.Normal.Color = clNone
      List.Appearance.Normal.ColorTo = clNone
      List.Appearance.Normal.ColorMirror = clNone
      List.Appearance.Normal.ColorMirrorTo = clNone
      List.Appearance.Normal.GradientType = gtVertical
      List.Appearance.Normal.GradientMirrorType = gtSolid
      List.Appearance.Normal.BorderColor = clNone
      List.Appearance.Normal.Rounding = 2
      List.Appearance.Normal.ShadowOffset = 0
      List.Appearance.Normal.Glow = gmNone
      List.Appearance.ButtonNormal.Color = clWhite
      List.Appearance.ButtonNormal.ColorTo = 15855597
      List.Appearance.ButtonNormal.ColorMirror = clNone
      List.Appearance.ButtonNormal.ColorMirrorTo = clNone
      List.Appearance.ButtonNormal.GradientType = gtVertical
      List.Appearance.ButtonNormal.GradientMirrorType = gtNone
      List.Appearance.ButtonNormal.BorderColor = 15592940
      List.Appearance.ButtonNormal.Rounding = 2
      List.Appearance.ButtonNormal.ShadowOffset = 0
      List.Appearance.ButtonNormal.Glow = gmNone
      List.Appearance.Down.Color = 7067902
      List.Appearance.Down.ColorTo = clNone
      List.Appearance.Down.ColorMirror = clNone
      List.Appearance.Down.ColorMirrorTo = clNone
      List.Appearance.Down.GradientType = gtVertical
      List.Appearance.Down.GradientMirrorType = gtSolid
      List.Appearance.Down.BorderColor = 3181250
      List.Appearance.Down.Rounding = 2
      List.Appearance.Down.ShadowOffset = 0
      List.Appearance.Down.Glow = gmGradient
      List.Appearance.ButtonDown.Color = 7067902
      List.Appearance.ButtonDown.ColorTo = clNone
      List.Appearance.ButtonDown.ColorMirror = clNone
      List.Appearance.ButtonDown.ColorMirrorTo = clNone
      List.Appearance.ButtonDown.GradientType = gtVertical
      List.Appearance.ButtonDown.GradientMirrorType = gtSolid
      List.Appearance.ButtonDown.BorderColor = 3181250
      List.Appearance.ButtonDown.Rounding = 2
      List.Appearance.ButtonDown.ShadowOffset = 0
      List.Appearance.ButtonDown.Glow = gmNone
      List.Appearance.Disabled.ColorMirror = clNone
      List.Appearance.Disabled.ColorMirrorTo = clNone
      List.Appearance.Disabled.GradientType = gtVertical
      List.Appearance.Disabled.GradientMirrorType = gtSolid
      List.Appearance.Disabled.BorderColor = clNone
      List.Appearance.Disabled.Rounding = 2
      List.Appearance.Disabled.ShadowOffset = 0
      List.Appearance.Disabled.Glow = gmGradient
      List.Appearance.ButtonDisabled.ColorMirror = clNone
      List.Appearance.ButtonDisabled.ColorMirrorTo = clNone
      List.Appearance.ButtonDisabled.GradientType = gtVertical
      List.Appearance.ButtonDisabled.GradientMirrorType = gtSolid
      List.Appearance.ButtonDisabled.BorderColor = clNone
      List.Appearance.ButtonDisabled.Rounding = 2
      List.Appearance.ButtonDisabled.ShadowOffset = 0
      List.Appearance.ButtonDisabled.Glow = gmNone
      List.Appearance.Hovered.Color = 9102333
      List.Appearance.Hovered.ColorTo = clNone
      List.Appearance.Hovered.ColorMirror = clNone
      List.Appearance.Hovered.ColorMirrorTo = clNone
      List.Appearance.Hovered.GradientType = gtVertical
      List.Appearance.Hovered.GradientMirrorType = gtSolid
      List.Appearance.Hovered.BorderColor = 6344178
      List.Appearance.Hovered.Rounding = 2
      List.Appearance.Hovered.ShadowOffset = 0
      List.Appearance.Hovered.Glow = gmGradient
      List.Appearance.ButtonHovered.Color = 9102333
      List.Appearance.ButtonHovered.ColorTo = clNone
      List.Appearance.ButtonHovered.ColorMirror = clNone
      List.Appearance.ButtonHovered.ColorMirrorTo = clNone
      List.Appearance.ButtonHovered.GradientType = gtVertical
      List.Appearance.ButtonHovered.GradientMirrorType = gtSolid
      List.Appearance.ButtonHovered.BorderColor = 6344178
      List.Appearance.ButtonHovered.Rounding = 2
      List.Appearance.ButtonHovered.ShadowOffset = 0
      List.Appearance.ButtonHovered.Glow = gmNone
      List.Appearance.Selected.Color = 4579838
      List.Appearance.Selected.ColorTo = clNone
      List.Appearance.Selected.ColorMirror = clNone
      List.Appearance.Selected.ColorMirrorTo = clNone
      List.Appearance.Selected.GradientType = gtVertical
      List.Appearance.Selected.GradientMirrorType = gtSolid
      List.Appearance.Selected.BorderColor = 5218510
      List.Appearance.Selected.Rounding = 2
      List.Appearance.Selected.ShadowOffset = 0
      List.Appearance.Selected.Glow = gmGradient
      List.Appearance.ButtonSelected.Color = 4579838
      List.Appearance.ButtonSelected.ColorTo = clNone
      List.Appearance.ButtonSelected.ColorMirror = clNone
      List.Appearance.ButtonSelected.ColorMirrorTo = clNone
      List.Appearance.ButtonSelected.GradientType = gtVertical
      List.Appearance.ButtonSelected.GradientMirrorType = gtSolid
      List.Appearance.ButtonSelected.BorderColor = 5218510
      List.Appearance.ButtonSelected.Rounding = 2
      List.Appearance.ButtonSelected.ShadowOffset = 0
      List.Appearance.ButtonSelected.Glow = gmNone
      List.Appearance.NormalFont.Charset = DEFAULT_CHARSET
      List.Appearance.NormalFont.Color = clWindowText
      List.Appearance.NormalFont.Height = -11
      List.Appearance.NormalFont.Name = 'Tahoma'
      List.Appearance.NormalFont.Style = []
      List.Appearance.DownFont.Charset = DEFAULT_CHARSET
      List.Appearance.DownFont.Color = clWindowText
      List.Appearance.DownFont.Height = -11
      List.Appearance.DownFont.Name = 'Tahoma'
      List.Appearance.DownFont.Style = []
      List.Appearance.DisabledFont.Charset = DEFAULT_CHARSET
      List.Appearance.DisabledFont.Color = clWindowText
      List.Appearance.DisabledFont.Height = -11
      List.Appearance.DisabledFont.Name = 'Tahoma'
      List.Appearance.DisabledFont.Style = []
      List.Appearance.HoveredFont.Charset = DEFAULT_CHARSET
      List.Appearance.HoveredFont.Color = clWindowText
      List.Appearance.HoveredFont.Height = -11
      List.Appearance.HoveredFont.Name = 'Tahoma'
      List.Appearance.HoveredFont.Style = []
      List.Appearance.SelectedFont.Charset = DEFAULT_CHARSET
      List.Appearance.SelectedFont.Color = clWindowText
      List.Appearance.SelectedFont.Height = -11
      List.Appearance.SelectedFont.Name = 'Tahoma'
      List.Appearance.SelectedFont.Style = []
      Fill.Color = clWhite
      Fill.ColorTo = clWhite
      Fill.ColorMirror = clNone
      Fill.ColorMirrorTo = clNone
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtSolid
      Fill.BorderColor = clSilver
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      ShowFocus = False
      BorderMode = bmTransition
      BorderTypes = []
      OnItemSelect = Extras_ListItemSelect
      Align = alClient
      TabOrder = 5
      Visible = False
      BevelInner = bvNone
      BevelOuter = bvNone
      DoubleBuffered = True
      TMSStyle = 0
      object ImageTextItem12: TImageTextItem
        Tag = 0
        X = 3
        Y = 3
        Height = 38
        Width = 436
        Level = 0
        Index = 0
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'Activate New Resources'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000005274455874536F6674776172650053746172646F636B2049636F6E44
          6576656C6F7065722076657220312E322E302C204275696C6420313036362020
          2D20687474703A2F2F7777772E736B696E73747564696F2E6E6574B521C47C00
          00075049444154789CAD97796C14E719879FD9D9993DBD87CD1A1B820F301803
          C1D480A19C26102EA555A9A242D2109A3634B40894566A54955451AB46D04689
          68A954DA84925095CB09A709E106E1DA602E6330061B6C636C6C7CAF77BDF7CC
          F48FE5705C87B555DEBFE6D5CCA7EF99DFFBFBDE7746A057FC76FDC6E1C39292
          E7292869492E97C5EFF7B59597569C78FFFD5F5F04C280DA7BCDFF1342CF645F
          C1E1D18525D73EAABD5B376EF6B4499D168B39D9667318059DE0BD76FD6689A5
          E1CBB291C99619B241B6037A4241A5C9ED3D5379B7EDF01F775C2CD4C03F5040
          B167326A7CEE7B45C5E7F3FE73F4F3955D9D1D774281705BC81F103C3E6FBCC9
          649B78CF6799352C514EFB4E762879E408FBE0914991A474B367AA4BF2BF2605
          DCB9B71BC357022AEE8140E87B26014F7BF0F5E5AF0D4D75C5FDEC976FBF3D63
          CCB8314E49AF139A9ADDDAB6EDBBF1A91225ED69341ED3C28D57CF348C4F950C
          D3D314E794F146E3E4C4E1F392CCB777BE773CF026500A04006D400AA4A6A684
          264E9EBAF4472B5E1F9B3122C5FCF1D61DC1DFAD7B277CB1F8B85EE96E111E34
          35D0DAE567C1CB3FD5557A0DC1DF6FCEFF77FEF9B6928949719929A97AF3B713
          F4AE8AFACECC8A56CE025D80120B40D7331933266790592F68C9890EE1ADB5BF
          F1FD62D5F273B9E9C18E7F6C7C55182E5487BEFA62FB25D480EF41F33D61D5CA
          9F274D9EB5685242DA88064FFA6C03494EE40427AB663A7397CD70AE06127A2B
          FCD412BCFAC69A4C83D1BA66C18BB3CD9BB76C0F9D3C7D5ACEFCD6EC29D317CE
          137158D9B2F7D2BDE1D9536BD54824B3E45C9177F4A86CEBE29796CC14DC6593
          16AC586225F231186D4CF02AB2EE7A5D16900CB88148FF1450B59CDCDC9C1C80
          BFFEE5CFF54AA0F5D82057BCC7A50FCAAD4567B40EEBA854BD7DE8F7AB6F961D
          DBB37BDB97F50D75B85CC9E2F0EC6956A43098C2302A19D9E8C4AA27F5A102C6
          7E2BA0684A4A72D22043C5ED4622E150A7DFD37DD226F9EB86E87D6FF9EED40B
          43AC6AABDFDB70CEE7719FCB9D3076ACC7E32122D8E9AEDE0DAD0D6091A04B43
          F575105105E1E1E6FD2F8120E84CC140088B3D8ED56BDFCDCE1E376CC4B4A939
          A2A01348D0891C5CDC921052C417422169EE8D1B9571BE30D4B77BD13A6BF05D
          7D803C2205A5BC9DD6FA26421A7EA23D46F8E6AD7B0184FCBE4BB5750DDD2F2D
          CA708CCE1A271AAD16FBF9CB75088A1E4110408764B39A2593AC63F0A0617843
          1ECA6E5661B518213E1EC56F206453A9F32A1151D27510AD7DCC53F0A404E170
          4341C157C5769B6D91DD9E40678707011D924E014D4043C36230A08A616C0E13
          4AB7464B430579398D9853D34130211A0D5C09C6FB32D3AD46CEB48519481FB8
          75B3ACD5E670B66848731213936DA22863311A8977DAB0C599311A6434341040
          324ADCBA5D43D3C5CDBCB9320B141BA0E07DE0C67DA55988204987AE341D001A
          015FBF0000ADB6BAB2513698BB228A363B63788A6CB73B115415832C63775848
          4CB253557B97C292CB9CCADFC0DA17C318B47484900782F5F8BBC3187D263123
          A15B9F96E89874F45ADB01C0F3B45288BD72E5CEED8ACA6EBFEF7E47BB3B6BEE
          9C3CA7A8930549D661B598707B3DFC61FD06E5C0A7EBBB66C5D7040C9170B8F2
          6AB9B6E3D30B752F8C71384E16DC159E5F3602B545D28F7285ED692E7BDE91B2
          B6434487549F107DB95407D880911B3EFC7BC982BCC574793D74B85BB4FD070A
          84AD9F7CF005502C408B161DCF02A0EE5A3376C7F7E699B523279B85396F4CC0
          57D84C40F3858AEBA85DF6C1D505C07D20D4D766BD4325DAC76F0034B7B692BF
          67174D6DAD8FEE9F014A3528060A81B340E1D24DE5E3F61DF7090BE7B838B5B5
          14EB640B29F1263918743B810C20AE2F05FA027804D10DA0D347454A1932EC91
          5A3EE01E5003D43FBCAE07EE2CDD549EB5F7849FF9134DDA89ED55A8CF3B189F
          64B0ED5A37F5B3FC5F8DDD0BC403727F001E87C9600040141E574B212A6584AF
          1FB30050BB745379D6FE0BA2B0604A1C87B65430E195F1861FCCB70F697EE04E
          073201EB800082A130A24E24A8C4EC295F83D857AC31778A4D3BB8B1046485C5
          DFCD8ADFF3EEFCFC4D3F19B915700252BF00143444BD88518A3957FE07A2A058
          15E64F8FE3E0CE2AD2061BCD4B96284313EAAAA6FE6945C6762011906202E804
          1DB26CA4B2F2D62307C7EC6E3D21F69FD5C84BD5B4839F97A19536F0CA873989
          3943AC0B7968CC98D34A1475887A910BE74E377FB6ED6FBB89CEF8E0402036FF
          38F3B0D3A24FCB2F054A1F2F1D0254C704902409491459B4E4E5E7B6EFFCC41C
          0E851B016F3F001E43ACFAE7ADF944DF78104F9A5F07108E09A0A2A1D74B149D
          3AED0E87C206A26FDF2F47F680B80B7402269EF82E0074C604080402C84609AF
          A7B35DA713AB5575207B3F8E10D0D2D78DD8C7D01740D4E9F9E1F295A9AAAA38
          78C67F474F055094484D75CD1D6449A2F8F22595A87124FAF1A5F34C00D6BDB3
          7A6669E91554058A4E1F6922DA7EC558EB0612BDC771EF08955E2EFA97CDE19A
          555D75BDF141F3FDA3402DD0CEC08CF88DD11F298DC073C068A247A71268E319
          F9A0BFB59401CBC3E7BB89BABA3F1D3166FC17079A00862FA9C82A0000000049
          454E44AE426082}
        ImageHeight = 32
        ImageWidth = 32
      end
      object ImageTextItem13: TImageTextItem
        Tag = 0
        X = 3
        Y = 46
        Height = 38
        Width = 436
        Level = 0
        Index = 1
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'Get More Widgets Online'
        DescriptionMargin.Top = 0
        Image.Data = {
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
        ImageHeight = 32
        ImageWidth = 32
      end
      object SplitterItem1: TSplitterItem
        Tag = 0
        X = 3
        Y = 89
        Height = 5
        Width = 436
        Level = 0
        Index = 2
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        ReadOnly = True
        Selectable = False
        LineMargin.Left = 1
        LineMargin.Top = 1
        LineMargin.Right = 1
        LineMargin.Bottom = 1
      end
      object ImageTextItem14: TImageTextItem
        Tag = 0
        X = 3
        Y = 99
        Height = 38
        Width = 436
        Level = 0
        Index = 3
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'Open Widgets'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DF021B031119E790B22D000002CA49
          44415458C3EDD63F881D551406F0DF64DFDB2D12F3C76496555151C1221A35CD
          C8168216318A88A0A4D442A3A8A38536A295200862138B29442B2B91586B2116
          C64206D13244D0CA7F7817351B5D4DB26FC7E68CDC7D6CE2E6E946C13D70B9C3
          CCBDE73BE73BDF3D77D8B44DFBBF59D3A655F3BF017C73D3A687FAF75B2E0668
          D8C1A64D1FE213DCDEBF1C6C14705D9530D3B4E9313C8EDD58C169ECDCD00070
          43D3A667701FCEE02C96B02BBEEFFEC702E8B36DDA54E0513C89EB700A23FC8A
          0EB3C1C01097FE2D0D8CD5767FD3A63771122F610F7EC60CBE8920E682851EEF
          B28918C86ABBAD69D323780257E0A718458C4BF0394A5C85C5C02AC2D5CE7533
          3096ED81A64DEF6201CF47963F06C52B01B00DC7A2DED707780FDCCF534D9BA6
          D7CBC0354D9B1EC6616C8D4CBF8A6F5D36B6477D3F08566EC47791E454CC4516
          C42CBE1EAC41AFA64D433C18A2BA2584B4889439C86D2EEAFE11AEC63CBECDD6
          76A1852202398DCB570580BD4D9BE6B11F0F603A16FF10022BD6001F86A32F70
          3C32BF0DDF07A86C5F1F4487DF226883A64D37E18EA8E567780F2F6462D98BFB
          63CDEF59463BE2387D1A6A9F8B350B01945B1FCC28FB366B3CA3B132F4E7BB9F
          0FE1956828B391FDC7519A3DB8339E4F8D818F33D707F3465D952F16E7507D51
          5765B746B3B917474388C7E26CEFC25DB13465B59E8AE7E5B1607ABFEFD75579
          B8C841A3E65BEAAA3C7B9E63F95A64DC67B6035FE2D52845177D600EFB700F0E
          C6F695CCD5F1BA2A0F0CA285F6E0DD58C46BB1F31CDEC12F38114E8FD455B998
          2D3D19E3048E366D9AC1D378360BE2DA3F35D0B46915E5EB684E4F8583051CC1
          52AF9DBFB82FB64709F7450FBAB298F01EB81577E3659C391FF83904FE3A0E61
          BE98F0329A8A36BCB41EF06CDF3496EBAA5C69DAF416DE9EE836ACAB727421E0
          D97D328ADE338C2EBB75220626646D9875C25EF0DDC0C5B3E5105E87D185887E
          237E5037EDBF637F00D9931149C99F0D340000000049454E44AE426082}
        ImageHeight = 32
        ImageWidth = 32
      end
      object ImageTextItem15: TImageTextItem
        Tag = 0
        X = 3
        Y = 142
        Height = 38
        Width = 436
        Level = 0
        Index = 4
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'View Plugins'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000003894944415458C3ED96CF6B1E4518C73FCFCECC267993F74DDE98DABE
          3648912A78919242AD5A1505A950F0A278CC45412A14FF01AFDE851E82A01E8A
          47AF827815DA6B3CD85B0F95D8141BF3BB6F937777E6F1B0BB6F36C9D6EC6BF3
          D28B7B99D99D2FFB7CE6FBCC3C33A2AA3CCD27E2293FFF03D83AA2ABDF2DCFAF
          75FD15EFF54DC04591DC9C6A443F7FF3E9730B009F7D7BEFEA7A37BC1F82BE0E
          24C6C8AFED86F969E193CE8D630130EABF9E1E8FDABB2980105BFDC0A85E0116
          009CE8F5E989C8F452019411CBC751F0EF01FF1D60FEFAFD0F811F01166FAF30
          35E168B76244607D2B616DB367E6BB46017EBBFD80762B66AAE95085B5CD1EEB
          DB497BFE912DB6D85737AE9DFA7220006BE4320222CA33D30DC6C71D6ECCB0F3
          C8E309A80AD60A00AA82C7904696D13143CB582297E01C681010DE1ED8016BE5
          1D45986A78C65F6AB2D90D747B819976CC0BA747193193AC3DCC002E5F3AC9AE
          D70A0DAC752304CE0FBC0BAC8DCE3A17716B7195BB4BDB981038356930217077
          699B5B8BABC42E223E4A630567A3B1CFBFFFBB55DB812F7E583FE7628BA0DCBB
          FF903F96421520E7CF59D02334AF182433EA22F04B2D079CE15D67046B226267
          2A1D8A9DC11921B64768E2086B23AC934BB51D3046DE820CFBD5B90E4BCB5BFC
          B5D2656BBB476B22E6C44C83D39D26D6649A0B731DFE5CDEE2C14A97CDED1ECD
          899867671ACC769A1823A080F05A6D006BA28B9ADB7366B6C9D9334DAC803582
          8DC01A30791F85E74F4CE25F6E917A4803A45EF3167C500280CA5C6D80DFEFDC
          3949F6EF7C9B15AD12347B5755341F0BAAF9B78A3E7DFD341F5DA80710421171
          AF5105A53A909281A17B90FBFA397C6D07BCDF13F7678F82923990FF50F37E08
          A5BE163ACD41F3490D0210D292B83CF392137D98523A42A8480BA0F9F7FA0EA4
          A11CBFEFC4A1B5900F84525AF65C2AA5A8948A9A00D56BA04845087BB6FA90AF
          F4A004CDC60AB0838BB83E404F2B1DF041497D20F58A0F8AF78F9FD9C0171211
          116014987DE3DACDBE20F581C42B699A057F928022F222B004EC68BE2D6C4569
          8E7D1AE8254A92067A69E0182FCEF1C1F27F104080918D8D84240DC3B8028E50
          D4F8C7004440BCBBE3877507FD5707A400D85707860320C5FAAE4A811B22803B
          2A0559E1F24303D0D2CE3E04A08007367478001B798C7E00294EA9BC0E38601A
          98CD5B774C81136035AF01AB4052D401291F93258891AA7C3DA1F509B05B0E7E
          08A004C13106DF57D5F540C07F00E9A02724A8D5DE2B0000000049454E44AE42
          6082}
        ImageHeight = 32
        ImageWidth = 32
      end
      object SplitterItem2: TSplitterItem
        Tag = 0
        X = 3
        Y = 185
        Height = 5
        Width = 436
        Level = 0
        Index = 5
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        ReadOnly = True
        Selectable = False
        LineMargin.Left = 1
        LineMargin.Top = 1
        LineMargin.Right = 1
        LineMargin.Bottom = 1
      end
      object ImageTextItem19: TImageTextItem
        Tag = 0
        X = 3
        Y = 195
        Height = 38
        Width = 436
        Level = 0
        Index = 6
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'Network Indentification'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DF021B031239F7D3C1260000075C49
          44415458C3A5977B7054571DC73FE7DEBD775FD9DDB0791320084D69AA051A28
          188642ABC15A950AA4091667B463ABA3B61A9D3E661C1D1D7570747C8C88E35F
          FA079D0EC5C4884CB582A6111049C142C1525EA1BC248190258FCDEE6677EF3D
          E7F847369040B390FA9BB9739FE7FCBEE77B7EBFEFEF77053759ED13CDD46C28
          0743880BED7D62F8E2653209AD4FEE7A45F31ED6D0D2455B5335EFD7C4F89BE6
          8E16DED9791C7FB969942E2A16BF5DF165298460D3C1E38FCD9896FC98DF520B
          049474C52CDD15F35DEE895B8740FFA5ADE9EEDD00CB7E7E89FDCFCDF8BF0008
          04C230B2C691439FE581A53FDB98CE96BF50392D29A256319706CAA829F631B7
          38C3810B01DACF841108CA8BFE39625BF11F6C5AF9F51F37EFDECCA687BE3675
          00CD1D2D00C6BDF39BF4E1036F3E38ADE8B55DA699F421B248A714A95DBC763F
          3D3DCFF0D56557D8772EC8C9AB5E223EC1E9BE00B32B5B49A666F4A5B3C5CB5F
          5A5D7FFA4E01186317D271C4A68F34A937F6763F5918DDB5C734933E215C7A7B
          9EE55CCF27184ADCC5F9EE06FA539A33319B3D670BE84D589CEAB310C2A57FE8
          3E6283B52595A51DA7BEF0DAF6E55362A0B9A38550A443745FF8FEDA68495B9B
          CF773EF74A131B9C4F41E03C7EEF1052DA9CBEF0244A8321264EE4F75D21E8EB
          A634FA6F5CE5E56A7FED8706E3F7BFD3D634F70E18100171F9D2F72A42857BC6
          398791D43C7CDE5E7CF630A97419A97439E182AE5B9C038CA42B880D2E269EAC
          E2DAC07CD2E98A03F0771A5A4EE407D0DCD1C2A6873FA54D4FDFF670F88D0971
          E9B17B19C986310C1781A4BB77158954D5245369943609FABBE98F2F209D2D09
          0AB172735B534DFE2DD8B0358D3F185B140AEF7E3358F0F6AD2BCB1471B9EF61
          B24E244798CEBBA3918293B8D24F45F13E92E90A7EFDDC172D0E0B775206B66E
          F0014EB3527E106AC24BA53C9CBCD040D629BC1E13F94D33307C2FB32AFE8AC7
          93A230749A2FFDA8E5A9DBC68010628D211CD00689F812465235B84E116F9DF9
          1C4C0E7E120C02A9ECD14B6DE2F7F7AECBF7B9E7E91D5D415021A982A452F790
          4C2E426B039FEF1C1A81D27A4AFE43C1B3988683D6A3F16D7B8697E6656020A3
          E78CD21D40C9308691C430D2B86E142347B99C04841E7FE8D1B3E549A0F58D40
          567822B7D902E14D6425997435200945F6A0940F21B2F8ED14A691C1913706C8
          9C23DB34985960525B62B16AA69747AABC846C03E5CC40881B034C239D97310F
          30E4281871B290584A41682F5EEF45B2D9E9789060F5917525AE0A52153279A8
          D2A2CC6F10B1145929515AA391A06149A99F9D97061954061E0152DA645D7F7E
          1D686BAAEE02484B4D229B253EB49251C60501CB6678A414832086102C2E36F8
          4048E03715294722B500045A43DA71184A0E535F16A53EFC192C5DC6C0B5350C
          0CDDDF7D3B06004E01F31C0543D90C41E12314384A347086A222413C359BC1E1
          B9682248A9904AE1B52CB4D6B84AA2B5C6B6ACEB2A111151D644D77344680EF4
          898E3B29462F8F7F98CC4470741ACBEEC3E7BB4A69F420D5552F635B83003852
          92CA647095C21006966912B06D0CC3C095926426C395A17EA2AA8FA52173DB53
          3BCEDE96815F003FBCAE67425232EDF04DED82C0E78D01D15C066894D628A518
          1A499148A741834A3BA3C1E7F5204C83424BC67EF7E939F919686BAA4E013FBD
          1EE9D24BC689DC22B32915C7232C101AF4C48A64088176245A69B4D2B82907E5
          4884109EB6BD07F303C8F5752F02DD0086E172BE7BDD04E915088EA53BD939FC
          12717AF19A5ED01A3D993C0B901917279179BC61C512FEF08F03F93BA286962E
          8062A007B0C60A4B45C9DE9B3B371492A011E61E7B19D5FE795C1D8E93CC6446
          BF7225D9F42DF2BDB3B1BEEED1D6D73B69FC68DDE43D610EC474E0B886884010
          F05DA26AFA9FD1DA9CA08186E1D27B6D3183434BB8AFD0C55592946B90969C5C
          164935789CECEB40F9B84171E0C1C6FABAFFBC674B968B05809E472BC345214B
          FC0934E96CF104651342339C9CCD998B4F101B588AD49A230326C7866CCE263D
          BFDCFC584DCD7F13E204300B786BDCF461E0686B7BE757005ADB3B6F053006A2
          3396945BD6DEB55640AD9481EDF1C45C409348CDE44AAC8E4BBD8F90750A1137
          CAF736A5E4ECB6A6EA6FAE7DE5042F7EB256034E637D5D2DF0DD9B5CFCA6B5BD
          F3E9C6FABA5BB760BCADFBFDBBF80209B6AE5E00C0C7B7243FECF7F62D340C77
          266807B8ACB57AFB8FEBE7EDBFDD0F4A6B7BE702E02060032AB7F0D2C6FABA3E
          914FA5967F7B0BFB367E3EAF96BF70E8596C15141B1FF849DEBADDDADE391B38
          07C81C806F00BF1253FC89D163ACCD2A2D36D73FF3BCAE5B56AFD6AD5AAC5BDB
          F78BC6FA653AE7CCCCC5C0226029B01C580C6446330C1BD8006C134CD11EFFDB
          6571F5E8BFECF2A02D565486B36541EFD8CA034005B020E7784EEE3E0A1402C1
          9C6301C41BEBEB2AF2C6403E5BBDE35DB1D01830E7F95CBC421B800FA8041602
          F372E95794731C0222B9F40E03AFE6569F78DF007ACE9FE1C2D5014F2CA544DA
          559E9C93C29C9095E7563E1D28CB81EB070E01AF36D6D7F5B7B67732960553B2
          AA9AF954DEFD41F1FCB7BE2376EF3FC8FE635D531A3F96FBE3ED7FC9A7211EE5
          BB2FD10000000049454E44AE426082}
        ImageHeight = 32
        ImageWidth = 32
      end
    end
    object Tasks_List: TAdvPolyList
      Left = 35
      Top = 32
      Width = 443
      Height = 804
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      List.Appearance.Normal.Color = clNone
      List.Appearance.Normal.ColorTo = clNone
      List.Appearance.Normal.ColorMirror = clNone
      List.Appearance.Normal.ColorMirrorTo = clNone
      List.Appearance.Normal.GradientType = gtVertical
      List.Appearance.Normal.GradientMirrorType = gtSolid
      List.Appearance.Normal.BorderColor = clNone
      List.Appearance.Normal.Rounding = 2
      List.Appearance.Normal.ShadowOffset = 0
      List.Appearance.Normal.Glow = gmNone
      List.Appearance.ButtonNormal.Color = clWhite
      List.Appearance.ButtonNormal.ColorTo = 15855597
      List.Appearance.ButtonNormal.ColorMirror = clNone
      List.Appearance.ButtonNormal.ColorMirrorTo = clNone
      List.Appearance.ButtonNormal.GradientType = gtVertical
      List.Appearance.ButtonNormal.GradientMirrorType = gtNone
      List.Appearance.ButtonNormal.BorderColor = 15592940
      List.Appearance.ButtonNormal.Rounding = 2
      List.Appearance.ButtonNormal.ShadowOffset = 0
      List.Appearance.ButtonNormal.Glow = gmNone
      List.Appearance.Down.Color = 7067902
      List.Appearance.Down.ColorTo = clNone
      List.Appearance.Down.ColorMirror = clNone
      List.Appearance.Down.ColorMirrorTo = clNone
      List.Appearance.Down.GradientType = gtVertical
      List.Appearance.Down.GradientMirrorType = gtSolid
      List.Appearance.Down.BorderColor = 3181250
      List.Appearance.Down.Rounding = 2
      List.Appearance.Down.ShadowOffset = 0
      List.Appearance.Down.Glow = gmGradient
      List.Appearance.ButtonDown.Color = 7067902
      List.Appearance.ButtonDown.ColorTo = clNone
      List.Appearance.ButtonDown.ColorMirror = clNone
      List.Appearance.ButtonDown.ColorMirrorTo = clNone
      List.Appearance.ButtonDown.GradientType = gtVertical
      List.Appearance.ButtonDown.GradientMirrorType = gtSolid
      List.Appearance.ButtonDown.BorderColor = 3181250
      List.Appearance.ButtonDown.Rounding = 2
      List.Appearance.ButtonDown.ShadowOffset = 0
      List.Appearance.ButtonDown.Glow = gmNone
      List.Appearance.Disabled.ColorMirror = clNone
      List.Appearance.Disabled.ColorMirrorTo = clNone
      List.Appearance.Disabled.GradientType = gtVertical
      List.Appearance.Disabled.GradientMirrorType = gtSolid
      List.Appearance.Disabled.BorderColor = clNone
      List.Appearance.Disabled.Rounding = 2
      List.Appearance.Disabled.ShadowOffset = 0
      List.Appearance.Disabled.Glow = gmGradient
      List.Appearance.ButtonDisabled.ColorMirror = clNone
      List.Appearance.ButtonDisabled.ColorMirrorTo = clNone
      List.Appearance.ButtonDisabled.GradientType = gtVertical
      List.Appearance.ButtonDisabled.GradientMirrorType = gtSolid
      List.Appearance.ButtonDisabled.BorderColor = clNone
      List.Appearance.ButtonDisabled.Rounding = 2
      List.Appearance.ButtonDisabled.ShadowOffset = 0
      List.Appearance.ButtonDisabled.Glow = gmNone
      List.Appearance.Hovered.Color = 9102333
      List.Appearance.Hovered.ColorTo = clNone
      List.Appearance.Hovered.ColorMirror = clNone
      List.Appearance.Hovered.ColorMirrorTo = clNone
      List.Appearance.Hovered.GradientType = gtVertical
      List.Appearance.Hovered.GradientMirrorType = gtSolid
      List.Appearance.Hovered.BorderColor = 6344178
      List.Appearance.Hovered.Rounding = 2
      List.Appearance.Hovered.ShadowOffset = 0
      List.Appearance.Hovered.Glow = gmGradient
      List.Appearance.ButtonHovered.Color = 9102333
      List.Appearance.ButtonHovered.ColorTo = clNone
      List.Appearance.ButtonHovered.ColorMirror = clNone
      List.Appearance.ButtonHovered.ColorMirrorTo = clNone
      List.Appearance.ButtonHovered.GradientType = gtVertical
      List.Appearance.ButtonHovered.GradientMirrorType = gtSolid
      List.Appearance.ButtonHovered.BorderColor = 6344178
      List.Appearance.ButtonHovered.Rounding = 2
      List.Appearance.ButtonHovered.ShadowOffset = 0
      List.Appearance.ButtonHovered.Glow = gmNone
      List.Appearance.Selected.Color = 4579838
      List.Appearance.Selected.ColorTo = clNone
      List.Appearance.Selected.ColorMirror = clNone
      List.Appearance.Selected.ColorMirrorTo = clNone
      List.Appearance.Selected.GradientType = gtVertical
      List.Appearance.Selected.GradientMirrorType = gtSolid
      List.Appearance.Selected.BorderColor = 5218510
      List.Appearance.Selected.Rounding = 2
      List.Appearance.Selected.ShadowOffset = 0
      List.Appearance.Selected.Glow = gmGradient
      List.Appearance.ButtonSelected.Color = 4579838
      List.Appearance.ButtonSelected.ColorTo = clNone
      List.Appearance.ButtonSelected.ColorMirror = clNone
      List.Appearance.ButtonSelected.ColorMirrorTo = clNone
      List.Appearance.ButtonSelected.GradientType = gtVertical
      List.Appearance.ButtonSelected.GradientMirrorType = gtSolid
      List.Appearance.ButtonSelected.BorderColor = 5218510
      List.Appearance.ButtonSelected.Rounding = 2
      List.Appearance.ButtonSelected.ShadowOffset = 0
      List.Appearance.ButtonSelected.Glow = gmNone
      List.Appearance.NormalFont.Charset = DEFAULT_CHARSET
      List.Appearance.NormalFont.Color = clWindowText
      List.Appearance.NormalFont.Height = -11
      List.Appearance.NormalFont.Name = 'Tahoma'
      List.Appearance.NormalFont.Style = []
      List.Appearance.DownFont.Charset = DEFAULT_CHARSET
      List.Appearance.DownFont.Color = clWindowText
      List.Appearance.DownFont.Height = -11
      List.Appearance.DownFont.Name = 'Tahoma'
      List.Appearance.DownFont.Style = []
      List.Appearance.DisabledFont.Charset = DEFAULT_CHARSET
      List.Appearance.DisabledFont.Color = clWindowText
      List.Appearance.DisabledFont.Height = -11
      List.Appearance.DisabledFont.Name = 'Tahoma'
      List.Appearance.DisabledFont.Style = []
      List.Appearance.HoveredFont.Charset = DEFAULT_CHARSET
      List.Appearance.HoveredFont.Color = clWindowText
      List.Appearance.HoveredFont.Height = -11
      List.Appearance.HoveredFont.Name = 'Tahoma'
      List.Appearance.HoveredFont.Style = []
      List.Appearance.SelectedFont.Charset = DEFAULT_CHARSET
      List.Appearance.SelectedFont.Color = clWindowText
      List.Appearance.SelectedFont.Height = -11
      List.Appearance.SelectedFont.Name = 'Tahoma'
      List.Appearance.SelectedFont.Style = []
      Fill.Color = clWhite
      Fill.ColorTo = clWhite
      Fill.ColorMirror = clNone
      Fill.ColorMirrorTo = clNone
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtSolid
      Fill.BorderColor = clSilver
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      ShowFocus = False
      BorderMode = bmTransition
      BorderTypes = []
      OnItemSelect = Tasks_ListItemSelect
      Align = alClient
      TabOrder = 1
      Visible = False
      BevelInner = bvNone
      BevelOuter = bvNone
      DoubleBuffered = True
      TMSStyle = 0
      object ImageTextItem1: TImageTextItem
        Tag = 0
        X = 3
        Y = 3
        Height = 38
        Width = 436
        Level = 0
        Index = 0
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'Create Link on Desktop'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000017352474200AECE1CE900000006624B474400FF00FF00FFA0BDA793
          000000097048597300000B1300000B1301009A9C180000000774494D4507DB05
          020018092D03214A000005454944415458C3E5575B6C5455145DE77187BEE8A0
          868416290A1522A152355A250448AA7FC4F0431025C64FE4CF584A1F96525E0D
          50636248200A2D84205A135E1F0A413198D2F0981242440AA5A5482986699DB6
          337766EEBDE79CED47A7D30181165ABFDCC9C94DCE3D77AFB5D7DE67EF5CE0FF
          6E6CA40307BF3BB0EC958279CF0829C10010118C31648C26653469A58D529E51
          9EA71DCF33CA758DAB3C63476CAFBDA35D09C92EAD2DA9BCFD28FF722402D97E
          7F634E6E0EEC6824B94786400040044306C610C8686863A0B5469A2F0DB76E77
          A2BDE3466753C9E72F121118634F47C09212AE72A08D4AEE712E20058714129C
          4B08C1C1B9000383CF378142A15E040217DA2ACAAA666FDBB6F991E0A322F0A0
          71CE218484140242480821203807631C3ECB8781817E1CF876FFAD92CFCA66D3
          36426969C563FDC92707B76009092E05241F24C0398765F9604722B46FFFDE6E
          95AEF3B7D66D415949E5883E472440446060C3E0522615E04242F041051C278E
          FA7D7BBA7DCA3743D94A97ADA91C555023123064C0D860BE8590107C487E0B52
          707031E8426B8DDC2939A757BCBFD27D225547BEA70C820F0249C121241FCEBD
          B420380711C1E79B400B172DFE60E7AE1DABC695000070C1878B8E0FA740700E
          630CB451D0DA63999999282A7A7B675575C5CB95EBCAC62F059C09101FBC7E82
          0F161D1883521ADA281865A0B481D61EF2A6E7D1DCB90527972F5BF1FCB82830
          D44404E7896AB760491F88084A7B504AC1D31EB456D05A23EEC4586161E1D44D
          B535ABC7878031E08C25EF793416A543471A21850011416B0F5A6B68ADA09482
          D60A995919989EF7C2967121608800C6E0B37CB0A336EDA9FF26D876ED7AF1F7
          8D0721A584D62609AEB407630C3CCF437EFE4CFF864DD5EFD4D6D68E3D055258
          B0A3116AD8BB27A8199B5E5E5E75AAADA36DF1A95F7F8665F9C8535E127CA8ED
          E64E9D4AC698E5E5E5E56354C01844EC3035ECAD0F7AAE9BA71C270E00EB2A6A
          4E373737D7DEFAB393B1C4B92170C61884E4CC9F9DBD70CC290806EFA1BE61F7
          BD98E7E529AD9DF2D2E10EB7B1664BC58913C77B2CCB779F624404A30DD23332
          668D994057571739F1789E715DA7B27CDD7DEFD66F2E413078AFBCB3B3038C31
          10515235A5148CD1632BC2ED355F32A5D473AE526E75D5867FBD5F5F59076BE2
          E4862B57AE26E537C6C0755DB8AE4BB198E38CA911ADA9FE9400841E77665345
          99DEFEC5D628E73C432905C775108FC5919696C6EE74DD3937E64E381AD35AA9
          A1C8A37614AEE3A22F1442C48EFC342EB36024CBCACACA8EC562B06D1BB61D05
          0174F9F2EF0887835FFDE70A7CF4F187ABE7CC9983482482483802A5145CD741
          4B4B4BDDC10347A3237D2F9E1678C7CE5AE4E6E44D99913FF3E4AB85857CA07F
          0071C7455AFA043A7AE4D8DF5FEFDAFDEEB88DE354F33FEB07005C387FF5F56C
          7FF68D254B96F0505F1F1CD74546463A1D3E74D8DCBDDB5D70ECC743E3F35F90
          728E0060E9D2F7E6494B56CE5F307F59717131FAFBFBA13C8F3C4FA1B1F18770
          381C7EADE562A0BDFDFACDB113C8993CC97A6BD1A28DAEE3F92D4BCEC8CFCF9F
          3F6BF64B59456F160100C5E27118A359D36F67D0D4DC74FCECD9C0CADE6030AE
          9536001E5CF4A44528DE98BFA074F527ABD64E9B9607FF24FFD0A423A5146B6D
          6D65972E5DC699A6A6406F4F6FDDF973815F12FE3201E804A87EC832A325C0E2
          4EEC5A207011376F76C2711C446C1BDDDDDD6EEB1FD7DA42A150E0465BFB89BE
          BEBE760031001301780990E4684800B29435EA143000B2705EC12C4534B9B7A7
          87DFEDFECB4D3814001480288070E2E9A5484D290A9847453FDA221400AC845A
          3225129D20A152402925727A18E083F60F10F5CE50630B39250000000049454E
          44AE426082}
        ImageHeight = 32
        ImageWidth = 32
      end
      object ImageTextItem6: TImageTextItem
        Tag = 0
        X = 3
        Y = 46
        Height = 38
        Width = 436
        Level = 0
        Index = 1
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'Share Link'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DF021B030E311F7F1449000003D049
          44415458C3B5574D682365187EDEEF9BEC64621ACC442150BAB64D2852901D1C
          BBAC0B22222C0855D883C88A2808CB9E3C0882827859BC78F624EEC9BDACEBC5
          BF8B3D786BBBB4BA504229EDA1A1072FEDCCC0249B649A76E6F51027CDEFCC04
          372FCC211F4FBEE799EFE779DE01E28B0090108212E290A4429C8C02198681A5
          A52564B3591C1F1F4F0537F6AD4C73058A22E1792DECECEC605AB891EB75EDDA
          2B28147C109D454EFA3470621438970B50AB093C7AF477E4A493E0FC27B28BDB
          7EEFCDBE833366D2BF129227C76DBDFB061311561EFE49432B609A2B53257799
          BF0C4EBDE1DB109E4E4591A8D5682AE4B66DDF65AFFD357CBF0F572C163B0272
          B91C3CAF35C19EC793379B9742F28744F4D5E07D334D13AAAA420100DBB6B1BB
          BB1B691C51A4615DB9B20C556D616D6D17B66DBF0EE027227A7E145655556432
          19284288B1E49665BD4D44BF842EC8CC63C98320C0D1D1D1278A22E7E6E62EBF
          03E0C528B1F57A1D7B7B7B50822018EFAD44BF1211A230BDD65A2A95BE3D3939
          01110D8B1DF85DA95400A0B305616DDC7CED2D29E56F4424835613F29919F61B
          75D2753D5680E338912B041A6DBA7D4614925F2866C2944B1958F26E38F1C518
          1CC7898F4C8AD7CA710204110475804210882E9E2415E246E1890829419003A9
          DE27E08F7F4E701E000A33DACD063EB66D9C351B132DA9100296650D8DA75A1E
          7E3F3A462AD318166018069AA93454797A3B0DFFFB7306580808219892BE7ECC
          76101114D1797A9D50099D905D179F6DEFDC03702F04DC6A3CE1691D3ED33461
          5956AC137E48443F303332990C032066EE7D436E341A149E13D775BF00589D99
          C97D4A44CF460948E484A552E93E80FB00B0BABACAB66DF72D2F11D1FAFA7A77
          E0EAD50548F91C3637B7EF56ABD59BCCFC2333A77AE7F4FFFB7F22270C83656D
          ED31666767A1691A1CC719DAE3DEA0DADCDCEE10F9FECFE572F9D2E1E1E10633
          BF0A00E744480D38A148927E610EE8BA0E5DD7871C6F544A96CB65AE56AB585C
          5CBC2EA57C70EA790068A809159344EF2811CC181BD10B0B0B0080F9F9F9F759
          880744801C102F26CDFD50443E9F47E74022B63FB871E3655E7AE1F2AD745A8B
          76C228724DD3D06AB5C2FD453E9F87AAAA9157AD77BEEF72A03B1B1502806FAE
          BF449F6F5478A29EB050287CA4695A379AD3E9349697973F48DA41DDA95D4441
          48DEED8A0DC380AAA6417416D99625ADA4ED5B9F13BAAE1BFB71F134BBE6D009
          250064B3D9EEBD1C07CE6615D46AE7D8DA7AFCBF71866140D334F8BEDFF99A8D
          32A3B07BADD7EBB12227C1599685838303C8A836AA582CA2DD6EC3F7FDC8AE79
          029C6CB7DBD2F77DDADFDF6700F81719C341D4714A1FBD0000000049454E44AE
          426082}
        ImageHeight = 32
        ImageWidth = 32
      end
      object ImageTextItem20: TImageTextItem
        Tag = 0
        X = 3
        Y = 89
        Height = 38
        Width = 436
        Level = 0
        Index = 2
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'Save as PDF'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000003D1494441545885C597CF4F1B5710C73F0B35216D778DB18D31C64806
          844808AADC4BA428CA257F01E212A9AA542955F807D2432E39F452A9B7489172
          E9ADE2C8BF908BB9E450417D288E5840B65C815554828D7FECAE79D303F66A17
          B6086F913A92F5DECC9B1FDF9937FBDE33FCCFA40509FF7AFC58FE8B533536B6
          3BF4E9D357C9CDCD76280095870F259D48840AEE88D07DF78EDACB97E69D4A65
          69E6C3077B6027A57C5E9A4F9F8A977E5E58B8C207E9FCF9E489B4DB6DD97BFF
          5E7E7FF6CC2CE5F323D7C51A0A12362D0BABD502E0A75C0E80AE6DBBFCC9A347
          FCF0F1236FF6F67CB2EFE371EACD26914884C8FC3C5FACADCDD5EFDDFBE3B7FB
          F7870702D0B02C3ACD2600AF0E0E7C00BAB6EDAEF565AF0E0E785B2ED3693669
          B75A0C0F5FC41B999B63ECF9F3B9463EBFBBBDBD1D18EBB340009D0E6DB9E8C3
          D78904DF45A37C333A0A806359B4CFCEDCB957A77D7646BBDB05209BCD02A032
          19261F3CC8155EBC3081D91B0138B32C3A3D478EE3B81903FC787C7C917534CA
          B777EF5ED1514AF16B3CCE8952689AC6A8A691D234FE865C50ACC0AFE0976854
          BE96705FA20D3445E8B7BE068C00BB4343AC9D9E5E89175881966DB3192AFC2D
          51A15090DBA642A11058D2C00A28A5B02C0BC7716E25A1482482522A702D10C0
          F9F9390012B20FAEF37963002282528A8D8D8D40C3D5D5558AC522BAAE93CBE5
          28168B1886818890CBF91B5E440603A0944244DC0ACCCFCFFBD64DD34444C8E7
          F30074BB5D77DEE72F0318780BBC4641C64A29B6B6B600D0751D80999999C020
          0357A0AFDC0F1CD40B4A299697977DB2CB9907F9BC3100EF161CF4EE032F8908
          E57299A9A9294AA512BAAED3683400585C5CA4542AB9F35015E86FC1CACA4AA0
          A16DDB64B3591CC7616969C9B7E695398E13AE09FB59562A15EAF5BABBA6EB3A
          9393931C1D1DF946805AADE6EAA552296AB51AA954CAE7F34600BC15C8643264
          32992BD94F4F4FFB46C0A767DB36994C06DBB6C36F8188B0B3B3836118241209
          8E8F8F1111344D23D17BB255AB5597AF56AB249349F6F7F7015CBBD05BA09462
          6161C1CDA85FEA3E0F904EA75D3E9D4E63DBB66BE3D50BB50522C2E1E1A1DBDD
          BAAE333E3ECEC9C909B1588C72B9EC93F529168BF9FC853E099552A45229B791
          002CCB62626202CBB2DC13B22FF3EA5C0610FA32324D13C330300C83D3D35357
          271A8D629A267051194DD3300C233088D7E78D0078EF82D9D95937AB6432E9EA
          5896E5AE796541347005BCE740A7D371E5DE79107F1D0D0CE03AD48352E80AC4
          E3F15B01E0F5791D8091DEEF8E88B0BEBE7E6BC13DF425170F670710F03FCB75
          C0E88D9F03FFFA772A049D032DA001D47BF373807F00EE26F361032D43460000
          000049454E44AE42608231303334}
        ImageHeight = 32
        ImageWidth = 32
      end
      object SplitterItem6: TSplitterItem
        Tag = 0
        X = 3
        Y = 132
        Height = 5
        Width = 436
        Level = 0
        Index = 3
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        ReadOnly = True
        Selectable = False
        LineMargin.Left = 1
        LineMargin.Top = 1
        LineMargin.Right = 1
        LineMargin.Bottom = 1
      end
      object ImageTextItem5: TImageTextItem
        Tag = 0
        X = 3
        Y = 142
        Height = 38
        Width = 436
        Level = 0
        Index = 4
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'Full Screen'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DF021B143B2CC7210FD30000064549
          44415458C3ED974B6C1BD71586BF3B438AD450A468B924459932A5D60FD45E34
          698AC6F2234E13C596E420860364914583AAF022A8B328902C1ABB0860B4B682
          A25D047D202812C74051A0081A20496B59B21B3796453DFA48D0A0C9A2162031
          A2A4D18C654BA23924A599B95D50A4145B09A8B46851A007B88B199E73FF737E
          F0FCE70CFCDFFE45DBDAD543B2F3C5FF3C70CBA32FD2D2D5C3D68E3300B476FC
          E073DD23EEAAE8F8AF6435811FBFF24DB1E3D84FD877E03EFA2F0CE0696DAD3A
          6EEDB3673DA7A38F1F213D9D450810AAC0E755698A698C8F8D337A658899D79F
          114DEDA7D97FE06B346CAE67E7975B19BBFEB1B0EBEBE5FD0FEF65DB97BEC8A4
          69B1B46423254847926C0AF2E61B17EEC25A3781F474960FC76E215481A24043
          D8CFFCDC341F0C8E626B81784BD7591A366F229F2F9099CCD3188F323E3E4541
          0BC447DF199A292C392C3A61E6E60B48C7C575D7E3FA33122857AEA802555550
          3C0A8212C3AA900E084C630E7DC6ACC478BD9E95DF404889AA0A548F8214021C
          17A1880D24B052B9AA2A28AAA0B8ECE28BC5D9D3DEC6C81F868D422C16D55FFB
          B6B936A6B1FB5C44E42C634F7B1BB2AE11733687EA517071010565230CF8BC2A
          0D613F8A47A1B8EC6223D1E78B3447E2B43DD2C6F0E561A3B1FB5CF43BAD1913
          E017E38988C859C6BE436D28A13819338F03F8FC2A9AB706DB76A9F1AD0B85B2
          DECBA69846BD779190B2C0969886DFE7C19160CC170846121C38BC1791B38CE3
          279EE5F889671139CB3870782FC1480263A18894925A9F4A221A20206F115216
          4844B5EA19181F1BE783C15100DA0EEDA33912C3982FA07A04AA02CA0A9F3DAF
          5CAEC4A8AA4055045E5520FC2AD1900F677196D18111006A6B94EA1918BD3284
          AD05E2B616880F5F4A2172B3B4C4345A221AD6DC34572FA6B0B5407C53B0964D
          C15A6C2D107FB737456E6E8A64B4E427B3B3A42EA52AF78CBC33547D0233AF3F
          230286AE9BE7BB755B0BC407FB53146FCD90BFB90A6E9C7B4A3FFD743BA79F6E
          C738F7945E4EC2BA3145FEE634D7FA4B7EE6F96EDD3CDFADFB6E6745550928D3
          93A2A5ABA7F2FCDDEDD3BAAD05E2037DA90AF8E4CB4FEAC5A565D69EC9979FD4
          6D2D10FF63EFAADF2F8F86F5CABD8A82939E10006BEFF700243BCF92BE7892C4
          A11F120A0579E891BDFCE6D7BFAB385DFB5E9B9E48242A15D8B6BD2E9DE33F7B
          422F4B8EC7E3A1B7B777B54DE311922D5B18A9E9C171EE60207DF124C9CEB36C
          DFD142C79183F87C359F102E2925B66D6FF8AC35D775D99268E4F1273A09D4F9
          2B2CAC30D0835FB88C5D4F13A8ABE52BF7EC62ED64F9C68F86232267190032A0
          453FFCF151733D06763FF7D627FC7EFE68BD79671283037F667121CBD4E517D8
          DA71A6CCC0F3145CC164FF29DEFFEB47F45D7817AFB7D4A13F1D8B47CA7DFE40
          47A9FF773FF756C4711CD69E32F8839DAB7E277EBF102983DFCE5AFC36F57769
          CCCE3175F985D264EC3BB5FE385E7296A3FED959B3108B55142E1849E0510559
          23C3D5BE2164408BBE77A6C304F8EAA9BE0A787D63338E235998CD70ADBFE407
          207296E10DD523A63322DDFBFC67B761A82E6814EB82B2ACED4A28CEB8613161
          5804A3090EAE5458AE7E2DF8C48A9F1A2EC9B6C85986C859C6D71F6A2B4DDA35
          E09FAA84C78E3DCCF0C8DFA80BD521EB1AC99879A49408BF8AE3CAD2B8BCB31B
          84C0B6258E23292C394C9979A2E138F73C703F48C98E9DDB78FF2F1F55274499
          1B0544A8999C6820339B23BFE420144134E4E3B6B92A46D96C966C365B51C2AC
          39C517EA6B1008AC259749D3C2F26CE6360D4C99B9EA678195B7D16FE4513D0A
          AA47C1E7578986FD388BABF2FA983AA8BFF4D220008FA9E86F6BFBE3037DA999
          FD87F7110DC798342D0A451B2B27716C9758D85F7D02A535CA450A818B8BE6AD
          A1787386D181918ABCBE7A57D4AB7AE45BAFC507FB5333F71EDC83CFB3092B27
          716D17E9485CD7DD40028E2CAD514E6999B06D1729DCCA46D4D2D583E3B8D8CB
          CB804022F1FB7D14563622E9B848B754B974248EE3E2CA0D2C24C9A62008108A
          401150E3F3908846F0D528FCE9CA88E1B85244A30D741C7910DBB629169778F3
          8D4B94FFED3B766E63CACC110BFB71DD12783216E4BD7FE75AEEA427C4BDF7ED
          62D7EEEDF45DB8CA7C5DF873ADE5772690DCC03745BAF9F019B66D4F72FD1F13
          642E7D7F43B19FCA40B596EC388B5F9114A4207DF1E47FE7BB30D9D943799CFF
          CFDA3F01E98125DFDC8209B90000000049454E44AE426082}
        ImageHeight = 32
        ImageWidth = 32
      end
      object ImageTextItem4: TImageTextItem
        Tag = 0
        X = 3
        Y = 185
        Height = 38
        Width = 436
        Level = 0
        Index = 5
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'Library'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DF031B0123113ADF93B00000001D69
          545874436F6D6D656E7400000000004372656174656420776974682047494D50
          642E6507000005184944415458C3E5974B6C5B451486BF99B9B7A99DD8899338
          2E711E35A1BCAA8010290BD415021620B10B0836EC9052212436809010AC782C
          00C10224768805D0881D2A88809080050204A881BE42312DB1D3340F133BF1E3
          DE79B07063E2C4ADCB43B06024CBD69DB967BEF3FB3FE7CE85FFFB10979A9C04
          350D06E08BAF8EBD8610536D233AF7FAC15BAE3FF48F006C1D5F7C7DDC5D3DDA
          87520AE71C42B4BEF5F8CFE73978E03AF1B701DE7FEAEE99AE78FC7600B9EF2E
          647AE2B265B5B96FB07347EABF9D7BFDB6C7DE39F4A7003E7EE1FE3B62B1C847
          43D78E00908DDDC7357BFB71CEA194DAA6B8FB23981038E738915D22537A1780
          F9136729952A77DEFEF8DB33ADF6F25A5E146E2AB1A7975AB9CABCDE8F8CC1C9
          5F96FF94B94E17C718F27E24B1A797CAFAFC143073590ACC3C3F391E8D468FEE
          DD9F61E9D745D6F73FC2D5A37D08219052D665B516296593178C310D15A4941C
          FFF93C9D3FBCCAC0488A5F7ECC522E976FB8E389E9D9B60A28A9A612A904D659
          4A895B11C0A9332B7FA9C4D67B6FA5DFCD914825A89DA94D01872EA9C0916727
          93B148C7F9CCF818A5D5222B9987B8EECA8146C69BDF9B194B29114234B26F24
          71A1524E6497E8CBBE41AC374E76F634A54A6DE0AE27A7972EAA40D4F31EEE49
          F620A460357AA051567F67AC460F1097A7E849F660F22B0F034FB754E0F0A393
          91D4905FCE8C8FA183907CEA416EBA7EA465BD6F777EABF9CD8AF8EED8590617
          DFC4DBE5939D3DCDE27C18BDF7E5E9CA0E05FA07E554BCB71BE5295672CB90AA
          070A82A011AC897CCBC65BE7B61AD5F3EAE1D796D618184D11EFEDC6D8D529E0
          A52680C393934A0AF962624F026B2DA5D5221208C310AD7523783E9F6F2BF9E0
          E06053350094568BF40F2749EC49B0B6F2DB8B8727275FB9777ADA34000626D4
          035DDD5DF81DBB282EAF5158CCD37721B3300C1BC1D3E9745B8020081A46DC04
          583D9723399C24DEDF435777174C941E609AB7FEF80B8498F223B09CCF01B0F7
          86AB285D50C05ADB50616161A12D405F5FDF8E6B991BF711041B2CE737F023F5
          FDA00E20661EBFB9BB3BD2F95BAB602A9A2076CF7320EB9C9148A42D40A552F7
          57EDD80754BE7FEFA2EB6E79E633D1502074A0FBD29497975052A23C45341647
          982A1BA73EC3BFF260FD9990CDB60548A7D3E02C1BC73FA163788CE2F2323AD4
          186D30D6D2994CA1CE9F69EE035A1B8A0B0B1473F3784AE2798A6A5717FD7B47
          599F3D42677A02842493C9B4EF7EEBEBE8DC51109AB5DC3CC573E708438DD606
          6D2CC65862D66C0128804E5890CD814CAD46A558C4F73D364E7F893F32C1DCDC
          DC6579A072F253BA3A6304AB6777942F40A8B70014807868A0636733A9958A44
          D3C314668FB03B35CED0D0505B8042EE27AAB963448687D1B56ACB3561B85501
          0A04BA07D1B173A10902C24A194F0554CF7CCB5238DEBE0C4F7D4E627884EA5A
          01676DEB35A16EF640181A76B53ADE594BADB446B43749FEEB77919D3388DD71
          C4EE58BDCE85C43ADBD4AC74EE28C9B161D6CBE58B436E55A0508078B76E09B0
          E905B35164746C103C1F6B1DC6149A9F019EC3002ED4ECDE37427965096BF425
          00B62910687BF143AEB5041BEBB8A086BFCBC7F33C7CDF47CA3A80039C75586B
          31A1A652AAA26B21B4305F4B05A04018F6B73B6AE38CC1840E61344E0748B113
          401B8B35E6929B6F5740160ACDAEFC37C6B62AA8D765FC8A2BF07CAFD1099552
          789EC25712A5144A49A4922821114AEC50C05987B116632D565BB4318D8F31B6
          A91386B3279B016AD51A5F7DF8E9BF94FF0F3BCE84A9FFF0D570F17FFF72CCEF
          856A773FD81A10720000000049454E44AE426082}
        ImageHeight = 32
        ImageWidth = 32
      end
      object SplitterItem7: TSplitterItem
        Tag = 0
        X = 3
        Y = 228
        Height = 5
        Width = 436
        Level = 0
        Index = 6
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        ReadOnly = True
        Selectable = False
        LineMargin.Left = 1
        LineMargin.Top = 1
        LineMargin.Right = 1
        LineMargin.Bottom = 1
      end
      object ImageTextItem3: TImageTextItem
        Tag = 0
        X = 3
        Y = 238
        Height = 38
        Width = 436
        Level = 0
        Index = 7
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'Open in Safe Mode'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DF0906130D39F30CD29B0000087A49
          44415458C3B5977D8C54D519C67FE7DCB977BE67676776175858966559B06CD4
          AA6C94985AD45A3F10059BD8A621B17F40488C6DD3DAA4495B524C938AA91AD4
          D6B43691A0ADB5515B344DB1B5C92A6DE2D262F1035C605970D15D7697D9AFF9
          BA73BFCEE91F33B3DD150C90A66FF224F79EB973CEF3BECF79DFF71CC1A59909
          18805583010840013EE0D69EDDDAFB054D5CE437212965522915079A77EDDA75
          DDEAD5AB3B52A954560841A15098191C1CFC68FBF6EDFF1A1F1F3F035480528D
          4885FFC14252CA34B0E2A5975EFAF1F8F8F8117D019B9C9C3CB56FDFBE4781CB
          81254012085DEAC2A216E2D6279F7CF2DBB66D4FEB4B34CFF3DC975F7EF921A0
          5308D104442E5602110A85C2BEEFB71D3D7A74D7AA55ABEE98FBE33BA7A7E81D
          2AF261CE2157F6D140266A705936CC0D4BE35CDF919D37D9C8C8C83B8B172FDE
          6A18C648100405A07C210226B0FCECD9B37F686A6A5A5D1FDC7B788CC70EE498
          56612C43001AF4DC59049ED244B5C337AFC9B0F9EA45B313168BC5F1969696BB
          1CC739A5949A019CCF222081D6E1E1E13FB6B6B6AE01A8783EF7BD32487FC120
          24F545E9A7B4A035ECF1C2573A49C72C006666663E49A7D3B70367806920A82F
          38974CBAB7B7F707F5C5F3B6C74D7B06385E901868B4E2A220B466AC22B9E537
          039C99AE46BCA1A161C991234776020DB58D09B53C9E0DFDBA75EBAEDDB163C7
          53D557CDADCF0F500842D5507F0A12813ECFB889C7658D13DC9919E0F2EC146F
          1D3FC5F54B9384AC14CDCDCD2B2B95CAA1BEBEBED35A6B1708C41CEFB3274E9C
          F87D6767E74D003FFCCB107F3AE5FC57E773F253903643E45C6FF61B81665DEB
          29762CED23DDD48096091CD7E6F46481CE951B3192DDE472B981E6E6E6DB8049
          60BA2E8168696959565F7C78DAE6C5FE7235A4FAFC400B16472304819E1DCBCA
          220FC75E23D950E1FD913C6F9D7628F9B03223C99F789EA0F4314D4D4D5D5BB7
          6EED01C28021018410D6EEDDBBBF5AF7EE170772C44C03A5F5A7004A559FA586
          64C8206A18044AD3529AE0F5BE07D14BC29C1E2FF293C3D7F1C0BF6F61E77BCB
          18B72571A38037B61F806DDBB66DAA11302520B4D6D1EEEEEEEBEB045EEBCFA3
          035DADEA73A0034DA36942000B22164AC3E7B36936E407F9DBDE6D1C5BD441C4
          7238556CE084BD0414BC31BA8237471A314C93207F14ED97E9E8E8585BAB8EA1
          BA0466369B5D05707AD2A6E4CB9AB7F3A1354C553CD62E48933243BC992BB372
          FF6FD9F9DA83F8669467AEF81A02812F2328255181C60D0C0ECF64F10245D92E
          A1FD0A994C66699D40BD465BF1783C037072D2C5A0EAEDF9CC511A530ADE1E2D
          F0D8E00BDCF3DE2B00FCF4EE9DAC6CB4400812968581C051D58D69FB261A0337
          A81530A0BDBD7DE1D0D0504ED646A410D58428BA0AAD40057A1E3C5FD36899F4
          2C68C00D34F77627B9E7E73F82454BD8BD6A13EF642E63BCEC2004D881C6753D
          74EDBF5A0B9046B5F2D46A5F6767671410A139FD1C8048A81A3A25C5BC945BDE
          18251A923881A22511E291DB5B01787BE70B3CB17790AFA70668D4EF8334680B
          4F7057E22D4EFB8BF8C869C1123E5A84904241CDD1E1E16117D07509DC52A954
          88C7E3C9F6B485EFCF1107F0946620574603155FF1F8DD5D00ECEB2FF1EB7F8C
          F0F835EFD2290EE095C7999E6C226997B87FE121022BC9989B269E6A206C44B0
          0C8156D5381C3B766C0CF067094C4C4C9C88C7E35775B544412B0225CFD1DF57
          9A87BEBC90F6468BEFBE3A42DF90CD8D8B2591600A2219B219899A1927AE6DCC
          4603B0698E9490711769B4137686287DF04BD4829B2793165EC1C5AF9762B17E
          FDFAEEE5CB97F700F48FDA9C9AF0E69759E0CAD6183FDBD0CA1DCF9C64FFC922
          4527A0AD31C4ADAB024C29982E4B742885198E234D13814208C14419A495A430
          99C39B388CCC1F14F7DEB62CA18DF4EB75027A6060A0B065CB966F00B4A72D9E
          ED9B2024ABF55E575B032FDEB78C2F3E35C027D3EE2CA9A8E1B0F17365166413
          4462296C5F922FBB149C10E520851398F83E78151BDF29E1F88A99A213725CBB
          A32D36FEABBA04AAAFAFEFF0D0D0D0A1F6F6F6ABAE5C12E3C6CE046F0F954183
          1B68BEB3AE851B9E18A8EEA139196A3B8AC0F741FB446361C2E185781903DF2D
          E3966D9C7204256C8A769EFCE82486A189C54C32A990D7DA905573BB61303535
          35B671E3C67B01D67737F0F4FEB3280D714BF2F7930524CC46A48EA6B8CF9D5D
          33A42C1FD008AD902A8F292A444C9F585492881BA45209C2A24CC22810331D2C
          ECA2212B4FCFDD69DE9E3D7B7A0F1E3CF82A40D492BCF140177EA0B15DF599ED
          17A599D7B550A07D502E042EC2AF60A80A962E60F95308D7463B3E81A3A024E7
          1D483430DDD3D3F3602E97FB046045739803DF5B45C292E794E5B998771A5101
          22F0108107AA8AEAB38FF21481A3506E807215B6EDF3E95C53C0C76D6D6D1BF3
          F9FC04405BA345FFF6D56C599BA1E206A84057BDAE436BC46CB7AA42280FA15C
          64E0216A24083C9417A0BC80C0AD920889730900784288230D0D0D5F1A1E1EEE
          AF0F3E74672B638F5CC1C377B7F2851509521183B2A7283B01BEAB4055F5175A
          CD861FE522940F35684F11B81AE52A025F512CC9CFBC1989DAE9B865EFDEBDDF
          DFB061C30352CAF337A7C21986DF7B8E485890CA34110E0588F271F066AA0BD7
          C22FB4CFE88783D833855A3516A3C22D745FE86A268134B0BCB7B7F75B6BD6AC
          B9279148C4E769E6BBE4CFBCCBD4F03FF14A2344C20609B348C4F431A920B583
          502EF815468E9CC4CE57C0B408B0C66C2BD97DD177C3DA4936B979F3E66B376D
          DA746D5B5BDBB2582C9611428852A93873F6CCE0F8E8F1BF16DA5393ABB366B9
          C7325563389614D16884703844C4928C1D1F62F26C1EDBF629178AA37F3E945B
          2B2EF1CA66D410AE5DB58C3919E401F623F75F6EDEB85A2C314570A594C6CD2A
          08AE4684169986951D393921CB53C5B328F790D6FA954DCFCEEC16FC9FEDC8A3
          5D89B2F6571AD03572329FB027DD7713B2F0C1EDBFC305F80F0D4BC6488864CE
          C30000000049454E44AE426082}
        ImageHeight = 32
        ImageWidth = 32
      end
      object ImageTextItem2: TImageTextItem
        Tag = 0
        X = 3
        Y = 281
        Height = 38
        Width = 436
        Level = 0
        Index = 8
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Status.Hint = 'Status Hint'
        Caption = 'Open in Private Mode'
        DescriptionMargin.Top = 0
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F400000006624B474400FF00FF00FFA0BDA793000000097048597300000B1300
          000B1301009A9C180000000774494D4507DF021B03052F0684F0E10000093049
          44415458C3AD977B7015D51DC73F6777EFDEDCBBB9798790E74D20242189DA14
          080ABEEA03474594FA602871A841696BB13A5366AC386DC57118FB478B8FEAB4
          C06067AA450B1575A0F818111415107221E40109799017847B73739FB9CFDDED
          1F98481414DBFE6676F6CCEECE7E3FE7777E8F73E0BF34C7CDD8F93F98F8AE0F
          6A1BA16533A4DF4ACE942C565D5675C522BB965EA7DA3506074E31DAD1D815D7
          43A1802FD8DEDDDDBF430869AFD9FDFAC0FF0DC071330557D615BF3277D6D50B
          F24A0B19F40FD0EF1D6438E82137E460E694BF108B07D0759D50688C9EEE017A
          7A06F6B71DEB5C43EF3F3FCAA87B109F6BD345FF2F5F6CD6675D50793F4F3FDC
          D0F0F66D0B6F981E94CFE08FBA8924C298E8609AA81199BA8A07B0580429361B
          690E8DA9F9B94C2F771695380B96872D65F3DC67477719DE63914B06A86D84A7
          D72386C60A5E59F79B358F3A0A2284621E8404E9B61C0AD3CB498E1A8820F4F6
          F5E354AE454A84C8D52C544F2F44B658302599CC4C07D3CA4BA62792C9870683
          D9EFE36B3D734900675DD0EBCBDBB8FEA9271A63965E0406368B8354A3985D3B
          F633D2A532AF74098B663D44766806563CDCB1E05ACC64823D9F1C6264D8C3DC
          DA5274C98290650A0AF36C5AAA6D65F748DAC7E6684BEFD7F594AF3F98B69467
          7EFBD8AA077DC649544526CB5EC48E1DC7F00EC47871E5076465A56018069224
          D1926E05ACE4E765939F97CDFCD9330904C36C7C6337166B0A55D5559CE89798
          35BB5644A3B15D7B4D73A6D9F346CF053D507E4F31F12931E7A32B96BE99511C
          C7340D326D05FC75D37BDC5AF338BFB8FB21545560180600A669621806393939
          E4E4E4609A260056D5C2BC59956026797FF74166D7CD24184B929D93A9F8FDA1
          85634AD9CBF6C2D946F44CD364006F5B80F98B9DFF5E78C7F5C5FEE859AC8AC6
          C7BB7BB9FB87BFA3AEB20A59962744C601F2F2F2C8CDCD9DF47CDC8AF27370E6
          67F2E1DE26A69797128925C9CAC9C86A6BED94479B36ED9EE4818CBA0749A9F0
          56DE77CF957FF08BD31898687A31EE6E1BF7DD741FEDEDC7E9EAEAC2E974629A
          E684E0F963212667B4699AE464A59388C5F0FBFCE8AA1D4C88C6E273FB03592F
          A4975E198B9E694202F0B93631A568F897B9C58504225124338D9DEFED614DC3
          B324933A3535351C387080E79F7F1E8BC5826118134B300E313E3E1FCC300C6E
          9C7F391D9DA7A82DC941D36CD45E5E61552C4AC3786D906A1BC9732EE1896020
          B2C8170B13188BA19869B8CF78F8F3DB6BF087BDE8BACE238F3C82CBE562D9B2
          652412894910DF0662180677DD5847EFC91E2C160B690E8DEAEA692BC73D25E9
          3A77AFF8E9EA75F7FCACC1D9DC77147F244AFB9976162EBD1DAD50B0DBF516A6
          69A2EB3AEBD7AF67707090050B16D0D1D131E1F6AF8B9F0F954824B05B059D5D
          7D1464A762B5AA64E564D6907D9B0A207B8EF24538ED78458EB3ECB2017F1F98
          828491208D2C6243B0FCE6D518A60E80AAAAD4D7D7B375EB56B66DDB86CFE7C3
          300CCACBCBD1757D0268FC1E8FC771BBDD4802761F38CE95F5B50CBA83044363
          527B67DF3BE668CB9054DB08C7F7DFF42FCF895E32B4427C9130CEF41ADCAD5E
          7E75E73AE2C9D8A4D4ABA8A860CD9A35783C1E5C2E171B366CA0B1B1118BA240
          328988462110401F1D450F87D1AC563C6E37AA9420118B23C912A9A97610E44D
          342369DA92BBEE5F71CB76336B1B2953B3E93F7090EB331B4924122C5EBC98FC
          FC7C841008219024095996A9ACACA4B9B9194908B66CDCC8DCA95329F17AA1BB
          1B23183CF76387034B65257167291D119DC48C2B38D8E5A6BBA79F8D2FBFF163
          A3FBF5EDCA973E4B58A47412A16ABCED1F5197F918F573ABA8985181CD66C334
          CD090080A46170EBFCF9BCF4DC73DC3273260BA351AC3B7722E2715055E4F194
          0C8749F69D022D95EA3973885905436A2E1D091D0471E05C1A62321C0A85A972
          2EE1D7F77E44DCD0A89E593D9172E78B0B4922F6E9A73C9C9ACAD279F328397C
          18FBB163586419A169084541C8F2B9CB6241D25251741DE3F3CFB11CFA821B62
          834C951260323C01600482CD6EB737194FC4E93BEBC66EB71189C6BFB9799065
          22FBF6E17EE105CA9F5A4BEE9123587A7B11AA8A29045CA0229E2B7732922CC3
          8913A87DA75856A2704D6D69CB571EF0EC8C7B3DA3ADB1589CA19110D34A0B69
          3D797A52440B4922FAC9279C59B78EFCD75E436A6B23E97221A9EA256E7D0492
          10C40F1D224F53D97C7BD9EA49DDB0ADAD7BC3FCEBE6BC9491EEC05959C6F637
          DF65566D29926922290A917DFB187EF65972B76DC32604B1234D601898CA570D
          35F3D5572FA83DDAD030E1094B2884D9DD8DD559FA00F08C34DE0B92C9E4DF5B
          9A3BA2E17084963E0F7367D7B073CF5100A2070E4C88A7D9ED884010BDA313C9
          62F9DE9B50292585706B1B8ADD3E6D62097CAE4DE827B7049B8F1CFFA377D44F
          381C41CDCC656824CC91F67EA4DA5AA66CD9429ADD8E2449108FC3D8D8B975FF
          DE04127A388CEA70F0550C00F98B3613EAFFE2993D1FEEEFF70742F49EF632FB
          AA59BCF7593B874F0CA1391C08C437BADEFF6A1300A7DF69247ED665B4ECDDFA
          F3CF3F6B8AFBFC415A7ADD5C7FD3D51C3F35C29F36BFCBB03770AE18A5A42069
          1AE26251FF6D6618C89A4622149A0C30FEDAF49FE8DDFBF63F1E3F7CA8C5F4F9
          02B49E3A4B46B1936BAFABE795ED9FF2D48B6F321049629495612412DF5B5F8F
          46B1D7D4901C1BEBBED09E5007464D4FD3C1775F8BAEF48EFC64FD7537CC4D8D
          C7138C866C54D65D4171B6C660208C567339D2D1A328A639110B13D17E51759D
          84A6A1969511397DFA6F173B17C4000B51776CA8AB65D7C08828B7698E025555
          0845E20CFB228CC64C724BF271F847607000A128DF3D75D344370C94FA7AE219
          19C3250D0D8BD7AE5D6B5E08C00042804E322CF94F1DFAE0584BCF31B7375E1C
          89E953144526128D13489AE49515A27ADD088FFB5CA593A48BCEDCD075A4EA6A
          F4AACA84E470DC993A7D7ACF771DCD2420159802640232A925C5682575A515B5
          F332B2B38A7E545F9D75EF8C2CADB4B359B11C7509118B0961B5C278A6180666
          2C86A1692873E6A09797FB445EDE8AEC3973DE124218977436FC122405D000C7
          9763191059D9D9F2EF9F7CB262E135D7DC99E6F1D4CAADADC5C9AE2E3BD1A82A
          00525351AAAA902A2A42BAA67D9879D555AB3BA1A74208FD920FA71738CC4AE7
          5DA2A8A848AC5AB54A5DB17CF90FD252521648A6E934138952D330743925A517
          456912AAFA81A4AA27C479C2E3F61FE9164E2932DD9A920000000049454E44AE
          426082}
        ImageHeight = 32
        ImageWidth = 32
      end
    end
    object Options_List: TPanel
      Left = 35
      Top = 32
      Width = 443
      Height = 804
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      Visible = False
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 443
        Height = 804
        HorzScrollBar.Visible = False
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
        object textopt9: TLabel
          Left = 14
          Top = 194
          Width = 103
          Height = 13
          Caption = 'Use blank Home Page'
        end
        object Label1: TLabel
          Left = 14
          Top = 226
          Width = 97
          Height = 15
          Caption = 'Homepage Address:'
        end
        object Label2: TLabel
          Left = 13
          Top = 439
          Width = 94
          Height = 13
          Caption = 'Save Downloads in:'
        end
        object textopt14: TLabel
          Left = 14
          Top = 528
          Width = 116
          Height = 13
          AutoSize = False
          Caption = 'Language Selected: '
          EllipsisPosition = epEndEllipsis
        end
        object Label5: TLabel
          Left = 234
          Top = 711
          Width = 4
          Height = 13
          Caption = ':'
          Enabled = False
        end
        object Label6: TLabel
          Left = 242
          Top = 689
          Width = 24
          Height = 13
          Caption = 'Port:'
          Enabled = False
        end
        object Label4: TLabel
          Left = 13
          Top = 689
          Width = 74
          Height = 13
          Caption = 'Proxy Address:'
          Enabled = False
        end
        object SpaceLabel: TLabel
          Left = 2
          Top = 479
          Width = 3
          Height = 13
        end
        object Label9: TLabel
          Left = 14
          Top = 372
          Width = 155
          Height = 13
          Caption = 'Days to clear cache and history:'
        end
        object Label11: TLabel
          Left = 14
          Top = 1037
          Width = 249
          Height = 13
          AutoSize = False
          Caption = 'Enable Plugins (PPAPI)'
          EllipsisPosition = epEndEllipsis
          ParentShowHint = False
          ShowHint = True
        end
        object Label12: TLabel
          Left = 14
          Top = 1073
          Width = 85
          Height = 13
          Caption = 'Enable JavaScript'
        end
        object Label13: TLabel
          Left = 14
          Top = 1111
          Width = 69
          Height = 13
          Caption = 'Enable WebGL'
        end
        object Label14: TLabel
          Left = 14
          Top = 1147
          Width = 61
          Height = 13
          Caption = 'Load Images'
        end
        object Label18: TLabel
          Left = 14
          Top = 809
          Width = 56
          Height = 13
          Caption = 'Block Level:'
        end
        object Label19: TLabel
          Left = 14
          Top = 777
          Width = 304
          Height = 13
          AutoSize = False
          Caption = 'Select pages to permanently unblock'
          EllipsisPosition = epEndEllipsis
          ParentShowHint = False
          ShowHint = True
        end
        object Label21: TLabel
          Left = 14
          Top = 939
          Width = 200
          Height = 13
          AutoSize = False
          Caption = 'Use Adblock for Web Explorer'
          EllipsisPosition = epEndEllipsis
        end
        object Label22: TLabel
          Left = 14
          Top = 972
          Width = 304
          Height = 13
          AutoSize = False
          Caption = 'Select adress to permanently block'
          EllipsisPosition = epEndEllipsis
          ParentShowHint = False
          ShowHint = True
        end
        object Label25: TLabel
          Left = 14
          Top = 1396
          Width = 187
          Height = 13
          AutoSize = False
          Caption = 'Default Zoom:'
          EllipsisPosition = epEndEllipsis
        end
        object Label27: TLabel
          Left = 14
          Top = 1287
          Width = 140
          Height = 13
          Caption = 'Disable Browser Compatibility'
        end
        object Label28: TLabel
          Left = 14
          Top = 1183
          Width = 206
          Height = 13
          AutoSize = False
          Caption = 'Use hardware acceleration'
          EllipsisPosition = epEndEllipsis
        end
        object Label29: TLabel
          Left = 298
          Top = 689
          Width = 93
          Height = 13
          AutoSize = False
          Caption = 'Proxy Protocol:'
          Enabled = False
        end
        object Label30: TLabel
          Left = 14
          Top = 1219
          Width = 206
          Height = 13
          AutoSize = False
          Caption = 'Enable WebRTC support'
          EllipsisPosition = epEndEllipsis
        end
        object Label7: TLabel
          Left = 14
          Top = 655
          Width = 276
          Height = 13
          AutoSize = False
          Caption = 'Use System Proxy'
        end
        object Label26: TLabel
          Left = 14
          Top = 903
          Width = 91
          Height = 13
          Caption = 'Enable Geolocation'
        end
        object Label31: TLabel
          Left = 14
          Top = 1448
          Width = 187
          Height = 13
          AutoSize = False
          Caption = 'Reader Mode Style:'
          EllipsisPosition = epEndEllipsis
        end
        object Label32: TLabel
          Left = 14
          Top = 1323
          Width = 77
          Height = 13
          Caption = 'Smooth scrolling'
        end
        object Label33: TLabel
          Left = 14
          Top = 1359
          Width = 69
          Height = 13
          Caption = 'Mute all pages'
        end
        object textopt19: TLabel
          Left = 14
          Top = 160
          Width = 304
          Height = 13
          AutoSize = False
          Caption = 'Use Instant Search for search bar'
          EllipsisPosition = epEndEllipsis
          ParentShowHint = False
          ShowHint = True
        end
        object textopt20: TLabel
          Left = 14
          Top = 126
          Width = 304
          Height = 13
          AutoSize = False
          Caption = 'Edit search bar provider'
          EllipsisPosition = epEndEllipsis
          ParentShowHint = False
          ShowHint = True
        end
        object textopt8: TLabel
          Left = 14
          Top = 281
          Width = 304
          Height = 13
          AutoSize = False
          Caption = 'Open Speed Dial on open new tab'
          EllipsisPosition = epEndEllipsis
          ParentShowHint = False
          ShowHint = True
        end
        object openbt1: TSpeedButton
          Left = 388
          Top = 619
          Width = 20
          Height = 20
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = openbt1Click
        end
        object Label34: TLabel
          Left = 14
          Top = 621
          Width = 276
          Height = 13
          AutoSize = False
          Caption = 'Configure System Proxy'
        end
        object opt19BT: TSpeedButton
          Left = 388
          Top = 122
          Width = 20
          Height = 20
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = opt19BTClick
        end
        object opt10BT: TSpeedButton
          Left = 388
          Top = 773
          Width = 20
          Height = 20
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = opt10BTClick
        end
        object opt11bt: TSpeedButton
          Left = 388
          Top = 968
          Width = 20
          Height = 20
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = opt11btClick
        end
        object optpanel4: TPanel
          Left = -80
          Top = 122
          Width = 80
          Height = 30
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 17
          Visible = False
          object opt4: TToggleSwitch
            Left = 3
            Top = 4
            Width = 72
            Height = 20
            State = tssOn
            TabOrder = 0
            OnClick = opt4Click
          end
        end
        object Panel5: TPanel
          Left = -2
          Top = 1506
          Width = 369
          Height = 11
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 10
        end
        object Panel8: TPanel
          Left = 6
          Top = 405
          Width = 415
          Height = 22
          BevelOuter = bvNone
          Color = 15329252
          ParentBackground = False
          TabOrder = 2
          object textopt16: TLabel
            Left = 8
            Top = 4
            Width = 105
            Height = 13
            Caption = 'Download Explorer'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object Panel7: TPanel
          Left = 6
          Top = 497
          Width = 415
          Height = 22
          BevelOuter = bvNone
          Color = 15329252
          ParentBackground = False
          TabOrder = 3
          object textopt13: TLabel
            Left = 8
            Top = 4
            Width = 134
            Height = 13
            Caption = 'Language Configuration'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 316
            Top = 4
            Width = 87
            Height = 13
            Alignment = taRightJustify
            Caption = '*Needs Restart'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object Panel1: TPanel
          Left = 6
          Top = 584
          Width = 415
          Height = 22
          BevelOuter = bvNone
          Color = 15329252
          ParentBackground = False
          TabOrder = 4
          object Label3: TLabel
            Left = 8
            Top = 4
            Width = 196
            Height = 13
            Caption = 'Global System Proxy Configuration'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object proxyaddress: TEdit
          Tag = 2112018
          Left = 14
          Top = 708
          Width = 214
          Height = 21
          Color = clWhite
          Enabled = False
          TabOrder = 5
        end
        object proxyport: TEdit
          Tag = 2112018
          Left = 242
          Top = 708
          Width = 48
          Height = 21
          Color = clWhite
          Enabled = False
          MaxLength = 6
          NumbersOnly = True
          TabOrder = 6
        end
        object cachedays: TSpinEdit
          Tag = 2112018
          Left = 175
          Top = 369
          Width = 38
          Height = 22
          MaxValue = 50
          MinValue = 1
          TabOrder = 8
          Value = 7
          OnChange = cachedaysChange
          OnClick = cachedaysClick
        end
        object Panel3: TPanel
          Left = 6
          Top = 999
          Width = 415
          Height = 22
          BevelOuter = bvNone
          Color = 15329252
          ParentBackground = False
          TabOrder = 9
          object Label10: TLabel
            Left = 8
            Top = 4
            Width = 157
            Height = 13
            Caption = 'Plugins and General Options'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 316
            Top = 4
            Width = 87
            Height = 13
            Alignment = taRightJustify
            Caption = '*Needs Restart'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object LanguageComboBox: TComboBox
          Left = 14
          Top = 547
          Width = 395
          Height = 21
          Style = csDropDownList
          TabOrder = 11
          OnChange = LanguageComboBoxChange
          Items.Strings = (
            'American English (EN-US)'
            'Portugu'#234's Brasileiro (PT-BR)'
            'Espa'#241'ol (ES) '
            'Canadienne Fran'#231'aise (FR-CA)')
        end
        object opt10: TComboBox
          Left = 14
          Top = 829
          Width = 395
          Height = 21
          Style = csDropDownList
          ItemIndex = 1
          TabOrder = 12
          Text = 'M'#233'dio: Bloqueia a maioria dos pop-ups (Padr'#227'o)'
          OnChange = opt10Change
          Items.Strings = (
            'Alto: Bloqueia todos os pop-ups'
            'M'#233'dio: Bloqueia a maioria dos pop-ups (Padr'#227'o)'
            'Baixo: N'#227'o bloqueia nenhum pop-up')
        end
        object Panel6: TPanel
          Left = 6
          Top = 742
          Width = 415
          Height = 22
          BevelOuter = bvNone
          Color = 15329252
          ParentBackground = False
          TabOrder = 13
          object Label17: TLabel
            Left = 8
            Top = 4
            Width = 86
            Height = 13
            Caption = 'Pop-up Options'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object Panel9: TPanel
          Left = 6
          Top = 866
          Width = 415
          Height = 22
          BevelOuter = bvNone
          Color = 15329252
          ParentBackground = False
          TabOrder = 14
          object Label20: TLabel
            Left = 8
            Top = 4
            Width = 42
            Height = 13
            Caption = 'Privacy'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object Panel10: TPanel
          Left = 6
          Top = 1249
          Width = 415
          Height = 22
          BevelOuter = bvNone
          Color = 15329252
          ParentBackground = False
          TabOrder = 15
          object Label23: TLabel
            Left = 8
            Top = 4
            Width = 70
            Height = 13
            Caption = 'Accessibility'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 315
            Top = 4
            Width = 87
            Height = 13
            Alignment = taRightJustify
            Caption = '*Needs Restart'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object ZoomComboBox: TComboBox
          Left = 13
          Top = 1415
          Width = 396
          Height = 21
          Style = csDropDownList
          TabOrder = 16
          OnChange = ZoomComboBoxChange
          Items.Strings = (
            '400%'
            '350%'
            '300%'
            '250%'
            '200%'
            '150%'
            '100%'
            '50%')
        end
        object Panel4: TPanel
          Left = 6
          Top = 90
          Width = 415
          Height = 22
          BevelOuter = bvNone
          Color = 15329252
          ParentBackground = False
          TabOrder = 0
          object textopt7: TLabel
            Left = 8
            Top = 4
            Width = 195
            Height = 13
            Caption = 'Home page, Search and Speed Dial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object optpanel5: TPanel
          Left = 335
          Top = 187
          Width = 80
          Height = 30
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 18
          object opt5: TToggleSwitch
            Left = 2
            Top = 4
            Width = 72
            Height = 20
            Alignment = taLeftJustify
            TabOrder = 0
            OnClick = opt5Click
          end
        end
        object optpanel2: TPanel
          Left = 335
          Top = 365
          Width = 80
          Height = 30
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 19
          object opt2: TToggleSwitch
            Left = 3
            Top = 4
            Width = 72
            Height = 20
            Alignment = taLeftJustify
            State = tssOn
            TabOrder = 0
            OnClick = opt2Click
          end
        end
        object optpanel3: TPanel
          Left = 335
          Top = 644
          Width = 80
          Height = 29
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 20
          object opt3: TToggleSwitch
            Left = 3
            Top = 7
            Width = 72
            Height = 20
            Alignment = taLeftJustify
            State = tssOn
            TabOrder = 0
            OnClick = opt3Click
          end
        end
        object optpanel11: TPanel
          Left = 335
          Top = 897
          Width = 80
          Height = 60
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 21
          object opt11: TToggleSwitch
            Left = 3
            Top = 39
            Width = 72
            Height = 20
            Alignment = taLeftJustify
            TabOrder = 0
            OnClick = opt11Click
          end
          object opt12: TToggleSwitch
            Left = 3
            Top = 3
            Width = 72
            Height = 20
            Alignment = taLeftJustify
            TabOrder = 1
            OnClick = opt12Click
          end
        end
        object optpanelPlugs: TPanel
          Left = 335
          Top = 1031
          Width = 80
          Height = 212
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 22
          object opt6: TToggleSwitch
            Left = 3
            Top = 3
            Width = 72
            Height = 20
            Alignment = taLeftJustify
            State = tssOn
            TabOrder = 1
            OnClick = opt6Click
          end
          object opt7: TToggleSwitch
            Left = 3
            Top = 39
            Width = 72
            Height = 20
            Alignment = taLeftJustify
            State = tssOn
            TabOrder = 2
            OnClick = opt7Click
          end
          object opt8: TToggleSwitch
            Left = 3
            Top = 77
            Width = 72
            Height = 20
            Alignment = taLeftJustify
            State = tssOn
            TabOrder = 3
            OnClick = opt8Click
          end
          object opt9: TToggleSwitch
            Left = 3
            Top = 113
            Width = 72
            Height = 20
            Alignment = taLeftJustify
            State = tssOn
            TabOrder = 4
            OnClick = opt9Click
          end
          object opt14: TToggleSwitch
            Left = 3
            Top = 149
            Width = 72
            Height = 20
            Alignment = taLeftJustify
            State = tssOn
            TabOrder = 5
            OnClick = opt14Click
          end
          object opt15: TToggleSwitch
            Left = 3
            Top = 185
            Width = 72
            Height = 20
            Alignment = taLeftJustify
            State = tssOn
            TabOrder = 0
            OnClick = opt15Click
          end
        end
        object optpanelAcess: TPanel
          Left = 335
          Top = 1281
          Width = 80
          Height = 105
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 23
          object opt13: TToggleSwitch
            Left = 3
            Top = 3
            Width = 72
            Height = 20
            Alignment = taLeftJustify
            TabOrder = 0
            OnClick = opt13Click
          end
          object opt17: TToggleSwitch
            Left = 3
            Top = 39
            Width = 72
            Height = 20
            Alignment = taLeftJustify
            State = tssOn
            TabOrder = 1
            OnClick = opt17Click
          end
          object opt18: TToggleSwitch
            Left = 3
            Top = 75
            Width = 72
            Height = 20
            Alignment = taLeftJustify
            TabOrder = 2
            OnClick = opt18Click
          end
        end
        object Panel2: TPanel
          Left = 6
          Top = 334
          Width = 415
          Height = 22
          BevelOuter = bvNone
          Color = 15329252
          ParentBackground = False
          TabOrder = 7
          object Label8: TLabel
            Left = 8
            Top = 4
            Width = 102
            Height = 13
            Caption = 'History and Cache'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object opt16: TComboBox
          Left = 298
          Top = 708
          Width = 111
          Height = 21
          Style = csDropDownList
          Enabled = False
          TabOrder = 24
          Items.Strings = (
            'HTTP'
            'Socks V5'
            'Socks V4')
        end
        object ReaderModeComboBox: TComboBox
          Left = 13
          Top = 1467
          Width = 396
          Height = 21
          Style = csDropDownList
          TabOrder = 25
          OnChange = ReaderModeComboBoxChange
          Items.Strings = (
            'Novel - Medium'
            'Newspaper - Medium'
            'eBook - Medium'
            'Novel - Wide'
            'Newspaper - Wide'
            'eBook - Wide')
        end
        object opt_homepage_adr: TEdit
          Tag = 2112018
          Left = 14
          Top = 245
          Width = 395
          Height = 23
          Color = clWhite
          TabOrder = 1
          OnChange = opt_homepage_adrChange
        end
        object Panel11: TPanel
          Left = 335
          Top = 153
          Width = 80
          Height = 30
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 26
          object opt19: TToggleSwitch
            Left = 2
            Top = 4
            Width = 72
            Height = 20
            Alignment = taLeftJustify
            State = tssOn
            TabOrder = 0
            OnClick = opt19Click
          end
        end
        object StartPageOptCombobox: TComboBox
          Left = 14
          Top = 300
          Width = 395
          Height = 21
          Style = csDropDownList
          TabOrder = 27
          OnClick = StartPageOptComboboxClick
          Items.Strings = (
            'Home Page Address'
            'Web Explorer "Speed Dial"'
            'Microsoft "Edge New Tab"')
        end
        object UserProfilePanel: TPanel
          Left = 10
          Top = 7
          Width = 415
          Height = 77
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 28
          object login_image: TImage
            Left = 4
            Top = 6
            Width = 64
            Height = 64
          end
          object UserNameLabel: TLabel
            Left = 77
            Top = 14
            Width = 167
            Height = 25
            Caption = 'Welcome, %USER%'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EditUserLabel: TLinkLabel
            Left = 77
            Top = 44
            Width = 131
            Height = 19
            Caption = '<a href="about:blank">Edit PIN and user details</a>'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            UseVisualStyle = True
            OnClick = EditUserLabelClick
          end
        end
        object opt_downloaddir: TButtonedEdit
          Tag = 2112018
          Left = 14
          Top = 458
          Width = 395
          Height = 21
          Color = clBtnFace
          Images = ItensImageList
          ParentShowHint = False
          ReadOnly = True
          RightButton.ImageIndex = 0
          RightButton.Visible = True
          ShowHint = True
          TabOrder = 29
          OnRightButtonClick = opt_downloaddirRightButtonClick
        end
        object PanelLineDownloadEdit: TPanel
          Left = 223
          Top = 477
          Width = 185
          Height = 1
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 30
        end
      end
    end
  end
  object topbarbuttonPanel: TPanel
    Left = 0
    Top = 33
    Width = 550
    Height = 1
    BevelOuter = bvNone
    Color = 15921906
    ParentBackground = False
    TabOrder = 2
    object menucenter_bevel: TImage
      Left = 35
      Top = 0
      Width = 511
      Height = 385
      Picture.Data = {
        07544269746D61703A000000424D3A0000000000000036000000280000000100
        0000010000000100180000000000040000000000000000000000000000000000
        0000D4D4D400}
      Stretch = True
    end
    object menucenter_bevel2: TImage
      Left = 0
      Top = 0
      Width = 1
      Height = 1
      Align = alLeft
      Picture.Data = {
        07544269746D61703A000000424D3A0000000000000036000000280000000100
        0000010000000100180000000000040000000000000000000000000000000000
        000080808000}
      Stretch = True
    end
  end
  object GDIPPictureContainer1: TGDIPPictureContainer
    Items = <>
    Version = '1.0.0.0'
    Left = 48
    Top = 304
  end
  object SelectDownloadFolder: TJvBrowseForFolderDialog
    Options = [odOnlyDirectory, odNoBelowDomain, odStatusAvailable, odEditBox, odNewDialogStyle, odValidate]
    Left = 48
    Top = 256
  end
  object SettingsTimer: TTimer
    Enabled = False
    OnTimer = SettingsTimerTimer
    Left = 48
    Top = 352
  end
  object UserBTTimer: TTimer
    Enabled = False
    Interval = 250
    OnTimer = UserBTTimerTimer
    Left = 100
    Top = 353
  end
  object ItensImageList: TImageList
    Height = 20
    Width = 20
    Left = 100
    Top = 305
    Bitmap = {
      494C010101001400780014001400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000500000001400000001002000000000000019
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9D9D9007979
      790079797900D9D9D9000000000000000000D9D9D9007979790079797900D9D9
      D9000000000000000000D9D9D9007979790079797900D9D9D900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006F6F6F006666
      6600666666007979790000000000000000006F6F6F0066666600666666007979
      790000000000000000006F6F6F00666666006666660079797900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000797979006666
      6600666666007A7A7A0000000000000000007979790066666600666666007A7A
      7A0000000000000000007979790066666600666666007A7A7A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9D9D9007A7A
      7A007A7A7A00D9D9D9000000000000000000D9D9D9007A7A7A007A7A7A00D9D9
      D9000000000000000000D9D9D9007A7A7A007A7A7A00D9D9D900000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000050000000140000000100010000000000F00000000000000000000000
      000000000000000000000000FFFFFF00FFFFF0000000000000000000FFFFF000
      0000000000000000FFFFF0000000000000000000FFFFF0000000000000000000
      FFFFF0000000000000000000FFFFF0000000000000000000FFFFF00000000000
      00000000FFFFF0000000000000000000FFFFF0000000000000000000C30C3000
      0000000000000000C30C30000000000000000000C30C30000000000000000000
      C30C30000000000000000000FFFFF0000000000000000000FFFFF00000000000
      00000000FFFFF0000000000000000000FFFFF0000000000000000000FFFFF000
      0000000000000000FFFFF0000000000000000000FFFFF0000000000000000000
      00000000000000000000000000000000000000000000}
  end
end
