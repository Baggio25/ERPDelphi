unit View.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.Buttons, Provider.constantes, View.clientes;

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
    imgUsuarioAmarela: TImage;
    imgBackground: TImage;
    btnClientes: TSpeedButton;
    btnCaixa: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnConfiguracoes: TSpeedButton;
    btnProdutos: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
    procedure imgUsuarioBrancaMouseEnter(Sender: TObject);
    procedure imgUsuarioAmarelaMouseLeave(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  ViewClientes := TViewClientes.Create(Self);

  try
    ViewClientes.ShowModal;
  finally
    FreeAndNil(ViewClientes);
  end;
end;

procedure TViewPrincipal.btnConfiguracoesClick(Sender: TObject);
begin
  //
end;

procedure TViewPrincipal.btnFornecedoresClick(Sender: TObject);
begin
  //
end;

procedure TViewPrincipal.btnProdutosClick(Sender: TObject);
begin
 //
end;

procedure TViewPrincipal.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin
  lblDescricaoEmpresa.Caption := IntToStr(iCOD_FILIAL) + ' - ' + sFANTASIA_FILIAL;
  lblLicenciado.Caption       := sRAZAO_FILIAL;
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
