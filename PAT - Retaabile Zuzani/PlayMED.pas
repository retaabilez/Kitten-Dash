unit PlayMED;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TfrmMed = class(TForm)
    frmBackground: TImage;
    imgPlayer1: TImage;
    lblPlayer1: TLabel;
    lblPoints1: TLabel;
    imgPlayer2: TImage;
    lblPlayer2: TLabel;
    lblPoints2: TLabel;
    imgRoad: TImage;
    btnPlayer1: TButton;
    btnPlayer2: TButton;
    btnEnd: TButton;
    btnStart: TButton;
    btnStart1: TButton;
    imgWool1: TImage;
    imgWool2: TImage;
    imgBanner: TImage;
    tmrBanner: TTimer;
    tmrPlayer1: TTimer;
    tmrPlayer2: TTimer;
    tmrSec: TTimer;
    imgPlayer11: TImage;
    imgPlayer12: TImage;
    lblSec: TLabel;
    procedure tmrBannerTimer(Sender: TObject);
    procedure tmrPlayer1Timer(Sender: TObject);
    procedure btnPlayer1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imgWool1Click(Sender: TObject);
    procedure btnPlayer2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMed: TfrmMed;
  bPlayer1: Boolean;
  bPlayer2: Boolean;
  iHorizontalDirection: Integer;
  iCount1: Integer;
  iCount2: Integer;
  iSec: Integer;
  bSec: Boolean;
  iAddTimer: Integer;

implementation

{$R *.dfm}

uses MathPAT, AvatarPAT, AvatarPATT;

procedure TfrmMed.btnPlayer1Click(Sender: TObject);
begin
 if (frmAvatar.edtName.Text) = 'Freckles' then
  begin
    imgPlayer11.Picture.LoadFromFile('freckles2.jpg');
    imgPlayer1.Picture.LoadFromFile('freckles.jpeg');
  end
  else
  begin
    if (frmAvatar.edtName.Text) = 'Snow' then
    begin
      imgPlayer11.Picture.LoadFromFile('snow2.jpg');
      imgPlayer1.Picture.LoadFromFile('snow.jpeg');
    end;
  end;

  if (frmAvatar.edtName.Text) = 'Fudge' then
  begin
    imgPlayer11.Picture.LoadFromFile('fudge2.jpg');
    imgPlayer1.Picture.LoadFromFile('fudge.jpeg');
  end
  else
  begin
    if (frmAvatar.edtName.Text) = 'Soot' then
    begin
      imgPlayer11.Picture.LoadFromFile('soot2.jpg');
      imgPlayer1.Picture.LoadFromFile('soot.jpeg');
    end;
  end;

  if (frmAvatar.edtName.Text) = 'Cally' then
  begin
    imgPlayer11.Picture.LoadFromFile('cally2.jpg');
    imgPlayer1.Picture.LoadFromFile('cally.jpg');
  end;


  lblPlayer1.Caption := (frmAvatar.edtName.Text);

end;

procedure TfrmMed.btnPlayer2Click(Sender: TObject);
begin
{
  if (frmAvatar2.edtName.Text) = 'Freckles' then
  begin
    imgPlayer12.Picture.LoadFromFile('freckles2.jpg');
    imgPlayer2.Picture.LoadFromFile('freckles.jpeg');
  end
  else
  begin
    if (frmAvatar2.edtName.Text) = 'Snow' then
    begin
      imgPlayer12.Picture.LoadFromFile('snow2.jpg');
      imgPlayer2.Picture.LoadFromFile('snow.jpeg');
    end;
  end;

  if (frmAvatar2.edtName.Text) = 'Fudge' then
  begin
    imgPlayer12.Picture.LoadFromFile('fudge2.jpg');
    imgPlayer2.Picture.LoadFromFile('fudge.jpeg');
  end
  else
  begin
    if (frmAvatar2.edtName.Text) = 'Soot' then
    begin
      imgPlayer12.Picture.LoadFromFile('soot2.jpg');
      imgPlayer2.Picture.LoadFromFile('soot.jpeg');
    end;
  end;

  if (frmAvatar2.edtName.Text) = 'Cally' then
  begin
    imgPlayer12.Picture.LoadFromFile('cally2.jpg');
    imgPlayer2.Picture.LoadFromFile('cally.jpg');
  end;

  lblPlayer2.Caption := (frmAvatar2.edtName.Text);        }

end;

procedure TfrmMed.FormCreate(Sender: TObject);
begin
 iHorizontalDirection := 10;
  iSec := 60;
end;

procedure TfrmMed.imgWool1Click(Sender: TObject);
begin
{ if imgWool1.Left <= imgPlayer11.Left then
  begin
  imgWool1.Left := 940;
  end;   }
end;

procedure TfrmMed.tmrBannerTimer(Sender: TObject);
begin
 { imgBanner.Left := imgBanner.Left + iHorizontalDirection;

  if imgBanner.Left >= 200 then
  begin
    iHorizontalDirection := iHorizontalDirection * -1;
  end;

  if imgBanner.Left <= 140 then
  begin
    iHorizontalDirection := iHorizontalDirection * -1;
  end;

  if imgBanner.Left <= 0 then
  begin
    iHorizontalDirection := iHorizontalDirection + 1;
  end;   }

end;

