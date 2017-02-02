unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  Tfrm_Delkyt = class(TForm)
    edit_sil: TLabeledEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure Silme_islemi;
    procedure edit_silKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  dosya_yeri='C:\03041002\menu\OKBS.dat';
  temp_yeri='C:\03041002\menu\temp.dat';
var
  frm_Delkyt: Tfrm_Delkyt;
  dosya,temp:textfile;
  OGR_ort,OGR_no,OGR_vize,OGR_final,OGR_ad,OGR_soyad,OGR_blm,OGR_sex,OGR_dgm:string;

implementation

{$R *.dfm}

procedure Tfrm_Delkyt.BitBtn1Click(Sender: TObject);
begin
  if application.MessageBox('Öðrenci silinecek. Devam etmek istiyor musunuz?','Uyarý',MB_OKCANCEL+MB_DEFBUTTON2)=IDOK then silme_islemi;
end;

procedure Tfrm_Delkyt.edit_silKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key)=8 then
  else if ord(key)=13 then begin
    if edit_sil.Text<>'' then silme_islemi
  end
  else if ord(key)>58 then
    key:=chr(0)
  else if ord(key)<47 then
    key:=chr(0)
end;

procedure tfrm_Delkyt.Silme_islemi;
var
  kayit:integer;
begin
  kayit:=0;
  assignfile(dosya,dosya_yeri);
  reset(dosya);
  assignfile(temp,temp_yeri);
  rewrite(temp);
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
    if (edit_sil.Text<>ogr_no) then begin
      writeln(temp,OGR_no);
      writeln(temp,OGR_ad);
      writeln(temp,OGR_soyad);
      writeln(temp,OGR_blm);
      writeln(temp,OGR_sex);
      writeln(temp,OGR_dgm);
      writeln(temp,OGR_vize);
      writeln(temp,OGR_final);
      writeln(temp,OGR_ort);
    end
    else
      kayit:=kayit+1;
  end;
  closefile(temp);
  closefile(dosya);
  erase(dosya);
  rename(temp,dosya_yeri);
  if kayit=0 then begin
    application.MessageBox('  Kayýt bulunamadý!  ','Uyarý',MB_OK);
  end
  else
    MessageDlg(inttostr(kayit)+' kiþi silindi.',mtInformation,mbOKCancel,0);
  edit_sil.SelectAll;
end;

end.
