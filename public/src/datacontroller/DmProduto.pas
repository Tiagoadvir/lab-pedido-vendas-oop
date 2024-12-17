unit DmProduto;

interface

uses
  System.SysUtils, System.Classes, DataModule.Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.FMXUI.Wait, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TDmProduto_ = class(TDmConexao)
  private
    { Private declarations }
  public
    Function ListarProduto : TFDquery;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDmProduto_ }

function TDmProduto_.ListarProduto: TFDquery;
begin
    qryProduto.Connection := DmConexao.Conn;
    qryProduto.SQL.Clear;
    qryProduto.SQL.Text := 'SELECT * FROM produto';
    qryProduto.Open;
    Result := qryProduto
end;

end.
