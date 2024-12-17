unit iInterfaces;

interface

uses
  FireDAC.Comp.Client;

type
IPessoa = interface
['{84534776-80F6-4177-BA20-285F9180520B}']

function Codigo (aCodigo : Integer) : IPessoa;    overload;
function Cliente   (aNome : string)    : Ipessoa;   overload;
function cidade (aCidade : string)  : Ipessoa;    overload;
function UF     (aUF : string)      : Ipessoa;  overload;

function Codigo  : Integer; overload;
function Cliente : string;  overload;
function Cidade  : string;  overload;
function Uf      : string;  overload;

end;

IProduto = interface
  ['{A8071967-ACC9-4E14-A960-81F7C4A58067}']
  function Codigo     (aValue : Integer) : IProduto; Overload;
  function Codigo     : Integer; Overload;
  function Descricao  (aValue : string)   : IProduto; OVerload;
  function Descricao  : string ; OVerload;
  function PrecoVenda (aValue : Double)  : IProduto; Overload;
  function PrecoVenda : Double; Overload;
  function QTD (aValue : Double)  : IProduto; Overload;
  function QTD : Double; Overload;
  function GravaPedido (Codigo_cliente : Integer ; Tab : TFDMemTable) : Iproduto;
end;

implementation

end.
