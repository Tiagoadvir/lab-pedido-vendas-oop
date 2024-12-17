object FrmEditarProduto: TFrmEditarProduto
  Left = 0
  Top = 0
  Caption = 'FrmEditarProduto'
  ClientHeight = 120
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object PTopo: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 9286144
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    object btnSalvar: TSpeedButton
      Left = 456
      Top = 90
      Width = 75
      Height = 25
      Caption = 'Salvar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSalvarClick
    end
    object SpeedButton1: TSpeedButton
      Left = 543
      Top = 90
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object lblDescProduto: TLabel
      Left = 72
      Top = 29
      Width = 121
      Height = 21
      Caption = 'Desci'#231#227'o produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblPreco: TLabel
      Left = 337
      Top = 29
      Width = 86
      Height = 21
      Caption = 'Preco Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblTQD: TLabel
      Left = 457
      Top = 29
      Width = 81
      Height = 21
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblCodigo: TLabel
      Left = 8
      Top = 29
      Width = 50
      Height = 21
      Caption = 'Codigo'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edtDescricao: TEdit
      Left = 68
      Top = 56
      Width = 250
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtPrecoVenda: TEdit
      Left = 337
      Top = 56
      Width = 86
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = edtPrecoVendaChange
      OnKeyPress = edtPrecoVendaKeyPress
    end
    object edtQtd: TEdit
      Left = 457
      Top = 56
      Width = 86
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnChange = edtPrecoVendaChange
      OnKeyPress = edtPrecoVendaKeyPress
    end
    object edtCodigo: TEdit
      Left = 8
      Top = 56
      Width = 54
      Height = 23
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = edtPrecoVendaChange
      OnKeyPress = edtPrecoVendaKeyPress
    end
  end
end
