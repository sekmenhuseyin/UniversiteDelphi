unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GLScene, GLMisc, GLTree, GLWin32Viewer, GLObjects, GLGeomObjects,
  StdCtrls, Buttons, GLTexture, ExtCtrls, ComCtrls, GLVectorFileObjects,
  GLFile3DS, File3DS;

type
  TForm1 = class(TForm)
    GLSceneViewer1: TGLSceneViewer;
    GLScene1: TGLScene;
    GLCamera1: TGLCamera;
    GLLightSource1: TGLLightSource;
    GLDummyCube1: TGLDummyCube;
    GLCone1: TGLCone;
    Timer1: TTimer;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    GLDummyCube2: TGLDummyCube;
    OpenDialog1: TOpenDialog;
    SpeedButton1: TSpeedButton;
    FreeForm: TGLFreeForm;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  const
    scl= 1.50;
    mvm = 0.5;

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

procedure TForm1.BitBtn15Click(Sender: TObject);
begin
 GLDummyCube1.Position.X :=  GLDummyCube1.Position.X  + mvm ;
end;

procedure TForm1.BitBtn16Click(Sender: TObject);
begin
GLDummyCube1.Position.X :=  GLDummyCube1.Position.X  - mvm;
end;

procedure TForm1.BitBtn17Click(Sender: TObject);
begin
GLDummyCube1.Position.Y :=  GLDummyCube1.Position.Y + mvm  ;
end;

procedure TForm1.BitBtn18Click(Sender: TObject);
begin
GLDummyCube1.Position.Y :=  GLDummyCube1.Position.Y  - mvm;
end;

procedure TForm1.BitBtn19Click(Sender: TObject);
begin
GLDummyCube1.Position.Z :=  GLDummyCube1.Position.Z  + mvm ;
end;

procedure TForm1.BitBtn20Click(Sender: TObject);
begin
GLDummyCube1.Position.Z :=  GLDummyCube1.Position.Z  - mvm  ;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
// 3ds formatindaki nesneleri yukler
 if OpenDialog1.Execute
  then begin
    FreeForm.LoadFromFile(OpenDialog1.FileName);
    Form1.Caption:=OpenDialog1.FileName;
  end;
end;

end.
