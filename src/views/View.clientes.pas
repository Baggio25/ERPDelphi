unit View.clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.ExtCtrls, Service.cadastro;

type
  TViewClientes = class(TViewBaseListas)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetPessoas( iTipo : Integer );
  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

{ TViewClientes }

procedure TViewClientes.FormShow(Sender: TObject);
begin
  inherited;
  GetPessoas(1);
end;

procedure TViewClientes.GetPessoas(iTipo: Integer);
begin
  ServiceCadastro.FDQueryPessoas.Close;
  ServiceCadastro.FDQueryPessoas.SQL.Clear;
  ServiceCadastro.FDQueryPessoas.SQL.Add('SELECT * FROM PESSOAS WHERE PES_TIPO = :tipoPessoa');
  ServiceCadastro.FDQueryPessoas.Params[0].AsInteger := iTipo;
  ServiceCadastro.FDQueryPessoas.Open();
end;

end.
