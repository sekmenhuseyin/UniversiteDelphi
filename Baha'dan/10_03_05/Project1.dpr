program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {deneForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdeneForm, deneForm);
  Application.Run;
end.
