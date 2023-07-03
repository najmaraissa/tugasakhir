unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, DB, ADODB, frxClass, frxDBSet;

type
  TForm9 = class(TForm)
    lbl1: TLabel;
    lbl4: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt7: TEdit;
    dbgrd1: TDBGrid;
    edt8: TEdit;
    edt9: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn6: TButton;
    btn7: TButton;
    edt5: TEdit;
    edt6: TEdit;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    con2: TZConnection;
    zqry1: TZQuery;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.btn1Click(Sender: TObject);
begin
  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn6.Enabled := True;
  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
  edt4.Enabled := True;
  edt5.Enabled := True;
  edt6.Enabled := True;
  edt7.Enabled := True;
  edt8.Enabled := True;
  edt9.Enabled := True;
end;

procedure TForm9.btn2Click(Sender: TObject);
begin
if edt1.Text =''then
begin
  ShowMessage('NO TIDAK BOLEH KOSONG');
  end else
if edt2.Text =''then
begin
  ShowMessage('nama wali TIDAK BOLEH KOSONG');
  end else
if edt3.Text =''then
begin
  ShowMessage('jenis kelamin TIDAK BOLEH KOSONG');
  end else
if edt4.Text =''then
begin
  ShowMessage('alamat SISWA TIDAK BOLEH KOSONG');
  end else
if edt5.Text =''then
begin
  ShowMessage('field LAHIR TIDAK BOLEH KOSONG');
  end else
if edt6.Text =''then
begin
  ShowMessage('Tingkat kelas TIDAK BOLEH KOSONG');
  end else
if edt7.Text =''then
begin
  ShowMessage('Jurusan TIDAK BOLEH KOSONG');
  end else
if edt8.Text =''then
begin
  ShowMessage('Telpon TIDAK BOLEH KOSONG');
  end else
if edt9.Text =''then
begin
  ShowMessage('HP TIDAK BOLEH KOSONG');
  end else
end;

procedure TForm9.btn3Click(Sender: TObject);
var
  id:string;
begin
if (edt1.Text= '')or(edt2.Text= '')or(edt3.Text= '')or(edt4.Text= '')or(edt5.Text= '')or(edt6.Text= '')or(edt7.Text= '')or(edt7.Text= '')or(edt8.Text= '')or(edt9.Text= '') then
begin
  ShowMessage('Inputan Wajib Di Isi');
end else

begin
  ShowMessage('Data Berhasil Di Update');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update data_siswa set no="'+edt1.Text+'",nama_wali_kelas="'+edt2.Text+'",jenis_kelamin="'+edt3.Text+'",alamat="'+edt4.Text+'",field="'+edt5.Text+'",tingkat_kelas="'+edt6.Text+'",jurusan="'+edt7.Text+'",telpon="'+edt8.Text+'",hp="'+edt9.Text+'", where id ="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from data_wali_kelas');
  zqry1.Open;
//  posisiawal;
end;
end;

procedure TForm9.btn4Click(Sender: TObject);
var
  id:string;
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from data_wali_kelas where id ="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from data_wali_kelas');
  zqry1.Open;
  ShowMessage('Data Berhasil Dihapus');
//  posisiawal;
  end else
begin
  ShowMessage('Data Batal Dihapus');
//  posisiawal;
end;
end;

procedure TForm9.btn7Click(Sender: TObject);
begin
// bersih;
end;

procedure TForm9.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

procedure TForm9.dbgrd1CellClick(Column: TColumn);
var
  id:string;
begin
id:=zqry1.Fields[0].AsString;
edt1.Text := zqry1.FieldList[1].AsString;
edt2.Text := zqry1.FieldList[2].AsString;
edt3.Text := zqry1.FieldList[3].AsString;
edt4.Text := zqry1.FieldList[4].AsString;
edt5.Text := zqry1.FieldList[5].AsString;
edt6.Text := zqry1.FieldList[6].AsString;
edt7.Text := zqry1.FieldList[7].AsString;
edt8.Text := zqry1.FieldList[1].AsString;
edt9.Text := zqry1.FieldList[2].AsString;

btn1.Enabled := False;
  btn2.Enabled := False;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn6.Enabled := True;
  btn7.Enabled := True;
  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
  edt4.Enabled := True;
  edt5.Enabled := True;
  edt6.Enabled := True;
  edt7.Enabled := True;
  edt8.Enabled := True;
  edt9.Enabled := True;
end;

end.
