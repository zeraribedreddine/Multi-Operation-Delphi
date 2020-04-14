program Project1;

uses
  Vcl.Forms,
  main_file in 'main_file.pas' {frm_main},
  dataModile_File in 'dataModile_File.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_main, frm_main);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
