object DM: TDM
  OldCreateOrder = False
  Height = 347
  Width = 486
  object MyConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\kikatokiro\Desktop\add edit save supp\DB\test1' +
        '.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 216
    Top = 48
  end
  object qry_total: TFDQuery
    Active = True
    Connection = MyConnection
    SQL.Strings = (
      
        'Select sum(qte_stock * prix_achat)as montant_stock from Tabl_pro' +
        'duit')
    Left = 136
    Top = 216
    object qry_totalmontant_stock: TCurrencyField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'montant_stock'
      Origin = 'montant_stock'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '00.00'
    end
  end
  object tbl_produit: TFDTable
    Active = True
    AfterPost = tbl_produitAfterPost
    AfterDelete = tbl_produitAfterDelete
    OnCalcFields = tbl_produitCalcFields
    IndexFieldNames = 'id'
    Connection = MyConnection
    UpdateOptions.UpdateTableName = 'Tabl_produit'
    TableName = 'Tabl_produit'
    Left = 136
    Top = 136
    object tbl_produitid: TFDAutoIncField
      Alignment = taCenter
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbl_produitnom_produit: TWideStringField
      Alignment = taCenter
      FieldName = 'nom_produit'
      Origin = 'nom_produit'
      Size = 50
    end
    object tbl_produitqte_stock: TIntegerField
      Alignment = taCenter
      FieldName = 'qte_stock'
      Origin = 'qte_stock'
    end
    object tbl_produitprix_achat: TCurrencyField
      Alignment = taCenter
      FieldName = 'prix_achat'
      Origin = 'prix_achat'
    end
    object tbl_produitprix_vente: TCurrencyField
      Alignment = taCenter
      FieldName = 'prix_vente'
      Origin = 'prix_vente'
    end
    object tbl_produitTotal_Prix: TFloatField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'Total_Prix'
      ReadOnly = True
      DisplayFormat = '00.00'
      currency = True
      Calculated = True
    end
  end
  object ds_tbl_produit: TDataSource
    DataSet = tbl_produit
    Left = 280
    Top = 144
  end
  object ds_qry_total: TDataSource
    DataSet = qry_total
    Left = 280
    Top = 216
  end
end
