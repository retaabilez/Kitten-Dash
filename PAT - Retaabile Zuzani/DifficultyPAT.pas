unit DifficultyPAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, WelcomePAT, PlayPAT, PlayMED1, PlayHARD;

type
  TfrmDifficulty = class(TForm)
    imgBackground: TImage;
    btnSingle: TButton;
    Button1: TButton;
    Button2: TButton;
    btnHome: TButton;
    Image1: TImage;
    procedure btnHomeClick(Sender: TObject);
    procedure btnSingleClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    bEasy, bMed, bHard : Boolean;
  end;

var
  frmDifficulty: TfrmDifficulty;

implementation

{$R *.dfm}

procedure TfrmDifficulty.btnHomeClick(Sender: TObject);
begin
frmDifficulty.Hide;
frmWelcome.Show;
end;

procedure TfrmDifficulty.btnSingleClick(Sender: TObject);
begin
 bEasy := True;
 frmDifficulty.Hide;
 frmEasy.Show;
end;

procedure TfrmDifficulty.Button1Click(Sender: TObject);
begin
 bMed := True;
 frmDifficulty.Hide;
 frmMed.Show;
end;

procedure TfrmDifficulty.Button2Click(Sender: TObject);
begin
 bHard := True;
 frmDifficulty.Hide;
 frmHard.Show;
end;

end.
