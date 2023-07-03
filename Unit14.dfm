object Form14: TForm14
  Left = 192
  Top = 125
  Width = 1136
  Height = 577
  Caption = 'Pelanggran'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 184
    Top = 16
    Width = 17
    Height = 16
    Caption = 'NO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 184
    Top = 96
    Width = 20
    Height = 16
    Caption = 'NIS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 184
    Top = 136
    Width = 28
    Height = 16
    Caption = 'NISN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 184
    Top = 56
    Width = 71
    Height = 16
    Caption = 'Nama Siswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 640
    Top = 96
    Width = 103
    Height = 16
    Caption = 'Jenis Pelanggaran'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 184
    Top = 176
    Width = 77
    Height = 16
    Caption = 'Jenis Kelamin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 640
    Top = 16
    Width = 70
    Height = 16
    Caption = 'Nama ORTU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 184
    Top = 216
    Width = 44
    Height = 16
    Caption = 'Jurusan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl11: TLabel
    Left = 184
    Top = 256
    Width = 96
    Height = 16
    Caption = 'Nama Wali Kelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl12: TLabel
    Left = 640
    Top = 136
    Width = 65
    Height = 16
    Caption = 'Keterangan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl13: TLabel
    Left = 640
    Top = 56
    Width = 96
    Height = 16
    Caption = 'Telpon/HP ORTU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl14: TLabel
    Left = 640
    Top = 176
    Width = 31
    Height = 16
    BiDiMode = bdRightToLeft
    Caption = 'Bulan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object lbl15: TLabel
    Left = 640
    Top = 216
    Width = 94
    Height = 16
    Caption = 'Tahun Pelajaran'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 296
    Top = 16
    Width = 129
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 296
    Top = 56
    Width = 129
    Height = 21
    TabOrder = 1
    Text = 'edt2'
  end
  object edt3: TEdit
    Left = 296
    Top = 96
    Width = 129
    Height = 21
    TabOrder = 2
    Text = 'edt3'
  end
  object edt4: TEdit
    Left = 296
    Top = 136
    Width = 129
    Height = 21
    TabOrder = 3
    Text = 'edt4'
  end
  object edt5: TEdit
    Left = 296
    Top = 176
    Width = 129
    Height = 21
    TabOrder = 4
    Text = 'edt5'
  end
  object edt6: TEdit
    Left = 296
    Top = 216
    Width = 129
    Height = 21
    TabOrder = 5
    Text = 'edt6'
  end
  object edt7: TEdit
    Left = 296
    Top = 256
    Width = 129
    Height = 21
    TabOrder = 6
    Text = 'edt7'
  end
  object dbgrd1: TDBGrid
    Left = 152
    Top = 376
    Width = 809
    Height = 153
    DataSource = ds1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt8: TEdit
    Left = 800
    Top = 16
    Width = 129
    Height = 21
    TabOrder = 8
    Text = 'edt8'
  end
  object edt9: TEdit
    Left = 800
    Top = 56
    Width = 129
    Height = 21
    TabOrder = 9
    Text = 'edt9'
  end
  object edt10: TEdit
    Left = 800
    Top = 96
    Width = 129
    Height = 21
    TabOrder = 10
    Text = 'edt10'
  end
  object edt11: TEdit
    Left = 800
    Top = 136
    Width = 129
    Height = 21
    TabOrder = 11
    Text = 'edt11'
  end
  object edt12: TEdit
    Left = 800
    Top = 176
    Width = 129
    Height = 21
    TabOrder = 12
    Text = 'edt12'
  end
  object edt13: TEdit
    Left = 800
    Top = 216
    Width = 129
    Height = 21
    TabOrder = 13
    Text = 'edt13'
  end
  object btn1: TButton
    Left = 168
    Top = 336
    Width = 105
    Height = 33
    Caption = 'BARU'
    TabOrder = 14
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 304
    Top = 336
    Width = 105
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 15
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 440
    Top = 336
    Width = 105
    Height = 33
    Caption = 'EDIT'
    TabOrder = 16
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 584
    Top = 336
    Width = 105
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 17
    OnClick = btn4Click
  end
  object btn6: TButton
    Left = 848
    Top = 336
    Width = 105
    Height = 33
    Caption = 'LAPORAN'
    TabOrder = 18
  end
  object btn7: TButton
    Left = 720
    Top = 336
    Width = 105
    Height = 33
    Caption = 'BATAL'
    TabOrder = 19
    OnClick = btn7Click
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    Left = 96
    Top = 24
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45110.546069456020000000
    ReportOptions.LastChange = 45110.546069456020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 96
    Top = 80
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object con1: TADOConnection
    Left = 24
    Top = 128
  end
  object qry1: TADOQuery
    Parameters = <>
    Left = 24
    Top = 248
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 24
    Top = 192
  end
  object con2: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'tugas_akhir'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Delphi\Delphi7\borland\Zeos703\libmysql.dll'
    Left = 24
    Top = 16
  end
  object zqry1: TZQuery
    Connection = con2
    Active = True
    SQL.Strings = (
      'select * from pelanggaran')
    Params = <>
    Left = 24
    Top = 80
  end
end
