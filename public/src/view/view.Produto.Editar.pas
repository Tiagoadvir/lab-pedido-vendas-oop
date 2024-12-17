unit view.Produto.Editar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  iInterfaces, uProduto, service.produto;

type
  TFrmEditarProduto = class(TForm)
    PTopo: TPanel;
    btnSalvar: TSpeedButton;
    edtDescricao: TEdit;
    SpeedButton1: TSpeedButton;
    edtPrecoVenda: TEdit;
    lblDescProduto: TLabel;
    lblPreco: TLabel;
    lblTQD: TLabel;
    edtQtd: TEdit;
    lblCodigo: TLabel;
    edtCodigo: TEdit;
    procedure edtPrecoVendaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edtPrecoVendaKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FServiceProduto : TServiceProduto;
    FProduto : iProduto;
    FGetProduto: Iproduto;
    FEdicao: Boolean;
    function GET_produto: Iproduto;
    procedure SET_produto(const Value: Iproduto);
    { Private declarations }
  public
    { Public declarations }
    property Edicao: Boolean read FEdicao write FEdicao;
    property Setproduto: Iproduto write SET_produto;
    property GetProduto: Iproduto read FGetProduto;

  end;

var
  FrmEditarProduto: TFrmEditarProduto;

implementation

{$R *.dfm}

procedure TFrmEditarProduto.btnSalvarClick(Sender: TObject);
begin
   if Edicao then
   begin
     if MessageDlg ('Confima a alteração dos dados cadastrais do produto?', MtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
      try
       FServiceProduto.AtualizarProduto(StrToInt(edtCodigo.Text), edtDescricao.Text, strtoFloat(edtPrecoVenda.Text));
      finally
        ModalResult := MrOk;
      end;
     end;
   end
   else
   begin
     if  MessageDlg ('Confima as alterações de venda do produto?', MtConfirmation, [mbYes, mbNo], 0) = mrYes then
     try
      GET_produto;
     finally
       ModalResult := MrOk;
     end;
   end;

end;

procedure TFrmEditarProduto.edtPrecoVendaChange(Sender: TObject);
var
 Valor : Double;
begin
   if not TryStrToFloat(edtPrecoVenda.Text, Valor) then
    exit
end;

procedure TFrmEditarProduto.edtPrecoVendaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9', #8, ',']) then
   key := #0;
end;

procedure TFrmEditarProduto.FormCreate(Sender: TObject);
begin
   FEdicao := True;
   FServiceProduto := TServiceProduto.Create(nil);
end;

procedure TFrmEditarProduto.FormDestroy(Sender: TObject);
begin
 FreeAndNil(FServiceProduto);
end;

function TFrmEditarProduto.GET_produto: Iproduto;
begin
   FGetProduto := Tproduto.New.Codigo(StrToInt(edtCodigo.Text))
                .Descricao(edtDescricao.Text)
                .PrecoVenda(strToFloat(edtPrecoVenda.Text))
                .QTD(strToFloat(edtQtd.Text));

   Result := FProduto;
end;

procedure TFrmEditarProduto.SET_produto(const Value: Iproduto);
begin
  if Edicao then
  begin
   edtCodigo.Text := Value.Codigo.ToString;
   edtDescricao.Text := value.Descricao;
   edtPrecoVenda.Text := FormatFloat('0.00', value.PrecoVenda);
  end
  else
  begin
   edtCodigo.Text := Value.Codigo.ToString;
   edtDescricao.Text := value.Descricao;
   edtPrecoVenda.Text := FormatFloat('0.00', value.PrecoVenda);
   edtQtd.Text        := Value.QTD.ToString;
  end;
end;

procedure TFrmEditarProduto.SpeedButton1Click(Sender: TObject);
begin
 close;
end;

end.
