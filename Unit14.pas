unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, DB, ADODB, frxClass, frxDBSet,
  StdCtrls, Grids, DBGrids;

type
  TForm14 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl6: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    dbgrd1: TDBGrid;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    edt11: TEdit;
    edt12: TEdit;
    edt13: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn6: TButton;
    btn7: TButton;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    con2: TZConnection;
    zqry1: TZQuery;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn7Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}

procedure TForm14.dbgrd1CellClick(Column: TColumn);
var
  id : string;
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
edt10.Text := zqry1.FieldList[3].AsString;
edt11.Text := zqry1.FieldList[4].AsString;
edt12.Text := zqry1.FieldList[5].AsString;
edt13.Text := zqry1.FieldList[6].AsString;



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
  edt10.Enabled := True;
  edt11.Enabled := True;
  edt12.Enabled := True;
  edt13.Enabled := True;
end;

procedure TForm14.btn7Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

procedure TForm14.btn4Click(Sender: TObject);
var
  id : string;
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from data_pelanggran where id ="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from data_pelanggran');
  zqry1.Open;
  ShowMessage('Data Berhasil Dihapus');
//  posisiawal;
  end else
begin
  ShowMessage('Data Batal Dihapus');
//  posisiawal;
end;//bersih
end;

procedure TForm14.btn3Click(Sender: TObject);
var
  id : string;
begin
if (edt1.Text= '')or(edt2.Text= '')or(edt3.Text= '')or(edt4.Text= '')or(edt5.Text= '')or(edt6.Text= '')or(edt7.Text= '')or(edt7.Text= '')or(edt8.Text= '')or(edt9.Text= '')or(edt10.Text= '')or(edt11.Text= '')or(edt12.Text= '')or(edt13.Text= '') then
begin
  ShowMessage('Inputan Wajib Di Isi');
end else

begin
  ShowMessage('Data Berhasil Di Update');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update data_prestasi set no="'+edt1.Text+'",nama_siswa="'+edt2.Text+'",nis="'+edt3.Text+'",nisn="'+edt4.Text+'",jenis_kelamin="'+edt5.Text+'",jurusan="'+edt6.Text+'",nama_wali_kelas="'+edt7.Text+'",nama_ortu="'+edt8.Text+'",telp/hp_ORTU="'+edt9.Text+'",jenis_pelanggran="'+edt10.Text+'",keterangan="'+edt11.Text+'",bulan="'+edt12.Text+'",tahun_pelajaran="'+edt13.Text+'", where id ="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from data_prestasi');
  zqry1.Open;
//  posisiawal;
end;
end;

procedure TForm14.btn2Click(Sender: TObject);
begin
if edt1.Text =''then
begin
  ShowMessage('NO TIDAK BOLEH KOSONG');
  end else
if edt2.Text =''then
begin
  ShowMessage('nama siswa TIDAK BOLEH KOSONG');
  end else
if edt3.Text =''then
begin
  ShowMessage('nis TIDAK BOLEH KOSONG');
  end else
if edt4.Text =''then
begin
  ShowMessage('nisn TIDAK BOLEH KOSONG');
  end else
if edt5.Text =''then
begin
  ShowMessage('jenis kelamin TIDAK BOLEH KOSONG');
  end else
if edt6.Text =''then
begin
  ShowMessage('jurusan TIDAK BOLEH KOSONG');
  end else
if edt7.Text =''then
begin
  ShowMessage('nama wali kelas TIDAK BOLEH KOSONG');
  end else
if edt8.Text =''then
begin
  ShowMessage('nama ortu TIDAK BOLEH KOSONG');
  end else
if edt9.Text =''then
begin
  ShowMessage('telp/HP TIDAK BOLEH KOSONG');
  end else
if edt10.Text =''then
begin
  ShowMessage('jenis pelanggran TIDAK BOLEH KOSONG');
  end else
if edt11.Text =''then
begin
  ShowMessage('keterangan TIDAK BOLEH KOSONG');
  end else
if edt12.Text =''then
begin
  ShowMessage('bulan TIDAK BOLEH KOSONG');
  end else
if edt13.Text =''then
begin
  ShowMessage('tahun pelajaran TIDAK BOLEH KOSONG');
  end else
end;

procedure TForm14.btn1Click(Sender: TObject);
begin
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
  edt10.Enabled := True;
  edt11.Enabled := True;
  edt12.Enabled := True;
  edt13.Enabled := True;
end;

end.
