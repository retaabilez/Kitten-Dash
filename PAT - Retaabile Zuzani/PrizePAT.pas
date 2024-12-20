unit PrizePAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, AvatarPAT, AvatarPATT, WelcomePAT, PlayMED1, PlayPAT,
  PlayHARD;

type
  TfrmPrize = class(TForm)
    frmBackground: TImage;
    Timer1: TTimer;
    imgPrize1: TImage;
    imgPrize2: TImage;
    lblPlayer1: TLabel;
    lblPlayer2: TLabel;
    tmrPrize: TTimer;
    btnWinner: TButton;
    btnHome: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmrPrizeTimer(Sender: TObject);
    procedure btnWinnerClick(Sender: TObject);
    procedure btnHomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrize: TfrmPrize;

implementation

{$R *.dfm}

procedure TfrmPrize.btnHomeClick(Sender: TObject);
begin
 frmPrize.Hide;
 frmWelcome.Show;

end;

procedure TfrmPrize.btnWinnerClick(Sender: TObject);
begin

  if (frmEasy.lblPoints1.Caption) > (frmEasy.lblPoints2.Caption) then
  begin
    Showmessage(lblPlayer1.Caption + ' is the Top Cat! Congratulations !');
  end;

   if (frmEasy.lblPoints1.Caption) < (frmEasy.lblPoints2.Caption) then
  begin
    Showmessage(lblPlayer2.Caption + ' is the Top Cat! Congratulations !');
  end;

   if (frmEasy.lblPoints1.Caption) = (frmEasy.lblPoints2.Caption) then
  begin
    Showmessage('You are both the Top Cats! Congratulations !');
  end;
end;

procedure TfrmPrize.FormCreate(Sender: TObject);
begin
  iVerticalDirection := 5;
  iCount := 0;
end;

