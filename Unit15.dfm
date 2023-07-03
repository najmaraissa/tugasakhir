object Form15: TForm15
  Left = 192
  Top = 125
  Width = 1135
  Height = 576
  Caption = 'ORTU'
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
    Left = 360
    Top = 32
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
  object lbl4: TLabel
    Left = 360
    Top = 80
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
  object lbl5: TLabel
    Left = 360
    Top = 128
    Width = 19
    Height = 16
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 360
    Top = 176
    Width = 57
    Height = 16
    Caption = 'Pekerjaan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl12: TLabel
    Left = 360
    Top = 272
    Width = 40
    Height = 16
    Caption = 'Alamat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl13: TLabel
    Left = 360
    Top = 224
    Width = 39
    Height = 16
    Caption = 'Telpon'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 464
    Top = 32
    Width = 129
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 464
    Top = 80
    Width = 129
    Height = 21
    TabOrder = 1
    Text = 'edt2'
  end
  object edt3: TEdit
    Left = 464
    Top = 128
    Width = 129
    Height = 21
    TabOrder = 2
    Text = 'edt3'
  end
  object edt4: TEdit
    Left = 464
    Top = 176
    Width = 129
    Height = 21
    TabOrder = 3
    Text = 'edt4'
  end
  object edt5: TEdit
    Left = 464
    Top = 224
    Width = 129
    Height = 21
    TabOrder = 4
    Text = 'edt5'
  end
  object edt6: TEdit
    Left = 464
    Top = 272
    Width = 129
    Height = 21
    TabOrder = 5
    Text = 'edt6'
  end
  object dbgrd1: TDBGrid
    Left = 152
    Top = 376
    Width = 809
    Height = 153
    DataSource = ds1
    TabOrder = 6
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
    TabOrder = 7
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 304
    Top = 336
    Width = 105
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 8
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 440
    Top = 336
    Width = 105
    Height = 33
    Caption = 'EDIT'
    TabOrder = 9
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 584
    Top = 336
    Width = 105
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 10
    OnClick = btn4Click
  end
  object btn6: TButton
    Left = 848
    Top = 336
    Width = 105
    Height = 33
    Caption = 'LAPORAN'
    TabOrder = 11
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 720
    Top = 336
    Width = 105
    Height = 33
    Caption = 'BATAL'
    TabOrder = 12
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
      'select * from ortu')
    Params = <>
    Left = 24
    Top = 80
  end
end
