unit View.fornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls;

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
  private
  public

  end;

var
  ViewFornecedores: TViewFornecedores;

implementation

{$R *.dfm}

uses Service.cadastro;

end.
