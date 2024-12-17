unit controller.Produto;

interface
   uses
   DmProduto,

   FireDAC.Comp.Client,
   FireDAC.DApt,
   system.SysUtils;

type
TControllerProduto = class
  private
    Produto : TDmProduto_;
    FListaProduto: TFdquery;
  public
  property ListaProdutos: TFdquery read FListaProduto write FListaProduto;
  procedure ListarProduto;
  destructor Destroy; override;
end;

implementation

{ TControllerProduto }



destructor TControllerProduto.Destroy;
begin
  Produto.Free;
  FListaProduto.Free;
  inherited;
end;

procedure TControllerProduto.ListarProduto;
var
Produto : TDmProduto_;
begin
  FListaProduto := TFdquery.Create(nil);
  Produto := TDmProduto_.Create(nil);
  FListaProduto :=  Produto.ListarProduto;
end;

end.
