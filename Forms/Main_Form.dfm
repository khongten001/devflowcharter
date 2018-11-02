object MainForm: TMainForm
  Left = 303
  Top = 207
  HorzScrollBar.Tracking = True
  HorzScrollBar.Visible = False
  VertScrollBar.Tracking = True
  VertScrollBar.Visible = False
  Align = alCustom
  Caption = 'devFlowcharter'
  ClientHeight = 800
  ClientWidth = 1078
  Color = clWhite
  DragKind = dkDock
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = mmMainMenu
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPages: TPageControl
    Left = 0
    Top = 0
    Width = 1078
    Height = 781
    Align = alClient
    TabOrder = 0
    OnChange = pgcPagesChange
    OnContextPopup = pgcPagesContextPopup
    OnDragDrop = pgcPagesDragDrop
    OnDragOver = pgcPagesDragOver
    OnMouseDown = pgcPagesMouseDown
  end
  object stbStatusBar: TStatusBar
    Left = 0
    Top = 781
    Width = 1078
    Height = 19
    AutoHint = True
    Panels = <>
    SimplePanel = True
  end
  object pmPages: TPopupMenu
    AutoPopup = False
    OnPopup = pmPagesPopup
    Left = 24
    Top = 64
    object miInsert: TMenuItem
      Tag = 2
      Caption = 'Insert'
      object miInstrs: TMenuItem
        Tag = 2
        Caption = 'Instructions'
        object miInstr: TMenuItem
          Tag = 2
          Caption = 'Instruction'
          OnClick = miInstrClick
        end
        object miMultiInstr: TMenuItem
          Tag = 2
          Caption = 'Multiple Instructions'
          OnClick = miInstrClick
        end
        object N7: TMenuItem
          Caption = '-'
        end
        object miInput: TMenuItem
          Tag = 2
          Caption = 'Input'
          OnClick = miInstrClick
        end
        object miOutput: TMenuItem
          Tag = 2
          Caption = 'Output'
          OnClick = miInstrClick
        end
        object N8: TMenuItem
          Caption = '-'
        end
        object miIf: TMenuItem
          Tag = 2
          Caption = 'If'
          OnClick = miInstrClick
        end
        object miIfElse: TMenuItem
          Tag = 2
          Caption = 'If..Else'
          OnClick = miInstrClick
        end
        object miCase: TMenuItem
          Tag = 2
          Caption = 'Case'
          OnClick = miInstrClick
        end
        object N9: TMenuItem
          Caption = '-'
        end
        object miRoutineCall: TMenuItem
          Tag = 2
          Caption = 'Function Call'
          OnClick = miInstrClick
        end
        object miReturn: TMenuItem
          Tag = 2
          Caption = 'Return'
          OnClick = miInstrClick
        end
      end
      object miLoop: TMenuItem
        Tag = 2
        Caption = 'Loop'
        object miFor: TMenuItem
          Tag = 2
          Caption = 'For'
          OnClick = miInstrClick
        end
        object miWhile: TMenuItem
          Tag = 2
          Caption = 'While'
          OnClick = miInstrClick
        end
        object miRepeat: TMenuItem
          Tag = 2
          Caption = 'Repeat'
          OnClick = miInstrClick
        end
      end
      object miText: TMenuItem
        Tag = 2
        Caption = 'Text'
        OnClick = miInstrClick
      end
      object miFolder: TMenuItem
        Tag = 2
        Caption = 'Folder'
        OnClick = miInstrClick
      end
      object miNewFlowchart: TMenuItem
        Tag = 2
        Caption = 'Flowchart'
        OnClick = miNewFlowchartClick
      end
      object miNewFunction: TMenuItem
        Tag = 2
        Caption = 'Function Here'
        OnClick = miNewFunctionClick
      end
      object miComment: TMenuItem
        Tag = 2
        Caption = 'Comment'
        OnClick = miCommentClick
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object miPaste: TMenuItem
        Tag = 2
        Caption = 'Paste'
        OnClick = miInstrClick
      end
      object miImport: TMenuItem
        Tag = 2
        Caption = 'Import...'
        OnClick = miImportClick
      end
    end
    object miFont: TMenuItem
      Tag = 2
      Caption = 'Font'
      object miFontStyle: TMenuItem
        Tag = 2
        Caption = 'Style'
        object miStyleNormal: TMenuItem
          Tag = 2
          Caption = 'Normal'
          OnClick = miStyleBoldClick
        end
        object miStyleBold: TMenuItem
          Tag = 2
          Caption = 'Bold'
          OnClick = miStyleBoldClick
        end
        object miStyleItalic: TMenuItem
          Tag = 2
          Caption = 'Italic'
          OnClick = miStyleBoldClick
        end
        object miStyleUnderline: TMenuItem
          Tag = 2
          Caption = 'Underlined'
          OnClick = miStyleBoldClick
        end
        object miStyleStrikeOut: TMenuItem
          Tag = 2
          Caption = 'Strike Out'
          OnClick = miStyleBoldClick
        end
      end
      object miFontSize: TMenuItem
        Tag = 2
        Caption = 'Size'
      end
    end
    object miFrame: TMenuItem
      Tag = 2
      Caption = 'Frame'
      OnClick = miFrameClick
    end
    object miFoldUnfold: TMenuItem
      Tag = 2
      Caption = 'Expand'
      OnClick = miFoldUnfoldClick
    end
    object miUnfoldAll: TMenuItem
      Tag = 2
      Caption = 'Expand All'
      OnClick = miUnfoldAllClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miAddBranch: TMenuItem
      Tag = 2
      Caption = 'Add Branch'
      OnClick = miAddBranchClick
    end
    object miInsertBranch: TMenuItem
      Tag = 2
      Caption = 'Insert Branch'
      OnClick = miAddBranchClick
    end
    object miRemoveBranch: TMenuItem
      Tag = 2
      Caption = 'Remove Branch'
      OnClick = miRemoveBranchClick
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object miCut: TMenuItem
      Tag = 2
      Caption = 'Cut'
      OnClick = miCopyClick
    end
    object miCopy: TMenuItem
      Tag = 2
      Caption = 'Copy'
      OnClick = miCopyClick
    end
    object miPasteText: TMenuItem
      Tag = 2
      Caption = 'Paste'
      OnClick = miPasteTextClick
    end
    object miRemove: TMenuItem
      Tag = 2
      Caption = 'Remove'
      OnClick = miRemoveClick
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object miExport: TMenuItem
      Tag = 2
      Caption = 'Export...'
      OnClick = miExportClick
    end
    object miPrint2: TMenuItem
      Tag = 2
      Caption = 'Print...'
      OnClick = miPrint2Click
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object miForAsc: TMenuItem
      Tag = 2
      Caption = #187
      OnClick = miForAscClick
    end
    object miForDesc: TMenuItem
      Tag = 2
      Caption = #171
      OnClick = miForAscClick
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object miMemo: TMenuItem
      Tag = 2
      Caption = 'Memo'
      object miMemoVScroll: TMenuItem
        Tag = 2
        AutoCheck = True
        Caption = 'Vertical ScrollBar'
        OnClick = miMemoVScrollClick
      end
      object miMemoHScroll: TMenuItem
        Tag = 2
        AutoCheck = True
        Caption = 'Horizontal ScrollBar'
        OnClick = miMemoVScrollClick
      end
      object miMemoWordWrap: TMenuItem
        Tag = 2
        AutoCheck = True
        Caption = 'Word Wrap'
        OnClick = miMemoVScrollClick
      end
      object miMemoAlignRight: TMenuItem
        Tag = 2
        AutoCheck = True
        Caption = 'Align Right'
        OnClick = miMemoVScrollClick
      end
      object miMemoEdit: TMenuItem
        Tag = 2
        Caption = 'Edit Text'
        OnClick = miMemoEditClick
      end
    end
    object N18: TMenuItem
      Caption = '-'
    end
    object miIsHeader: TMenuItem
      Tag = 2
      Caption = 'Program Header'
      OnClick = miIsHeaderClick
    end
  end
  object ExportDialog: TSaveDialog
    Tag = 3
    DefaultExt = 'xml'
    Filter = 'Plik XML|*.xml'
    Left = 80
  end
  object OpenDialog: TOpenDialog
    Tag = 3
    DefaultExt = 'xml'
    Filter = 'Pliki XML|*.xml'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 224
  end
  object mmMainMenu: TMainMenu
    AutoHotkeys = maManual
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    object miFile: TMenuItem
      Tag = 2
      Caption = '&File'
      object miNew: TMenuItem
        Tag = 2
        Caption = 'New'
        ShortCut = 16462
        OnClick = miNewClick
      end
      object miOpen: TMenuItem
        Tag = 2
        Caption = 'Open...'
        ShortCut = 16463
        OnClick = miOpenClick
      end
      object miReopen: TMenuItem
        Tag = 2
        Caption = 'Reopen'
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object miSave: TMenuItem
        Tag = 2
        Caption = 'Save'
        ShortCut = 16467
        OnClick = miSaveClick
      end
      object miSaveAs: TMenuItem
        Tag = 2
        Caption = 'Save As...'
        OnClick = miSaveAsClick
      end
      object miClose: TMenuItem
        Tag = 2
        Caption = 'Close'
        ShortCut = 16499
        OnClick = miCloseClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object miPrint: TMenuItem
        Tag = 2
        Caption = 'Print...'
        ShortCut = 16464
        OnClick = miPrintClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object miExit: TMenuItem
        Tag = 2
        Caption = 'Exit'
        OnClick = miExitClick
      end
    end
    object miProject: TMenuItem
      Tag = 2
      Caption = 'P&roject'
      OnClick = miProjectClick
      object miDataTypes: TMenuItem
        Tag = 2
        Caption = 'Data Types'
        ShortCut = 115
        OnClick = miSubRoutinesClick
      end
      object miSubRoutines: TMenuItem
        Tag = 2
        Caption = 'Functions'
        ShortCut = 116
        OnClick = miSubRoutinesClick
      end
      object miDeclarations: TMenuItem
        Tag = 2
        Caption = 'Global Declarations'
        ShortCut = 117
        OnClick = miSubRoutinesClick
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object miUndoRemove: TMenuItem
        Tag = 2
        Caption = 'Undo Remove'
        Enabled = False
        ShortCut = 16469
        OnClick = miUndoRemoveClick
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object miAddMain: TMenuItem
        Tag = 2
        Caption = 'Add Main Program'
        ShortCut = 16461
        OnClick = miAddMainClick
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object miExplorer: TMenuItem
        Tag = 2
        Caption = 'Explorer'
        ShortCut = 16453
        OnClick = miSubRoutinesClick
      end
      object miNavigator: TMenuItem
        Tag = 2
        Caption = 'Navigator'
        ShortCut = 16450
        OnClick = miSubRoutinesClick
      end
      object miGenerate: TMenuItem
        Tag = 2
        Caption = 'Generate Code'
        ShortCut = 16455
        OnClick = miGenerateClick
      end
    end
    object miOptions: TMenuItem
      Tag = 2
      Caption = '&Options'
      object miToolbox: TMenuItem
        Tag = 2
        Caption = 'Toolbox'
        ShortCut = 118
        OnClick = miSubRoutinesClick
      end
      object miSettings: TMenuItem
        Tag = 2
        Caption = 'Settings'
        ShortCut = 119
        OnClick = miSettingsClick
      end
    end
    object miAbout: TMenuItem
      Tag = 2
      Caption = 'About...'
      OnClick = miAboutClick
    end
  end
  object PrintDialog: TPrintDialog
    Tag = 3
    Left = 152
  end
  object ImageList1: TImageList
    Left = 240
    Top = 72
    Bitmap = {
      494C010105000900CC0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C0C0C0008080
      0000008000008080000000800000808000000080000080800000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C0C0C0000080
      000080800000008000008080000000FFFF008080000000800000FF0000008080
      8000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C0C0C0008080
      000000800000808000000080000000FFFF000080000080800000FF0000008080
      8000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C0C0C0000080
      000080800000008000008080000000FFFF008080000000800000FF0000008080
      8000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C0C0C0008080
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0080800000FF0000008080
      8000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C0C0C0000080
      000000FFFF00008000008080000000FFFF008080000000800000FF0000008080
      8000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C0C0C0008080
      000000FFFF00808000000080000000FFFF000080000080800000FF0000008080
      8000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C0C0C0000080
      000000FFFF00008000008080000000FFFF008080000000800000FF0000008080
      8000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C0C0C0008080
      000000FFFF00808000000080000000FFFF000080000080800000FF0000008080
      8000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C0C0C0000080
      0000808000000080000080800000008000008080000000800000FF0000008080
      8000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000008080
      8000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      8000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000000000000000000000000000000000000000FF000000C0C0C0008080
      0000008000008080000000800000808000000080000080800000FF000000FF00
      00000000000000000000000000000000000000000000FF000000C0C0C0008080
      0000008000008080000000800000808000000080000080800000FF000000FF00
      00000000000000000000000000000000000000000000FF000000C0C0C0008080
      0000008000008080000000800000808000000080000080800000FF000000FF00
      00000000000000000000000000000000000000000000FF000000C0C0C0008080
      0000008000008080000000800000808000000080000080800000FF000000FF00
      00000000000000000000000000000000000000000000FF000000C0C0C0000080
      00008080000000FFFF0000FFFF0000FFFF008080000000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      00008080000000FFFF0000FFFF0000FFFF008080000000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0008080
      000000FFFF0080800000008000008080000000FFFF0080800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0008080
      0000008000008080000000FFFF00808000000080000080800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0008080
      000000FFFF008080000000800000808000000080000080800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0008080
      000000FFFF0080800000008000008080000000FFFF0080800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      000000FFFF0000800000808000000080000000FFFF0000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      0000808000000080000000FFFF00008000008080000000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      00008080000000FFFF0080800000008000008080000000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      00008080000000800000808000000080000000FFFF0000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0008080
      000000FFFF0080800000008000008080000000FFFF0080800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0008080
      0000008000008080000000FFFF00808000000080000080800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0008080
      0000008000008080000000FFFF00808000000080000080800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0008080
      00000080000080800000008000008080000000FFFF0080800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      000000FFFF0000800000808000000080000000FFFF0000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      0000808000000080000000FFFF00008000008080000000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      000080800000008000008080000000FFFF008080000000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      0000808000000080000000FFFF0000FFFF008080000000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0008080
      000000FFFF0080800000008000008080000000FFFF0080800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0008080
      000000FFFF008080000000FFFF00808000000080000080800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0008080
      00000080000080800000008000008080000000FFFF0080800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0008080
      00000080000080800000008000008080000000FFFF0080800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      000000FFFF0000800000808000000080000000FFFF0000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      00008080000000FFFF0000FFFF00008000008080000000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      000000FFFF0000800000808000000080000000FFFF0000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      000000FFFF0000800000808000000080000000FFFF0000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0008080
      00000080000000FFFF0000FFFF0000FFFF000080000080800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0008080
      0000008000008080000000FFFF00808000000080000080800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0008080
      00000080000000FFFF0000FFFF0000FFFF000080000080800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0008080
      00000080000000FFFF0000FFFF0000FFFF000080000080800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      0000808000000080000080800000008000008080000000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      0000808000000080000080800000008000008080000000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      0000808000000080000080800000008000008080000000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000C0C0C0000080
      0000808000000080000080800000008000008080000000800000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000008080
      8000FF00000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000008080
      8000FF0000000000000000000000000000000000000000000000FF000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      8000FF0000000000000000000000000000000000000000000000FF000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      8000FF0000000000000000000000000000000000000000000000FF000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      8000FF0000000000000000000000000000000000000000000000FF000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      8000FF000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000801F000000000000
      800F000000000000800700000000000080070000000000008007000000000000
      8007000000000000800700000000000080070000000000008007000000000000
      800700000000000080070000000000008007000000000000C007000000000000
      E00F000000000000FFFF000000000000FFFFFFFFFFFFFFFF801F801F801F801F
      800F800F800F800F800780078007800780078007800780078007800780078007
      8007800780078007800780078007800780078007800780078007800780078007
      800780078007800780078007800780078007800780078007C007C007C007C007
      E00FE00FE00FE00FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object pmTabs: TPopupMenu
    AutoPopup = False
    OnPopup = pmTabsPopup
    Left = 160
    Top = 88
    object miAddPage: TMenuItem
      Tag = 2
      Caption = 'Add Page'
      OnClick = miAddPageClick
    end
    object miRemovePage: TMenuItem
      Tag = 2
      Caption = 'Remove Page'
      OnClick = miRemovePageClick
    end
    object miRenamePage: TMenuItem
      Tag = 2
      Caption = 'Rename Page'
      OnClick = miRenamePageClick
    end
  end
  object pmEdits: TPopupMenu
    OnPopup = pmEditsPopup
    Left = 80
    Top = 56
    object miUndo: TMenuItem
      Tag = 2
      Caption = 'Undo'
      OnClick = pmEditsMenuClick
    end
    object N16: TMenuItem
      Caption = '-'
    end
    object miCut1: TMenuItem
      Tag = 2
      Caption = 'Cut'
      OnClick = pmEditsMenuClick
    end
    object miCopy1: TMenuItem
      Tag = 2
      Caption = 'Copy'
      OnClick = pmEditsMenuClick
    end
    object miPaste1: TMenuItem
      Tag = 2
      Caption = 'Paste'
      OnClick = pmEditsMenuClick
    end
    object miRemove1: TMenuItem
      Tag = 2
      Caption = 'Remove'
      OnClick = pmEditsMenuClick
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object miInsertFunc: TMenuItem
      Tag = 2
      Caption = 'Insert Function'
    end
  end
end
