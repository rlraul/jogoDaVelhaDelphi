unit uJogador;

interface

uses uEnum, System.SysUtils, uException;

type
  TJogador = class
  private
    FNome: STring;
    FSimbolo: tSimbolo;
    function getNome: String;
    procedure setNome(const Value: String);
    function getSimbolo: tSimbolo;
    procedure setSimbolo(const Value: tSimbolo);
  public
    property nome: String read getNome write setNome;
    property simbolo: tSimbolo read getSimbolo write setSimbolo;

  end;

implementation

{ TJogador }

function TJogador.getNome: String;
begin
  Result := FNome;
end;

function TJogador.getSimbolo: tSimbolo;
begin
  Result := FSimbolo;
end;

procedure TJogador.setNome(const Value: String);
begin
  if Value = EmptyStr then
    raise ExceptionNomeNaoInformado.create;
  FNome := Value;
end;

procedure TJogador.setSimbolo(const Value: tSimbolo);
begin
  FSimbolo := Value;
end;

end.
