unit View.base.listas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Buttons, Vcl.WinXPanels, Vcl.WinXCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TViewBaseListas = class(TViewBase)
    pnlTopo: TPanel;
    pnlRodape: TPanel;
    pnlFechar: TPanel;
    btnSair: TPanel;
    lblBtnSair: TLabel;
    lblTitulo: TLabel;
    pnlLinhaFundo: TPanel;
    cpnLista: TCardPanel;
    crdPesquisa: TCard;
    crdCadastro: TCard;
    pnlPesquisa: TPanel;
    lblTituloPequisa: TLabel;
    edtPesquisa: TSearchBox;
    dbgDados: TDBGrid;
    pnlCadastro: TPanel;
    lblTituloCadastro: TLabel;
    dsDados: TDataSource;
    btnNovo: TPanel;
    btnEditar: TPanel;
    btnCancelar: TPanel;
    btnSalvar: TPanel;
    btnExcluir: TPanel;
    procedure pnlFecharClick(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    procedure SetaAbaCadastros;
    procedure SetaAbaPesquisa;
  public

  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}


procedure TViewBaseListas.btnCancelarClick(Sender: TObject);
begin
  inherited;
  SetaAbaPesquisa;
end;

procedure TViewBaseListas.btnEditarClick(Sender: TObject);
begin
  inherited;
  SetaAbaCadastros;
end;

procedure TViewBaseListas.btnNovoClick(Sender: TObject);
begin
  inherited;
  SetaAbaCadastros;
end;

procedure TViewBaseListas.btnSalvarClick(Sender: TObject);
begin
  inherited;
  SetaAbaPesquisa;
end;

procedure TViewBaseListas.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
   DRAGMOVE = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, DRAGMOVE, 0);
end;

procedure TViewBaseListas.FormShow(Sender: TObject);
begin
  inherited;
  cpnLista.ActiveCard := crdPesquisa;
end;

procedure TViewBaseListas.pnlFecharClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewBaseListas.SetaAbaCadastros;
begin
  cpnLista.ActiveCard := crdCadastro;
end;

procedure TViewBaseListas.SetaAbaPesquisa;
begin
  cpnLista.ActiveCard := crdPesquisa;
end;

end.
