unit AvatarPATT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, WelcomePAT, MathPAT;

type
  TfrmAvatar2 = class(TForm)
    imgBackground: TImage;
    pnlNames: TPanel;
    rgpNames: TRadioGroup;
    imgCat: TImage;
    btnBack: TButton;
    btnNext: TButton;
    edtName: TEdit;
    procedure btnBackClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure rgpNamesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAvatar2: TfrmAvatar2;
  iNames : Integer;


implementation

{$R *.dfm}

procedure TfrmAvatar2.btnBackClick(Sender: TObject);
begin
  frmAvatar2.Hide;
  frmWelcome.Show;
end;


procedure TfrmAvatar2.btnNextClick(Sender: TObject);
var iNames: Integer;
begin
  iNames := rgpNames.ItemIndex;

  if iNames = 0 then
  begin
   imgCat.Picture.LoadFromFile('freckles.jpeg');
   edtName.Text := 'Freckles';
   frmAvatar2.Hide;
   frmMath.Show;
  end
  else
  begin
    if iNames = 1 then
    begin
   imgCat.Picture.LoadFromFile('fudge.jpeg');
   edtName.Text := 'Fudge';
   frmAvatar2.Hide;
   frmMath.Show;
   end;
  end;

   if iNames = 2 then
  begin
   imgCat.Picture.LoadFromFile('snow.jpeg');
   edtName.Text := 'Snow';
   frmAvatar2.Hide;
   frmMath.Show;
  end
  else
  begin
    if iNames = 3 then
    begin
   imgCat.Picture.LoadFromFile('soot.jpeg');
   edtName.Text := 'Soot';
   frmAvatar2.Hide;
   frmMath.Show;
   end;
  end;

   if iNames = 4 then
    begin
   imgCat.Picture.LoadFromFile('cally.jpg');
    edtName.Text := 'Cally';
   frmAvatar2.Hide;
   frmMath.Show;
   end;

 end;


procedure TfrmAvatar2.rgpNamesClick(Sender: TObject);
begin
iNames := rgpNames.ItemIndex;

  if iNames = 0 then
  begin
   imgCat.Picture.LoadFromFile('freckles.jpeg');
   edtName.Text := 'Freckles';
  end
  else
  begin
    if iNames = 1 then
    begin
   imgCat.Picture.LoadFromFile('fudge.jpeg');
   edtName.Text := 'Fudge';
   end;
  end;

   if iNames = 2 then
  begin
   imgCat.Picture.LoadFromFile('snow.jpeg');
   edtName.Text := 'Snow';
  end
  else
  begin
    if iNames = 3 then
    begin
   imgCat.Picture.LoadFromFile('soot.jpeg');
   edtName.Text := 'Soot';
   end;
  end;

   if iNames = 4 then
    begin
   imgCat.Picture.LoadFromFile('cally.jpg');
   edtName.Text := 'Cally';
   end;
end;

end.
