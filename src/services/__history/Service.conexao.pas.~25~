unit Service.conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB, FireDAC.Comp.UI, System.IniFiles, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  Provider.constantes;

type
  TServiceConexao = class(TDataModule)
    FDConnection: TFDConnection;
    Cursor: TFDGUIxWaitCursor;
    FBDriverLink: TFDPhysFBDriverLink;
    FDQueryFiliais: TFDQuery;
    FDQueryFiliaisFIL_CODIGO: TIntegerField;
    FDQueryFiliaisFIL_RAZAO: TStringField;
    FDQueryFiliaisFIL_FANTASIA: TStringField;
    FDQueryFiliaisFIL_CNPJ: TStringField;
    FDQueryFiliaisFIL_IE: TStringField;
    FDQueryFiliaisFIL_TELEFONE: TStringField;
    FDQueryFiliaisFIL_WHATSAPP: TStringField;
    FDQueryFiliaisFIL_CELULAR: TStringField;
    FDQueryFiliaisEND_CODIGO: TIntegerField;
    FDQueryFiliaisFIL_END_COMPLEMENTO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceConexao: TServiceConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceConexao.DataModuleCreate(Sender: TObject);
var LIniFile  : TIniFile;
    LDatabase, LUserName, LPassword, LServidor, LCaminho : string;
    LPorta    : Integer;
begin

   try
      FDConnection.Connected := False;
      LCaminho               := ExtractFileDir(ParamStr(0)) + '\conexao.ini';
      LIniFile               := TIniFile.Create(LCaminho);

      LDatabase              := LIniFile.ReadString('CONEXAO', 'DATABASE', LDatabase);
      LServidor              := LIniFile.ReadString('CONEXAO', 'SERVIDOR', LServidor);
      LPorta                 := LIniFile.ReadInteger('CONEXAO', 'PORTA', LPorta);

      LUserName              := 'SYSDBA';
      LPassword              := 'masterkey';

      FDConnection.Params.Values['Database']  := LDatabase;
      FDConnection.Params.Values['User_name'] := LUserName;
      FDConnection.Params.Values['Password']  := LPassword;
      FDConnection.Params.Values['Server']    := LServidor;
      FDConnection.Params.Values['Porta']     := LPorta.ToString;

      FDConnection.Connected := True;
   finally
      FreeAndNil(LIniFile);
   end;

   FDQueryFiliais.Close;
   FDQueryFiliais.Params[0].AsInteger := 1;
   FDQueryFiliais.Open;

   iCOD_FILIAL      := FDQueryFiliaisFIL_CODIGO.AsInteger;
   sRAZAO_FILIAL    := FDQueryFiliaisFIL_RAZAO.AsString;
   sFANTASIA_FILIAL := FDQueryFiliaisFIL_FANTASIA.AsString;
end;

end.
