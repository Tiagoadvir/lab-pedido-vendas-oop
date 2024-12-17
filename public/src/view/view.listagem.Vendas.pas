unit view.listagem.Vendas;

interface

uses
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
  service.vendas,

  Vcl.Buttons,
  Vcl.Controls,
  Vcl.DBGrids,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Grids,
  Vcl.StdCtrls,

  Winapi.Messages,
  Winapi.Windows;

type
  TFormListaVendas = class(TForm)
    PTopo: TPanel;
    lblVendas: TLabel;
    GridVendas: TDBGrid;
    dsCliente: TDataSource;
    btnsair: TSpeedButton;
    procedure btnsairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FserviceVendas : TServiceVendas;
  public
    { Public declarations }
  end;

var
  FormListaVendas: TFormListaVendas;

implementation

{$R *.dfm}

procedure TFormListaVendas.btnsairClick(Sender: TObject);
begin
    Close;
end;

procedure TFormListaVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FserviceVendas.Free;
end;

procedure TFormListaVendas.FormShow(Sender: TObject);
begin
    FserviceVendas := TServiceVendas.Create(nil);
    FserviceVendas.ListarVendas;
    dsCliente.DataSet := FserviceVendas.qry;

end;

end.
