unit service.produto;

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
  TServiceProduto = class(TDmConexao)
    qryprodutocodigo_produto: TIntegerField;
    qryprodutodescricao: TStringField;
    qryprodutopreco_venda: TBCDField;
  private
    procedure PutItensPedido( Pedido : Integer; Tab : TFDmemTable);
    { Private declarations }
  public
    procedure Get_Produto;
    procedure AtualizarProduto(Aid: Integer; ADescricao: string ; AValor: Double);
    procedure GravaPedidoDML(Codigo_Cliente : Integer; Tab : TFDMemTable);
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDmProduto_ }

procedure TServiceProduto.Get_Produto;
begin
    qryProduto.Connection := DmConexao.Conn;
    qryProduto.SQL.Clear;
    qryProduto.SQL.Text := 'SELECT * FROM Produtos';
    qryProduto.Open;
end;

procedure TServiceProduto.AtualizarProduto(Aid: Integer; ADescricao: string ; AValor: Double);
begin
    qryProduto.Connection := DmConexao.Conn;
    qryProduto.SQL.Clear;
    qryProduto.SQL.Add('UPDATE PRODUTOS SET DESCRICAO = :DESCRICAO');
    qryProduto.SQL.Add(', PRECO_VENDA = :PRECO_VENDA');
    qryProduto.SQL.Add('WHERE CODIGO_PRODUTO = :ID');
    qryProduto.ParamByName('DESCRICAO').AsString :=  ADescricao;
    qryProduto.ParamByName('PRECO_VENDA').AsFloat :=  AValor;
    qryProduto.ParamByName('ID').AsInteger :=  Aid;
    qryProduto.ExecSQL;
end;

procedure TServiceProduto.GravaPedidoDML(Codigo_Cliente : Integer; Tab : TFDMemTable);
var
 Pedido : Integer;
begin
   Pedido := 2024 + strtoint( FormatDateTime('hhmmss', Now));
   conn.StartTransaction;
   qryProduto.Connection := DmConexao.Conn;
   qryProduto.Active := false;
   qryProduto.SQL.Clear;
   qryProduto.SQL.Add('INSERT INTO Pedidos (');
   qryProduto.SQL.Add('numero_pedido,'       );
   qryProduto.SQL.Add('data_emissao,'        );
   qryProduto.SQL.Add('codigo_cliente,'      );
   qryProduto.SQL.Add('valor_total'          );
   qryProduto.SQL.Add(')'                    );
   qryProduto.SQL.Add('VALUES ('             );
   qryProduto.SQL.Add(':numero_pedido,'      );
   qryProduto.SQL.Add(':data_emissao,'       );
   qryProduto.SQL.Add(':codigo_cliente,'     );
   qryProduto.SQL.Add(':valor_total'         );
   qryProduto.SQL.Add(');'                   );

   qryProduto.ParamByName('numero_pedido').Value :=  Pedido;
   qryProduto.ParamByName('data_emissao').Value :=  now;
   qryProduto.ParamByName('codigo_cliente').Value :=  Codigo_Cliente;
   qryProduto.ParamByName('valor_total').Value :=  Tab.FieldByName('total').AsFloat;
   qryProduto.ExecSQL;

   PutItensPedido(pedido, Tab);

   conn.Commit;
end;

procedure TServiceProduto.PutItensPedido( Pedido : Integer; Tab : TFDmemTable);
begin

   qryProduto.Connection := DmConexao.Conn;
   qryProduto.Active := False;
   qryProduto.SQL.Clear;
   qryProduto.SQL.Add('INSERT INTO ItensPedidos (');
   qryProduto.SQL.Add('numero_pedido,');
   qryProduto.SQL.Add('codigo_produto,');
   qryProduto.SQL.Add('quantidade,');
   qryProduto.SQL.Add('valor_unitario,');
   qryProduto.SQL.Add('valor_total');
   qryProduto.SQL.Add(')');
   qryProduto.SQL.Add('VALUES (');
   qryProduto.SQL.Add(':numero_pedido,');
   qryProduto.SQL.Add(':codigo_produto,');
   qryProduto.SQL.Add(':quantidade,');
   qryProduto.SQL.Add(':valor_unitario,');
   qryProduto.SQL.Add(':valor_total');
   qryProduto.SQL.Add(');');

  // Transacoes.StartTransaction;
   qryProduto.Params.ArraySize := Tab.RecordCount; // define o tamanho do array;
   Tab.First;
   while not Tab.Eof do
   begin
     qryProduto.ParamByName('numero_pedido').Values[Pred(Tab.RecNo)] := Pedido;
     qryProduto.ParamByName('codigo_produto').Values[Pred(Tab.RecNo)] := Tab.FieldByName('codigo_produto').value;
     qryProduto.ParamByName('quantidade').Values[Pred(Tab.RecNo)]     := Tab.FieldByName('qtd').Value;
     qryProduto.ParamByName('valor_unitario').Values[Pred(Tab.RecNo)] := Tab.FieldByName('preco_venda').AsInteger;
     qryProduto.ParamByName('valor_total').Values[Pred(Tab.RecNo)]    := Tab.FieldByName('total').AsInteger;
    tab.Next;
   end;

   if Tab.RecordCount > 0 then
     qryProduto.Execute(Tab.RecordCount);

 //   Transacoes.Commit;
end;

end.
