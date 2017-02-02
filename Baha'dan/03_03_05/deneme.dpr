program deneme;

uses
  Forms,
  mainUN in 'mainUN.pas' {mainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Deneme v1.0';
  Application.CreateForm(TmainForm, mainForm);
  Application.Run;
end.
