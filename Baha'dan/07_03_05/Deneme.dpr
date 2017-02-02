program Deneme;

uses
  Forms,
  MainUn in 'MainUn.pas' {hesapForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(ThesapForm, hesapForm);
  Application.Run;
end.
