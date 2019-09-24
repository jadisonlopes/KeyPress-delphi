program NewKeyPress;

uses
  Vcl.Forms,
  keypress in 'keypress.pas' {fKeyPress};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfKeyPress, fKeyPress);
  Application.Run;
end.
