program Deneme;

uses
  Forms,
  MainUn in 'MainUn.pas' {anaForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Deneme Prog v1.0';
  Application.CreateForm(TanaForm, anaForm);
  Application.Run;
end.
