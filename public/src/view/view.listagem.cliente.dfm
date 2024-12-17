object FrmListagemCliente: TFrmListagemCliente
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Listagem Cliente'
  ClientHeight = 532
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 15
  object PTopo: TPanel
    Left = 0
    Top = 0
    Width = 680
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
    ExplicitLeft = -498
    ExplicitWidth = 1162
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 166
      Height = 28
      Caption = 'Listagem Clientes'
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
    object Label5: TLabel
      Left = 784
      Top = 24
      Width = 95
      Height = 28
      Caption = 'Jo'#227'o Silva'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 520
      Top = 8
      Width = 129
      Height = 51
      Align = alCustom
      Caption = 'Sair'
      OnClick = SpeedButton1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 680
    Height = 467
    Align = alClient
    DataSource = dsCliente
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo_cliente'
        Title.Caption = 'Codigo Cliente'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Width = 313
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uf'
        Title.Caption = 'UF'
        Width = 241
        Visible = True
      end>
  end
  object dsCliente: TDataSource
    DataSet = ServiceVendas.qry
    Left = 80
    Top = 128
  end
end
