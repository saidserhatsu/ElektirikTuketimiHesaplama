unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ExtCtrls, FMX.ListBox, FMX.Edit;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure ComboBox2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   deger : Real;
   gunduz : Real;
   gece : Real;
   puant : Real;
   sonuc : Real;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin

if ComboBox1.Items[ComboBox1.ItemIndex] = 'Ev' then
if ComboBox2.Items[ComboBox2.ItemIndex] = 'Tek Zamanlý Mesken' then
 begin
      deger := StrToFloat(Edit1.Text);
      sonuc := deger * (0.9156);
      label1.Text := 'Elektrik Faturanýz: '+ FloatToStr(sonuc) + ' TL olarak gelecektir';
 end

 else if ComboBox2.Items[ComboBox2.ItemIndex] = 'Üç Zamanlý Mesken' then
 begin
   gunduz := StrToFloat(Edit2.Text);
   gece := StrToFloat(Edit3.Text);
   puant := StrToFloat(Edit4.Text);
   sonuc := (gunduz * 0.8274) + (gece * 0.5172) + (puant * 1.2152);
   label1.Text := 'Elektrik Faturanýz: '+ FloatToStr(sonuc) + ' TL olarak gelecektir';
   end ;


if ComboBox1.Items[ComboBox1.ItemIndex] = 'Ýþyeri' then
if ComboBox2.Items[ComboBox2.ItemIndex] = 'Tek Zamanlý Mesken' then
 begin
      deger := StrToFloat(Edit1.Text);
      sonuc := deger * (1.2175);
      label1.Text := 'Elektrik Faturanýz: '+ FloatToStr(sonuc) + ' TL olarak gelecektir';
 end

 else if ComboBox2.Items[ComboBox2.ItemIndex] = 'Üç Zamanlý Mesken' then
 begin
   gunduz := StrToFloat(Edit2.Text);
   gece := StrToFloat(Edit3.Text);
   puant := StrToFloat(Edit4.Text);
   sonuc := (gunduz * 1.0951) + (gece * 0.6336) + (puant * 1.6079);
   label1.Text := 'Elektrik Faturanýz: '+ FloatToStr(sonuc) + ' TL olarak gelecektir';
   end ;



end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
  if ComboBox2.Items[ComboBox2.ItemIndex] = 'Tek Zamanlý Mesken' then
 begin
      label2.Visible := true;
      Edit1.Visible := true;
      Edit2.Visible := false;
      Edit3.Visible := false;
      Edit4.Visible := false;
      label3.Visible := false;
      label4.Visible := false;
      label5.Visible := false;
 end
 else
 begin
   label2.Visible := false;
   Edit1.Visible := false;
   Edit2.Visible := true;
   Edit3.Visible := true;
   Edit4.Visible := true;
   label3.Visible := true;
      label4.Visible := true;
      label5.Visible := true;
   end
end;

end.
