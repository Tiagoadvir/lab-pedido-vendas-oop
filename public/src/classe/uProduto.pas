unit uProduto;

interface

uses
  iInterfaces,

  system.Classes,
  system.SysUtils,
  service.produto,
  FireDAC.Comp.Client;

type
  Tproduto = class(TInterfacedObject, IProduto)
private
  class var   FServiceProduto : TServiceProduto;
     FCodigo     : Integer;
     FDescricao  : string;
     FPrecoVenda : Double;
     FQTD        : Double;
public

  function Codigo     (aValue : Integer) : IProduto; Overload;
  function Codigo     : Integer; Overload;
  function Descricao  (aValue : string)   : IProduto; OVerload;
  function Descricao  : string ; OVerload;
  function PrecoVenda (aValue : Double)  : IProduto; Overload;
  function PrecoVenda : Double; Overload;
  function QTD (aValue : Double)  : IProduto; Overload;
  function QTD : Double; Overload;
  function GravaPedido (Codigo_cliente : Integer ; Tab : TFDMemTable) : Iproduto;

  class function New : Iproduto;
  destructor destroy ; override;
  end;

implementation

{ produto }

function Tproduto.Codigo(aValue: Integer): IProduto;
begin
   Result := Self;
   FCodigo := aValue;
end;

function Tproduto.Codigo: Integer;
begin
   Result := FCodigo;
end;

function Tproduto.Descricao: string;
begin
  Result := FDescricao;
end;

function Tproduto.Descricao(aValue: string): IProduto;
begin
   Result     := self;
   FDescricao := aValue;
end;

class function Tproduto.New: Iproduto;
begin
   Result := TProduto.create;
   FServiceProduto := TServiceProduto.Create(nil);
end;

destructor Tproduto.destroy;
begin
  inherited;
end;

function Tproduto.GravaPedido(Codigo_cliente: Integer;
  Tab: TFDMemTable): Iproduto;
begin
  Result := Self;
  FServiceProduto.GravaPedidoDML(Codigo_cliente, Tab);
end;

function Tproduto.PrecoVenda(aValue: Double): IProduto;
begin
    Result := Self;
    FPrecoVenda := aValue;
end;

function Tproduto.PrecoVenda: Double;
begin
   Result := FPrecoVenda;
end;

function Tproduto.QTD(aValue: Double): IProduto;
begin
  Result := Self;
  FQTD := aValue;
end;

function Tproduto.QTD: Double;
begin
  Result := FQTD;
end;

end.
