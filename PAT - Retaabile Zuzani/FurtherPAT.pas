unit FurtherPAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmFurther = class(TForm)
    Image1: TImage;
    RichEdit1: TRichEdit;
    btnBack: TButton;
    procedure btnBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFurther: TfrmFurther;

implementation

{$R *.dfm}

uses WelcomePAT;

procedure TfrmFurther.btnBackClick(Sender: TObject);
begin
 frmFurther.Hide;
 frmWelcome.Show;
end;

end.