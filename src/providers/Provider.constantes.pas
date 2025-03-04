unit Provider.constantes;

interface

var
  iCOD_FILIAL      : Integer;
  sRAZAO_FILIAL    : String;
  sFANTASIA_FILIAL : String;

  procedure GetPessoas(iTipo: Integer);

implementation
  uses Service.cadastro;

procedure GetPessoas(iTipo: Integer);
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

end.
