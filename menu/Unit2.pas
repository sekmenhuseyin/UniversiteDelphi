unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  Tfrm_Newkyt = class(TForm)
    OGR_no: TLabeledEdit;
    OGR_ad: TLabeledEdit;
    OGR_soyad: TLabeledEdit;
    OGR_blm: TComboBox;
    Label1: TLabel;
    OGR_sex: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    OGR_dgm: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    OGR_vize: TEdit;
    OGR_final: TEdit;
    OGR_ort: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Kayit_islemi;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure OGR_noKeyPress(Sender: TObject; var Key: Char);
    procedure OGR_adKeyPress(Sender: TObject; var Key: Char);
    procedure OGR_soyadKeyPress(Sender: TObject; var Key: Char);
    procedure OGR_blmKeyPress(Sender: TObject; var Key: Char);
    procedure OGR_sexKeyPress(Sender: TObject; var Key: Char);
    procedure OGR_dgmKeyPress(Sender: TObject; var Key: Char);
    procedure OGR_vizeKeyPress(Sender: TObject; var Key: Char);
    procedure OGR_finalKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  dosya_yeri='C:\03041002\menu\OKBS.dat';
var
  frm_Newkyt: Tfrm_Newkyt;
  dosya:textfile;

implementation

{$R *.dfm}

procedure Temizle;
begin
  frm_newkyt.OGR_no.Text:='';
  frm_newkyt.OGR_ad.Text:='';
  frm_newkyt.OGR_soyad.Text:='';
  frm_newkyt.OGR_blm.ItemIndex:=0;
  frm_newkyt.OGR_sex.ItemIndex:=0;
  frm_newkyt.OGR_dgm.Date:=date;
  frm_newkyt.OGR_vize.Text:='0';
  frm_newkyt.OGR_final.Text:='0';
  frm_newkyt.OGR_ort.Text:='0';
end;

procedure Tfrm_Newkyt.Button1Click(Sender: TObject);
begin
  kayit_islemi;
end;

procedure Tfrm_Newkyt.Button3Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_Newkyt.Button2Click(Sender: TObject);
begin
  temizle;
end;

procedure Tfrm_Newkyt.OGR_noKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key)=13 then ogr_ad.SetFocus;
end;

procedure Tfrm_Newkyt.OGR_adKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key)=13 then ogr_soyad.SetFocus;
end;

procedure Tfrm_Newkyt.OGR_soyadKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key)=13 then ogr_blm.SetFocus;
end;

procedure Tfrm_Newkyt.OGR_blmKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key)=13 then ogr_sex.SetFocus;
end;

procedure Tfrm_Newkyt.OGR_sexKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key)=13 then ogr_dgm.SetFocus;
end;

procedure Tfrm_Newkyt.OGR_dgmKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key)=13 then ogr_vize.SetFocus;
end;

procedure Tfrm_Newkyt.OGR_vizeKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key)=8 then
  else if ord(key)=13 then ogr_final.SetFocus
  else if ord(key)>58 then
    key:=chr(0)
  else if ord(key)<48 then
    key:=chr(0)
end;

procedure Tfrm_Newkyt.OGR_finalKeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key)=8 then
  else   if ord(key)=13 then begin
    kayit_islemi;
    ogr_no.SetFocus;
  end
  else if ord(key)>58 then
    key:=chr(0)
  else if ord(key)<48 then
    key:=chr(0)
end;

procedure Tfrm_Newkyt.Kayit_islemi;
var
  temp:real;
begin
  if (ogr_no.Text='') then begin
    showmessage('Lütfen tüm alanları doldurunuz.');
    ogr_no.SetFocus;
    exit;
  end
  else if (ogr_ad.Text='') then begin
    showmessage('Lütfen tüm alanları doldurunuz.');
    ogr_ad.SetFocus;
    exit;
  end
  else if (ogr_soyad.Text='') then begin
    showmessage('Lütfen tüm alanları doldurunuz.');
    ogr_soyad.SetFocus;
    exit;
  end
  else if (ogr_blm.Text='') then begin
    showmessage('Lütfen tüm alanları doldurunuz.');
    ogr_blm.SetFocus;
    exit;
  end
  else if (ogr_sex.Text='') then begin
    showmessage('Lütfen tüm alanları doldurunuz.');
    ogr_sex.SetFocus;
    exit;
  end
  else if (ogr_vize.Text='') then begin
    showmessage('Lütfen tüm alanları doldurunuz.');
    ogr_vize.SetFocus;
    exit;
  end
  else if (ogr_final.Text='') then begin
    showmessage('Lütfen tüm alanları doldurunuz.');
    ogr_final.SetFocus;
    exit;
  end;
  assignfile(dosya,dosya_yeri);
  append(dosya);
  writeln(dosya,ogr_no.text);
  writeln(dosya,ogr_ad.text);
  writeln(dosya,ogr_soyad.text);
  writeln(dosya,ogr_blm.text);
  writeln(dosya,ogr_sex.text);
  writeln(dosya,datetostr(ogr_dgm.Date));
  writeln(dosya,ogr_vize.text);
  writeln(dosya,ogr_final.text);
  temp:=(strtoint(ogr_vize.text))*0.3+(strtoint(ogr_final.text))*0.7;
  ogr_ort.Text:=floattostr(temp);
  writeln(dosya,ogr_ort.text);
  closefile(dosya);
  showmessage(floattostr(temp));
  temizle;
  ogr_no.SetFocus;
end;

procedure Tfrm_Newkyt.FormCreate(Sender: TObject);
begin
  ogr_dgm.Date:=date;
end;

end.
