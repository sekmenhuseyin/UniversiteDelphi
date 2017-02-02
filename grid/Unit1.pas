unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Menus, StdCtrls, Buttons, Mask;

type
  TForm1 = class(TForm)
    sg: TStringGrid;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit4: TEdit;
    CheckBox1: TCheckBox;
    MainMenu1: TMainMenu;
    Dosya1: TMenuItem;
    Yeni1: TMenuItem;
    Kaydet1: TMenuItem;
    N1: TMenuItem;
    kapat1: TMenuItem;
    Cikis1: TMenuItem;
    Duzen1: TMenuItem;
    Grns1: TMenuItem;
    Seenekler1: TMenuItem;
    cmd_deger: TSpeedButton;
    cmd_grid: TButton;
    cmd_tersmtrx: TButton;
    Label4: TLabel;
    cmd_transpoze: TButton;
    sg2: TStringGrid;
    procedure cmd_degerClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure cmd_gridClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure sgClick(Sender: TObject);
    procedure sgDblClick(Sender: TObject);
    procedure cmd_tersmtrxClick(Sender: TObject);
    procedure cmd_transpozeClick(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.cmd_degerClick(Sender: TObject);
begin
  if edit1.Text<>'' then
    if edit2.Text<>'' then
      if edit3.Text<>'' then
        sg.Cells[strtoint(edit2.text),strtoint(edit1.text)]:=edit3.Text
      else
        showmessage('Lütfen tüm alanlari doldurunuz!')
    else
      showmessage('Lütfen tüm alanlari doldurunuz!')
  else
    showmessage('Lütfen tüm alanlari doldurunuz!')
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked=true then begin
    edit4.Enabled:=false;
    sg.Cells[0,0]:=edit4.text;
  end
  else
    edit4.Enabled:=true
end;

procedure TForm1.cmd_gridClick(Sender: TObject);
var
i:integer;
begin
  sg.rowCount:=strtoint(edit1.text)+1;
  sg.colCount:=strtoint(edit2.text)+1;
  sg.FixedCols:=1;
  sg.FixedRows:=1;
  sg2.rowCount:=strtoint(edit1.text)+1;
  sg2.colCount:=strtoint(edit2.text)+1;
  sg2.FixedCols:=1;
  sg2.FixedRows:=1;
  for i:=1 to sg.rowCount do begin
    sg.Cells[i,0]:=inttostr(i);
    sg2.Cells[i,0]:=inttostr(i);
  end;
  for i:=1 to sg.colCount do begin
    sg.Cells[0,i]:=inttostr(i);
    sg2.Cells[0,i]:=inttostr(i);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i:integer;
begin
  for i:=1 to sg.rowCount do sg.Cells[i,0]:=inttostr(i);
  for i:=1 to sg.colCount do sg.Cells[0,i]:=inttostr(i);
  for i:=1 to sg2.rowCount do sg2.Cells[i,0]:=inttostr(i);
  for i:=1 to sg2.colCount do sg2.Cells[0,i]:=inttostr(i);
end;


procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key)=8 then
  else if ord(key)=13 then begin
    if form1.Edit1.Text<>'' then edit2.SetFocus
  end
  else if ord(key)>58 then
    key:=chr(0)
  else if ord(key)<48 then
    key:=chr(0)
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key)=8 then
  else if ord(key)=13 then begin
    if form1.Edit1.Text<>'' then edit3.SetFocus
  end
  else if ord(key)>58 then
    key:=chr(0)
  else if ord(key)<48 then
    key:=chr(0)
end;

procedure TForm1.sgClick(Sender: TObject);
begin
  edit1.Text:=inttostr(sg.Row);
  edit2.text:=inttostr(sg.Col);
  edit3.SetFocus;
end;

procedure TForm1.sgDblClick(Sender: TObject);
begin
  sg.Cells[sg.col,sg.Row]:=edit3.Text;
end;

