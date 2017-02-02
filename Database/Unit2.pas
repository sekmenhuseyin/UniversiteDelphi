unit Unit2;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDM = class(TDataModule)
    Database: TDatabase;
    T_Personel: TTable;
    T_Aile: TTable;
    D_Personel: TDataSource;
    D_Aile: TDataSource;
    T_AileId: TAutoIncField;
    T_AileTcKimNo: TStringField;
    T_AileAdi: TStringField;
    T_AileSoyadi: TStringField;
    T_AileY_Derecesi: TStringField;
    T_PersonelTcKimNo: TStringField;
    T_PersonelAdi: TStringField;
    T_PersonelSoyadi: TStringField;
    T_PersonelD_Yeri: TSmallintField;
    T_PersonelD_Tarihi: TDateField;
    T_PersonelResim: TBlobField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
