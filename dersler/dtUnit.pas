unit dtUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Menus, DBGrids,Db, StdCtrls, ComCtrls;

type
  TlistForm = class(TForm)
    MainMenu1: TMainMenu;
    Dosya1: TMenuItem;
    YeniKayt1: TMenuItem;
    N1: TMenuItem;
    DTBalan1: TMenuItem;
    DTKes1: TMenuItem;
    N2: TMenuItem;
    k1: TMenuItem;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    Notgiri1: TMenuItem;
    Kaytara1: TMenuItem;
    StatusBar1: TStatusBar;
    KayitListele1: TMenuItem;
    illeriListele1: TMenuItem;
    PopupMenu1: TPopupMenu;
    BalantyKur1: TMenuItem;
    BalantyKes1: TMenuItem;
    N3: TMenuItem;
    k2: TMenuItem;
    procedure DTBalan1Click(Sender: TObject);
    procedure DTKes1Click(Sender: TObject);
    procedure k1Click(Sender: TObject);
    procedure Notgiri1Click(Sender: TObject);
    procedure Kaytara1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure YeniKayt1Click(Sender: TObject);
    procedure KayitListele1Click(Sender: TObject);
    procedure illeriListele1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  listForm: TlistForm;

implementation
uses dataUn,Not_Unit, Unit3, Unit1, Unit4, Unit5;
{$R *.dfm}

procedure TlistForm.DTBalan1Click(Sender: TObject);
begin
  try
    dm.ebfData.Connected:=true;
    dm.T_Ogrenci.Open;
    dm.T_Iller.Open;
    dm.T_Ilceler.Open;
    dm.T_Universite.Open;
    dm.T_Dersler.Open;
    statusbar1.SimpleText:='Veritabaný baðlý!';
  except
    on edatabaseerror do
      showmessage('Baðlantý kurulamýyor!');
  end;
end;

procedure TlistForm.DTKes1Click(Sender: TObject);
begin
  try
    dm.ebfData.Connected:=false;
    dm.T_Ogrenci.Close;
    dm.T_Iller.Close;
    dm.T_Ilceler.Close;
    dm.T_Universite.Close;
    dm.T_Dersler.Close;
    statusbar1.SimpleText:='Veritabaný baðlý deðil!';
  except
    on edatabaseerror do
      showmessage('Baðlantý kesilemiyor!');
  end;
end;

procedure TlistForm.k1Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure TlistForm.Notgiri1Click(Sender: TObject);
begin
  if dm.ebfData.Connected then begin
    Application.CreateForm(TForm2, Form2);
    Form2.enter;
    Form2.free;
  end;
end;

procedure TlistForm.Kaytara1Click(Sender: TObject);
begin
  if dm.ebfData.Connected then begin
    Application.CreateForm(TForm3, Form3);
    form3.enter;
    form3.Free;
  end;
end;

procedure TlistForm.FormCreate(Sender: TObject);
begin
  statusbar1.SimpleText:='Veritabaný baðlý deðil!';
end;

procedure TlistForm.YeniKayt1Click(Sender: TObject);
begin
  if dm.ebfData.Connected then begin
    Application.CreateForm(TkayitForm, kayitForm);
    kayitform.enter;
    kayitform.free;
  end;
end;

procedure TlistForm.KayitListele1Click(Sender: TObject);
begin
  Application.CreateForm(TForm4, Form4);
  form4.rep.Preview;
  form4.Free;
end;

procedure TlistForm.illeriListele1Click(Sender: TObject);
begin
  Application.CreateForm(TForm5, Form5);
  form5.rep.Preview;
  form5.Free;
end;

end.
