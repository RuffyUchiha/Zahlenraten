unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    NeuButton: TBitBtn;
    RatenButton: TBitBtn;
    AbbrechenButton: TBitBtn;
    EingabeEdit: TEdit;
    Label1: TLabel;
    AusgabeEdit: TPanel;
    Panel2: TPanel;
    procedure AbbrechenButtonClick(Sender: TObject);
    procedure NeuButtonClick(Sender: TObject);
    procedure RatenButtonClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Zufallszahl: Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.NeuButtonClick(Sender: TObject);
begin
  Randomize();
  Zufallszahl:=Random(100)+1;
end;

procedure TForm1.AbbrechenButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.RatenButtonClick(Sender: TObject);
var Eingabe: Integer;
begin
  Eingabe:=StrToInt(EingabeEdit.Text);
  if Eingabe<Zufallszahl
  then AusgabeEdit.Caption:= 'Die Zahl ist zu klein';
  if Eingabe>Zufallszahl
  then AusgabeEdit.Caption:= 'Die Zahl ist zu groß';
  if Eingabe=Zufallszahl
  then AusgabeEdit.Caption:= 'Richtig';


end;


end.

