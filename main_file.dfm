object frm_main: Tfrm_main
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Les Produit '
  ClientHeight = 537
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Pane_all: TPanel
    Left = 0
    Top = 0
    Width = 824
    Height = 537
    Align = alClient
    TabOrder = 0
    object Pane_buttom: TPanel
      Left = 1
      Top = 439
      Width = 822
      Height = 97
      Align = alBottom
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Label5: TLabel
        Left = 552
        Top = 43
        Width = 232
        Height = 36
        Alignment = taCenter
        Caption = #1575#1604#1587#1593#1585' '#1575#1604#1575#1580#1605#1575#1604#1610' '#1604#1604#1605#1606#1578#1608#1580#1575#1578
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Cairo Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 216
        Top = 40
        Width = 297
        Height = 39
        Color = clYellow
        DataField = 'montant_stock'
        DataSource = DM.ds_qry_total
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Roboto Bk'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Pan_client: TPanel
      Left = 1
      Top = 203
      Width = 822
      Height = 236
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 822
        Height = 236
        Align = alClient
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        DataSource = DM.ds_tbl_produit
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Cairo SemiBold'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'nom_produit'
            Title.Alignment = taCenter
            Title.Caption = #1575#1587#1605' '#1575#1604#1605#1606#1578#1608#1580
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = 'Cairo'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qte_stock'
            Title.Alignment = taCenter
            Title.Caption = #1575#1604#1603#1605#1610#1577
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = 'Cairo'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'prix_achat'
            Title.Alignment = taCenter
            Title.Caption = #1587#1593#1585' '#1575#1604#1588#1585#1575#1569
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = 'Cairo'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'prix_vente'
            Title.Alignment = taCenter
            Title.Caption = #1587#1593#1585' '#1575#1604#1576#1610#1593
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = 'Cairo'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Color = clYellow
            Expanded = False
            FieldName = 'Total_Prix'
            Title.Alignment = taCenter
            Title.Caption = #1575#1604#1605#1580#1605#1608#1593
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = 'Cairo'
            Title.Font.Style = [fsBold]
            Width = 250
            Visible = True
          end>
      end
    end
    object Pane_top: TPanel
      Left = 1
      Top = 1
      Width = 822
      Height = 202
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      ExplicitLeft = 0
      ExplicitTop = -5
      object Label1: TLabel
        Left = 696
        Top = 98
        Width = 82
        Height = 30
        Alignment = taCenter
        Caption = #1575#1587#1605' '#1575#1604#1605#1606#1578#1608#1580
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Cairo SemiBold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 696
        Top = 154
        Width = 77
        Height = 30
        Alignment = taCenter
        Caption = #1587#1593#1585' '#1575#1604#1588#1585#1575#1569
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Cairo SemiBold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 272
        Top = 98
        Width = 47
        Height = 30
        Alignment = taCenter
        Caption = #1575#1604#1603#1605#1610#1577
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Cairo SemiBold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 272
        Top = 148
        Width = 65
        Height = 30
        Alignment = taCenter
        Caption = #1587#1593#1585' '#1575#1604#1576#1610#1593
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Cairo SemiBold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btn_add: TButton
        Left = 680
        Top = 23
        Width = 105
        Height = 49
        Caption = #1575#1592#1575#1601#1577
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Cairo'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btn_addClick
      end
      object btn_Edit: TButton
        Left = 552
        Top = 23
        Width = 105
        Height = 49
        Caption = #1578#1593#1583#1610#1604
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Cairo'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btn_EditClick
      end
      object btn_supp: TButton
        Left = 153
        Top = 23
        Width = 105
        Height = 49
        Caption = #1575#1604#1581#1584#1601
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Cairo'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btn_suppClick
      end
      object btn_cancel: TButton
        Left = 288
        Top = 23
        Width = 105
        Height = 49
        Caption = #1575#1604#1594#1575#1569
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Cairo'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = btn_cancelClick
      end
      object btn_save: TButton
        Left = 424
        Top = 23
        Width = 105
        Height = 49
        Caption = #1581#1601#1592
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Cairo'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = btn_saveClick
      end
      object btn_SuppTout: TButton
        Left = 17
        Top = 23
        Width = 105
        Height = 49
        Caption = #1581#1584#1601' '#1575#1604#1603#1604' '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Cairo'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = btn_SuppToutClick
      end
      object edt_NomProduit: TEdit
        Left = 464
        Top = 95
        Width = 193
        Height = 38
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Cairo'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object edt_PrixAchar: TEdit
        Left = 464
        Top = 151
        Width = 193
        Height = 38
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Cairo'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object edt_QteStock: TEdit
        Left = 40
        Top = 95
        Width = 193
        Height = 38
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Cairo'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object edt_PrixVent: TEdit
        Left = 40
        Top = 145
        Width = 193
        Height = 38
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Cairo'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
    end
  end
end
