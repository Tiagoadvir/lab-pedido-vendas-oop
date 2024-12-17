object DmConexao: TDmConexao
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 245
  Width = 510
  object qry: TFDQuery
    ChangeAlertName = 'qry'
    Left = 64
    Top = 96
  end
  object Transacoes: TFDTransaction
    Left = 176
    Top = 96
  end
  object Conn: TFDConnection
    Params.Strings = (
      
        'Database=F:\PROJETOS\TESTE SISHOSP\lab-pedido-vendas-oop\public\' +
        'src\Win32\Debug\sishosp.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    ConnectedStoredUsage = []
    LoginPrompt = False
    BeforeConnect = ConnBeforeConnect
    Left = 176
    Top = 16
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 64
    Top = 176
  end
  object FDPhysSQLiteDriverLink: TFDPhysSQLiteDriverLink
    Left = 64
    Top = 24
  end
  object qryproduto: TFDQuery
    ChangeAlertName = 'qry'
    Connection = Conn
    SQL.Strings = (
      'select * from produto')
    Left = 272
    Top = 96
  end
end
