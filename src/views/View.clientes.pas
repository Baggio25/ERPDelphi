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
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

{ TViewClientes }

end.
