object dm: Tdm
  OldCreateOrder = False
  Left = 282
  Top = 217
  Height = 312
  Width = 398
  object ebfData: TDatabase
    AliasName = 'sekmen'
    DatabaseName = 'ebfData'
    HandleShared = True
    SessionName = 'Default'
    TransIsolation = tiDirtyRead
    Left = 160
    Top = 16
  end
  object T_Ogrenci: TTable
    DatabaseName = 'ebfData'
    TableName = 'ogrenci.DB'
    Left = 80
    Top = 96
    object T_OgrenciOGR_NO: TStringField
      FieldName = 'OGR_NO'
      Size = 8
    end
    object T_OgrenciADI: TStringField
      FieldName = 'ADI'
    end
    object T_OgrenciSOYADI: TStringField
      FieldName = 'SOYADI'
    end
    object T_OgrenciCINS: TStringField
      FieldName = 'CINS'
      Size = 1
    end
    object T_OgrenciUNIVERSITE: TStringField
      FieldName = 'UNIVERSITE'
      Size = 30
    end
    object T_OgrenciFAKULTE: TStringField
      FieldName = 'FAKULTE'
      Size = 30
    end
    object T_OgrenciBOLUM: TStringField
      FieldName = 'BOLUM'
      Size = 30
    end
    object T_OgrenciDOG_TAR: TDateField
      FieldName = 'DOG_TAR'
    end
    object T_OgrenciTC_KIM_NO: TStringField
      FieldName = 'TC_KIM_NO'
      Size = 11
    end
    object T_OgrenciDOG_YER: TStringField
      FieldName = 'DOG_YER'
      Size = 15
    end
    object T_OgrenciADRES: TStringField
      FieldName = 'ADRES'
      Size = 255
    end
    object T_OgrenciDOG_ILCE: TSmallintField
      FieldName = 'DOG_ILCE'
    end
  end
  object DS_Ogrenci: TDataSource
    DataSet = T_Ogrenci
    Left = 80
    Top = 160
  end
  object T_Iller: TTable
    DatabaseName = 'ebfData'
    TableName = 'il.db'
    Left = 248
    Top = 80
    object T_IllerKod: TSmallintField
      FieldName = 'Kod'
    end
    object T_IllerAiklama: TStringField
      FieldName = 'A'#231'iklama'
      Size = 15
    end
  end
  object T_Ilceler: TTable
    DatabaseName = 'ebfData'
    IndexName = 'secNDX'
    MasterFields = 'Kod'
    MasterSource = DS_Iller
    TableName = 'ILCELER.db'
    Left = 304
    Top = 96
    object T_IlcelerKod: TSmallintField
      FieldName = 'Kod'
    end
    object T_IlcelerIlkod: TSmallintField
      FieldName = 'Ilkod'
    end
    object T_IlcelerAciklama: TStringField
      FieldName = 'Aciklama'
    end
  end
  object T_Universite: TTable
    DatabaseName = 'ebfData'
    TableName = #252'nv.DB'
    Left = 24
    Top = 80
    object T_UniversiteKod: TStringField
      FieldName = 'Kod'
      Size = 5
    end
    object T_UniversiteAiklama: TStringField
      FieldName = 'A'#231'iklama'
    end
  end
  object DS_Ilceler: TDataSource
    DataSet = T_Ilceler
    Left = 304
    Top = 160
  end
  object DS_Universite: TDataSource
    DataSet = T_Universite
    Left = 24
    Top = 144
  end
  object T_Dersler: TTable
    DatabaseName = 'ebfData'
    IndexName = 'ogrNDX'
    MasterFields = 'OGR_NO'
    MasterSource = DS_Ogrenci
    TableName = 'DERSLER.db'
    Left = 136
    Top = 80
    object T_DerslerID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object T_DerslerOGRNO: TStringField
      FieldName = 'OGRNO'
      Size = 8
    end
    object T_DerslerDERSKOD: TSmallintField
      FieldName = 'DERSKOD'
    end
    object T_DerslerVIZE: TFloatField
      FieldName = 'VIZE'
    end
    object T_DerslerFINAL: TFloatField
      FieldName = 'FINAL'
    end
    object T_DerslerORT: TFloatField
      FieldName = 'ORT'
    end
  end
  object DS_Dersler: TDataSource
    DataSet = T_Dersler
    Left = 136
    Top = 144
  end
  object DS_Iller: TDataSource
    DataSet = T_Iller
    Left = 248
    Top = 144
  end
  object T_Ders: TTable
    DatabaseName = 'ebfData'
    IndexFieldNames = 'Id'
    MasterFields = 'ID'
    MasterSource = DS_Dersler
    TableName = 'ders.db'
    Left = 192
    Top = 96
  end
  object DS_Ders: TDataSource
    DataSet = T_Ders
    Left = 192
    Top = 160
  end
end
