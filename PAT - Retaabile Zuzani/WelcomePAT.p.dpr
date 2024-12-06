program WelcomePAT.p;

uses
  Vcl.Forms,
  WelcomePAT in 'WelcomePAT.pas' {frmWelcome},
  MultiplayerPAT in 'MultiplayerPAT.pas' {frmMultiplayer},
  AvatarPAT in 'AvatarPAT.pas' {frmAvatar},
  AvatarPATT in 'AvatarPATT.pas' {frmAvatar2},
  MathPAT in 'MathPAT.pas' {frmMath},
  DifficultyPAT in 'DifficultyPAT.pas' {frmDifficulty},
  PlayPAT in 'PlayPAT.pas' {frmEasy},
  HowToPAT in 'HowToPAT.pas' {frmHow},
  FurtherPAT in 'FurtherPAT.pas' {frmFurther},
  PlayHARD in 'PlayHARD.pas' {frmHard},
  PlayMED1 in 'PlayMED1.pas' {frmMed},
  PrizePAT in 'PrizePAT.pas' {frmPrize};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmWelcome, frmWelcome);
  Application.CreateForm(TfrmMultiplayer, frmMultiplayer);
  Application.CreateForm(TfrmAvatar, frmAvatar);
  Application.CreateForm(TfrmAvatar2, frmAvatar2);
  Application.CreateForm(TfrmMath, frmMath);
  Application.CreateForm(TfrmDifficulty, frmDifficulty);
  Application.CreateForm(TfrmEasy, frmEasy);
  Application.CreateForm(TfrmHow, frmHow);
  Application.CreateForm(TfrmFurther, frmFurther);
  Application.CreateForm(TfrmHard, frmHard);
  Application.CreateForm(TfrmMed, frmMed);
  Application.CreateForm(TfrmPrize, frmPrize);
  Application.Run;
end.
