program Salao;

uses
  System.StartUpCopy,
  FMX.Forms,
  FrPrincipal in 'FrPrincipal.pas' {TabbedForm},
  uDM in 'uDM.pas' {DMD: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTabbedForm, TabbedForm);
  Application.CreateForm(TDMD, DMD);
  Application.Run;
end.