procedure TfrmPrize.Timer1Timer(Sender: TObject);
begin
  if (frmEasy.btnPlayer1.Enabled) = False then
  begin
    if StrToInt(frmEasy.lblPoints1.Caption) >= 5 then
    begin
      imgPrize1.Picture.LoadFromFile('bronze.png');
      lblPlayer1.Caption := (frmEasy.lblPlayer1.Caption);
    end;

    if StrToInt(frmEasy.lblPoints1.Caption) >= 10 then
    begin
      imgPrize1.Picture.LoadFromFile('silver.png');
      lblPlayer1.Caption := (frmEasy.lblPlayer1.Caption);
    end;

    if StrToInt(frmEasy.lblPoints1.Caption) >= 12 then
    begin
      imgPrize1.Picture.LoadFromFile('gold.png');
      lblPlayer1.Caption := (frmEasy.lblPlayer1.Caption);
    end;

    if (frmEasy.btnPlayer2.Enabled) = False then
    begin
      if StrToInt(frmEasy.lblPoints2.Caption) >= 5 then
      begin
        imgPrize2.Picture.LoadFromFile('bronze.png');
        lblPlayer2.Caption := (frmEasy.lblPlayer2.Caption);
      end;

      if StrToInt(frmEasy.lblPoints1.Caption) >= 10 then
      begin
        imgPrize2.Picture.LoadFromFile('silver.png');
        lblPlayer2.Caption := (frmEasy.lblPlayer2.Caption);
      end;

      if StrToInt(frmEasy.lblPoints2.Caption) >= 12 then
      begin
        imgPrize2.Picture.LoadFromFile('gold.png');
        lblPlayer2.Caption := (frmEasy.lblPlayer2.Caption);
      end;


      // Medium

      if (frmMed.btnPlayer1.Enabled) = False then
      begin
        if StrToInt(frmEasy.lblPoints1.Caption) >= 5 then
        begin
          imgPrize1.Picture.LoadFromFile('bronze.png');
          lblPlayer1.Caption := (frmEasy.lblPlayer1.Caption);
        end;

        if StrToInt(frmMed.lblPoints1.Caption) >= 10 then
        begin
          imgPrize1.Picture.LoadFromFile('silver.png');
          lblPlayer1.Caption := (frmEasy.lblPlayer1.Caption);
        end;

        if StrToInt(frmMed.lblPoints1.Caption) >= 12 then
        begin
          imgPrize1.Picture.LoadFromFile('gold.png');
          lblPlayer1.Caption := (frmEasy.lblPlayer1.Caption);
        end;

        if (frmMed.btnPlayer2.Enabled) = False then
        begin
          if StrToInt(frmEasy.lblPoints2.Caption) >= 5 then
          begin
            imgPrize2.Picture.LoadFromFile('bronze.png');
            lblPlayer2.Caption := (frmEasy.lblPlayer2.Caption);
          end;

          if StrToInt(frmMed.lblPoints1.Caption) >= 10 then
          begin
            imgPrize2.Picture.LoadFromFile('silver.png');
            lblPlayer2.Caption := (frmEasy.lblPlayer2.Caption);
          end;

          if StrToInt(frmMed.lblPoints2.Caption) >= 12 then
          begin
            imgPrize2.Picture.LoadFromFile('gold.png');
            lblPlayer2.Caption := (frmEasy.lblPlayer2.Caption);
          end;

        end;
      end;

       if (frmHard.btnPlayer1.Enabled) = False then
  begin
    if StrToInt(frmHard.lblPoints1.Caption) >= 5 then
    begin
      imgPrize1.Picture.LoadFromFile('bronze.png');
      lblPlayer1.Caption := (frmEasy.lblPlayer1.Caption);
    end;

   if StrToInt(frmHard.lblPoints1.Caption) >= 10 then
    begin
      imgPrize1.Picture.LoadFromFile('silver.png');
      lblPlayer1.Caption := (frmEasy.lblPlayer1.Caption);
    end;

    if StrToInt(frmHard.lblPoints1.Caption) >= 12 then
    begin
      imgPrize1.Picture.LoadFromFile('gold.png');
      lblPlayer1.Caption := (frmEasy.lblPlayer1.Caption);
    end;

     if (frmHard.btnPlayer2.Enabled) = False then
  begin
    if StrToInt(frmEasy.lblPoints2.Caption) >= 5 then
    begin
      imgPrize2.Picture.LoadFromFile('bronze.png');
      lblPlayer2.Caption := (frmEasy.lblPlayer2.Caption);
    end;

   if StrToInt(frmHard.lblPoints1.Caption) >= 10 then
    begin
      imgPrize2.Picture.LoadFromFile('silver.png');
      lblPlayer2.Caption := (frmEasy.lblPlayer2.Caption);
    end;

    if StrToInt(frmHard.lblPoints2.Caption) >= 12 then
    begin
      imgPrize2.Picture.LoadFromFile('gold.png');
      lblPlayer2.Caption := (frmEasy.lblPlayer2.Caption);
    end;


  end;
    end;

  end;
end;
end;

procedure TfrmPrize.tmrPrizeTimer(Sender: TObject);
begin
  inc(iCount);

  imgPrize2.Top := imgPrize2.Top + iVerticalDirection;

  if imgPrize2.Top >= 112 then
  begin
    iVerticalDirection := iVerticalDirection * -1;
  end;

  if imgPrize2.Top <= 16 then
  begin
    iVerticalDirection := iVerticalDirection * -1;
  end;

  if imgPrize2.Top <= 0 then
  begin
    iVerticalDirection := iVerticalDirection + 1;
  end;

  imgPrize2.Top := imgPrize2.Top + iVerticalDirection;

  if imgPrize2.Top >= 112 then
  begin
    iVerticalDirection := iVerticalDirection * -1;
  end;

  if imgPrize2.Top <= 16 then
  begin
    iVerticalDirection := iVerticalDirection * -1;
  end;

  if imgPrize2.Top <= 0 then
  begin
    iVerticalDirection := iVerticalDirection + 1;
  end;

  imgPrize1.Top := imgPrize1.Top + iVerticalDirection;

  if imgPrize1.Top >= 112 then
  begin
    iVerticalDirection := iVerticalDirection * -1;
  end;

  if imgPrize1.Top <= 16 then
  begin
    iVerticalDirection := iVerticalDirection * -1;
  end;

  if imgPrize1.Top <= 0 then
  begin
    iVerticalDirection := iVerticalDirection + 1;
  end;
end;

end.
