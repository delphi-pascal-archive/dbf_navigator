object Form1: TForm1
  Left = 228
  Top = 131
  AutoScroll = False
  Caption = 'DBF Navigator'
  ClientHeight = 398
  ClientWidth = 660
  Color = clBtnFace
  Constraints.MinHeight = 350
  Constraints.MinWidth = 544
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00CCC0
    000CCCC0000000000CCCC7777CCCCCCC0000CCCC00000000CCCC7777CCCCCCCC
    C0000CCCCCCCCCCCCCC7777CCCCC0CCCCC0000CCCCCCCCCCCC7777CCCCC700CC
    C00CCCC0000000000CCCC77CCC77000C0000CCCC00000000CCCC7777C7770000
    00000CCCC000000CCCC777777777C000C00000CCCC0000CCCC77777C777CCC00
    CC00000CCCCCCCCCC77777CC77CCCCC0CCC000CCCCC00CCCCC777CCC7CCCCCCC
    CCCC0CCCCCCCCCCCCCC7CCCCCCCCCCCC0CCCCCCCCCCCCCCCCCCCCCC7CCC70CCC
    00CCCCCCCC0CC0CCCCCCCC77CC7700CC000CCCCCC000000CCCCCC777CC7700CC
    0000CCCC00000000CCCC7777CC7700CC0000C0CCC000000CCC7C7777CC7700CC
    0000C0CCC000000CCC7C7777CC7700CC0000CCCC00000000CCCC7777CC7700CC
    000CCCCCC000000CCCCCC777CC7700CC00CCCCCCCC0CC0CCCCCCCC77CC770CCC
    0CCCCCCCCCCCCCCCCCCCCCC7CCC7CCCCCCCC0CCCCCCCCCCCCCC7CCCCCCCCCCC0
    CCC000CCCCC00CCCCC777CCC7CCCCC00CC00000CCCCCCCCCC77777CC77CCC000
    C00000CCCC0000CCCC77777C777C000000000CCCC000000CCCC777777777000C
    0000CCCC00000000CCCC7777C77700CCC00CCCC0000000000CCCC77CCC770CCC
    CC0000CCCCCCCCCCCC7777CCCCC7CCCCC0000CCCCCCCCCCCCCC7777CCCCCCCCC
    0000CCCC00000000CCCC7777CCCCCCC0000CCCC0000000000CCCC7777CCC0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 217
    Top = 0
    Height = 379
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 217
    Height = 379
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 0
      Top = 162
      Width = 217
      Height = 4
      Cursor = crVSplit
      Align = alTop
    end
    object Panel3: TPanel
      Left = 0
      Top = 25
      Width = 217
      Height = 137
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object DirectoryListBox1: TDirectoryListBox
        Left = 0
        Top = 0
        Width = 217
        Height = 137
        Align = alClient
        FileList = FileListBox1
        ItemHeight = 16
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 166
      Width = 217
      Height = 213
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object FileListBox1: TFileListBox
        Left = 0
        Top = 0
        Width = 217
        Height = 213
        Align = alClient
        ItemHeight = 16
        Mask = '*.DBF'
        ShowGlyphs = True
        TabOrder = 0
        OnChange = FileListBox1Change
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 0
      Width = 217
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        217
        25)
      object DriveComboBox1: TDriveComboBox
        Left = 0
        Top = 0
        Width = 217
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        DirList = DirectoryListBox1
        TabOrder = 0
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 379
    Width = 660
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object Panel2: TPanel
    Left = 220
    Top = 0
    Width = 440
    Height = 379
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 440
      Height = 329
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 440
        Height = 329
        Align = alClient
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object Panel6: TPanel
      Left = 0
      Top = 329
      Width = 440
      Height = 50
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        440
        50)
      object DBNavigator1: TDBNavigator
        Left = 89
        Top = 10
        Width = 250
        Height = 31
        DataSource = DataSource1
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = HalcyonDataSet1
    Left = 208
    Top = 56
  end
  object HalcyonDataSet1: THalcyonDataSet
    About = 'Halcyon Demo Version 6.96 (30 January 2005)'
    AutoFlush = False
    Exclusive = False
    LargeIntegerAs = asInteger
    LockProtocol = Default
    TranslateASCII = True
    UseDeleted = False
    UserID = 0
    Left = 240
    Top = 56
  end
end
