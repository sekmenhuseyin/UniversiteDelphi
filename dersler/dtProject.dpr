program dtProject;

uses
  Forms,
  dtUnit in 'dtUnit.pas' {listForm},
  dataUn in 'dataUn.pas' {dm: TDataModule},
  Unit1 in 'Unit1.pas' {kayitForm},
  Not_Unit in 'Not_Unit.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Öðrenciler';
  Application.CreateForm(TlistForm, listForm);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
