unit AvatarPAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, WelcomePAT, AvatarPATT;

type
  TfrmAvatar = class(TForm)
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
  frmAvatar: TfrmAvatar;
  iNames : Integer;

implementation

{$R *.dfm}

procedure TfrmAvatar.btnBackClick(Sender: TObject);
begin
frmAvatar.Hide;
frmWelcome.Show;
end;

procedure TfrmAvatar.btnNextClick(Sender: TObject);
var iNames: Integer;
begin
  iNames := rgpNames.ItemIndex;

  if iNames = 0 then
  begin
   imgCat.Picture.LoadFromFile('freckles.jpeg');
   edtName.Text := 'Freckles';
    frmAvatar.Hide;
   frmAvatar2.Show;
  end
  else
  begin
    if iNames = 1 then
    begin
   imgCat.Picture.LoadFromFile('fudge.jpeg');
   edtName.Text := 'Fudge';
   frmAvatar.Hide;
   frmAvatar2.Show;
   end;
  end;

   if iNames = 2 then
  begin
   imgCat.Picture.LoadFromFile('snow.jpeg');
   edtName.Text := 'Snow';
   frmAvatar.Hide;
   frmAvatar2.Show;
  end
  else
  begin
    if iNames = 3 then
    begin
   imgCat.Picture.LoadFromFile('soot.jpeg');
   edtName.Text := 'Soot';
   frmAvatar.Hide;
   frmAvatar2.Show;
   end;
  end;

   if iNames = 4 then
    begin
   imgCat.Picture.LoadFromFile('cally.jpg');
   edtName.Text := 'Cally';
   frmAvatar.Hide;
   frmAvatar2.Show;
   end;

 end;


procedure TfrmAvatar.rgpNamesClick(Sender: TObject);
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
