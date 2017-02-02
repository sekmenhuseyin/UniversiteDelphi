program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {pForm},
  Unit3 in 'Unit3.pas' {rapForm1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TpForm, pForm);
  Application.CreateForm(TrapForm1, rapForm1);
  Application.Run;
end.
