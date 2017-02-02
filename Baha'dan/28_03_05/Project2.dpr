program Project2;

uses
  Forms,
  Unit2 in 'Unit2.pas' {anaForm},
  Unit3 in 'Unit3.pas' {yeniForm},
  Unit4 in 'Unit4.pas' {silForm},
  Unit5 in 'Unit5.pas' {araForm},
  Unit6 in 'Unit6.pas' {rapForm1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TanaForm, anaForm);
  Application.Run;
end.
