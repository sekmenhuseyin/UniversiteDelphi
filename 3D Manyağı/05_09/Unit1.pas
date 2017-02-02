unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GLScene, GLMisc, GLTree, GLWin32Viewer, GLObjects, GLGeomObjects,
  StdCtrls, Buttons, GLTexture, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    GLSceneViewer1: TGLSceneViewer;
    GLScene1: TGLScene;
    GLCamera1: TGLCamera;
    GLLightSource1: TGLLightSource;
    GLDummyCube1: TGLDummyCube;
    GLCone1: TGLCone;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label2: TLabel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Label3: TLabel;
    Timer1: TTimer;
    CheckBox1: TCheckBox;
    TrackBar1: TTrackBar;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  const
    scl= 1.50;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  GLDummyCube1.RotateAbsolute(10,0,0) ;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
      GLDummyCube1.RotateAbsolute(-10,0,0) ;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
     GLDummyCube1.RotateAbsolute(0,10,0) ;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
 GLDummyCube1.RotateAbsolute(0,-10,0) ;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
 GLDummyCube1.RotateAbsolute(0,0,10) ;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
 GLDummyCube1.RotateAbsolute(0,0,-10) ;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

    GLDummyCube1.RotateAbsolute(5,5,5);
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
 if checkbox1.Checked then Timer1.Enabled := True
     else Timer1.Enabled := False;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
 Timer1.Interval := TrackBar1.Position;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
  // GLDummyCube1.Scale.X :=   GLDummyCube1.Scale.X * scl;
  // yukaridaki ile ayni:

  with GLDummyCube1.Scale do
   X:= X * scl;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
     with GLDummyCube1.Scale do
     X:= X / scl;
end;

procedure TForm1.BitBtn9Click(Sender: TObject);
begin
     with GLDummyCube1.Scale do
     Y:= Y * scl;
end;

procedure TForm1.BitBtn10Click(Sender: TObject);
begin
     with GLDummyCube1.Scale do
     Y:= Y / scl;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
     with GLDummyCube1.Scale do
     Z:= Z * scl;
end;

procedure TForm1.BitBtn11Click(Sender: TObject);
begin
     with GLDummyCube1.Scale do
     Z:= Z * scl;
end;

procedure TForm1.BitBtn12Click(Sender: TObject);
begin
     with GLDummyCube1.Scale do
     Z:= Z / scl;
end;

procedure TForm1.BitBtn13Click(Sender: TObject);
begin
     with GLDummyCube1.Scale do
     begin
       X:= X * scl;
       Y:= Y * scl;
       Z:= Z * scl;
       end;
end;

procedure TForm1.BitBtn14Click(Sender: TObject);
begin
     with GLDummyCube1.Scale do
     begin
       X:= X / scl;
       Y:= Y / scl;
       Z:= Z / scl;
     end;
end;

end.
