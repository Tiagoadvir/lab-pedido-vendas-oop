program SISHOSPVENDA;

uses
  Vcl.Forms,
  view.principal in 'view\view.principal.pas' {FrmPrincipal},
  uPessoa in 'classe\uPessoa.pas',
  iInterfaces in 'iInterfaces.pas',
  uProduto in 'classe\uProduto.pas',
  DataModule.Conexao in 'datacontroller\DataModule.Conexao.pas' {DmConexao: TDataModule},
  service.produto in 'service\service.produto.pas' {ServiceProduto: TDataModule},
  view.listagem.produto in 'view\view.listagem.produto.pas' {FormProduto},
  view.Produto.Editar in 'view\view.Produto.Editar.pas' {FrmEditarProduto},
  service.vendas in 'service\service.vendas.pas' {ServiceVendas: TDataModule},
  view.listagem.Vendas in 'view\view.listagem.Vendas.pas' {FormListaVendas},
  view.listagem.cliente in 'view\view.listagem.cliente.pas' {FrmListagemCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFormListaVendas, FormListaVendas);
  Application.Run;
end.
