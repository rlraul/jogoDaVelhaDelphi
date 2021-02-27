unit uJogoDaVelha;

interface

uses uJogador, uEnum, Vcl.Dialogs, uJogada, System.SysUtils;

type
  TJogoDaVelha = class
  private
    FoJogador1: TJogador;
    FoJogador2: TJogador;
    FoJogadorAtual: TJogador;
    FJogada: TJogada;
    function getJogador1: TJogador;
    function getJogador2: TJogador;
    procedure setJogador1(const Value: TJogador);
    procedure setJogador2(const Value: TJogador);
    function getJogada: TJogada;
    procedure setJogada(const Value: TJogada);
  public
    property jogador1: TJogador read getJogador1 write setJogador1;
    property jogador2: TJogador read getJogador2 write setJogador2;
    property jogada: TJogada read getJogada write setJogada;
    function GetJogadorAtual: TJogador;
    function Jogar: tSimbolo;
    procedure retornaVencedor;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TJogoDaVelha }

constructor TJogoDaVelha.Create;
begin
  FJogada := TJogada.Create();
end;

destructor TJogoDaVelha.Destroy;
begin
  FreeAndNil(FJogada);
end;

function TJogoDaVelha.getJogada: TJogada;
begin
  Result := FJogada;
end;

function TJogoDaVelha.getJogador1: TJogador;
begin
  Result := FoJogador1;
end;

function TJogoDaVelha.getJogador2: TJogador;
begin
  Result := FoJogador2;
end;

procedure TJogoDaVelha.setJogada(const Value: TJogada);
begin
  FJogada := jogada;
end;

procedure TJogoDaVelha.setJogador1(const Value: TJogador);
begin
  FoJogador1 := Value;
end;

procedure TJogoDaVelha.setJogador2(const Value: TJogador);
begin
  FoJogador2 := Value;
end;

function TJogoDaVelha.GetJogadorAtual: TJogador;
begin
  if FoJogadorAtual = FoJogador1 then
    Result := FoJogador2
  else
    Result := FoJogador1;
end;

function TJogoDaVelha.Jogar: tSimbolo;
begin
  FoJogadorAtual := GetJogadorAtual;
  Result := FoJogadorAtual.simbolo;
end;

procedure TJogoDaVelha.retornaVencedor;
begin
  if (FJogada.fimDejogo) and (FJogada.contaJogada < 9) then
    ShowMessage('O jogador ' + FoJogadorAtual.nome + ' venceu!');
end;

end.
