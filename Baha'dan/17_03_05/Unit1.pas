unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Buttons, Mask, Grids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    cb1: TCheckBox;
    cb2: TCheckBox;
    cb3: TCheckBox;
    cb4: TCheckBox;
    cb5: TCheckBox;
    MainMenu1: TMainMenu;
    Dosya1: TMenuItem;
    Yeni1: TMenuItem;
    A1: TMenuItem;
    Kaydet1: TMenuItem;
    N1: TMenuItem;
    YazcAyarlar1: TMenuItem;
    SayfaAyarlar1: TMenuItem;
    N2: TMenuItem;
    k1: TMenuItem;
    Dzenle1: TMenuItem;
    HepsiniSe1: TMenuItem;
    KEs1: TMenuItem;
    Kopyala1: TMenuItem;
    Yardm1: TMenuItem;
    NormalKaydet1: TMenuItem;
    Yeniisimdekaydet1: TMenuItem;
    HzlKaydet1: TMenuItem;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    MaskEdit1: TMaskEdit;
    sg1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure cb1Click(Sender: TObject);
    procedure cb2Click(Sender: TObject);
    procedure cb3Click(Sender: TObject);
    procedure cb4Click(Sender: TObject);
    procedure cb5Click(Sender: TObject);
    procedure k1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure YazcAyarlar1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  meyveCnt : byte;
implementation
{$R *.dfm}
procedure TForm1.FormCreate(Sender: TObject);
begin
   meyveCnt := 0;
end;

procedure TForm1.cb1Click(Sender: TObject);
begin
  if cb1.checked then inc(meyveCnt)
        else dec(meyveCnt);
  Form1.Caption := 'Meyve Sayýsý = ' + intTostr(meyveCnt);
end;

procedure TForm1.cb2Click(Sender: TObject);
begin
  if cb2.checked then inc(meyveCnt)
        else dec(meyveCnt);
  Form1.Caption := 'Meyve Sayýsý = ' + intTostr(meyveCnt);
end;

procedure TForm1.cb3Click(Sender: TObject);
begin
  if cb3.checked then inc(meyveCnt)
        else dec(meyveCnt);
  Form1.Caption := 'Meyve Sayýsý = ' + intTostr(meyveCnt);
end;

procedure TForm1.cb4Click(Sender: TObject);
begin
  if cb4.checked then inc(meyveCnt)
        else dec(meyveCnt);
  Form1.Caption := 'Meyve Sayýsý = ' + intTostr(meyveCnt);
end;

procedure TForm1.cb5Click(Sender: TObject);
begin
  if cb5.checked then inc(meyveCnt)
        else dec(meyveCnt);
  Form1.Caption := 'Meyve Sayýsý = ' + intTostr(meyveCnt);
end;

procedure TForm1.k1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.A1Click(Sender: TObject);
begin
  showmessage('Aç butonuna bastýnýz....');
end;

procedure TForm1.YazcAyarlar1Click(Sender: TObject);
begin
  showmessage('Yazýcý Ayarlarý butonuna bastýnýz...');
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
   i ,j : integer;
begin
  // sg1.Cells[sütun,satir]
  sg1.Cells[0,0] := 'Satýr/Sütun';
  // satir baþlýklarý
  sg1.Cells[0,1] := 'r1';
  sg1.Cells[0,2] := 'r2';
  sg1.Cells[0,3] := 'r3';
  //sütun vaþlýklarý
  sg1.Cells[1,0] := 'c1';
  sg1.Cells[2,0] := 'c2';
  sg1.Cells[3,0] := 'c3';

  // hücrelere rastgele deðer giriliyor
  for i :=1 to sg1.RowCount - 1 do
    for j := 1 to sg1.ColCount - 1  do
      begin
        randomize;
        sg1.Cells[i, j] := intTostr(random(100));
      end;
end;

end.
