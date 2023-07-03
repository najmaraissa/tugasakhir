object Form11: TForm11
  Left = 192
  Top = 125
  Width = 1136
  Height = 575
  Caption = 'Tabel Prestasi'
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
    Left = 432
    Top = 120
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
    Left = 432
    Top = 168
    Width = 77
    Height = 16
    Caption = 'Jenis Prestasi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 432
    Top = 216
    Width = 28
    Height = 16
    Caption = 'Point'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 152
    Top = 376
    Width = 809
    Height = 153
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn1: TButton
    Left = 168
    Top = 336
    Width = 105
    Height = 33
    Caption = 'BARU'
    TabOrder = 1
  end
  object btn2: TButton
    Left = 304
    Top = 336
    Width = 105
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 2
  end
  object btn3: TButton
    Left = 440
    Top = 336
    Width = 105
    Height = 33
    Caption = 'EDIT'
    TabOrder = 3
  end
  object btn4: TButton
    Left = 584
    Top = 336
    Width = 105
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = btn4Click
  end
  object btn6: TButton
    Left = 848
    Top = 336
    Width = 105
    Height = 33
    Caption = 'LAPORAN'
    TabOrder = 5
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 720
    Top = 336
    Width = 105
    Height = 33
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = btn7Click
  end
  object edt1: TEdit
    Left = 560
    Top = 120
    Width = 129
    Height = 21
    TabOrder = 7
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 560
    Top = 168
    Width = 129
    Height = 21
    TabOrder = 8
    Text = 'edt2'
  end
  object edt3: TEdit
    Left = 560
    Top = 216
    Width = 129
    Height = 21
    TabOrder = 9
    Text = 'edt3'
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
      'select * from tabel_prestasi')
    Params = <>
    Left = 24
    Top = 80
  end
end
