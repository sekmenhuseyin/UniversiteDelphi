unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Personellemleri1: TMenuItem;
    Raporlar1: TMenuItem;
    Yardm1: TMenuItem;
    PersonelKayt1: TMenuItem;
    PersonelSil1: TMenuItem;
    PersonelKaytDzelt1: TMenuItem;
    N1: TMenuItem;
    YazcAyarlar1: TMenuItem;
    N2: TMenuItem;
    k1: TMenuItem;
    Panel1: TPanel;
    tlabel: TLabel;
    Timer1: TTimer;
    YeniDosyaOlutur1: TMenuItem;
    N3: TMenuItem;
    PersonelRaporu11: TMenuItem;
    procedure k1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure PersonelKayt1Click(Sender: TObject);
    procedure YeniDosyaOlutur1Click(Sender: TObject);
    procedure PersonelRaporu11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.k1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  tlabel.caption := timeTostr(time);
end;

procedure TForm1.PersonelKayt1Click(Sender: TObject);
begin
  pForm.showModal;
end;

procedure TForm1.YeniDosyaOlutur1Click(Sender: TObject);
var
  Dosya : TextFile;
begin
  if Application.MessageBox('Yeni dosya oluþturulacak ?', 'Uyarý',
                             MB_OKCANCEL + MB_DEFBUTTON1) = IDOK
       then begin
              AssignFile(Dosya, 'C:\_project\31_03_05\PBS.TXT');
              reWrite(Dosya);
              CloseFile(Dosya);
              showmessage('Dosya oluþturuldu...')
            end
      else showmessage('Dosya oluþturma iþleminden vazgeçildi...');      
end;

procedure TForm1.PersonelRaporu11Click(Sender: TObject);
begin
  rapForm1.showmodal;
end;

end.
