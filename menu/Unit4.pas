unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons, ExtCtrls;

type
  Tfrm_Showkyt = class(TForm)
    edit_ara: TLabeledEdit;
    BitBtn1: TBitBtn;
    Students: TStringGrid;
    procedure Ara_islemi;
    procedure FormCreate(Sender: TObject);
    procedure edit_araKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  dosya_yeri='C:\03041002\menu\OKBS.dat';
var
  frm_Showkyt: Tfrm_Showkyt;
  dosya:textfile;
  OGR_ort,OGR_no,OGR_vize,OGR_final,OGR_ad,OGR_soyad,OGR_blm,OGR_sex,OGR_dgm:string;

implementation

{$R *.dfm}

procedure Tfrm_Showkyt.Ara_islemi;
var
  sayi,deger,i:integer;
begin
  students.RowCount:=2;
  for i:=0 to 9 do
    students.Cells[i,1]:='';
  deger:=1;
  sayi:=0;
  assignfile(dosya,dosya_yeri);
  reset(dosya);
  while not eof(dosya) do begin
    readln(dosya,OGR_no);
    readln(dosya,OGR_ad);
    readln(dosya,OGR_soyad);
    readln(dosya,OGR_blm);
    readln(dosya,OGR_sex);
    readln(dosya,OGR_dgm);
    readln(dosya,OGR_vize);
    readln(dosya,OGR_final);
    readln(dosya,OGR_ort);
    if (edit_ara.Text='*') or (edit_ara.Text=OGR_no) then begin
      students.Cells[0,deger]:=ogr_no;
      students.Cells[1,deger]:=ogr_ad;
      students.Cells[2,deger]:=ogr_soyad;
      students.Cells[3,deger]:=ogr_blm;
      students.Cells[4,deger]:=ogr_sex;
      students.Cells[5,deger]:=ogr_dgm;
      students.Cells[6,deger]:=ogr_vize;
      students.Cells[7,deger]:=ogr_final;
      students.Cells[8,deger]:=ogr_ort;
      deger:=deger+1;
      sayi:=sayi+1;
      students.RowCount:=deger;
    end;
  end;
  closefile(dosya);
  if sayi=0 then showmessage('Kayýt bulunamdý!');
  edit_ara.SelectAll;
end;

procedure Tfrm_Showkyt.FormCreate(Sender: TObject);
var
  deger,i:integer;
begin
  students.RowCount:=2;
  for i:=0 to 9 do
    students.Cells[i,1]:='';
  deger:=1;
  Students.Cols[0].Text:='Numarasý';
  Students.Cols[1].Text:='Adý';
  Students.Cols[2].Text:='Soyadý';
  Students.Cols[3].Text:='Bölümü';
  Students.Cols[4].Text:='Cinsiyeti';
  Students.Cols[5].Text:='Doðum Tarihi';
  Students.Cols[6].Text:='Vizesi';
  Students.Cols[7].Text:='Finali';
  Students.Cols[8].Text:='Ortalamasý';
  assignfile(dosya,dosya_yeri);
  reset(dosya);
  while not eof(dosya) do begin
    readln(dosya,OGR_no);
    readln(dosya,OGR_ad);
    readln(dosya,OGR_soyad);
    readln(dosya,OGR_blm);
    readln(dosya,OGR_sex);
    readln(dosya,OGR_dgm);
    readln(dosya,OGR_vize);
    readln(dosya,OGR_final);
    readln(dosya,OGR_ort);
    //okudu...
    students.Cells[0,deger]:=ogr_no;
    students.Cells[1,deger]:=ogr_ad;
    students.Cells[2,deger]:=ogr_soyad;
    students.Cells[3,deger]:=ogr_blm;
    students.Cells[4,deger]:=ogr_sex;
    students.Cells[5,deger]:=ogr_dgm;
    students.Cells[6,deger]:=ogr_vize;
    students.Cells[7,deger]:=ogr_final;
    students.Cells[8,deger]:=ogr_ort;
    //deger nolu satýra bunlkarý yaz
    deger:=deger+1;
    students.RowCount:=deger;
  end;
  closefile(dosya);
end;

procedure Tfrm_Showkyt.edit_araKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key)=13 then ara_islemi;
end;

procedure Tfrm_Showkyt.BitBtn1Click(Sender: TObject);
begin
  ara_islemi;
end;

end.
