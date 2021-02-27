unit FFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uJogador,
  uJogoDaVelha, uEnum;

type
  TFFrmJogoDaVelha = class(TForm)
    pbAll: TPanel;
    btn11: TButton;
    btn12: TButton;
    btn13: TButton;
    btn21: TButton;
    btn22: TButton;
    btn23: TButton;
    btn31: TButton;
    btn32: TButton;
    btn33: TButton;
    pnData: TPanel;
    pnButtons: TPanel;
    btnIniciarJogo: TButton;
    edtJogadorX: TLabeledEdit;
    edtJogadorO: TLabeledEdit;
    procedure btnIniciarJogoClick(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    oJogaDaVelha: TJogoDaVelha;
    oJogador1: TJogador;
    oJogador2: TJogador;
    procedure criaJogadores();
    procedure criaJogo;
    procedure iniciarJogo;
    procedure limpaBotoes();
    procedure fimDejogo();
  public
    { Public declarations }
  end;

var
  FFrmJogoDaVelha: TFFrmJogoDaVelha;

implementation

{$R *.dfm}

procedure TFFrmJogoDaVelha.btn11Click(Sender: TObject);
var
  simbolo: tSimbolo;
begin
  if Assigned(oJogaDaVelha) then
  begin
    if not oJogaDaVelha.jogada.fimDejogo and
      (TButton(Sender).Caption <> EmptyStr) then
      Abort;

    simbolo := oJogaDaVelha.Jogar;
    if simbolo = tSimbolo.tsX then
      TButton(Sender).Caption := 'X'
    else
      TButton(Sender).Caption := 'O';

    if TButton(Sender).Name = 'btn11' then
      oJogaDaVelha.jogada.jogadas(1, 1, simbolo);

    if TButton(Sender).Name = 'btn12' then
      oJogaDaVelha.jogada.jogadas(1, 2, simbolo);

    if TButton(Sender).Name = 'btn13' then
      oJogaDaVelha.jogada.jogadas(1, 3, simbolo);

    if TButton(Sender).Name = 'btn21' then
      oJogaDaVelha.jogada.jogadas(2, 1, simbolo);

    if TButton(Sender).Name = 'btn22' then
      oJogaDaVelha.jogada.jogadas(2, 2, simbolo);

    if TButton(Sender).Name = 'btn23' then
      oJogaDaVelha.jogada.jogadas(2, 3, simbolo);

    if TButton(Sender).Name = 'btn31' then
      oJogaDaVelha.jogada.jogadas(3, 1, simbolo);

    if TButton(Sender).Name = 'btn32' then
      oJogaDaVelha.jogada.jogadas(3, 2, simbolo);

    if TButton(Sender).Name = 'btn33' then
      oJogaDaVelha.jogada.jogadas(3, 3, simbolo);

    oJogaDaVelha.jogada.contaSimbolos;
    oJogaDaVelha.jogada.VerificaGanhador;
    oJogaDaVelha.retornaVencedor;
    oJogaDaVelha.jogada.VerificaVelha;
    fimDejogo;
  end;
end;

procedure TFFrmJogoDaVelha.btnIniciarJogoClick(Sender: TObject);
begin
  iniciarJogo;
end;

procedure TFFrmJogoDaVelha.criaJogadores;
begin
  if Assigned(oJogador1) and Assigned(oJogador2) then
  begin
    FreeAndNil(oJogador1);
    FreeAndNil(oJogador2);
  end;
  oJogador1         := TJogador.Create();
  oJogador2         := TJogador.Create();
  oJogador1.nome    := edtJogadorX.Text;
  oJogador2.nome    := edtJogadorO.Text;
  oJogador1.simbolo := tSimbolo.tsX;
  oJogador2.simbolo := tSimbolo.tsO;
end;

procedure TFFrmJogoDaVelha.criaJogo;
begin
  if Assigned(oJogaDaVelha) then
    FreeAndNil(oJogaDaVelha);

  oJogaDaVelha          := TJogoDaVelha.Create();
  oJogaDaVelha.jogador1 := oJogador1;
  oJogaDaVelha.jogador2 := oJogador2;

end;

procedure TFFrmJogoDaVelha.fimDejogo;
begin
  if oJogaDaVelha.jogada.fimDejogo then
  begin
    if Application.MessageBox('Deseja jogar novamente?', 'Atenção',
      MB_YESNO + MB_ICONQUESTION) = ID_YES then
    begin
      limpaBotoes;
      criaJogadores;
      criaJogo;
    end
    else
      Close;
  end;
end;

procedure TFFrmJogoDaVelha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(oJogador1);
  FreeAndNil(oJogador2);
  FreeAndNil(oJogaDaVelha);
end;

procedure TFFrmJogoDaVelha.iniciarJogo;
begin
  if not Assigned(oJogaDaVelha) then
  begin
    pnButtons.Enabled := true;
    criaJogadores;
    criaJogo;
  end
  else
  begin
    if Application.MessageBox('Tem certeza que deseja reiniciar o jogo?',
      'Atenção', MB_YESNO + MB_ICONQUESTION) = ID_YES then
    begin
      FreeAndNil(oJogaDaVelha);
      limpaBotoes;
      criaJogadores;
      criaJogo;
    end;

  end;
end;

procedure TFFrmJogoDaVelha.limpaBotoes;
var
  i: Integer;
begin
  for i := FFrmJogoDaVelha.ComponentCount - 1 downto 0 do
  begin
    if (FFrmJogoDaVelha.Components[i] is TButton) and
      (TButton(FFrmJogoDaVelha.Components[i]).Name <> 'btnIniciarJogo') then
      TButton(FFrmJogoDaVelha.Components[i]).Caption := EmptyStr;
  end;
end;

end.
