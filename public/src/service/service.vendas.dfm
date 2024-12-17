inherited ServiceVendas: TServiceVendas
  inherited qry: TFDQuery
    FetchOptions.AssignedValues = [evAutoFetchAll]
    FetchOptions.AutoFetchAll = afDisable
  end
end
