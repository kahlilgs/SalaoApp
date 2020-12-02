program Salao;

uses
  System.StartUpCopy,
  FMX.MobilePreview,
  FMX.Forms,
  FrPrincipal in 'FrPrincipal.pas' {TabbedForm},
  ToastClass in 'ToastClass.pas',
  uDM in 'uDM.pas' {DMD: TDataModule},
  Loading in 'Loading.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTabbedForm, TabbedForm);
  Application.CreateForm(TDMD, DMD);
  Application.Run;
end.
