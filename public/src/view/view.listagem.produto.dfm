object FormProduto: TFormProduto
  Left = 0
  Top = 0
  Caption = 'Consulta Produtos'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object PBase: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 0
    object PTopo: TPanel
      Left = 0
      Top = 0
      Width = 624
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      Color = 9286144
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 0
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
      object Label1: TLabel
        Left = 8
        Top = 7
        Width = 219
        Height = 21
        Caption = 'Informe um nome ou c'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtPesquisa: TEdit
        Left = 8
        Top = 34
        Width = 250
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyUp = edtPesquisaKeyUp
      end
    end
    object pnlGrid: TPanel
      Left = 0
      Top = 65
      Width = 624
      Height = 376
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object GridProduto: TDBGrid
        Left = 0
        Top = 0
        Width = 624
        Height = 376
        Align = alClient
        DataSource = dsProduto
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = GridProdutoDblClick
        OnKeyDown = GridProdutoKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo_produto'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco_venda'
            Title.Caption = 'Pre'#231'o de Venda'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end>
      end
    end
  end
  object dsProduto: TDataSource
    Left = 224
    Top = 145
  end
end
