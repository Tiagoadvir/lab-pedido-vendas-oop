object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrmPrincipal'
  ClientHeight = 699
  ClientWidth = 1162
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 15
  object PBase: TPanel
    Left = 0
    Top = 0
    Width = 1162
    Height = 699
    Align = alClient
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 0
    object PTopo: TPanel
      Left = 0
      Top = 0
      Width = 1162
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      Caption = 'dsCliente'
      Color = 9286144
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 134
        Height = 28
        Caption = 'SisHosp - PDV'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 31
        Width = 200
        Height = 28
        Caption = 'Bem - Vindo. Hoje '#233' :'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDataHora: TLabel
        Left = 214
        Top = 31
        Width = 6
        Height = 28
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCliente: TLabel
        Left = 687
        Top = 24
        Width = 83
        Height = 28
        Caption = 'Cliente : '
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbldsCLiente: TLabel
        Left = 784
        Top = 24
        Width = 6
        Height = 28
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object prodape: TPanel
      Left = 0
      Top = 634
      Width = 1162
      Height = 65
      Align = alBottom
      BevelOuter = bvNone
      Color = 9286144
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 640
      object Label4: TLabel
        Left = 8
        Top = 23
        Width = 77
        Height = 23
        Caption = 'Operador'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblOperador: TLabel
        Left = 106
        Top = 23
        Width = 60
        Height = 23
        Caption = 'Sishosp'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnListarCliente: TSpeedButton
        Left = 184
        Top = 6
        Width = 129
        Height = 51
        Caption = 'Listar Liente (F8)'
        OnClick = btnListarClienteClick
      end
      object Panel2: TPanel
        Left = 331
        Top = 6
        Width = 129
        Height = 51
        BevelOuter = bvNone
        Caption = 'PButton'
        TabOrder = 0
        object btnProdutos: TSpeedButton
          Left = 0
          Top = 0
          Width = 129
          Height = 51
          Align = alClient
          Caption = 'Listar Produto (F9)'
          OnClick = btnProdutosClick
          ExplicitLeft = -8
        end
      end
      object Panel4: TPanel
        Left = 626
        Top = 6
        Width = 129
        Height = 51
        BevelOuter = bvNone
        Caption = 'PButton'
        TabOrder = 1
        object btnListaVendas: TSpeedButton
          Left = 0
          Top = 0
          Width = 129
          Height = 51
          Align = alClient
          Caption = 'Listar de Vendas (F11)'
          OnClick = btnListaVendasClick
          ExplicitLeft = -40
          ExplicitTop = -8
        end
      end
      object Panel3: TPanel
        Left = 474
        Top = 6
        Width = 129
        Height = 51
        BevelOuter = bvNone
        Caption = 'PButton'
        TabOrder = 2
        object btnGravarVenda: TSpeedButton
          Left = 0
          Top = 0
          Width = 129
          Height = 51
          Align = alClient
          Caption = 'Gravar Venda (F10)'
          OnClick = btnGravarVendaClick
          ExplicitLeft = -40
          ExplicitTop = -8
        end
      end
      object Panel6: TPanel
        Left = 992
        Top = 6
        Width = 115
        Height = 51
        BevelOuter = bvNone
        Caption = 'PButton'
        TabOrder = 3
        object SpeedButton1: TSpeedButton
          Left = 0
          Top = 0
          Width = 115
          Height = 51
          Align = alClient
          Caption = 'Sair'
          OnClick = SpeedButton1Click
          ExplicitLeft = 40
          ExplicitTop = 8
          ExplicitWidth = 129
        end
      end
    end
    object pProduto: TPanel
      Left = 0
      Top = 65
      Width = 784
      Height = 569
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object gridPedido: TDBGrid
        Left = 0
        Top = 0
        Width = 786
        Height = 569
        Align = alLeft
        DataSource = dsPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = gridPedidoDblClick
        OnKeyDown = gridPedidoKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo_produto'
            Title.Caption = 'Cod'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Width = 457
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Qtd'
            Title.Alignment = taCenter
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco_venda'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Unitario'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            Title.Alignment = taCenter
            Width = 97
            Visible = True
          end>
      end
    end
    object pInformativo: TPanel
      Left = 784
      Top = 65
      Width = 378
      Height = 569
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Align = alRight
      BevelOuter = bvNone
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      ShowCaption = False
      TabOrder = 3
      object lblCodigo: TLabel
        Left = 24
        Top = 232
        Width = 85
        Height = 15
        Caption = 'Codigo Produto'
      end
      object lblProduto: TLabel
        Left = 24
        Top = 300
        Width = 43
        Height = 15
        Caption = 'Produto'
      end
      object lblQTD: TLabel
        Left = 24
        Top = 363
        Width = 62
        Height = 15
        Caption = 'Quantidade'
      end
      object lblVlUnitario: TLabel
        Left = 24
        Top = 427
        Width = 71
        Height = 15
        Caption = 'Valor Unitario'
      end
      object btnPesquisar: TSpeedButton
        Left = 264
        Top = 34
        Width = 75
        Height = 25
        Caption = 'Pesquisar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnlImage: TPanel
        Left = 10
        Top = 10
        Width = 358
        Height = 185
        Align = alTop
        TabOrder = 0
        object ImgProd: TImage
          Left = 104
          Top = 8
          Width = 169
          Height = 161
          Center = True
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000DA0000
            00730803000000C9D0ECCF0000006F504C5445FFFFFF221F1FEC3137F16569C6
            C6C6000000908F8F595757F1F1F1D4D4D4302D2DF5989B757373E3E3E3FACBCD
            7F7F7F4040404C4949ACABAB3E3B3BF27276EE4B509E9D9DF48B8F101010F9BE
            C0676565F7A5A7F0585DFDE5E6BAB9B9FBD8D9F8B1B4ED3E44FEF2F2505050F3
            7F8287313A2500000CF94944415478DAED9B0B57E2C812803BE441420860F005
            73C559EFFEFF5FB43B77C41D9D510908848424905BD595CE4B22E238CE610F75
            8E0A49BAD35F755575F54389FD6B45FADD0D38A01DD00E68FB2E07B47D9403DA
            3ECA016D1FE580B68F7240DB4739A0EDA31CD0F6510E68FB2807B47D9403DA3E
            CA016D1FE5B56897B5EBC1D7DFDDD89C7C1E5EFA77EF8376ECB0CBFFBDF4801E
            451F89763262D2EA7DD06AF0B37E4683BF550F3FDAA0C293FBDD9A47E5A3AA3A
            5F92CB1BC6BA0FEF82D6FB01BF3EDDE4DBB0B61C7173363BE5AFD19FB58857AF
            06C9372DC45FCB52F9DE7D94D6694EC4A3DAAC2E8AB18EE12FFC42BD9FEE36A8
            FA6D6867D8F4E634BB3078CC61C8116F34FC7D359AEDE7CAF71CDE70432AD499
            A1E1BDE361BE5E397E373430ED029A52B07339B2C7F8B7397B2D5AD32D3CD6F1
            FC1259198DB18B3C5B8D5FB97E07B48B6FF83B1722BB644CC6AA31E1CD60ED29
            33746773F5CFD1A893F36CA09AA3C418B5A4CE129AB1CE6C92FB47C18ADE8CC6
            4D9B19A9AAA9D33A3334404577E5CAE0B819CDA046DAB2C35A2EDD5403BA683F
            615D861606840665951A29E228D31CF78FF7413B768A68A4751135ACD0AF2AB8
            198DFAC38C0886DB32AB475C5DC2ECA04E81C61805A9D6535A2DF70FD6FBF60E
            6835D2F263112DD75906BAB44EEF3664152DAA134AB3CD68D43F9D717295FCEE
            843DE4D1103645630D8FA5A19509FFC8A9FAED6864DAB93192346DC4A9DF730B
            A577B7533301F48D6825C558737E6FC56B3782545F3934FE314323FF78173432
            ED1C1AB5066C6AE595D1721142A099C25E75973FC51B6A2C8ADDC3EA49CB4D3F
            2AA3E9FC96391705C83FB6A523AF4243D396E2FC40D217F99BB68A8A68DC76EC
            C83B5E3A02AD28DAB2645E8936E2B4BB3B925344A307B23002FED1BF7D173434
            6D7B5C40D30D913630ADE6E5D02876D6B19F06E3D966B4A295A64129CEEAECE0
            80CED1A0C7ED27FE6816FCD13F4E1E63D6FFE7A7D1D0B47B1378D9E72F199B9D
            E6DD389E95D0D26C7217344F5732E7812E2A8D6B59A7A17F9CDDC7DBD291D7A0
            A1697F72BCD240A2C8E9AB752F4523B7008B0CBC97D132CF110659ACB33C64E7
            5481FEB196DF05AD8659B6E93D1B23AD38D172EF36F3B53485E286BA318CF054
            268DFDA2484C75D6422FD1401E8D467212EE1F8F66D18ADE86C64DFB470BB47C
            569EFC5901BD3ECED0F4386D118C511B833FB5394B38396A1A5684A9D7794536
            BCB6FB28E7B34BEE1FDF36A87A77346EDA7788B66120A166E6D0A03571120E20
            BE6F442B25173448E6267B147E653960053B14C2FDE306017F1A8D9B369FFCA5
            6806136A243FA12C2955BC65ACB8CFCBD146B464544CE24292F037A350D81CB1
            56A271FF60A8EA979734B6A39169F31AAFFE4AAE292B53E2F6940C02D46BE82E
            3AE38EA59B4E359AF047B5E6A71337735EAE930CF2391AF907ABB0A2AD6897FF
            1C99623244A6CDD1D23112493A6B8F696BDE2E6D4968A6DF9FFB113A067585EE
            6D462370900E4B6CD7767D51A74171C41EE512ADDEFD514B840CF20FAEF1B7A0
            FDE736CB85C9B48B0B2DC59928F48EC8BC98CA5B2F27ADAB9AAF15679D948D96
            EABC18E6D0FEB8C68E2221FFE0AACEF2F557A35D7DCD2DAA40B5FC330C24E99A
            56B119E8342252ABB94966557A8C2C8DFCB495271FC53A61D8CBD0D0F8845A85
            7F14ACE8F5683CD34FC643AC966B2C3F465A5AD6329A908A7EC8D0EC85F7C2DA
            88BE5644C71911FA5CA14EDB1CE673480CF442D5C23FB62FD76D44CB2FF224A6
            CDD89F5FF2C3BF612DB13D7A7D96B450C760AED7A712BF218622853F2B46300B
            AFA50B7183EF123E783ECCEA9C48B93A8D5094CD2FF208FF2858D1EBD1C0D578
            64BDB8A1CFBC5654DD9685965F257C260CAABEBC16A19F15ADE8D568E86AA0AF
            B3E0B6AF85C2B4D9F6E1FF57498BC7A8C14AB9B61F93D0CFC89C7646A349B5AD
            C21FE36428D620F0EAEF4133C93E314D1878C23FB6AB7A131A4DAAFB63287B39
            8C85196E1F237F95705763B60CCDEAB291E8AB37A17157038EC4DF93D8F4FBD0
            68D1A97F477303319A6DCCD74B689F6F4AD7922AFA4498A6573561E597EE987D
            A0F492764849BB9235BA4CD597E5D9F6F18F04ADB6A1BAEE28FB2C54938E91C7
            0EFB68116A4649765532B4FFDC961FE77973055A2FD7D362C297A2FDF1F14380
            912566699A24AC8802FA46B4670689D3C16C61361DF2E564A105539DEEC776DC
            85932D37A4C9A45035765FB13DA9416E14EACAABD575B6FC2CC6C8CFC3AD6BD2
            EFCF46EFBBFA928B8A603C1CAD2A5456A151C0358E1F3B2904BA18A2E1D8F0E1
            6909A9BA694E5BA9AB401345DE8E4ED39B1E171B558546A1A2308D45ED7CCAA7
            5E1F29A4EA42E7082BC205D77FAE82B01676FECA17A942A30CA05095E8F8ADB3
            895F21C7169B3BB6955FC24AF2755CD938F971A668E1D808F2EDAD42A364AB60
            77E86380F6FB86EE9224F93ACE72065FE5D51F613C5BE5DB558576C9C366C1EE
            9009C207D678B6E5C8C687A181AAB1F33EDDFC79EF1ECFD9C9D757A091DF3E43
            83EE4ABCF6F74B624530258579DBE52236FC7A212DA944C32588E27E41B2D022
            161498A2874C7F6A4F73BB953F2F58A9EA3FDF40B682EE6318172E9115890585
            8BE0F1BC5ED078251A764E295AF08516B4549E550EB8C9C6EDA958BD572C3760
            3F29B48C575CA1B3ACC98269E622E815132AB2220C0A9B5DBF120D2DF9AA104C
            2934A219F031A17FD7F158C3B13C98E35B1E4CA7621777FD60DA1FC177985D19
            3323847B7AC4D70CE03A5F0C304225628A9F5C860723E6417145EC6BAB3254E5
            E0EDE4A1B8F5C064C587F2F80CBE29598FC004CB707194DD3CB7A944C3C053D2
            060C68D20ABD9607CEA66B34A73ED34235C0E55E2DC6A58C18D58E5BBA9D094F
            448DB58F6F683DE1BE20EF8C7A00B78CD8A3CB5A68785AFB416C1E1F4D121350
            34408819AE25C9683AF2E91D5FACE4DB8B623B8AABBA7A1DA1122D898779E1B5
            001FADB6E01A96A13B88D6F05A6E6B2A075ADC1CDB4FD6E4681E1ACD397488E2
            5D0C9B7EFF86C51253CF6F234253C349EF962E6B213365597174973349EC6228
            D1C6E9C924EC3D86DACAF66297A9F59A3CB52627CE8AA99A2B7642385AF5285B
            BD302EC77DEDCB33B4CF5FD3AAF87E91BE02B4FE1DEB8D3D84D4427BDE745416
            B69EEA811AC04F4DA9839263C85F7BB319473B724E1F34892E6B212029B2ECD1
            1A9EC44EEEEB8D096ED96B8D89A18F616E7DAFAC600639F8015D0EF5C2630D2F
            D9E1C77C7D3ACF25CCAF457B2EE87E83A1B0539867E84B7C9B1AE8CADA331684
            D6819BEB5AC8B1F047737B0A748F15AF3D7B94A069A1A6D2652C036D6D792147
            43FFF59515A2A9F035C04D1F99019AE11BCD85FB1C8DCFBE2A46D95DD170AA4B
            5E5B6FB8601B17DFC38EA4FBF3109BD9719B63A31905732D439302539E820FDA
            DF437EE8000CD2553C7199A3415F85138E061D642FD5091A64EFDE0C0CC5693B
            4753E0847A75DF53D72BD632EFC4AE36A2D94EE9C4DFDBD150C86BF92E58EB09
            5AA3D1322FAE6CF330421D98A09DDF60FFC6F81EEEFEF500BE76BC53BACCD1EA
            01EB101A1BB80EAF95EFDFC878824993FCA309BB78F480420D308CA467C1B03D
            97D795E7227741A3F5C074204F4236C4EF304A3EF1705E3ABC6979788F823947
            93F9F14EBA4CA2E48E7626419E2918E48D90DF5158A447F40CD493569FA8BA34
            44FD0C5A85D7BE5200EDBD4EF226877EAAA6C5BBA051CACC7EEE7875DBAF6D3B
            7DFB5A49545D352DDEE9303C4D752BBC7637E189CAD66714FFA5FB095AD5B478
            77B497B7470A4D8BD47555DB3A6E23CDAAF53AB4629E9AA965B2099DBD73E317
            6D97164C2AA7C53BA1F163882F6F45169AAF3F55DA5E1E0D8742961ED266FD87
            64EB6D1B1AA9BA725ABC131A5FA0A8F25AC594E786ECB0D325F3702FD05A1ACC
            8DAC9A5BEBDC2B267CD45B4B56E74728EC150BC3C61A1E901148052E23F6A960
            9BAD676DF604D5784A1847869694A944AB9C16EF8E56B585A0F0AAE844EBE06F
            CC97F1EB14AE9A1A2EA45B0C9D0BFBAACDCF0B363C7CE008DA7D3E8AD49A6F61
            C1935B95C511641D4D3ECCC52D5166A3702BAA9C16EF8486597FA5D72A523758
            BB83BFB5E6D190C1586BA9CA3C1C5C4B6C30AB8D2463614E6CC51AE241FEF351
            23688F1A6B7C00BF2BC723D67DF2A820A141BADF70251CD21BF571F7FB0BAAAE
            3E5EB7131ACFB4AABC5691CC497B612EDBA84A403BC5AE32E7120B0DEE31DD40
            833B88022DF7C1D7EAFC013C5DA1B71E145190D0207B0959238CA97961C52B11
            AD6AC07E035AE5809DA0351E06DF56D898F3D1111B73347DC5EA328CD52E7404
            A1598EA4348C91D49CF15E8B5856106E7A115E5262488B8F4703885A550689D3
            D0EA517627349CAC577A6D8AD6FDA1109ADA1A713408755D3F68062E3639E611
            31525863AAE003DC40BB23566F51C1FF0E717B306C84F827D6975052AD427B79
            7B7D27B42BDCDDAEF25AA31ECD4F8328D2DD011BF93EB3C767E6285AD5D9040F
            CB29AAEE49E1C9028FF7E89F86308DD39C153E30A7BBEA934E0525291C788B89
            D11F9A8DC5D26B4FF15EC52B2F7077BBB2B5877FCDDB4739A0EDA31CD0F6510E
            68FB2807B47D9403DA3ECA016D1FE580B68F7240DB4739A0EDA31CD0F651FEC5
            68FF07771E4ACE474A1ED20000000049454E44AE426082}
        end
      end
      object edtCodigo: TEdit
        Left = 24
        Top = 253
        Width = 337
        Height = 31
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyDown = EdtValorUnitarioKeyDown
      end
      object EdtDescricao: TEdit
        Left = 24
        Top = 321
        Width = 337
        Height = 31
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object edtQuantidade: TEdit
        Left = 24
        Top = 384
        Width = 337
        Height = 31
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnKeyDown = EdtValorUnitarioKeyDown
      end
      object EdtValorUnitario: TEdit
        Left = 24
        Top = 448
        Width = 337
        Height = 31
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnKeyDown = EdtValorUnitarioKeyDown
      end
    end
  end
  object dsPedido: TDataSource
    DataSet = TBLItensTemp
    Left = 184
    Top = 145
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 160
    Top = 9
  end
  object TBLItensTemp: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 152
    Top = 145
    object TBLItensTempcodigo_produto: TIntegerField
      FieldName = 'codigo_produto'
    end
    object TBLItensTempdescricao: TStringField
      FieldName = 'descricao'
      Size = 300
    end
    object TBLItensTempqtd: TFloatField
      FieldName = 'Qtd'
    end
    object TBLItensTempvalor_venda: TFloatField
      FieldName = 'preco_venda'
    end
    object TBLItensTempvalor_total: TFloatField
      FieldName = 'total'
    end
  end
end
