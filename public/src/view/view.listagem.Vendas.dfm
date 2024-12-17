object FormListaVendas: TFormListaVendas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Listagem Vendas'
  ClientHeight = 530
  ClientWidth = 715
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object PTopo: TPanel
    Left = 0
    Top = 0
    Width = 715
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
    ExplicitWidth = 699
    object lblVendas: TLabel
      Left = 32
      Top = 14
      Width = 67
      Height = 28
      Caption = 'Vendas'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnsair: TSpeedButton
      Left = 557
      Top = 8
      Width = 129
      Height = 51
      Align = alCustom
      Caption = 'Sair'
      OnClick = btnsairClick
    end
  end
  object GridVendas: TDBGrid
    Left = 0
    Top = 65
    Width = 818
    Height = 465
    Align = alLeft
    DataSource = dsCliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'numero_pedido'
        Title.Caption = 'Numero Venda'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome Cliente'
        Width = 354
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_total'
        Title.Caption = 'Valor Compra'
        Width = 238
        Visible = True
      end>
  end
  object dsCliente: TDataSource
    Left = 640
    Top = 136
  end
end
