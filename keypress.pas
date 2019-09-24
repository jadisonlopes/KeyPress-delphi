unit keypress;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RxToolEdit,
  RxCurrEdit, Vcl.ExtCtrls;

type
  TfKeyPress = class(TForm)
    Panel1: TPanel;
    edKey: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    edTimer: TCurrencyEdit;
    Label3: TLabel;
    edDuraction: TCurrencyEdit;
    tTimer: TTimer;
    tDuraction: TTimer;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel2: TPanel;
    edPesq: TEdit;
    Label8: TLabel;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tTimerTimer(Sender: TObject);
    procedure tDuractionTimer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edPesqKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fKeyPress: TfKeyPress;

implementation

{$R *.dfm}

procedure TfKeyPress.edPesqKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Panel2.Caption:='Tecla: '+edPesq.Text+' || Key:'+IntToStr(Key)+' ';
  edPesq.Clear
end;

procedure TfKeyPress.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {if (Key=[17,65]) then //Ctrl+A
  begin
    tTimer.Interval:=StrToInt(CurrToStr(edTimer.Value*1000)); tDuraction.Interval:=StrToInt(CurrToStr(edDuraction.Value*60000));
  end
  else if (Key=[17,68]) then //Ctrl+D
  begin
    tTimer.Interval:=0; tDuraction.Interval:=0;
  end;}
end;

procedure TfKeyPress.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift=([ssCtrl])) then
  begin
    if key=73 then //Ctrl+I
    begin
      tTimer.Interval:=StrToInt(CurrToStr(edTimer.Value*1000)); tDuraction.Interval:=StrToInt(CurrToStr(edDuraction.Value*60000));
    end
    else if key=68 then //Ctrl+D
    begin
      tTimer.Interval:=0; tDuraction.Interval:=0;
    end;
  end;
end;

procedure TfKeyPress.tDuractionTimer(Sender: TObject);
begin
  tTimer.Interval:=0;
end;

procedure TfKeyPress.tTimerTimer(Sender: TObject);
var
  Key:Integer;
begin
  Key:=StrToInt(CurrToStr(edKey.Value));
  keybd_event(Key,0,0,0);
end;

end.
