unit view.principal;

interface

uses
  iInterfaces,
  uPessoa,
  uProduto,

  Data.DB,

  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Error,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,

  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
  Vcl.Controls,
  Vcl.DBGrids,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Grids,
  Vcl.Imaging.pngimage,
  Vcl.StdCtrls,

  Winapi.Messages,
  Winapi.Windows,
  view.listagem.cliente,

  view.Produto.Editar,
  view.listagem.Vendas,
  view.listagem.produto;

type
   TEnumTeclas = (
    tkF1 = $70,
    tkF2 = $71,
    tkF3 = $72,
    tkF4 = $73,
    tkF5 = $74,
    tkF6 = $75,
    tkF7 = $76,
    tkF8 = $77,
    tkF9 = $78,
    tkF10 = $79,
    tkF11 = $7A,
    tkF12 = $7B,
    tkEnter = $0D,   // VK_RETURN
    tkEscape = $1B   // VK_ESCAPE
  );

  TFrmPrincipal = class(TForm)
    PBase: TPanel;
    PTopo: TPanel;
    prodape: TPanel;
    pProduto: TPanel;
    pInformativo: TPanel;
    Label1: TLabel;
    gridPedido: TDBGrid;
    pnlImage: TPanel;
    ImgProd: TImage;
    Panel2: TPanel;
    btnProdutos: TSpeedButton;
    Panel4: TPanel;
    btnListaVendas: TSpeedButton;
    Panel3: TPanel;
    btnGravarVenda: TSpeedButton;
    Label2: TLabel;
    lblDataHora: TLabel;
    edtCodigo: TEdit;
    EdtDescricao: TEdit;
    edtQuantidade: TEdit;
    lblCodigo: TLabel;
    lblProduto: TLabel;
    lblQTD: TLabel;
    EdtValorUnitario: TEdit;
    lblVlUnitario: TLabel;
    dsPedido: TDataSource;
    btnPesquisar: TSpeedButton;
    Timer: TTimer;
    TBLItensTemp: TFDMemTable;
    TBLItensTempcodigo_produto: TIntegerField;
    TBLItensTempdescricao: TStringField;
    TBLItensTempqtd: TFloatField;
    TBLItensTempvalor_venda: TFloatField;
    TBLItensTempvalor_total: TFloatField;
    Panel6: TPanel;
    SpeedButton1: TSpeedButton;
    lblCliente: TLabel;
    lbldsCLiente: TLabel;
    Label4: TLabel;
    lblOperador: TLabel;
    btnListarCliente: TSpeedButton;
    procedure btnProdutosClick(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TimerTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtQuantidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtValorUnitarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridPedidoDblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnGravarVendaClick(Sender: TObject);
    procedure gridPedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnListaVendasClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnListarClienteClick(Sender: TObject);
  private
    FProduto: Iproduto;
    procedure MoverParaProximoControle(sender : TObject; key : word);
    procedure InsereItemsTemp;

  public
    { Public declarations }
    property Produto: Iproduto read FProduto write FProduto;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  case TEnumTeclas(key) of
   tkF1 : ShowMessage('Voce pressinou a tecla' + key.ToString);
   tkF2 : ShowMessage('Voce pressinou a tecla' + key.ToString);
   tkF3 : btnProdutosclick(self);
   tkF4 : ShowMessage('Voce pressinou a tecla' + key.ToString);
   tkF5 : ShowMessage('Voce pressinou a tecla' + key.ToString);
   tkF6 : ShowMessage('Voce pressinou a tecla' + key.ToString);
   tkF7 : ShowMessage('Voce pressinou a tecla' + key.ToString);
   tkF8 : btnListarClienteClick(self);
   tkF9 : btnProdutosClick(Self);
   tkF10 : btnGravarVendaClick(Self);
   tkF11 : btnListaVendasClick(Self);
   tkF12: ShowMessage ('Voce pressinou a tecla' + key.ToString);
   tkEnter :  Exit;
   tkEscape : Exit;
  end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
   Self.ActiveControl := nil;
   Self.KeyPreview := True;
   TimerTimer(self);
end;
// Edita o produto em caso de ajuste na  venda
procedure TFrmPrincipal.gridPedidoDblClick(Sender: TObject);
begin

   FProduto := Tproduto.New
            .Codigo(TBLItensTemp.FieldByName('codigo_produto').AsInteger)
            .Descricao(TBLItensTemp.FieldByName('descricao').Asstring)
            .QTD(TBLItensTemp.FieldByName('qtd').AsFloat)
            .PrecoVenda(TBLItensTemp.FieldByName('preco_venda').AsFloat);

   if not Assigned(FrmEditarProduto) then
    Application.CreateForm(TFrmEditarProduto, FrmEditarProduto);
    FrmEditarProduto.Edicao := False;
    FrmEditarProduto.lblTQD.Visible := True;
    FrmEditarProduto.edtQtd.Visible := True;
    FrmEditarProduto.edtDescricao.ReadOnly := True;
    FrmEditarProduto.Setproduto := FProduto;
    FrmEditarProduto.ShowModal;

    if FrmEditarProduto.ModalResult = mrOk then
    begin
      FProduto := FrmEditarProduto.GetProduto;

      if TBLItensTemp.Locate('codigo_produto', FProduto.Codigo) then
      begin
        TBLItensTemp.Edit;
        TBLItensTempqtd.AsFloat        :=   strToFloat(FProduto.QTD.ToString);
        TBLItensTempvalor_venda.AsFloat :=  FProduto.PrecoVenda;
        TBLItensTempvalor_total.AsFloat := (FProduto.QTD * FProduto.PrecoVenda);
        TBLItensTemp.Post;
      end;
    end;

end;

procedure TFrmPrincipal.gridPedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if key = VK_DELETE  then
   begin
     if gridPedido.DataSource.DataSet.RecordCount > 0 then
      begin
       if MessageDlg('Confirma a exlusão do produto?', mtConfirmation, [mbYes, mbNo],0 ) = mrYes then
       begin
        if gridPedido.DataSource.DataSet.State in [dsInsert, dsEdit] then
          gridPedido.DataSource.DataSet.Post;

        gridPedido.DataSource.DataSet.Delete;
       end;
     end;
   end;
end;

procedure TFrmPrincipal.TimerTimer(Sender: TObject);
begin
   lblDataHora.Caption := DateTimeToStr(now);
end;

procedure TFrmPrincipal.btnGravarVendaClick(Sender: TObject);
var
 id_cliente : Integer;
begin
  if lbldsCLiente.Caption = '' then
   id_cliente := 1
   else  id_cliente := FrmListagemCliente.selecaoCliente.Codigo;

  if TBLItensTemp.IsEmpty then
  exit;
  try
    try
     FProduto := Tproduto.New.GravaPedido(id_cliente, TBLItensTemp);
     showMessage('Venda Gravada Com sucesso');
    except on ex:exception do
     begin
       ShowMessage('Erro ao Gravar Pedido ' + ex.Message);
       exit;
     end;
    end;
  finally
    TBLItensTemp.Edit;
    TBLItensTemp.EmptyDataSet;
    edtCodigo.Clear;
    EdtDescricao.Clear;
    edtQuantidade.Clear;
    EdtValorUnitario.Clear;
    lbldsCLiente.Caption := '';
  end;
end;

procedure TFrmPrincipal.btnListarClienteClick(Sender: TObject);
var
 pessoa: ipessoa;
begin
   if Not Assigned(FrmListagemCliente) then
    Application.CreateForm(TFrmListagemCliente, FrmListagemCliente);
    FrmListagemCliente.ShowModal;

    if FrmListagemCliente.ModalResult = mrOk then
    begin
      pessoa := FrmListagemCliente.selecaoCliente;
      lbldsCLiente.Tag := pessoa.Codigo;
      lbldsCLiente.Caption := pessoa.Cliente;
    end;
end;

procedure TFrmPrincipal.btnListaVendasClick(Sender: TObject);
begin
  if Not Assigned(FormListaVendas) then
    Application.CreateForm(TFormListaVendas, FormListaVendas);
    FormListaVendas.ShowModal;
end;

procedure TFrmPrincipal.btnProdutosClick(Sender: TObject);
begin
 if not assigned(FormProduto) then
    Application.CreateForm(TFormProduto, FormProduto);
    FormProduto.ShowModal;

   if FormProduto.ModalResult = mrOk then
   begin
     Produto := FormProduto.selecaoProduto;
     edtCodigo.Text := Produto.Codigo.ToString;
     EdtDescricao.Text := Fproduto.Descricao;
     edtQuantidade.Text := Produto.Codigo.ToString;
     EdtValorUnitario.Text := FormatFloat('#,##0.00', Produto.PrecoVenda);
     edtQuantidade.SetFocus;
   end;
end;

procedure TFrmPrincipal.edtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  MoverParaProximoControle(Sender ,key);
end;

procedure TFrmPrincipal.edtQuantidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   MoverParaProximoControle(self,key);
end;

procedure TFrmPrincipal.EdtValorUnitarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  if MessageDlg('Confirma a  inclusão do Item?', mtConfirmation, [mbYes, mbNO], 0) = mrYEs then
   InsereItemsTemp;
end;

procedure TFrmPrincipal.MoverParaProximoControle(sender : TObject; key : word);
var
 NextControl : tControl;
begin
   if key = vk_return   then
   begin
    NextControl := FindNextControl(TEdit(sender), true, true, true);

    if Assigned(NextControl) and (NextControl is TEdit) then
       (NextControl as TEdit).SetFocus;
   end;
end;

procedure TFrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.InsereItemsTemp;
begin
  TBLItensTemp.Open;
  TBLItensTemp.Append;
  TBLItensTemp.Insert;
  TBLItensTempcodigo_produto.AsInteger := StrToInt(edtCodigo.Text);
  TBLItensTempdescricao.AsString := EdtDescricao.Text;
  TBLItensTempqtd.AsFloat        :=   strToFloat(edtQuantidade.Text);
  TBLItensTempvalor_venda.AsFloat := StrToFloat(EdtValorUnitario.Text);
  TBLItensTempvalor_total.AsFloat := (strToFloat(edtQuantidade.Text) *  StrToFloat(EdtValorUnitario.Text));
  TBLItensTemp.Post;



  gridPedido.Refresh;
end;

end.
