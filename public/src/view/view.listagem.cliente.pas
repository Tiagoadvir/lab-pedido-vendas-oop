unit view.listagem.cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, service.vendas, iInterfaces,
  uPessoa;

type
  TFrmListagemCliente = class(TForm)
    PTopo: TPanel;
    Label1: TLabel;
    lblDataHora: TLabel;
    lblCliente: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    dsCliente: TDataSource;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FServiceCliente: TServiceVendas;
    FGetCliente: iPessoa;
    function GetCliente: iPessoa;
  public
    { Public declarations }
    property selecaoCliente: iPessoa read GetCliente;
  end;

var
  FrmListagemCliente: TFrmListagemCliente;

implementation

{$R *.dfm}
function TFrmListagemCliente.GetCliente: iPessoa;
begin
    FGetCliente := TPessoa.new.Codigo(DBGrid1.DataSource.DataSet.FieldByName('codigo_cliente').AsInteger)
                   .Cliente(DBGrid1.DataSource.DataSet.FieldByName('nome').AsString)
                   .cidade(DBGrid1.DataSource.DataSet.FieldByName('cidade').AsString)
                   .UF(DBGrid1.DataSource.DataSet.FieldByName('uf').AsString);

   Result := FGetCliente;
   ModalResult := mrok;
end;

procedure TFrmListagemCliente.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_return then
    GetCliente;
end;

procedure TFrmListagemCliente.FormShow(Sender: TObject);
begin
    FserviceCliente := TServiceVendas.Create(nil);
    FserviceCliente.ListarCliente;
    dsCliente.DataSet := FserviceCliente.qry;
end;

procedure TFrmListagemCliente.SpeedButton1Click(Sender: TObject);
begin
 close;
end;

end.
