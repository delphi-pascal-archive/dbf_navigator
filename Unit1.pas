unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, ExtCtrls, ComCtrls, Outline, StdCtrls,
  FileCtrl, DB, Halcn6db, ShellCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Panel4: TPanel;
    Splitter2: TSplitter;
    Panel5: TPanel;
    Panel6: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    DataSource1: TDataSource;
    HalcyonDataSet1: THalcyonDataSet;
    Panel7: TPanel;
    DriveComboBox1: TDriveComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     ActiveFileName: string;
     ActiveFilePath: string;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
//===
end;

procedure TForm1.FileListBox1Change(Sender: TObject);
begin
 if FileListBox1.FileName = '' then Exit else
    HalcyonDataSet1.Close;

    ActiveFileName := ExtractFileName(FileListBox1.FileName);
    ActiveFilePath := ExtractFilePath(FileListBox1.FileName);

    HalcyonDataSet1.DatabaseName := ActiveFilePath;
    HalcyonDataSet1.TableName := ActiveFileName;

    HalcyonDataSet1.Open;

    StatusBar1.Panels[0].Text := IntToStr(HalcyonDataSet1.RecordCount) + ' Records';
    StatusBar1.Panels[1].Text := ActiveFilePath + ActiveFileName;

end;

end.
