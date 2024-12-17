inherited ServiceProduto: TServiceProduto
  inherited qry: TFDQuery
    Connection = Conn
    Transaction = Transacoes
  end
  inherited Transacoes: TFDTransaction
    Connection = Conn
  end
  inherited Conn: TFDConnection
    Params.Strings = (
      
        'Database=F:\PROJETOS\TESTE SISHOSP\lab-pedido-vendas-oop\public\' +
        'src\db\sishosp.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
  end
  inherited qryproduto: TFDQuery
    SQL.Strings = (
      'select * from produtos')
    object qryprodutocodigo_produto: TIntegerField
      FieldName = 'codigo_produto'
      Origin = 'codigo_produto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryprodutodescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 255
    end
    object qryprodutopreco_venda: TBCDField
      FieldName = 'preco_venda'
      Origin = 'preco_venda'
      Required = True
      Precision = 10
      Size = 2
    end
  end
end
