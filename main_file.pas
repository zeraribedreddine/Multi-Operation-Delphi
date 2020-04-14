unit main_file;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfrm_main = class(TForm)
    Pane_all: TPanel;
    Pane_top: TPanel;
    Pane_buttom: TPanel;
    Pan_client: TPanel;
    DBGrid1: TDBGrid;
    btn_add: TButton;
    btn_Edit: TButton;
    btn_supp: TButton;
    btn_cancel: TButton;
    btn_save: TButton;
    btn_SuppTout: TButton;
    edt_NomProduit: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edt_PrixAchar: TEdit;
    Label4: TLabel;
    edt_QteStock: TEdit;
    edt_PrixVent: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    procedure btn_addClick(Sender: TObject);
    procedure btn_SuppToutClick(Sender: TObject);
    procedure btn_suppClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
  private
    { Déclarations privées }
    procedure ClearEdit;
    procedure SetControle(EditMode: Boolean);
  public
    { Déclarations publiques }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.dfm}

uses dataModile_File;

{ Tfrm_main }

procedure Tfrm_main.btn_addClick(Sender: TObject);
begin
  SetControle(true);
  //----
  DM.tbl_produit.Append;
  DM.tbl_produitnom_produit.Value := Trim(edt_NomProduit.Text);
  DM.tbl_produitqte_stock.Value := StrToInt(edt_QteStock.Text);
  DM.tbl_produitprix_achat.Value := StrToFloat(edt_PrixAchar.Text);
  DM.tbl_produitprix_vente.Value := StrToFloat(edt_PrixVent.Text);
end;

procedure Tfrm_main.btn_cancelClick(Sender: TObject);
begin
   DM.tbl_produit.Cancel ;
   ClearEdit ;
   SetControle(False);
end;

procedure Tfrm_main.btn_EditClick(Sender: TObject);
begin
  SetControle(true);
  //-----
  DM.tbl_produit.Edit;
  DM.tbl_produitnom_produit.Value := Trim(edt_NomProduit.Text);
  DM.tbl_produitqte_stock.Value := StrToInt(edt_QteStock.Text);
  DM.tbl_produitprix_achat.Value := StrToFloat(edt_PrixAchar.Text);
  DM.tbl_produitprix_vente.Value := StrToFloat(edt_PrixVent.Text);
  // ----
  ClearEdit;
end;

procedure Tfrm_main.btn_saveClick(Sender: TObject);
begin
   DM.tbl_produit.Post ;
   ClearEdit ;
   SetControle(False);
end;

procedure Tfrm_main.btn_suppClick(Sender: TObject);
begin
  if (DM.tbl_produit.Eof) then
    ShowMessage('Il n''y a Pas De Donn�es')
  else if MessageDlg('Voulez-Vous Supprimer Cet Enregistrements? ',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.tbl_produit.Delete;
    DM.tbl_produit.Refresh;

    MessageDlg('La Suppression a r�ussi', mtInformation, [mbOk], 0);
  end;
end;

procedure Tfrm_main.btn_SuppToutClick(Sender: TObject);
var
  k: integer;
begin
  if (DM.tbl_produit.Eof) then
    ShowMessage('Il n''y a Pas De Donn�es')
  else if MessageDlg('Voulez-vous supprimer tous les enregistrements?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    for k := 1 to DM.tbl_produit.RecordCount do
    begin
      DM.tbl_produit.Last;
      DM.tbl_produit.Delete;

      MessageDlg('La Suppression a r�ussi', mtInformation, [mbOk], 0);
    end;
end;

procedure Tfrm_main.ClearEdit;
begin
  edt_NomProduit.Text := '';
  edt_PrixAchar.Text := '';
  edt_PrixVent.Text := '';
  edt_QteStock.Text := '';
  // ---
  edt_NomProduit.SetFocus;
end;



procedure Tfrm_main.SetControle(EditMode: Boolean);
begin
  btn_add.Enabled := NOT EditMode;
  btn_Edit.Enabled := NOT EditMode;
  btn_supp.Enabled := NOT EditMode;
  btn_SuppTout.Enabled := NOT EditMode;
  // ----
  btn_save.Enabled := EditMode;
  btn_cancel.Enabled := EditMode;
end;

end.
