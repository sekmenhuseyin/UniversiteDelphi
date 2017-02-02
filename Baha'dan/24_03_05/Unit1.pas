unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    Edit1: TLabeledEdit;
    TrackBar1: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    ProgressBar1: TProgressBar;
    BitBtn1: TBitBtn;
    Edit2: TEdit;
    UpDown1: TUpDown;
    Timer1: TTimer;
    Label3: TLabel;
    Label4: TLabel;
    ProgressBar2: TProgressBar;
    ProgressBar3: TProgressBar;
    ProgressBar4: TProgressBar;
    ProgressBar5: TProgressBar;
    Label6: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CheckBox2: TCheckBox;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
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
  Image1.Picture.LoadFromFile(Edit1.Text);
  Image1.Refresh;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.checked then Image1.Stretch := true
     else Image1.Stretch := False;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  label1.caption := intTostr(TrackBar1.Position);
  label2.caption := label1.Caption;
  ProgressBar1.Position := TrackBar1.Position;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
   Image1.Picture.Bitmap := nil;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  ProgressBar1.Position := ProgressBar1.Position + ProgressBar1.Step;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

  randomize;
  label3.caption := timeTostr(time);
  label4.caption := label3.caption;
  ProgressBar2.Position := random(100);
  Label6.caption := intTostr(ProgressBar2.Position);

  ProgressBar3.Position := random(100);
  Label5.caption := intTostr(ProgressBar3.Position);

  ProgressBar4.Position := random(100);
  Label7.caption := intTostr(ProgressBar4.Position);

  ProgressBar5.Position := random(100);
  Label8.caption := intTostr(ProgressBar5.Position);
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  if checkbox2.checked then
          begin
             Timer1.Interval := strToint(Combobox1.Text);
             Timer1.Enabled := true
          end
     else Timer1.Enabled := false;
end;

end.
