unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Buttons, Mask, Grids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    cb1: TCheckBox;
    Button1: TButton;
    MainMenu1: TMainMenu;
    Dosya1: TMenuItem;
    Dzenle1: TMenuItem;
    Yardm1: TMenuItem;
    A1: TMenuItem;
    Kaydet1: TMenuItem;
    Sil1: TMenuItem;
    N1: TMenuItem;
    YazcAyarlar1: TMenuItem;
    N2: TMenuItem;
    k1: TMenuItem;
    Dosya2: TMenuItem;
    Resim1: TMenuItem;
    MEtin1: TMenuItem;
    GroupBox1: TGroupBox;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    MaskEdit1: TMaskEdit;
    sg1: TStringGrid;
    Label4: TLabel;
    Edit4: TEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    BitBtn2: TBitBtn;
    sg2: TStringGrid;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    girBtn: TBitBtn;
    BitBtn3: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure cb1Click(Sender: TObject);
    procedure k1Click(Sender: TObject);
    procedure Kaydet1Click(Sender: TObject);
    procedure Sil1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure girBtnClick(Sender: TObject);
    procedure sg2Click(Sender: TObject);
    procedure sg2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.cb1Click(Sender: TObject);
begin
  if cb1.Checked
     then begin
            Edit1.Enabled := false;
            Label1.Enabled := false;
          end
     else begin
            Edit1.Enabled := true;
            Label1.Enabled := true;
          end;
end;

procedure TForm1.k1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Kaydet1Click(Sender: TObject);
begin
  showmessage('Kaydet iþlemini seçtiniz...');
end;

procedure TForm1.Sil1Click(Sender: TObject);
begin
  showmessage('Sil iþlemini seçtiniz..');
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
   // satýr numaralarý yazýlýyor
   sg1.Cells[0,0] := 'Row/Col';
   //   Cells[sütun, satir]
   sg1.Cells[0,1] := '1';
   sg1.Cells[0,2] := '2';
   // sütun numaralarý yazýlýyor
   sg1.Cells[1,0] := '1';
   sg1.Cells[2,0] := '2';
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  sg1.Cells[strToint(Edit3.Text), strToint(Edit2.Text)] := Edit4.Text; 
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var i :integer;
begin
   sg2.ColCount := strToInt(Edit6.Text) + 1;  // sütun sayýsý
   sg2.RowCount := strToInt(Edit5.Text) + 1;   // satýr sayýsý

   sg2.FixedCols :=1;
   sg2.FixedRows :=1;
   
   sg2.Cells[0,0] := 'Satýr/Sütun';
   // sütun baþlýklarý yazýlýyor
   for i := 1 to sg2.ColCount do
      sg2.Cells[i, 0] := intToStr(i);
   // satýr baþlýklarý yazýlýyor
   for i := 1 to sg2.RowCount do
      sg2.Cells[0, i] := intToStr(i);

end;

procedure TForm1.girBtnClick(Sender: TObject);
begin
  if ((Edit7.Text <> '') and (strToint(Edit7.Text)>0)) and
     ((Edit8.Text <> '') and (strToint(Edit8.Text)>0))
      then sg2.Cells[strToint(Edit8.Text), strToint(Edit7.Text)] := Edit9.Text
      else showmessage('Satýr ve sütun deðerlerinde HATA !');
end;

procedure TForm1.sg2Click(Sender: TObject);
begin
  Edit7.Text := intTostr(sg2.Row);
  Edit8.Text := intTostr(sg2.Col);
end;

procedure TForm1.sg2DblClick(Sender: TObject);
begin
  sg2.Cells[sg2.Col, sg2.Row] := Edit9.Text;
end;

end.
