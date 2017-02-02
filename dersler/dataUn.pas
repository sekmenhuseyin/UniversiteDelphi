unit dataUn;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  Tdm = class(TDataModule)
    ebfData: TDatabase;
    T_Ogrenci: TTable;
    DS_Ogrenci: TDataSource;
    T_OgrenciOGR_NO: TStringField;
    T_OgrenciADI: TStringField;
    T_OgrenciSOYADI: TStringField;
    T_OgrenciCINS: TStringField;
    T_OgrenciUNIVERSITE: TStringField;
    T_OgrenciFAKULTE: TStringField;
    T_OgrenciBOLUM: TStringField;
    T_OgrenciDOG_TAR: TDateField;
    T_OgrenciTC_KIM_NO: TStringField;
    T_OgrenciDOG_YER: TStringField;
    T_OgrenciADRES: TStringField;
    T_Iller: TTable;
    T_Ilceler: TTable;
    T_Universite: TTable;
    DS_Ilceler: TDataSource;
    DS_Universite: TDataSource;
    T_IlcelerKod: TSmallintField;
    T_IlcelerIlkod: TSmallintField;
    T_IlcelerAciklama: TStringField;
    T_UniversiteKod: TStringField;
    T_UniversiteAiklama: TStringField;
    T_Dersler: TTable;
    DS_Dersler: TDataSource;
    DS_Iller: TDataSource;
    T_IllerKod: TSmallintField;
    T_IllerAiklama: TStringField;
    T_DerslerID: TAutoIncField;
    T_DerslerOGRNO: TStringField;
    T_DerslerDERSKOD: TSmallintField;
    T_DerslerVIZE: TFloatField;
    T_DerslerFINAL: TFloatField;
    T_DerslerORT: TFloatField;
    T_OgrenciDOG_ILCE: TSmallintField;
    T_Ders: TTable;
    DS_Ders: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

end.
