program prjJogoDaVelha;

uses
  Vcl.Forms,
  FFrmPrincipal in 'src\View\FFrmPrincipal.pas' {FFrmJogoDaVelha},
  uJogoDaVelha in 'src\Model\uJogoDaVelha.pas',
  uJogador in 'src\Model\uJogador.pas',
  uEnum in 'src\Model\uEnum.pas',
  uJogada in 'src\Model\uJogada.pas',
  uException in 'src\Model\uException.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFFrmJogoDaVelha, FFrmJogoDaVelha);
  Application.Run;
end.
