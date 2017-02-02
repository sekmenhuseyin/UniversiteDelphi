program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {DM: TDataModule},
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5},
  Unit3 in 'Unit3.pas' {Form3},
  Unit6 in 'Unit6.pas' {Form6},
  Unit7 in 'Unit7.pas' {AboutBox};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Personell';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
