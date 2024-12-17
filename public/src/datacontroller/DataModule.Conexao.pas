unit DataModule.Conexao;

interface

uses

  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.DApt,
  System.Classes,
  System.SysUtils,
  System.IOUtils,
  System.Variants,
  system.IniFiles,
  system.JSON,
  FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.UI, FireDAC.Stan.Intf, FireDAC.Phys.Intf, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite;

type
  TDmConexao = class(TDataModule)
    qry: TFDQuery;
    Transacoes: TFDTransaction;
    Conn: TFDConnection;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FDPhysSQLiteDriverLink: TFDPhysSQLiteDriverLink;
    qryproduto: TFDQuery;
    procedure ConnBeforeConnect(Sender: TObject);
    procedure UniConnBeforeConnect(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
  public
  end;

var
  DmConexao: TDmConexao;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDmConexao.ConnBeforeConnect(Sender: TObject);
begin

 Conn.DriverName := 'SQLite';

 {$IFDEF MSWINDOWS}
  conn.Params.Values['Database'] := System.SysUtils.GetCurrentDir + '\SISHOSP.db';
  conn.Params.Values['SharedCache'] := 'Shared';
 {$ELSE}
  conn.Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'SISHOSP.db');
  conn.Params.Values['SharedCache'] := 'Shared';
 {$ENDIF}

end;

procedure TDmConexao.DataModuleCreate(Sender: TObject);
begin
  conn.Connected := true;
end;

procedure TDmConexao.DataModuleDestroy(Sender: TObject);
begin
 Conn.Connected := false;
end;

procedure TDmConexao.UniConnBeforeConnect(Sender: TObject);
begin

     Conn.DriverName := 'SQLite';

     {$IFDEF MSWINDOWS}
      conn.Params.Values['Database'] := System.SysUtils.GetCurrentDir + '\SISHOSP.db';
      conn.Params.Values['SharedCache'] := 'Shared';
     {$ELSE}
      conn.Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'SISHOSP.db');
      conn.Params.Values['SharedCache'] := 'Shared';
     {$ENDIF}

end;

end.
