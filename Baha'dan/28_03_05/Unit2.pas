unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls;

type
  TanaForm = class(TForm)
    MainMenu1: TMainMenu;
    Dosya1: TMenuItem;
    Raporlar1: TMenuItem;
    Yardm1: TMenuItem;
    YeniKayt1: TMenuItem;
    DosyaSil1: TMenuItem;
    N1: TMenuItem;
    YeniKayt2: TMenuItem;
    N2: TMenuItem;
    YazcAyarlar1: TMenuItem;
    N3: TMenuItem;
    k1: TMenuItem;
    KaytAra1: TMenuItem;
    Grafik11: TMenuItem;
    Grafik21: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    KaytSil1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure YeniKayt2Click(Sender: TObject);
    procedure YeniKayt1Click(Sender: TObject);
    procedure DosyaSil1Click(Sender: TObject);
    procedure KaytSil1Click(Sender: TObject);
    procedure k1Click(Sender: TObject);
    procedure KaytAra1Click(Sender: TObject);
    procedure Grafik11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  anaForm : TanaForm;
  Dosya   : Textfile;
implementation

uses Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}

procedure TanaForm.Timer1Timer(Sender: TObject);
begin
  label2.caption := timeTostr(time);
end;

procedure TanaForm.YeniKayt2Click(Sender: TObject);
begin
  Application.CreateForm(TyeniForm, yeniForm);
  yeniForm.showmodal;
  yeniForm.free;
end;

procedure TanaForm.YeniKayt1Click(Sender: TObject);
begin
   AssignFile(Dosya, 'C:\OKBS.DAT');
   Rewrite(Dosya);  //Dosya yeniden boþ olarak açýlýyor
   CloseFile(Dosya); //Dosya kapatýldý
end;

procedure TanaForm.DosyaSil1Click(Sender: TObject);
begin
  if Application.MessageBox('OKBS dosyasý silinecek ?', 'Uyarý',
                             MB_OKCANCEL + MB_DEFBUTTON2) = IDOK
       then begin
              AssignFile(Dosya, 'C:\OKBS.DAT');
              Erase(Dosya); // Dosya silindi
              CloseFile(Dosya);
            end
end;

procedure TanaForm.KaytSil1Click(Sender: TObject);
begin
  Application.CreateForm(TsilForm, silForm);
  silForm.showmodal;
  silForm.free;
end;

procedure TanaForm.k1Click(Sender: TObject);
begin
  close;
end;

procedure TanaForm.KaytAra1Click(Sender: TObject);
begin
   Application.CreateForm(TaraForm, araForm);
   araForm.showmodal;
   araForm.free;
end;

procedure TanaForm.Grafik11Click(Sender: TObject);
begin
   Application.CreateForm(TrapForm1, rapForm1);
   rapForm1.showmodal;
   rapForm1.Free;
end;

end.
