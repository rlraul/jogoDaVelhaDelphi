unit uJogada;

interface

uses uEnum, Vcl.Dialogs, uJogador;

type
  TJogada = class
  private
    FJogadas: array [1 .. 3, 1 .. 3] of tSimbolo;
    FFimDeJogo: Boolean;
    FContaJogada: Integer;
    function getFimDeJogo: Boolean;
    procedure setFimDeJogo(const Value: Boolean);
    function getCOntaJogada: Integer;
  public
    property fimDejogo: Boolean read getFimDeJogo write setFimDeJogo;
    property contaJogada: Integer read getCOntaJogada;
    procedure jogadas(x, y: Integer; simbolo: tSimbolo);
    procedure contaSimbolos;
    procedure VerificaGanhador;
    procedure VerificaVelha;

    constructor Create;
  end;

implementation

{ TJogada }

function TJogada.getCOntaJogada: Integer;
begin
  Result := FContaJogada;
end;

function TJogada.getFimDeJogo: Boolean;
begin
  Result := FFimDeJogo;
end;

procedure TJogada.jogadas(x, y: Integer; simbolo: tSimbolo);
begin
  FJogadas[x, y] := simbolo;
end;

procedure TJogada.setFimDeJogo(const Value: Boolean);
begin
  FFimDeJogo := Value;
end;

procedure TJogada.contaSimbolos;
begin
  Inc(FContaJogada);
end;

constructor TJogada.Create;
begin
  FContaJogada := 0;
  FFimDeJogo := false;
end;

procedure TJogada.VerificaGanhador;
begin
  if FJogadas[1, 1] = tSimbolo.tsX then
    if FJogadas[1, 2] = tSimbolo.tsX then
      if FJogadas[1, 3] = tSimbolo.tsX then
        fimDejogo := true;

  if FJogadas[2, 1] = tSimbolo.tsX then
    if FJogadas[2, 2] = tSimbolo.tsX then
      if FJogadas[2, 3] = tSimbolo.tsX then
        fimDejogo := true;

  if FJogadas[3, 1] = tSimbolo.tsX then
    if FJogadas[3, 2] = tSimbolo.tsX then
      if FJogadas[3, 3] = tSimbolo.tsX then
        fimDejogo := true;

  if FJogadas[1, 1] = tSimbolo.tsX then
    if FJogadas[2, 2] = tSimbolo.tsX then
      if FJogadas[3, 3] = tSimbolo.tsX then
        fimDejogo := true;

  if FJogadas[1, 3] = tSimbolo.tsX then
    if FJogadas[2, 2] = tSimbolo.tsX then
      if FJogadas[3, 1] = tSimbolo.tsX then
        fimDejogo := true;

  if FJogadas[1, 1] = tSimbolo.tsX then
    if FJogadas[2, 1] = tSimbolo.tsX then
      if FJogadas[3, 1] = tSimbolo.tsX then
        fimDejogo := true;;

  if FJogadas[1, 2] = tSimbolo.tsX then
    if FJogadas[2, 2] = tSimbolo.tsX then
      if FJogadas[3, 2] = tSimbolo.tsX then
        fimDejogo := true;

  if FJogadas[1, 3] = tSimbolo.tsX then
    if FJogadas[2, 3] = tSimbolo.tsX then
      if FJogadas[3, 3] = tSimbolo.tsX then
        fimDejogo := true;

  { --------------------------------------- }

  if FJogadas[1, 1] = tSimbolo.tsO then
    if FJogadas[1, 2] = tSimbolo.tsO then
      if FJogadas[1, 3] = tSimbolo.tsO then
        fimDejogo := true;

  if FJogadas[2, 1] = tSimbolo.tsO then
    if FJogadas[2, 2] = tSimbolo.tsO then
      if FJogadas[2, 3] = tSimbolo.tsO then
        fimDejogo := true;

  if FJogadas[3, 1] = tSimbolo.tsO then
    if FJogadas[3, 2] = tSimbolo.tsO then
      if FJogadas[3, 3] = tSimbolo.tsO then
        fimDejogo := true;

  if FJogadas[1, 1] = tSimbolo.tsO then
    if FJogadas[2, 2] = tSimbolo.tsO then
      if FJogadas[3, 3] = tSimbolo.tsO then
        fimDejogo := true;

  if FJogadas[1, 3] = tSimbolo.tsO then
    if FJogadas[2, 2] = tSimbolo.tsO then
      if FJogadas[3, 1] = tSimbolo.tsO then
        fimDejogo := true;

  if FJogadas[1, 1] = tSimbolo.tsO then
    if FJogadas[2, 1] = tSimbolo.tsO then
      if FJogadas[3, 1] = tSimbolo.tsO then
        fimDejogo := true;

  if FJogadas[1, 2] = tSimbolo.tsO then
    if FJogadas[2, 2] = tSimbolo.tsO then
      if FJogadas[3, 2] = tSimbolo.tsO then
        fimDejogo := true;

  if FJogadas[1, 3] = tSimbolo.tsO then
    if FJogadas[2, 3] = tSimbolo.tsO then
      if FJogadas[3, 3] = tSimbolo.tsO then
        fimDejogo := true;
end;

procedure TJogada.VerificaVelha;
begin
  if not fimDejogo and (FContaJogada = 9) then
  begin
    ShowMessage('Velha!');
    fimDejogo := true;
  end;
end;

end.
