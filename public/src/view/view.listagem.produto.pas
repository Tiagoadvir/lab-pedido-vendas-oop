unit view.listagem.produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, iInterfaces,
  Datasnap.DBClient, service.produto, uProduto, view.Produto.Editar;

type
  TFormProduto = class(TForm)
    pnlGrid: TPanel;
    GridProduto: TDBGrid;
    dsProduto: TDataSource;
    edtPesquisa: TEdit;
    btnPesquisar: TSpeedButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridProdutoDblClick(Sender: TObject);
    procedure GridProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FProduto: IProduto;
    FServiceProduto : TServiceProduto;
    procedure AtualizarProduto;
    function Get_selecaoProduto: Iproduto;
  public
    { Public declarations }
    property selecaoProduto: Iproduto read Get_selecaoProduto;
  end;

var
  FormProduto: TFormProduto;

implementation
{$R *.dfm}

procedure TFormProduto.FormCreate(Sender: TObject);
begin
  FServiceProduto := TServiceProduto.Create(nil);
  FServiceProduto.Get_Produto;
end;

procedure TFormProduto.AtualizarProduto;
begin
   FServiceProduto.Get_Produto;
   dsProduto.DataSet :=  FServiceProduto.qryproduto;
end;

procedure TFormProduto.FormShow(Sender: TObject);
begin
  FServiceProduto.Get_Produto;
  dsProduto.DataSet :=  FServiceProduto.qryproduto;
end;

function TFormProduto.Get_selecaoProduto: Iproduto;
begin

  FProduto := Tproduto.New.Codigo(GridProduto.datasource.DataSet.FieldByName('codigo_produto').AsInteger)
                            .Descricao(GridProduto.Datasource.DataSet.FieldByName('descricao').AsString)
                            .PrecoVenda(GridProduto.DataSource.DataSet.FieldByName('preco_venda'). AsFloat);

  Result :=  FProduto;
end;

procedure TFormProduto.GridProdutoDblClick(Sender: TObject);
var
 Produto : iProduto;
begin
     Produto := Tproduto.new.Codigo(GridProduto.Fields[0].AsInteger)
                .Descricao(GridProduto.Fields[1].AsString)
                .PrecoVenda(GridProduto.Fields[2].AsFloat);

     if Not Assigned(FrmEditarProduto) then
       Application.CreateForm(TFrmEditarProduto, FrmEditarProduto);
       FrmEditarProduto.Setproduto := Produto;
       FrmEditarProduto.showModal;

     if FrmEditarProduto.ModalResult = mrOk then
       AtualizarProduto;
end;

procedure TFormProduto.GridProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_RETURN then
 begin
  Get_selecaoProduto;
  ModalResult := mrOk; // Fecha o modal após selecionar
 end;
end;

procedure TFormProduto.edtPesquisaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (GridProduto.DataSource.Dataset.Locate('descricao', edtPesquisa.Text, [loCaseInsensitive, loPartialKey]))
    or (GridProduto.DataSource.Dataset.Locate('codigo_produto', StrtoInt(edtPesquisa.Text), [loCaseInsensitive, loPartialKey]))
    then
    gridProduto.SetFocus;
end;

end.
