unit MathPAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, WelcomePAT, PlayPAT, PlayMED, PlayHARD;

type
  TfrmMath = class(TForm)
    imgBackground: TImage;
    btnAdd: TButton;
    btnSubt: TButton;
    btnMult: TButton;
    btnDiv: TButton;
    btnBack: TButton;
    img: TImage;
    procedure btnBackClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnSubtClick(Sender: TObject);
    procedure btnMultClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  bAdd : Boolean;
  bSub : Boolean;
  bMult : Boolean;
  bDiv : Boolean;
  end;

var
  frmMath: TfrmMath;

implementation

{$R *.dfm}

uses DifficultyPAT;

procedure TfrmMath.btnAddClick(Sender: TObject);
begin
 frmMath.Hide;
 frmDifficulty.Show;
 bAdd := True;
end;

procedure TfrmMath.btnBackClick(Sender: TObject);
begin
 frmMath.Hide;
 frmWelcome.Show;
end;

procedure TfrmMath.btnDivClick(Sender: TObject);
begin
 frmMath.Hide;
 frmDifficulty.Show;
 bDiv := True;
end;

procedure TfrmMath.btnMultClick(Sender: TObject);
begin
 frmMath.Hide;
 frmDifficulty.Show;
 bMult := True;
end;

procedure TfrmMath.btnNextClick(Sender: TObject);
begin
 frmMath.Hide;
 frmDifficulty.Show;
end;

procedure TfrmMath.btnSubtClick(Sender: TObject);
begin
 frmMath.Hide;
 frmDifficulty.Show;
 bSub := True;
end;

end.
