unit View.fornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.ExtCtrls,
  Service.cadastro;

type
  TViewFornecedores = class(TViewBaseListas)
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  ViewFornecedores: TViewFornecedores;

implementation

{$R *.dfm}

uses Provider.constantes;

procedure TViewFornecedores.FormShow(Sender: TObject);
begin
  inherited;
  GetPessoas(2);
end;

end.
