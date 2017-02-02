unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Image1: TImage;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    CheckBox1: TCheckBox;
    BitBtn2: TBitBtn;
    LabeledEdit1: TLabeledEdit;
    BitBtn3: TBitBtn;
    TrackBar1: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    UpDown1: TUpDown;
    Edit2: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
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
begin
  Image1.Picture.LoadFromFile(Edit1.Text);
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.checked then Image1.Stretch := True
     else Image1.Stretch := False;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Image1.Picture.Bitmap := nil;
  Image1.refresh;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  label1.caption := intTostr(TrackBar1.Position);
  label2.caption := label1.caption;
  ProgressBar1.Position := TrackBar1.Position;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  Label1.caption := Edit2.Text;
  Label2.caption := Edit2.Text;
end;

end.
