unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Buttons, ComCtrls,
  TeeFunci, StdCtrls;

type
  TForm2 = class(TForm)
    Timer1: TTimer;
    Timer2: TTimer;
    Chart1: TChart;
    Series1: TPieSeries;
    TrackBar1: TTrackBar;
    SpeedButton1: TSpeedButton;
    TeeFunction1: TAverageTeeFunction;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
  timer1.enabled:=true;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  form1.show;
  timer1.Enabled:=false;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  trackbar1.Position:=1;
  timer2.Enabled:=true;
  randomize;
  with chart1.Series[0] do begin
    clear;
    add(random(150),'Biber',clgreen);
    add(random(150),'Domates',clred);
    add(random(150),'Patlýcan',clpurple);
    add(random(150),'Patates',clyellow);
    add(random(150),'Soðan',clmaroon);
    add(random(150),'Salatalýk',clolive);
    add(random(150),'Sarýmsak',clwhite);
    add(random(150),'Pirinç',clsilver);
  end;
end;

procedure TForm2.Timer2Timer(Sender: TObject);
begin
  series1.Rotate(trackbar1.position);
end;

end.
