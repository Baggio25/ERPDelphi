unit View.clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.ExtCtrls, Service.cadastro, Vcl.Mask, Vcl.DBCtrls;

type
  TViewClientes = class(TViewBaseListas)
    Label1: TLabel;
    fldPesCodigo: TDBEdit;
    Label2: TLabel;
    fldPesNomeRazao: TDBEdit;
    Label3: TLabel;
    fldPesFantasia: TDBEdit;
    Label4: TLabel;
    fldPesRgIe: TDBEdit;
    Label5: TLabel;
    fldPesFone: TDBEdit;
    Label6: TLabel;
    fldPesCel: TDBEdit;
    Label7: TLabel;
    fldPesWhats: TDBEdit;
    Label8: TLabel;
    fldPesObs: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetPessoas( iTipo : Integer );
    procedure SetaAbaCadastros;
    procedure SetaAbaPesquisa;
  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

{ TViewClientes }

procedure TViewClientes.btnCancelarClick(Sender: TObject);
begin
  inherited;
  SetaAbaPesquisa;
end;

procedure TViewClientes.btnEditarClick(Sender: TObject);
begin
  inherited;
  SetaAbaCadastros;
end;

procedure TViewClientes.btnExcluirClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TViewClientes.btnNovoClick(Sender: TObject);
begin
  inherited;
  SetaAbaCadastros;
end;

procedure TViewClientes.btnSalvarClick(Sender: TObject);
begin
  inherited;
  ServiceCadastro.FDQueryPessoas.Edit;
  ServiceCadastro.FDQueryPessoas.Post;
  SetaAbaPesquisa;
end;

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

procedure TViewClientes.SetaAbaCadastros;
begin
  cpnLista.ActiveCard := crdCadastro;
end;

procedure TViewClientes.SetaAbaPesquisa;
begin
  cpnLista.ActiveCard := crdPesquisa;
end;

end.
