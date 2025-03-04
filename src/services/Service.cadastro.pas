unit Service.cadastro;

interface

uses
  System.SysUtils, System.Classes, Service.conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TServiceCadastro = class(TDataModule)
    FDQueryPessoas: TFDQuery;
    FDQueryPessoasPES_CODIGO: TIntegerField;
    FDQueryPessoasPES_NOME_RAZAO: TStringField;
    FDQueryPessoasPES_FANTASIA: TStringField;
    FDQueryPessoasPES_CPF_CPNJ: TStringField;
    FDQueryPessoasPES_RG_IE: TStringField;
    FDQueryPessoasPES_TELEFONE: TStringField;
    FDQueryPessoasPES_CELULAR: TStringField;
    FDQueryPessoasPES_WHATSAPP: TStringField;
    FDQueryPessoasPES_TIPO: TIntegerField;
    FDQueryPessoasPES_OBSERVACAO: TStringField;
    FDQueryPessoasEND_CODIGO: TIntegerField;
    FDQueryPessoasPES_END_COMPLEMENTO: TStringField;
    FDQueryEnderecos: TFDQuery;
    FDQueryEnderecosEND_CODIGO: TIntegerField;
    FDQueryEnderecosEND_RUA: TStringField;
    FDQueryEnderecosEND_BAIRRO: TStringField;
    FDQueryEnderecosEND_NUMERO: TStringField;
    FDQueryEnderecosEND_CEP: TStringField;
    FDQueryEnderecosCID_CODIGO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
