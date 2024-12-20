unit PlayPAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TfrmEasy = class(TForm)
    imgBack: TImage;
    imgRoad: TImage;
    imgPlayer1: TImage;
    imgPlayer2: TImage;
    lblPlayer1: TLabel;
    lblPlayer2: TLabel;
    btnStart: TButton;
    btnEnd: TButton;
    imgBanner: TImage;
    imgPlayer11: TImage;
    imgPlayer12: TImage;
    lblPoints1: TLabel;
    lblPoints2: TLabel;
    tmrPlayer1: TTimer;
    imgWool2: TImage;
    imgWool1: TImage;
    btnPlayer2: TButton;
    btnPlayer1: TButton;
    tmrBanner: TTimer;
    tmrPlayer2: TTimer;
    btnStart1: TButton;
    tmrSec: TTimer;
    lblSec: TLabel;
    procedure btnStartClick(Sender: TObject);
    procedure btnPlayer2Click(Sender: TObject);
    procedure btnPlayer1Click(Sender: TObject);
    procedure tmrPlayer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmrBannerTimer(Sender: TObject);
    procedure tmrSecTimer(Sender: TObject);
    procedure imgWool1Click(Sender: TObject);
    procedure btnStart1Click(Sender: TObject);
    procedure tmrPlayer2Timer(Sender: TObject);
    procedure btnEndClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEasy: TfrmEasy;
  bPlayer1 : Boolean;
  bPlayer2 : Boolean;
  iHorizontalDirection : Integer;
  iCount1 : Integer;
  iCount2 : Integer;
  iSec : Integer;
  bSec : Boolean;
  iAddTimer : Integer;

implementation

{$R *.dfm}

uses MathPAT, AvatarPAT, AvatarPATT, WelcomePAT;

procedure TfrmEasy.btnStart1Click(Sender: TObject);
var
  iNum1, iNum2, iAns, iCorrect, iCount1, iCount2, iSpeed: Integer;
  sNum1, sNum2: String;
begin
 bPlayer2 := True;
 btnStart1.Visible := False;
 bSec := True;
end;

procedure TfrmEasy.btnStartClick(Sender: TObject);
var
  iNum1, iNum2, iAns, iCorrect, iCount1, iCount2, iSpeed: Integer;
  sNum1, sNum2: String;
begin
  // Input

  bPlayer1 := True;
  btnStart1.Visible := False;
  bSec := True;

end;

procedure TfrmEasy.FormCreate(Sender: TObject);
begin
  iHorizontalDirection := 10;
  iSec := 60;

end;

procedure TfrmEasy.imgWool1Click(Sender: TObject);
begin
 if imgWool1.Left <= imgPlayer11.Left then
  begin
  imgWool1.Left := 940;
  end;
end;

procedure TfrmEasy.btnPlayer2Click(Sender: TObject);
begin

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

  lblPlayer2.Caption := (frmAvatar2.edtName.Text);

end;

procedure TfrmEasy.btnEndClick(Sender: TObject);
begin
 frmEasy.Hide;
 frmWelcome.Show;
 tmrPlayer1.Enabled := False;
 tmrPlayer2.Enabled := False;
end;

procedure TfrmEasy.btnPlayer1Click(Sender: TObject);
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

procedure TfrmEasy.tmrPlayer1Timer(Sender: TObject);
var
  iSpeed, iAns, iNum1, iNum2, iNumPlace, iCorrect : Integer;
  sNum1, sNum2: String;
begin

  // Input

  // Processing

  if (frmMath.bAdd) = True then
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

        imgWool1.Left := 1140;
        iAns := StrToInt(InputBox('Enter Answer !', sNum1 + '+' + sNum2, ''));

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

         if imgPlayer11.Left >= 900 then
         begin
           tmrSec.Enabled := False;
            imgWool1.Left := 940;
           Showmessage('Congratulations !! You are the cats meow!!');
         end;

       end;
      end;

    end;

  end;

  // Subtracting  //

    //Input

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

        imgWool1.Left := 1140;
        iAns := StrToInt(InputBox('Enter Answer !', sNum1 + '-' + sNum2, ''));

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

         if imgPlayer11.Left >= 900 then
         begin
           tmrSec.Enabled := False;
            imgWool1.Left := 940;
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

        imgWool1.Left := 1140;
        iAns := StrToInt(InputBox('Enter Answer (Leave decimals out) !', sNum1 + '�' + sNum2, ''));

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

         if imgPlayer11.Left >= 900 then
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

        imgWool1.Left := 1140;
        iAns := StrToInt(InputBox('Enter Answer !', sNum1 + 'x' + sNum2, ''));

          if iAns = iCorrect then
          begin
             iCount1 := iCount1 + 1;
            lblPoints1.Caption := IntToStr(iCount1);
            imgPlayer11.Left := imgPlayer11.Left + 60;
          end
          else
          begin
            Showmessage('Incorrect! :(');
            tmrSec.Enabled := True;
          end;

         tmrSec.Enabled := True;

         if imgPlayer11.Left >= 900 then
         begin
           tmrSec.Enabled := False;
           Showmessage('Congratulations!! You are the cats meow!!');
         end;

       end;
      end;

    end;

  end;



end;

