program Project1;

uses
  Forms,
  unit1 in 'unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'S�ralama';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
