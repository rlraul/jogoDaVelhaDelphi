unit uException;

interface

uses
  System.SysUtils;

type
  ExceptionNomeNaoInformado = class(Exception)
  public
    constructor Create; reintroduce;
  end;

implementation

{ ExceptionNomeNaoInformado }

constructor ExceptionNomeNaoInformado.Create;
begin
  Message := 'O nome dos jogadores deve ser informado!';
end;

end.
