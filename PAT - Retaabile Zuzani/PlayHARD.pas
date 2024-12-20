unit PlayHARD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TfrmHard = class(TForm)
    Image1: TImage;
    imgPlayer1: TImage;
    imgPlayer2: TImage;
    lblPlayer1: TLabel;
    lblPlayer2: TLabel;
    lblPoints1: TLabel;
    lblPoints2: TLabel;
    imgRoad: TImage;
    imgBanner: TImage;
    imgPlayer12: TImage;
    imgPlayer11: TImage;
    imgWool1: TImage;
    imgWool2: TImage;
    btnPlayer1: TButton;
    btnPlayer2: TButton;
    btnEnd: TButton;
    btnStart: TButton;
    btnStart1: TButton;
    tmrBanner: TTimer;
    tmrPlayer1: TTimer;
    tmrPlayer2: TTimer;
    tmrSec: TTimer;
    lblSec: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnPlayer1Click(Sender: TObject);
    procedure btnPlayer2Click(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStart1Click(Sender: TObject);
    procedure tmrBannerTimer(Sender: TObject);
    procedure tmrPlayer1Timer(Sender: TObject);
    procedure tmrPlayer2Timer(Sender: TObject);
    procedure tmrSecTimer(Sender: TObject);
    procedure btnEndClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHard: TfrmHard;
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

procedure TfrmHard.btnEndClick(Sender: TObject);
begin
 frmHard.Hide;
 frmWelcome.Show;
end;

procedure TfrmHard.btnPlayer1Click(Sender: TObject);
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

procedure TfrmHard.btnPlayer2Click(Sender: TObject);
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

procedure TfrmHard.btnStart1Click(Sender: TObject);
begin
 bPlayer2 := True;
 btnStart1.Visible := False;
 bSec := True;
end;

procedure TfrmHard.btnStartClick(Sender: TObject);
var
  iNum1, iNum2, iAns, iCorrect, iCount1, iCount2, iSpeed: Integer;
  sNum1, sNum2: String;
begin
  bPlayer1 := True;
  btnStart1.Visible := False;
  bSec := True;
end;

procedure TfrmHard.FormCreate(Sender: TObject);
begin
  iHorizontalDirection := 10;
  iSec := 35;
end;

procedure TfrmHard.tmrBannerTimer(Sender: TObject);
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

procedure TfrmHard.tmrPlayer1Timer(Sender: TObject);
var iSpeed, iAns, iNum1, iNum2, iNumPlace, iCorrect : Integer;
    sNum1, sNum2: String;
begin
 ////// ADDITION //////

if (frmMath.bAdd) = True then
  begin

  iNum1 := Random(50) + 1;
  sNum1 := IntToStr(iNum1);
  iNum2 := Random(50) + 1;
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
            Showmessage('Incorrect! :(');
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


  ////// SUBTRACTING //////

   //Input

   if (frmMath.bSub) = True then
  begin
    iNum1 := Random(50) + 1;
    iNum2 := Random(50) + 1;
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
      Showmessage('Incorrect! :(');
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


 ////// Dividing //////

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
            Showmessage('Incorrect! :(');
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


 ////// Multiplication //////

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
            imgWool1.Left := 940;
           Showmessage('Congratulations !! You are the cats meow!!');
         end;

       end;
      end;

    end;

  end;
end;
end;

procedure TfrmHard.tmrPlayer2Timer(Sender: TObject);
var
  iSpeed, iAns, iNum1, iNum2, iNumPlace, iCorrect : Integer;
  sNum1, sNum2: String;
begin

 ////// ADDITION //////

if (frmMath.bAdd) = True then
  begin

  iNum1 := Random(50) + 1;
  sNum1 := IntToStr(iNum1);
  iNum2 := Random(50) + 1;
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
           imgWool2.Left := 940;
           Showmessage('Congratulations !! You are the cats meow!!');
         end;

       end;
      end;

    end;

  end;


  ////// SUBTRACTING //////

   //Input

   if (frmMath.bSub) = True then
  begin
    iNum1 := Random(35) + 1;
    iNum2 := Random(35) + 1;
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

 if bPlayer2 = True then
 begin
  iSpeed := 10;
  imgWool2.Left := imgWool2.Left - iSpeed;
  iAddTimer := iAddTimer + 60;

  if imgWool2.Left <= (iAddTimer) then
   begin

   if imgWool2.Left <= imgPlayer12.Left then
    begin
    imgWool1.Left := 940;
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
        imgWool2.Left := 940;
       Showmessage('Congratulations !! You are the cats meow!!');
      end;
     end;
    end;

  end;


 ////// Dividing //////

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

    if bPlayer2 = True then
    begin
      iSpeed := 10;
      imgWool2.Left := imgWool2.Left - iSpeed;
      iAddTimer := iAddTimer + 60;

      if imgWool2.Left <= (iAddTimer) then
      begin

       if imgWool2.Left <= imgPlayer11.Left then
       begin

        imgWool2.Left := 940;
        iAns := StrToInt(InputBox('Enter Answer (Leave decimals out) !', sNum1 + '�' + sNum2, ''));

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
            imgWool2.Left := 940;
           Showmessage('Congratulations !! You are the cats meow!!');
         end;

       end;
      end;

    end;

  end;


 ////// Multiplication //////

  // Input

   if (frmMath.bMult) = True then
  begin
    iNum1 := Random(6) + 1;
    iNum2 := Random(6) + 1;
    sNum1 := IntToStr(iNum1);
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

        imgWool2.Left := 940;
        iAns := StrToInt(InputBox('Enter Answer !', sNum1 + 'x' + sNum2, ''));

          if iAns = iCorrect then
          begin
             iCount1 := iCount1 + 1;
            lblPoints2.Caption := IntToStr(iCount1);
            imgPlayer12.Left := imgPlayer12.Left + 60;
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
            imgWool2.Left := 940;
           Showmessage('Congratulations !! You are the cats meow!!');
         end;

       end;
      end;

    end;

  end;

end;
end;

procedure TfrmHard.tmrSecTimer(Sender: TObject);
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
      tmrPlayer1.Enabled := False;
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
      tmrPlayer2.Enabled := False;
    end;
  end;
end;
end;

end.
