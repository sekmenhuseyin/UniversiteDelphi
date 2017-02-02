program OKBS;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmMain},
  Unit2 in 'Unit2.pas' {frm_Newkyt},
  Unit3 in 'Unit3.pas' {frm_Delkyt},
  Unit4 in 'Unit4.pas' {frm_Showkyt},
  Unit5 in 'Unit5.pas' {frm_rapor};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'OKBS';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
