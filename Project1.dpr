program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
//  Unit2 in '..\..\borland\Zeos703\packages\delphi7\build\Unit2.pas' {Form2},
//  Unit3 in '..\..\borland\Zeos703\packages\delphi7\build\Unit3.pas' {Form3},
//  Unit4 in '..\..\borland\Zeos703\packages\delphi7\build\Unit4.pas' {Form4},
//  Unit5 in '..\..\borland\Zeos703\packages\delphi7\build\Unit5.pas' {Form5},
//  Unit6 in '..\..\borland\Zeos703\packages\delphi7\build\Unit6.pas' {Form6},
//  Unit7 in '..\..\borland\Zeos703\packages\delphi7\build\Unit7.pas' {Form7},
//  Unit8 in '..\..\borland\Zeos703\packages\delphi7\build\Unit8.pas' {Form8},
  Unit9 in 'Unit9.pas' {Form9},
  Unit10 in 'Unit10.pas' {Form10},
  Unit11 in 'Unit11.pas' {Form11},
  Unit12 in 'Unit12.pas' {Form12},
  Unit13 in 'Unit13.pas' {Form13},
  Unit14 in 'Unit14.pas' {Form14},
  Unit15 in 'Unit15.pas' {Form15};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
//  Application.CreateForm(TForm2, Form2);
//  Application.CreateForm(TForm3, Form3);
//  Application.CreateForm(TForm4, Form4);
//  Application.CreateForm(TForm5, Form5);
//  Application.CreateForm(TForm6, Form6);
//  Application.CreateForm(TForm7, Form7);
//  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm14, Form14);
  Application.CreateForm(TForm15, Form15);
  Application.Run;
end.