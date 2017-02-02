unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, Gauges;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    Edit1: TLabeledEdit;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    TrackBar1: TTrackBar;
    ProgressBar1: TProgressBar;
    BitBtn1: TBitBtn;
    Edit2: TEdit;
    UpDown1: TUpDown;
    TabSheet3: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ProgressBar2: TProgressBar;
    ProgressBar3: TProgressBar;
    ProgressBar4: TProgressBar;
    ProgressBar5: TProgressBar;
    CheckBox2: TCheckBox;
    ComboBox1: TComboBox;
    TabSheet4: TTabSheet;
    Timer1: TTimer;
    dt1: TDateTimePicker;
    Label10: TLabel;
    Gauge1: TGauge;
    TrackBar2: TTrackBar;
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure dt1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button3Click(Sender: TObject);
begin
   randomize;
   label3.caption := inttostr(random(10));
   label4.caption := label3.caption;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  //saat deðeri yazdýrýlýyor
  label3.caption := timeTostr(time);
  label4.caption := label3.caption;
  //rastgele sayýlar üretiliyor
  randomize;
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
  if checkbox2.Checked
       then begin
              Timer1.Interval := strToint(Combobox1.Text);
              Timer1.Enabled := true
            end
       else Timer1.Enabled := false;
end;

procedure TForm1.dt1Change(Sender: TObject);
begin
   Label10.caption := dateTostr(dt1.date);
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
  Gauge1.Progress := Trackbar2.Position;
end;

end.