procedure TfrmEasy.tmrPlayer2Timer(Sender: TObject);
var
  iSpeed, iAns, iNum1, iNum2, iNumPlace, iCorrect : Integer;
  sNum1, sNum2: String;
begin
  // Input

  // Processing

  if (frmMath.bAdd) = True then
  begin

  iNum1 := Random(25) + 1;
  sNum1 := IntToStr(iNum1);
  iNum2 := Random(25) + 1;
  sNum2 := IntToStr(iNum2);

    iCorrect := iNum1 + iNum2;

    if bPlayer2 = True then
    begin
      iSpeed := 10;
      imgWool2.Left := imgWool2.Left - iSpeed;
      iAddTimer := iAddTimer + 60;

      if imgWool2.Left <= (iAddTimer) then
      begin

       if imgWool2.Left <= imgPlayer12.Left then
       begin

        imgWool2.Left := 1140;
        iAns := StrToInt(InputBox('Enter Answer !', sNum1 + '+' + sNum2, ''));

          if iAns = iCorrect then
          begin
             iCount1 := iCount1 + 1;
            lblPoints2.Caption := IntToStr(iCount1);
            imgPlayer12.Left := imgPlayer12.Left + 60;
          end
          else
          begin
            tmrSec.Enabled := False;
            Showmessage('Incorrect! :(');
            tmrSec.Enabled := True;
          end;


         tmrSec.Enabled := True;

         if imgPlayer12.Left >= 900 then
         begin
           tmrSec.Enabled := False;
           imgWool1.Left := 940;
           Showmessage('Congratulations !! You are the cats meow!!');
         end;

       end;
      end;

    end;

  end;


  ////// SUBTRACTION //////

  if (frmMath.bSub) = True then
  begin

  iNum1 := Random(25) + 1;
  sNum1 := IntToStr(iNum1);
  iNum2 := Random(25) + 1;
  sNum2 := IntToStr(iNum2);

    iCorrect := iNum1 - iNum2;

    if bPlayer2 = True then
    begin
      iSpeed := 10;
      imgWool2.Left := imgWool2.Left - iSpeed;
      iAddTimer := iAddTimer + 60;

      if imgWool2.Left <= (iAddTimer) then
      begin

       if imgWool2.Left <= imgPlayer12.Left then
       begin

        imgWool2.Left := 1140;
        iAns := StrToInt(InputBox('Enter Answer !', sNum1 + '-' + sNum2, ''));

          if iAns = iCorrect then
          begin
             iCount1 := iCount1 + 1;
            lblPoints2.Caption := IntToStr(iCount1);
            imgPlayer12.Left := imgPlayer12.Left + 60;
          end
          else
          begin
            tmrSec.Enabled := False;
            Showmessage('Incorrect! :(');
            tmrSec.Enabled := True;
          end;

         tmrSec.Enabled := True;

         if imgPlayer12.Left >= 900 then
         begin
           tmrSec.Enabled := False;
           imgWool1.Left := 940;
           Showmessage('Congratulations !! You are the cats meow!!');
         end;

       end;
      end;

    end;

  end;

 ////// MULTIPLICATION //////

  if (frmMath.bMult) = True then
  begin

  iNum1 := Random(12) + 1;
  sNum1 := IntToStr(iNum1);
  iNum2 := Random(12) + 1;
  sNum2 := IntToStr(iNum2);

    iCorrect := iNum1 * iNum2;

    if bPlayer2 = True then
    begin
      iSpeed := 10;
      imgWool2.Left := imgWool2.Left - iSpeed;
      iAddTimer := iAddTimer + 60;

      if imgWool2.Left <= (iAddTimer) then
      begin

       if imgWool2.Left <= imgPlayer12.Left then
       begin

        imgWool2.Left := 1140;
        iAns := StrToInt(InputBox('Enter Answer !', sNum1 + 'x' + sNum2, ''));



          if iAns = iCorrect then
          begin
             iCount1 := iCount1 + 1;
            lblPoints2.Caption := IntToStr(iCount1);
            imgPlayer12.Left := imgPlayer12.Left + 60;
          end
          else
          begin
            tmrSec.Enabled := False;
            Showmessage('Incorrect! :(');
            tmrSec.Enabled := True;
          end;

         tmrSec.Enabled := True;

         if imgPlayer12.Left >= 900 then
         begin
           tmrSec.Enabled := False;
           imgWool1.Left := 940;
           Showmessage('Congratulations !! You are the cats meow!!');
         end;

       end;
      end;

    end;

  end;
end;

procedure TfrmEasy.tmrSecTimer(Sender: TObject);
begin
if bPlayer1 = True then
begin
  if bSec = True then
  begin
    dec(iSec);
    lblSec.Caption := IntToStr(iSec);

    if iSec = 0 then
    begin
      Showmessage('Game over!');
      bPlayer1 := False;
      btnPlayer2.Enabled := True;
    end;
  end;
end;

if bPlayer2 = True then
begin
  if bSec = True then
  begin
    dec(iSec);
    lblSec.Caption := IntToStr(iSec);

    if iSec = 0 then
    begin
      bPlayer2 := False;
    end;
  end;
end;

end;

procedure TfrmEasy.tmrBannerTimer(Sender: TObject);
begin

  imgBanner.Left := imgBanner.Left + iHorizontalDirection;

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
  end;

end;

end.
