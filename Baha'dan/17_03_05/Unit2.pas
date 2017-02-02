unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    BitBtn2: TBitBtn;
    sg1: TStringGrid;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure sg1Click(Sender: TObject);
    procedure sg1DblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
   i : word;
begin
  if (Edit1.Text <>'') and (Edit2.Text <> '')
    then begin
           // Satýr ve sütun sayýlarý girliyor
           sg1.RowCount := strToint(Edit1.Text) + 1;
           sg1.ColCount := strToint(Edit2.Text) + 1;
           // Sabit satýr ve sütun sayýlarý giriliyor
           sg1.FixedRows := 1;
           sg1.FixedCols := 1;
           // baþlýklar yazýlýyor
           sg1.cells[0,0] := 'Satýr/Sütun';

           for i := 1 to sg1.RowCount-1 do
                  sg1.Cells[0, i] := intTostr(i);

           for i := 1 to sg1.ColCount-1 do
                  sg1.Cells[i, 0] := intTostr(i);
          end; // end if
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  if (Edit3.Text <> '') and (Edit4.Text <> '')
     then sg1.Cells[strToint(Edit4.Text), strToint(Edit3.Text)] := Edit5.Text;
end;

procedure TForm1.sg1Click(Sender: TObject);
begin
  Edit3.Text := intTostr(sg1.Row);
  Edit4.Text := intTostr(sg1.Col);
end;

procedure TForm1.sg1DblClick(Sender: TObject);
begin
  if (Edit5.Text <> '')
      then sg1.Cells[sg1.Col, sg1.Row] := Edit5.Text;
  Edit5.Clear;    
  Edit5.SetFocus;    
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  close;
end;

end.
