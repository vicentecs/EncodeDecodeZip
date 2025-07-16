unit UMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    XML: TLabel;
    Label1: TLabel;
    btnEncode: TButton;
    btnDecode: TButton;
    btnOpen: TButton;
    OpenDialog1: TOpenDialog;
    btnEncodeBase: TButton;
    btnDecodeBase: TButton;
    procedure btnEncodeClick(Sender: TObject);
    procedure btnDecodeClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure btnDecodeBaseClick(Sender: TObject);
    procedure btnEncodeBaseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  synacode,
  ACBrUtil.FilesIO;

{$R *.dfm}

procedure TForm1.btnDecodeBaseClick(Sender: TObject);
begin
  Memo1.Text := DecodeBase64(Memo2.Text);
end;

procedure TForm1.btnDecodeClick(Sender: TObject);
begin
  Memo1.Text := ACBrUtil.FilesIO.UnZip(DecodeBase64(Memo2.Text));
end;

procedure TForm1.btnEncodeBaseClick(Sender: TObject);
begin
  Memo1.Text := EncodeBase64(Memo2.Text);
end;

procedure TForm1.btnEncodeClick(Sender: TObject);
begin
  Memo2.Text := EncodeBase64(ACBrUtil.FilesIO.Zip(Memo1.Text));
end;

procedure TForm1.btnOpenClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

end.
