unit Unit18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxPreview, frxDBSet, frxExportDOCX, frxExportRTF,
  frxExportBaseDialog, frxExportPDF;

type
  TForm18 = class(TForm)
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPreview1: TfrxPreview;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxDOCXExport1: TfrxDOCXExport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;

implementation

uses Unit13;

{$R *.dfm}

end.
