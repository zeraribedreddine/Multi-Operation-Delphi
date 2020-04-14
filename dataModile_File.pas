unit dataModile_File;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef;

type
  TDM = class(TDataModule)
    MyConnection: TFDConnection;
    qry_total: TFDQuery;
    tbl_produit: TFDTable;
    ds_tbl_produit: TDataSource;
    ds_qry_total: TDataSource;
    tbl_produitid: TFDAutoIncField;
    tbl_produitnom_produit: TWideStringField;
    tbl_produitqte_stock: TIntegerField;
    tbl_produitprix_achat: TCurrencyField;
    tbl_produitprix_vente: TCurrencyField;
    qry_totalmontant_stock: TCurrencyField;
    tbl_produitTotal_Prix: TFloatField;
    procedure tbl_produitAfterDelete(DataSet: TDataSet);
    procedure tbl_produitAfterPost(DataSet: TDataSet);
    procedure tbl_produitCalcFields(DataSet: TDataSet);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses main_file;

{$R *.dfm}

procedure TDM.tbl_produitAfterDelete(DataSet: TDataSet);
begin
  qry_total.Active := false ;
  qry_total.Active := true ;
end;

procedure TDM.tbl_produitAfterPost(DataSet: TDataSet);
begin
  qry_total.Active := false ;
  qry_total.Active := true ;
end;

procedure TDM.tbl_produitCalcFields(DataSet: TDataSet);
begin
  tbl_produit.FieldByName('Total_Prix').AsCurrency := tbl_produit.FieldByName('qte_stock').AsCurrency * tbl_produit.FieldByName('prix_achat').AsCurrency ;
end;

end.
