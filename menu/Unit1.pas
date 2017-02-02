unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Dosya1: TMenuItem;
    Raporlar1: TMenuItem;
    Yardm1: TMenuItem;
    KaytAra1: TMenuItem;
    KaytListele1: TMenuItem;
    Grafik11: TMenuItem;
    Grafik21: TMenuItem;
    Grafik22: TMenuItem;
    DosyaOlutur1: TMenuItem;
    DosyaSil1: TMenuItem;
    N1: TMenuItem;
    YeniKayt1: TMenuItem;
    YazcAyarlar1: TMenuItem;
    k1: TMenuItem;
    k2: TMenuItem;
    k3: TMenuItem;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    KaytSil1: TMenuItem;
    YardmKonular1: TMenuItem;
    Hakknda1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure YeniKayt1Click(Sender: TObject);
    procedure DosyaOlutur1Click(Sender: TObject);
    procedure DosyaSil1Click(Sender: TObject);
    procedure k3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure KaytSil1Click(Sender: TObject);
    procedure KaytAra1Click(Sender: TObject);
    procedure Grafik21Click(Sender: TObject);
    procedure Grafik22Click(Sender: TObject);
    procedure KaytListele1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    rapor_id,hepsi:integer;
  end;

const
  dosya_yeri='C:\03041002\menu\OKBS.dat';
var
  frmMain: TfrmMain;
  dosya:textfile;

implementation
  uses Unit2,Unit3,Unit4,Unit5;
{$R *.dfm}


procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
  label1.Caption:=timetostr(time);
end;

procedure TfrmMain.DosyaOlutur1Click(Sender: TObject);
begin
  assignfile(dosya,dosya_yeri);
  rewrite(dosya);
  closefile(dosya);
end;

procedure TfrmMain.DosyaSil1Click(Sender: TObject);
begin
  if application.MessageBox('OKBS dosyasý silinecek. Devam etmek istiyor musunuz?','Uyarý',MB_OKCANCEL+MB_DEFBUTTON2)=IDOK then begin
    assignfile(dosya,dosya_yeri);
    erase(dosya);
  end;
end;

procedure TfrmMain.k3Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  application.Terminate;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  label1.Caption:=timetostr(time);
end;

procedure TfrmMain.YeniKayt1Click(Sender: TObject);
begin
  Application.Initialize;
  Application.CreateForm(Tfrm_Newkyt, frm_Newkyt);
  frm_newkyt.ShowModal;
  frm_newkyt.Free
end;

procedure TfrmMain.KaytSil1Click(Sender: TObject);
begin
  Application.Initialize;
  Application.CreateForm(Tfrm_Delkyt, frm_Delkyt);
  frm_delkyt.ShowModal;
  frm_delkyt.Free
end;

procedure TfrmMain.KaytAra1Click(Sender: TObject);
begin
  //Application.Initialize;
  //Application.CreateForm(Tfrm_Arakyt, frm_Arakyt);
  //frm_Arakyt.ShowModal;
  //frm_Arakyt.Free;
end;

procedure TfrmMain.KaytListele1Click(Sender: TObject);
begin
  //Application.Initialize;
  //Application.CreateForm(Tfrm_Showkyt, frm_Showkyt);
  //frm_Arakyt.ShowModal;
  //frm_Arakyt.Free;
end;

procedure TfrmMain.Grafik21Click(Sender: TObject);
begin
  rapor_id:=0;
  Application.Initialize;
  Application.CreateForm(Tfrm_rapor, frm_rapor);
  frm_rapor.showmodal;
  frm_rapor.Free;
end;

procedure TfrmMain.Grafik22Click(Sender: TObject);
begin
  rapor_id:=1;
  Application.Initialize;
  Application.CreateForm(Tfrm_rapor, frm_rapor);
  frm_rapor.ShowModal;
  frm_rapor.Free;
end;

end.