procedure TForm1.cmd_tersmtrxClick(Sender: TObject);
var
 detm:longint;
 i,j :integer;
{3*3 matris olacak}
begin
  {----det m------}
   detm:=(strtoint(sg.cells[1,1])*strtoint(sg.cells[2,2])*strtoint(sg.cells[3,3]))+
         (strtoint(sg.cells[1,2])*strtoint(sg.cells[2,3])*strtoint(sg.cells[3,1]))+
         (strtoint(sg.cells[1,3])*strtoint(sg.cells[2,1])*strtoint(sg.cells[3,2]))-
         (strtoint(sg.cells[3,1])*strtoint(sg.cells[2,2])*strtoint(sg.cells[1,3]))-
         (strtoint(sg.cells[3,2])*strtoint(sg.cells[2,3])*strtoint(sg.cells[1,1]))-
         (strtoint(sg.cells[3,3])*strtoint(sg.cells[2,1])*strtoint(sg.cells[1,2]));
   {----cofactor m-----}
   sg2.Cells[1,1]:=inttostr((strtoint(sg.Cells[2,2])*strtoint(sg.Cells[3,3])-strtoint(sg.Cells[2,3])*strtoint(sg.Cells[3,2])));
   sg2.Cells[1,2]:=inttostr(-1* (strtoint(sg.Cells[2,1])*strtoint(sg.Cells[3,3])-strtoint(sg.Cells[2,3])*strtoint(sg.Cells[3,1])));
   sg2.Cells[1,3]:=inttostr((strtoint(sg.Cells[2,1])*strtoint(sg.Cells[3,2])-strtoint(sg.Cells[3,1])*strtoint(sg.Cells[2,2])));
   sg2.Cells[2,1]:=inttostr(-1* (strtoint(sg.Cells[1,2])*strtoint(sg.Cells[3,3])-strtoint(sg.Cells[3,2])*strtoint(sg.Cells[1,3])));
   sg2.Cells[2,2]:=inttostr((strtoint(sg.Cells[1,1])*strtoint(sg.Cells[3,3])-strtoint(sg.Cells[1,3])*strtoint(sg.Cells[3,1])));
   sg2.Cells[2,3]:=inttostr(-1* (strtoint(sg.Cells[1,1])*strtoint(sg.Cells[3,2])-strtoint(sg.Cells[3,1])*strtoint(sg.Cells[1,2])));
   sg2.Cells[3,1]:=inttostr((strtoint(sg.Cells[1,2])*strtoint(sg.Cells[2,3])-strtoint(sg.Cells[2,2])*strtoint(sg.Cells[1,3])));
   sg2.Cells[3,2]:=inttostr(-1* (strtoint(sg.Cells[1,1])*strtoint(sg.Cells[2,3])-strtoint(sg.Cells[2,1])*strtoint(sg.Cells[1,3])));
   sg2.Cells[3,3]:=inttostr((strtoint(sg.Cells[1,1])*strtoint(sg.Cells[2,2])-strtoint(sg.Cells[1,2])*strtoint(sg.Cells[2,1])));
{----m inverse----}
  for i:=1 to 3 do
    for j:=1 to 3 do
     begin
      if detm<>0 then sg2.Cells[i,j]:=floattostr(strtoint(sg2.Cells[i,j])/detm);
     end;
end;

procedure TForm1.cmd_transpozeClick(Sender: TObject);
begin
   {----cofactor m  &  adj a transpose-----}
   sg2.Cells[1,1]:=inttostr((strtoint(sg.Cells[2,2])*strtoint(sg.Cells[3,3])-strtoint(sg.Cells[2,3])*strtoint(sg.Cells[3,2])));
   sg2.Cells[2,1]:=inttostr(-1* (strtoint(sg.Cells[2,1])*strtoint(sg.Cells[3,3])-strtoint(sg.Cells[2,3])*strtoint(sg.Cells[3,1])));
   sg2.Cells[3,1]:=inttostr((strtoint(sg.Cells[2,1])*strtoint(sg.Cells[3,2])-strtoint(sg.Cells[3,1])*strtoint(sg.Cells[2,2])));
   sg2.Cells[1,2]:=inttostr(-1* (strtoint(sg.Cells[1,2])*strtoint(sg.Cells[3,3])-strtoint(sg.Cells[3,2])*strtoint(sg.Cells[1,3])));
   sg2.Cells[2,2]:=inttostr((strtoint(sg.Cells[1,1])*strtoint(sg.Cells[3,3])-strtoint(sg.Cells[1,3])*strtoint(sg.Cells[3,1])));
   sg2.Cells[3,2]:=inttostr(-1* (strtoint(sg.Cells[1,1])*strtoint(sg.Cells[3,2])-strtoint(sg.Cells[3,1])*strtoint(sg.Cells[1,2])));
   sg2.Cells[1,3]:=inttostr((strtoint(sg.Cells[1,2])*strtoint(sg.Cells[2,3])-strtoint(sg.Cells[2,2])*strtoint(sg.Cells[1,3])));
   sg2.Cells[2,3]:=inttostr(-1* (strtoint(sg.Cells[1,1])*strtoint(sg.Cells[2,3])-strtoint(sg.Cells[2,1])*strtoint(sg.Cells[1,3])));
   sg2.Cells[3,3]:=inttostr((strtoint(sg.Cells[1,1])*strtoint(sg.Cells[2,2])-strtoint(sg.Cells[1,2])*strtoint(sg.Cells[2,1])));
end;


procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key)=13 then
    if form1.Edit1.Text<>'' then
      if edit1.Text<>'' then
        if edit2.Text<>'' then
          if edit3.Text<>'' then
            sg.Cells[strtoint(edit2.text),strtoint(edit1.text)]:=edit3.Text
          else
            showmessage('Lütfen tüm alanlari doldurunuz!')
        else
          showmessage('Lütfen tüm alanlari doldurunuz!')
      else
        showmessage('Lütfen tüm alanlari doldurunuz!')
end;

end.
