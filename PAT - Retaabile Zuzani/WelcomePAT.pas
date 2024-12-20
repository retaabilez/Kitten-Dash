unit WelcomePAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, MultiplayerPAT, HowToPAT, FurtherPAT;

type
  TfrmWelcome = class(TForm)
    Image1: TImage;
    btnPlay: TButton;
    btnHow: TButton;
    btnFurther: TButton;
    imgTitle: TImage;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnPlayClick(Sender: TObject);
    procedure btnHowClick(Sender: TObject);
    procedure btnFurtherClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWelcome: TfrmWelcome;
  iVerticalDirection, iHorizontalDirection : Integer;
  iCount : Integer;

implementation

{$R *.dfm}

procedure TfrmWelcome.btnFurtherClick(Sender: TObject);
begin
frmWelcome.Hide;
frmFurther.Show;
end;

procedure TfrmWelcome.btnHowClick(Sender: TObject);
begin
 frmWelcome.Hide;
 frmHow.Show;
end;

procedure TfrmWelcome.btnPlayClick(Sender: TObject);
begin
 frmWelcome.Hide;
 frmMultiplayer.Show;
end;

procedure TfrmWelcome.FormCreate(Sender: TObject);
begin
  iVerticalDirection := 5;
  iHorizontalDirection := 5;

  iCount := 0;
end;

procedure TfrmWelcome.Timer1Timer(Sender: TObject);
begin
inc(iCount);

imgTitle.Top := imgTitle.Top + iVerticalDirection;

if imgTitle.Top >= 112 then
  begin
    iVerticalDirection := iVerticalDirection * -1;
  end;

if imgTitle.Top <= 16 then
  begin
    iVerticalDirection := iVerticalDirection * -1;
  end;

if imgTitle.Top <= 0 then
begin
  iVerticalDirection := iVerticalDirection + 1;
end;

end;

end.
