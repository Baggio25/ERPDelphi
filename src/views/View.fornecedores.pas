unit View.fornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.ExtCtrls,
  Service.cadastro, Vcl.Mask, Vcl.DBCtrls;

type
  TViewFornecedores = class(TViewBaseListas)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    fldPesCodigo: TDBEdit;
    fldPesNomeRazao: TDBEdit;
    fldPesFantasia: TDBEdit;
    fldPesRgIe: TDBEdit;
    fldPesFone: TDBEdit;
    fldPesCel: TDBEdit;
    fldPesWhats: TDBEdit;
    fldPesObs: TDBEdit;
    fldPesCpfCnpj: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    procedure SetaFocoNome;
  public

  end;

var
  ViewFornecedores: TViewFornecedores;

implementation

{$R *.dfm}

uses Provider.constantes;

procedure TViewFornecedores.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if ServiceCadastro.FDQueryPessoas.State in dsEditModes then begin
    ServiceCadastro.FDQueryPessoas.Cancel;
  end;
end;

procedure TViewFornecedores.btnEditarClick(Sender: TObject);
begin
  inherited;
  SetaFocoNome;
  ServiceCadastro.FDQueryPessoas.Edit;
end;

procedure TViewFornecedores.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if ServiceCadastro.FDQueryPessoas.RecordCount > 0 then begin

    if Application.MessageBox('Confirma Exclus�o ?','Aten��o !!!',
                  MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then begin
      ServiceCadastro.FDQueryPessoas.Delete;
      ShowMessage('Fornecedor exclu�do com sucesso.');
    end;

  end;

end;

procedure TViewFornecedores.btnNovoClick(Sender: TObject);
begin
  inherited;
  SetaFocoNome;
  ServiceCadastro.FDQueryPessoas.Insert;
end;

procedure TViewFornecedores.btnSalvarClick(Sender: TObject);
begin
  inherited;

  if ServiceCadastro.FDQueryPessoas.State in dsEditModes then begin
    ServiceCadastro.FDQueryPessoasPES_TIPO.AsInteger := 2;
    ServiceCadastro.FDQueryPessoas.Post;
    ShowMessage('Fornecedor salvo com sucesso.');
  end;
end;

procedure TViewFornecedores.FormShow(Sender: TObject);
begin
  inherited;
  GetPessoas(2);
end;

procedure TViewFornecedores.SetaFocoNome;
begin
  fldPesNomeRazao.SetFocus;
end;

end.
