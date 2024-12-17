unit service.vendas;

interface

uses
  Data.DB,

  DataModule.Conexao,

  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.UI,
  FireDAC.DApt,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.FMXUI.Wait,
  FireDAC.Phys,
  FireDAC.Phys.Intf,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.Stan.Async,
  FireDAC.Stan.Def,
  FireDAC.Stan.Error,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Pool,
  FireDAC.UI.Intf,

  System.Classes,
  System.SysUtils;

type
  TServiceVendas = class(TDmConexao)
  private

    { Private declarations }
  public
    { Public declarations }
     procedure ListarVendas;
     procedure ListarCliente;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDmConexao1 }

procedure TServiceVendas.ListarVendas ;
begin
    qry.Connection := DmConexao.Conn;
    qry.Active := false;
    qry.SQL.Clear;
    qry.SQL.Add('select');
    qry.SQL.Add('ped.numero_pedido,');
    qry.SQL.Add('cli.nome,');
    qry.SQL.Add('ped.valor_total');
    qry.SQL.Add('from pedidos ped');
    qry.SQL.Add('join clientes cli on (cli.codigo_cliente = ped.codigo_cliente )');
    qry.Open;

end;

procedure TServiceVendas.ListarCliente ;
begin
    qry.Connection := DmConexao.Conn;
    qry.Active := false;
    qry.SQL.Clear;
    qry.SQL.Add('select * from Clientes');
    qry.Open;

end;

end.
