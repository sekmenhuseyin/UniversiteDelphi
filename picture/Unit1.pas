unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, ComCtrls, Buttons, MPlayer, Gauges;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Image1: TImage;
    GroupBox1: TGroupBox;
    le1: TLabeledEdit;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    TrackBar1: TTrackBar;
    UpDown1: TUpDown;
    Edit1: TEdit;
    MediaPlayer1: TMediaPlayer;
    Edit2: TEdit;
    TabSheet3: TTabSheet;
    CheckBox2: TCheckBox;
    Timer1: TTimer;
    Timer2: TTimer;
    Button3: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label21: TLabel;
    CheckBox3: TCheckBox;
    ProgressBar2: TProgressBar;
    ProgressBar3: TProgressBar;
    ProgressBar4: TProgressBar;
    ProgressBar5: TProgressBar;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Edit3: TEdit;
    TabSheet4: TTabSheet;
    Gauge1: TGauge;
    TrackBar2: TTrackBar;
    DateTimePicker1: TDateTimePicker;
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure MediaPlayer1Click(Sender: TObject; Button: TMPBtnType;
      var DoDefault: Boolean);
    procedure Timer2Timer(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
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

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    image1.Stretch:=true
  else
    image1.Stretch:=false;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  image1.Picture.LoadFromFile(le1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  image1.Picture:=nil;
end;


procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  application.Terminate;
end;


procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  label1.Caption:=inttostr(trackbar1.Position);
  label2.Caption:=label1.Caption;
  progressbar1.Position:=trackbar1.Position;
  edit1.Text:=inttostr(trackbar1.Position);
//  mediaplayer1.Position:=trackbar1.Position
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  label1.Caption:=edit1.text;
  label2.Caption:=edit1.text;
  trackbar1.Position:=strtoint(edit1.Text);
end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
  edit1.Text:=inttostr(strtoint(edit1.Text)+1);
  if edit1.Text='450' then edit1.Text:='0';
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  if checkbox2.Checked then
    timer1.Enabled:=true
  else
    timer1.Enabled:=false;
end;

procedure TForm1.MediaPlayer1Click(Sender: TObject; Button: TMPBtnType;
  var DoDefault: Boolean);
begin
  if button=btplay then timer1.Enabled:=true;
  if button=btpause then timer1.Enabled:=false;
  if button=btstop then timer1.Enabled:=false;
end;


procedure TForm1.Timer2Timer(Sender: TObject);
begin
  label3.Caption:=timetostr(time);
  label4.Caption:=label3.Caption;
  randomize;

  progressbar2.Position:=random(100);
  label5.Caption:=inttostr(progressbar2.Position);
  label6.Caption:=label5.Caption;

  progressbar3.Position:=random(100);
  label7.Caption:=inttostr(progressbar3.Position);
  label8.Caption:=label7.Caption;

  progressbar4.Position:=random(100);
  label9.Caption:=inttostr(progressbar4.Position);
  label10.Caption:=label9.Caption;

  progressbar5.Position:=random(100);
  label11.Caption:=inttostr(progressbar5.Position);
  label12.Caption:=label11.Caption;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  if timer2.Enabled then timer2.Enabled:=false else timer2.Enabled:=true;
end;


procedure TForm1.Edit3Change(Sender: TObject);
begin
  if edit3.Text='' then
    timer2.Interval:=0
  else
    timer2.Interval:=strtoint(edit3.text);
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if ord(key)=8 then
  else if ord(key)>58 then
    key:=chr(0)
  else if ord(key)<48 then
    key:=chr(0)
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
  gauge1.Progress:=trackbar2.Position;  
end;

end.
