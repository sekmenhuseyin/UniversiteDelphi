unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Dosya1: TMenuItem;
    VeritabannaBalan1: TMenuItem;
    BalantyKes1: TMenuItem;
    N1: TMenuItem;
    k1: TMenuItem;
    Kayt1: TMenuItem;
    PersonelDzenle1: TMenuItem;
    PersonelAilesiDzenle1: TMenuItem;
    Status: TStatusBar;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    DBImage1: TDBImage;
    DBGrid2: TDBGrid;
    Raporlar1: TMenuItem;
    PersonelListesi1: TMenuItem;
    PersonelAilesi1: TMenuItem;
    Yardm1: TMenuItem;
    Hakknda1: TMenuItem;
    PopupMenu1: TPopupMenu;
    BalantyKur1: TMenuItem;
    BalantyKes2: TMenuItem;
    N2: TMenuItem;
    k2: TMenuItem;
    procedure k1Click(Sender: TObject);
    procedure VeritabannaBalan1Click(Sender: TObject);
    procedure BalantyKes1Click(Sender: TObject);
    procedure PersonelDzenle1Click(Sender: TObject);
    procedure PersonelAilesiDzenle1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PersonelAilesi1Click(Sender: TObject);
    procedure PersonelListesi1Click(Sender: TObject);
    procedure Hakknda1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit4, Unit5, Unit6, Unit3, Unit7;

{$R *.dfm}

procedure TForm1.k1Click(Sender: TObject);
begin
  Form1.BalantyKes1Click(Sender);
  application.Terminate;
end;

procedure TForm1.VeritabannaBalan1Click(Sender: TObject);
begin
  try
    dm.database.Connected:=true;
    dm.T_Personel.Open;
    dm.T_Aile.Open;
    status.SimpleText:='Veritabaný baðlý!';
  except
    showmessage('Veritabanýyla baðlantý kurulamadý!');
  end;
end;

procedure TForm1.BalantyKes1Click(Sender: TObject);
begin
  try
    dm.database.Connected:=false;
    dm.T_Personel.Close;
    dm.T_Aile.Close;
    status.SimpleText:='Veritabaný baðlý deðil!';
  except
    showmessage('Veritabanýyla baðlantý kurulamadý!');
  end;
end;

procedure TForm1.PersonelDzenle1Click(Sender: TObject);
begin
  if dm.Database.connected then begin
    Application.CreateForm(TForm5, Form5);
    Form5.showmodal;
    Form5.Free;
  end
  else
    showmessage('Veritabanýyla baðlantý kurulamadý!');
end;

procedure TForm1.PersonelAilesiDzenle1Click(Sender: TObject);
begin
  if dm.Database.Connected then begin
    Application.CreateForm(TForm4, Form4);
    form4.ShowModal;
    form4.free;
  end
  else
    showmessage('Veritabanýyla baðlantý kurulamadý!');
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.BalantyKes1Click(Sender);
end;

procedure TForm1.PersonelAilesi1Click(Sender: TObject);
begin
  if dm.Database.Connected then begin
    Application.CreateForm(TForm6, Form6);
    form6.Rep.Preview;
  end
  else
    showmessage('Veritabanýyla baðlantý kurulamadý!');
end;

procedure TForm1.PersonelListesi1Click(Sender: TObject);
begin
  if dm.Database.Connected then begin
    Application.CreateForm(TForm3, Form3);
    form3.Rep.Preview;
  end
  else
    showmessage('Veritabanýyla baðlantý kurulamadý!');
end;

procedure TForm1.Hakknda1Click(Sender: TObject);
begin
  Application.CreateForm(TAboutBox, AboutBox);
  AboutBox.showmodal;
  AboutBox.Free;
end;

end.
