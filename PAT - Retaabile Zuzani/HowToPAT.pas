unit HowToPAT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TfrmHow = class(TForm)
    Image1: TImage;
    pnlOne: TPanel;
    RichEdit1: TRichEdit;
    Panel1: TPanel;
    RichEdit2: TRichEdit;
    btnBack: TButton;
    procedure btnBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHow: TfrmHow;

implementation

{$R *.dfm}

uses WelcomePAT;

procedure TfrmHow.btnBackClick(Sender: TObject);
begin
 frmHow.Hide;
 frmWelcome.Show;
end;

end.
