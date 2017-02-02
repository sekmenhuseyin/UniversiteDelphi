unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TForm3 = class(TForm)
    Grid: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Memo1: TMemo;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Enter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses dataUn;

{$R *.dfm}

procedure TForm3.Enter;
begin
   showmodal;
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
var
  Aranacak:string;
begin
  aranacak:='';
  if edit1.Text<>'' then
    if aranacak<>'' then
      aranacak:=aranacak+' or (OGR_NO='''+edit1.Text+''')'
    else
      aranacak:=aranacak+'(OGR_NO='''+edit1.Text+''')';
  if edit2.Text<>'' then
    if aranacak<>'' then
      aranacak:=aranacak+' or (ADI='''+edit2.Text+''')'
    else
      aranacak:=aranacak+'(ADI='''+edit2.Text+''')';
  if edit3.Text<>'' then
    if aranacak<>'' then
      aranacak:=aranacak+' or (SOYADI='''+edit3.Text+''')'
    else
      aranacak:=aranacak+'(SOYADI='''+edit3.Text+''')';
  if aranacak<>'' then begin
    dm.T_Ogrenci.Cancel;
    dm.T_Ogrenci.Filter:=aranacak;
    dm.T_Ogrenci.Filtered:=true;
    dm.T_Ogrenci.Refresh;
  end
  else begin
    dm.T_Ogrenci.Cancel;
    dm.T_Ogrenci.Filter:='';
    dm.T_Ogrenci.Filtered:=false;
    dm.T_Ogrenci.Refresh;
  end;
  memo1.Lines.Add(aranacak)
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.T_Ogrenci.Cancel;
  dm.T_Ogrenci.Filter:='';
  dm.T_Ogrenci.Filtered:=false;
  dm.T_Ogrenci.Refresh;
end;

end.
