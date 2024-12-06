unit MultiplayerPAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TfrmMultiplayer = class(TForm)
    imgBackground: TImage;
    btnMulti: TButton;
    btnBack: TButton;
    img: TImage;
    procedure btnBackClick(Sender: TObject);
    procedure btnSingleClick(Sender: TObject);
    procedure btnMultiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMultiplayer: TfrmMultiplayer;

implementation

{$R *.dfm}

uses WelcomePAT, AvatarPAT, AvatarPATT;

procedure TfrmMultiplayer.btnBackClick(Sender: TObject);
begin
   frmMultiplayer.Hide;
   frmWelcome.Show;
end;

procedure TfrmMultiplayer.btnMultiClick(Sender: TObject);
begin
 frmMultiplayer.Hide;
 frmAvatar.Show;
end;

procedure TfrmMultiplayer.btnSingleClick(Sender: TObject);
begin
 frmMultiplayer.Hide;
 frmAvatar.Show;
end;

end.