procedure TfrmMed.tmrPlayer1Timer(Sender: TObject);
begin
 {var iSpeed, iAns, iNum1, iNum2, iNumPlace, iCorrect : Integer;
     sNum1, sNum2 : String; }
  begin

    // Input

    // Processing

   { if (frmMath.bAdd) = True then
    begin

      iNum1 := Random(25) + 1;
      sNum1 := IntToStr(iNum1);
      iNum2 := Random(25) + 1;
      sNum2 := IntToStr(iNum2);

      iCorrect := iNum1 + iNum2;

      if bPlayer1 = True then
      begin
        iSpeed := 10;
        imgWool1.Left := imgWool1.Left - iSpeed;
        iAddTimer := iAddTimer + 60;

        if imgWool1.Left <= (iAddTimer) then
        begin

          if imgWool1.Left <= imgPlayer11.Left then
          begin

            imgWool1.Left := 940;
            iAns := StrToInt(InputBox('Enter Answer !',
              sNum1 + '+' + sNum2, ''));

            if iAns = iCorrect then
            begin
              iCount1 := iCount1 + 1;
              lblPoints1.Caption := IntToStr(iCount1);
              imgPlayer11.Left := imgPlayer11.Left + 60;
            end
            else
            begin
              tmrSec.Enabled := False;
              Showmessage('Incorrect !');
              tmrSec.Enabled := True;
            end;

            tmrSec.Enabled := True;

            if imgPlayer11.Left >= 596 then
            begin
              tmrSec.Enabled := False;
              Showmessage('Congratulations !! You are the cats meow!!');
            end;

          end;
        end;

      end;

    end;

    // Subtracting  //

    // Input

    if (frmMath.bSub) = True then
    begin
      iNum1 := Random(25) + 1;
      iNum2 := Random(25) + 1;
      sNum1 := IntToStr(iNum1);
      sNum2 := IntToStr(iNum2);

      if iNum1 < iNum2 then
      begin
        iNumPlace := iNum1;
        iNum1 := iNum2;
        iNum2 := iNumPlace;
      end;

      iCorrect := iNum1 - iNum2;

      // Processing  //

      if bPlayer1 = True then
      begin
        iSpeed := 10;
        imgWool1.Left := imgWool1.Left - iSpeed;
        iAddTimer := iAddTimer + 60;

        if imgWool1.Left <= (iAddTimer) then
        begin

          if imgWool1.Left <= imgPlayer11.Left then
          begin

            imgWool1.Left := 940;
            iAns := StrToInt(InputBox('Enter Answer !',
              sNum1 + '-' + sNum2, ''));

            if iAns = iCorrect then
            begin
              iCount1 := iCount1 + 1;
              lblPoints1.Caption := IntToStr(iCount1);
              imgPlayer11.Left := imgPlayer11.Left + 60;
            end
            else
            begin
              tmrSec.Enabled := False;
              Showmessage('Incorrect !');
              tmrSec.Enabled := True;
            end;

            tmrSec.Enabled := True;

            if imgPlayer11.Left >= 596 then
            begin
              tmrSec.Enabled := False;
              Showmessage('Congratulations !! You are the cats meow!!');
            end;
          end;
        end;

      end;

    end;

    // Dividing  //

    if (frmMath.bDiv) = True then
    begin

      iNum1 := Random(6) + 1;
      iNum2 := Random(6) + 1;
      sNum1 := IntToStr(iNum1);
      sNum2 := IntToStr(iNum2);

      if iNum1 < iNum2 then
      begin
        iNumPlace := iNum1;
        iNum1 := iNum2;
        iNum2 := iNumPlace;
      end;

      iCorrect := iNum1 DIV iNum2;

      if bPlayer1 = True then
      begin
        iSpeed := 10;
        imgWool1.Left := imgWool1.Left - iSpeed;
        iAddTimer := iAddTimer + 60;

        if imgWool1.Left <= (iAddTimer) then
        begin

          if imgWool1.Left <= imgPlayer11.Left then
          begin

            imgWool1.Left := 940;
            iAns := StrToInt(InputBox('Enter Answer (Leave decimals out) !',
              sNum1 + '�' + sNum2, ''));

            if iAns = iCorrect then
            begin
              iCount1 := iCount1 + 1;
              lblPoints1.Caption := IntToStr(iCount1);
              imgPlayer11.Left := imgPlayer11.Left + 60;
            end
            else
            begin
              tmrSec.Enabled := False;
              Showmessage('Incorrect !');
              tmrSec.Enabled := True;
            end;

            tmrSec.Enabled := True;

            if imgPlayer11.Left >= 596 then
            begin
              tmrSec.Enabled := False;
              Showmessage('Congratulations !! You are the cats meow!!');
            end;

          end;
        end;

      end;

    end;


    // Multiplication //

    // Input

    if (frmMath.bMult) = True then
    begin
      iNum1 := Random(6) + 1;
      iNum2 := Random(6) + 1;
      sNum1 := IntToStr(iNum1);
      sNum2 := IntToStr(iNum2);
      iCorrect := iNum1 * iNum2;

      if bPlayer1 = True then
      begin
        iSpeed := 10;
        imgWool1.Left := imgWool1.Left - iSpeed;
        iAddTimer := iAddTimer + 60;

        if imgWool1.Left <= (iAddTimer) then
        begin

          if imgWool1.Left <= imgPlayer11.Left then
          begin

            imgWool1.Left := 940;
            iAns := StrToInt(InputBox('Enter Answer !',
              sNum1 + 'x' + sNum2, ''));

            if iAns = iCorrect then
            begin
              iCount1 := iCount1 + 1;
              lblPoints1.Caption := IntToStr(iCount1);
              imgPlayer11.Left := imgPlayer11.Left + 60;
            end
            else
            begin
              Showmessage('Incorrect !');
              tmrSec.Enabled := True;
            end;

            tmrSec.Enabled := True;

            if imgPlayer11.Left >= 596 then
            begin
              tmrSec.Enabled := False;
              Showmessage('Congratulations !! You are the cats meow!!');
            end;

          end;
        end;

      end;

    end; }

  end;
end;

end.
