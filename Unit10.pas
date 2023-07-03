unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, DB, ADODB, frxClass, frxDBSet;

type
  TForm10 = class(TForm)
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn6: TButton;
    btn7: TButton;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
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
  Form10: TForm10;

implementation

{$R *.dfm}

procedure TForm10.btn1Click(Sender: TObject);
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
end;

procedure TForm10.btn2Click(Sender: TObject);
begin
if edt1.Text =''then
begin
  ShowMessage('NO TIDAK BOLEH KOSONG');
  end else
if edt2.Text =''then
begin
  ShowMessage('jenis pelanggran TIDAK BOLEH KOSONG');
  end else
if edt3.Text =''then
begin
  ShowMessage('point TIDAK BOLEH KOSONG');
  end else
end;

procedure TForm10.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or(edt2.Text= '')or(edt3.Text= '') then
begin
  ShowMessage('Inputan Wajib Di Isi');
end else

begin
  ShowMessage('Data Berhasil Di Update');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update data_tabel_Pelanggran set no="'+edt1.Text+'",jenis_pelanggaran="'+edt2.Text+'",point="'+edt3.Text+'", where id ="'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from data_tabel_pelanggran');
  zqry1.Open;
//  posisiawal;
end;
end;

procedure TForm10.btn4Click(Sender: TObject);
var
  id:string
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from data_tabel_pelanggran where id ="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from data_tabel_pelanggran');
  zqry1.Open;
  ShowMessage('Data Berhasil Dihapus');
//  posisiawal;
  end else
begin
  ShowMessage('Data Batal Dihapus');
//  posisiawal;
end;
end;

procedure TForm10.btn7Click(Sender: TObject);
begin
//bersih
end;

procedure TForm10.btn6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

procedure TForm10.dbgrd1CellClick(Column: TColumn);
var
  id: string;
begin
id:=zqry1.Fields[0].AsString;
edt1.Text := zqry1.FieldList[1].AsString;
edt2.Text := zqry1.FieldList[2].AsString;
edt3.Text := zqry1.FieldList[3].AsString;

 btn1.Enabled := False;
  btn2.Enabled := False;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn6.Enabled := True;
  btn7.Enabled := True;
  edt1.Enabled := True;
  edt2.Enabled := True;
  edt3.Enabled := True;
end;

end.
