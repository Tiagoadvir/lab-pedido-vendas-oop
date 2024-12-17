unit uPessoa;

interface

uses
  iInterfaces,

  system.Classes,
  system.SysUtils;

type

TPessoa = class (TInterfacedObject, IPessoa)
  private
    FUF_     : String;
    FCliente_: string;
    FCodigo_ : Integer;
    FCidade_ : string;


  public

  function Codigo  (aCodigo : Integer) : IPessoa;   overload;
  function Cliente (aNome : string) : Ipessoa;      overload;
  function cidade  (aCidade : string)  : Ipessoa;   overload;
  function UF      (aUF : string)      : Ipessoa;   overload;

  // retornos
  function Codigo  : Integer;  overload;
  function Cliente : string;  overload;
  function Cidade  : string;  overload;
  function Uf      : string;  overload;

  class function new : IPessoa;

  destructor destroy; override;
end;

implementation

{ TPessoa }

function TPessoa.UF(aUF: string): Ipessoa;
begin
   Result := Self;
   FUF_ := aUF;
end;

function TPessoa.cidade(aCidade: string): Ipessoa;
begin
   Result := Self;
   FCidade_ := aCidade;
end;

function TPessoa.Cliente(aNome: string): Ipessoa;
begin
  Result := Self;
  FCliente_ := aNome;
end;

function TPessoa.Codigo(aCodigo: Integer): IPessoa;
begin
   Result := Self;
   FCodigo_ := aCodigo;
end;

destructor TPessoa.destroy;
begin

  inherited;
end;

class function TPessoa.new: IPessoa;
begin
  Result := TPessoa.Create;
end;

function TPessoa.cidade: string;
begin
 Result := FCidade_;
end;

function TPessoa.Cliente: string;
begin
  Result := FCliente_;
end;

function TPessoa.Codigo: Integer;
begin
   Result := FCodigo_;
end;

function TPessoa.UF: string;
begin
   Result := FUF_;
end;

end.

