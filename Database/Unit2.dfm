object DM: TDM
  OldCreateOrder = False
  Left = 196
  Top = 110
  Height = 223
  Width = 170
  object Database: TDatabase
    AliasName = 'sekmen'
    Connected = True
    DatabaseName = 'Database'
    SessionName = 'Default'
    Left = 56
    Top = 16
  end
  object T_Personel: TTable
    DatabaseName = 'Database'
    FieldDefs = <
      item
        Name = 'TcKimNo'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'Adi'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Soyadi'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'D_Yeri'
        DataType = ftSmallint
      end
      item
        Name = 'D_Tarihi'
        DataType = ftDate
      end
      item
        Name = 'Resim'
        DataType = ftParadoxOle
      end>
    StoreDefs = True
    TableName = 'Personel.db'
    Left = 16
    Top = 72
    object T_PersonelTcKimNo: TStringField
      FieldName = 'TcKimNo'
      Size = 11
    end
    object T_PersonelAdi: TStringField
      FieldName = 'Adi'
    end
    object T_PersonelSoyadi: TStringField
      FieldName = 'Soyadi'
    end
    object T_PersonelD_Yeri: TSmallintField
      FieldName = 'D_Yeri'
    end
    object T_PersonelD_Tarihi: TDateField
      FieldName = 'D_Tarihi'
    end
    object T_PersonelResim: TBlobField
      FieldName = 'Resim'
      BlobType = ftParadoxOle
    end
  end
  object T_Aile: TTable
    AutoRefresh = True
    DatabaseName = 'Database'
    FieldDefs = <
      item
        Name = 'Id'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'TcKimNo'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'Adi'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Soyadi'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Y_Derecesi'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <
      item
        Name = 'T_AileIndex1'
        Fields = 'Id'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'idx_Personel_Kimlik'
        Fields = 'TcKimNo'
        Options = [ixCaseInsensitive]
      end>
    IndexName = 'idx_Personel_Kimlik'
    MasterFields = 'TcKimNo'
    MasterSource = D_Personel
    StoreDefs = True
    TableName = 'Aile.DB'
    Left = 88
    Top = 72
    object T_AileId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object T_AileTcKimNo: TStringField
      FieldName = 'TcKimNo'
      Size = 11
    end
    object T_AileAdi: TStringField
      FieldName = 'Adi'
    end
    object T_AileSoyadi: TStringField
      FieldName = 'Soyadi'
    end
    object T_AileY_Derecesi: TStringField
      FieldName = 'Y_Derecesi'
      Size = 15
    end
  end
  object D_Personel: TDataSource
    DataSet = T_Personel
    Left = 16
    Top = 120
  end
  object D_Aile: TDataSource
    DataSet = T_Aile
    Left = 88
    Top = 120
  end
end
