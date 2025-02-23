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
    Label9: TLabel;
    fldPesCpfCnpj: TDBEdit;
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
    procedure SetaFocoNome;
  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

{ TViewClientes }

procedure TViewClientes.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if ServiceCadastro.FDQueryPessoas.State in dsEditModes then begin
    ServiceCadastro.FDQueryPessoas.Cancel;
  end;
  SetaAbaPesquisa;
end;

procedure TViewClientes.btnEditarClick(Sender: TObject);
begin
  inherited;
  SetaAbaCadastros;
  SetaFocoNome;
  ServiceCadastro.FDQueryPessoas.Edit;
end;

procedure TViewClientes.btnExcluirClick(Sender: TObject);
begin
  inherited;

  if ServiceCadastro.FDQueryPessoas.RecordCount > 0 then begin

    if Application.MessageBox('Confirma Exclus�o ?','Aten��o !!!', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES Then begin
      ServiceCadastro.FDQueryPessoas.Delete;
      ShowMessage('Cliente exclu�do com sucesso.');
    end;

  end;

end;

procedure TViewClientes.btnNovoClick(Sender: TObject);
var sSQL : String;
begin
  inherited;
  SetaAbaCadastros;
  SetaFocoNome;
  ServiceCadastro.FDQueryPessoas.Insert;
end;

procedure TViewClientes.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if ServiceCadastro.FDQueryPessoas.State in dsEditModes then begin
    ServiceCadastro.FDQueryPessoasPES_TIPO.AsInteger := 1;
    ServiceCadastro.FDQueryPessoas.Post;
    ShowMessage('Cliente salvo com sucesso.');
    SetaAbaPesquisa;
  end;
end;

procedure TViewClientes.FormShow(Sender: TObject);
begin
  inherited;
  GetPessoas(1);
end;

procedure TViewClientes.GetPessoas(iTipo: Integer);
var sSQL : String;
begin
  sSQL := 'SELECT * FROM PESSOAS WHERE PES_TIPO = :tipoPessoa ';
  sSQL := sSQL + 'ORDER BY PES_CODIGO DESC';

  ServiceCadastro.FDQueryPessoas.Close;
  ServiceCadastro.FDQueryPessoas.SQL.Clear;
  ServiceCadastro.FDQueryPessoas.SQL.Add(sSQL);
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

procedure TViewClientes.SetaFocoNome;
begin
  fldPesNomeRazao.SetFocus;
end;

end.
