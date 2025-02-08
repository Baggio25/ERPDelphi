unit View.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    pnlRodape: TPanel;
    pnlBackPrincipal: TPanel;
    pnlConteudo: TPanel;
    pnlLogo: TPanel;
    pnlLineLogo: TPanel;
    pnlConteudoLogo: TPanel;
    lblTituloEmpresa: TLabel;
    lblDescricaoEmpresa: TLabel;
    pnlVersao: TPanel;
    lblNumVersao: TLabel;
    lblVersao: TLabel;
    pnlUsuario: TPanel;
    pnlLineUsuario: TPanel;
    pnlImageUsuario: TPanel;
    imgUsuarioBranca: TImage;
    pnlDadosUsuarios: TPanel;
    lblPerfil: TLabel;
    lblUsuario: TLabel;
    pnlLicenciado: TPanel;
    pnlLineLicenciado: TPanel;
    pnlLicenciadoConteudo: TPanel;
    lblLicenciado: TLabel;
    lblLicenciadoPara: TLabel;
    pnlSair: TPanel;
    btnSair: TPanel;
    lblBtnSair: TLabel;
    pnlDadosMenu: TPanel;
    btnClientes: TPanel;
    lblBtnClientes: TLabel;
    btnCaixa: TPanel;
    lblBtnCaixa: TLabel;
    btnFornecedores: TPanel;
    lblBtnFornecedores: TLabel;
    btnProdutos: TPanel;
    lblBtnProdutos: TLabel;
    btnConfiguracoes: TPanel;
    lblBtnConfiguracoes: TLabel;
    imgUsuarioAmarela: TImage;
    imgBackground: TImage;
    procedure btnSairClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
    procedure imgUsuarioBrancaMouseEnter(Sender: TObject);
    procedure imgUsuarioAmarelaMouseLeave(Sender: TObject);
  private

  public

  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.btnCaixaClick(Sender: TObject);
begin
 //
end;

procedure TViewPrincipal.btnClientesClick(Sender: TObject);
begin
  //
end;

procedure TViewPrincipal.btnConfiguracoesClick(Sender: TObject);
begin
  //
end;

procedure TViewPrincipal.btnFornecedoresClick(Sender: TObject);
begin
  //
end;

procedure TViewPrincipal.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;


procedure TViewPrincipal.imgUsuarioAmarelaMouseLeave(Sender: TObject);
begin
  imgUsuarioBranca.Visible  := True;
  imgUsuarioAmarela.Visible := False;
end;

procedure TViewPrincipal.imgUsuarioBrancaMouseEnter(Sender: TObject);
begin
  imgUsuarioBranca.Visible  := False;
  imgUsuarioAmarela.Visible := True;
end;

end.
