object SettingsForm: TSettingsForm
  Left = 411
  Top = 127
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Settings'
  ClientHeight = 702
  ClientWidth = 557
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnSaveSettings: TButton
    Tag = 1
    Left = 398
    Top = 674
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    TabOrder = 5
    OnClick = CloseFormClick
  end
  object gbMiscSettings: TGroupBox
    Tag = 4
    Left = 5
    Top = 620
    Width = 550
    Height = 49
    Caption = 'Others'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object chkConfirmRemove: TCheckBox
      Tag = 8
      Left = 320
      Top = 21
      Width = 209
      Height = 17
      Caption = 'Confirm irreversible removals'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object chkValidateConsts: TCheckBox
      Tag = 8
      Left = 8
      Top = 21
      Width = 273
      Height = 17
      Caption = 'Enable full validation for declarations'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object gbProgLang: TGroupBox
    Tag = 4
    Left = 5
    Top = 64
    Width = 550
    Height = 105
    Caption = 'Programming Language'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    TabStop = True
    object lblCompiler: TLabel
      Tag = 6
      Left = 7
      Top = 52
      Width = 93
      Height = 13
      Alignment = taRightJustify
      Caption = 'Compiler Command:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblCompilerNoMain: TLabel
      Tag = 6
      Left = 7
      Top = 76
      Width = 188
      Height = 13
      Alignment = taRightJustify
      Caption = 'Compiler Command for no-main projects:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblFileEncoding: TLabel
      Tag = 6
      Left = 378
      Top = 22
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'Files encoding:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtCompiler: TEdit
      Tag = 5
      Left = 104
      Top = 46
      Width = 345
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object btnBrowseCompilers: TButton
      Tag = 1
      Left = 456
      Top = 46
      Width = 86
      Height = 21
      Caption = 'Browse...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnBrowseCCompClick
    end
    object cbLanguage: TComboBox
      Left = 8
      Top = 22
      Width = 81
      Height = 21
      AutoDropDown = True
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = cbLanguageChange
    end
    object edtCompilerNoMain: TEdit
      Tag = 5
      Left = 200
      Top = 70
      Width = 249
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object cbFileEncoding: TComboBox
      Left = 457
      Top = 19
      Width = 84
      Height = 21
      AutoDropDown = True
      Style = csDropDownList
      DropDownCount = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = 'ANSI'
      Items.Strings = (
        'ANSI'
        'ASCII'
        'UTF-7'
        'UTF-8'
        'Unicode'
        'BE Unicode')
    end
  end
  object btnDiscardSettings: TButton
    Tag = 1
    Left = 479
    Top = 674
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 6
    OnClick = CloseFormClick
  end
  object gbParseSettings: TGroupBox
    Tag = 4
    Left = 5
    Top = 171
    Width = 550
    Height = 78
    Caption = 'Syntax Check'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    TabStop = True
    object chkParseInput: TCheckBox
      Tag = 8
      Left = 384
      Top = 17
      Width = 145
      Height = 17
      Caption = 'Input instruction'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 6
    end
    object chkParseOutput: TCheckBox
      Tag = 8
      Left = 384
      Top = 36
      Width = 145
      Height = 17
      Caption = 'Output instruction'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 7
    end
    object chkParseAssign: TCheckBox
      Tag = 8
      Left = 8
      Top = 17
      Width = 201
      Height = 17
      Caption = 'Instruction (assign)'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
    end
    object chkParseMultiAssign: TCheckBox
      Tag = 8
      Left = 8
      Top = 36
      Width = 201
      Height = 17
      Caption = 'Multiple Instructions (assign)'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 1
    end
    object chkParseCondition: TCheckBox
      Tag = 8
      Left = 216
      Top = 55
      Width = 161
      Height = 17
      Caption = 'Conditional statement'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 5
    end
    object chkParseRoutine: TCheckBox
      Tag = 8
      Left = 8
      Top = 55
      Width = 201
      Height = 17
      Caption = 'Function call'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 2
    end
    object chkParseFor: TCheckBox
      Tag = 8
      Left = 216
      Top = 17
      Width = 145
      Height = 17
      Caption = 'For loop'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
    end
    object chkParseCase: TCheckBox
      Tag = 8
      Left = 216
      Top = 36
      Width = 145
      Height = 17
      Caption = 'Case statement'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 4
    end
    object chkParseReturn: TCheckBox
      Tag = 8
      Left = 384
      Top = 55
      Width = 145
      Height = 17
      Caption = 'Return instruction'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 8
    end
  end
  object gbEditorSettings: TGroupBox
    Tag = 4
    Left = 5
    Top = 252
    Width = 550
    Height = 143
    Caption = 'Code Editor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    TabStop = True
    DesignSize = (
      550
      143)
    object lblIndent: TLabel
      Tag = 6
      Left = 431
      Top = 17
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop]
      Caption = 'Indentation:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblFontSize: TLabel
      Tag = 6
      Left = 440
      Top = 46
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop]
      Caption = 'Font Size:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object gbEditorColors: TGroupBox
      Tag = 4
      Left = 6
      Top = 63
      Width = 535
      Height = 73
      Caption = 'Colors'
      TabOrder = 1
      object lblEditorActiveLine: TLabel
        Tag = 6
        Left = 96
        Top = 22
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Active line:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblEditorGutter: TLabel
        Tag = 6
        Left = 8
        Top = 46
        Width = 49
        Height = 13
        AutoSize = False
        Caption = 'Gutter:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblEditorFont: TLabel
        Tag = 6
        Left = 8
        Top = 22
        Width = 49
        Height = 13
        AutoSize = False
        Caption = 'Font:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblEditorBkg: TLabel
        Tag = 6
        Left = 96
        Top = 46
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Background:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblEditorDigit: TLabel
        Tag = 6
        Left = 320
        Top = 22
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Numbers:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblEditorString: TLabel
        Tag = 6
        Left = 432
        Top = 22
        Width = 57
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'String:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblEditorSelect: TLabel
        Tag = 6
        Left = 208
        Top = 22
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Selection:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblEditorComment: TLabel
        Tag = 6
        Left = 208
        Top = 46
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Comments:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblEditorBracket: TLabel
        Tag = 6
        Left = 320
        Top = 46
        Width = 73
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Brackets:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object pnlEditorActiveLine: TPanel
        Left = 176
        Top = 16
        Width = 25
        Height = 20
        BevelOuter = bvNone
        BorderWidth = 1
        BorderStyle = bsSingle
        Color = clWindow
        Ctl3D = False
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 0
        OnClick = pnlFillClick
      end
      object pnlEditorGutter: TPanel
        Left = 65
        Top = 40
        Width = 25
        Height = 20
        BevelOuter = bvNone
        BorderWidth = 1
        BorderStyle = bsSingle
        Color = clWindow
        Ctl3D = False
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 1
        OnClick = pnlFillClick
      end
      object pnlEditorFont: TPanel
        Left = 65
        Top = 16
        Width = 25
        Height = 20
        BevelOuter = bvNone
        BorderWidth = 1
        BorderStyle = bsSingle
        Color = clWindow
        Ctl3D = False
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 2
        OnClick = pnlFillClick
      end
      object pnlEditorBkg: TPanel
        Left = 176
        Top = 40
        Width = 25
        Height = 20
        BevelOuter = bvNone
        BorderWidth = 1
        BorderStyle = bsSingle
        Color = clWindow
        Ctl3D = False
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 3
        OnClick = pnlFillClick
      end
      object pnlEditorNumber: TPanel
        Left = 400
        Top = 16
        Width = 25
        Height = 20
        BevelOuter = bvNone
        BorderWidth = 1
        BorderStyle = bsSingle
        Color = clWindow
        Ctl3D = False
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 4
        OnClick = pnlFillClick
      end
      object pnlEditorString: TPanel
        Left = 496
        Top = 16
        Width = 25
        Height = 20
        BevelOuter = bvNone
        BorderWidth = 1
        BorderStyle = bsSingle
        Color = clWindow
        Ctl3D = False
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 5
        OnClick = pnlFillClick
      end
      object pnlEditorSelect: TPanel
        Left = 288
        Top = 16
        Width = 25
        Height = 20
        BevelOuter = bvNone
        BorderWidth = 1
        BorderStyle = bsSingle
        Color = clWindow
        Ctl3D = False
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 6
        OnClick = pnlFillClick
      end
      object pnlEditorComment: TPanel
        Left = 288
        Top = 40
        Width = 25
        Height = 20
        BevelOuter = bvNone
        BorderWidth = 1
        BorderStyle = bsSingle
        Color = clWindow
        Ctl3D = False
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 7
        OnClick = pnlFillClick
      end
      object pnlEditorBracket: TPanel
        Left = 400
        Top = 40
        Width = 25
        Height = 20
        BevelOuter = bvNone
        BorderWidth = 1
        BorderStyle = bsSingle
        Color = clWindow
        Ctl3D = False
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 8
        OnClick = pnlFillClick
      end
    end
    object edtEditorIndent: TEdit
      Tag = 5
      Left = 491
      Top = 11
      Width = 50
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 0
    end
    object chkAutoSelectCode: TCheckBox
      Tag = 8
      Left = 8
      Top = 20
      Width = 337
      Height = 17
      Caption = 'Auto-select code for highlighted flowchart elements'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object chkAutoUpdateCode: TCheckBox
      Tag = 8
      Left = 8
      Top = 39
      Width = 289
      Height = 17
      Caption = 'Auto-update for flowchart changes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object cbFontSize: TComboBox
      Left = 492
      Top = 40
      Width = 50
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = '10'
      Items.Strings = (
        '10'
        '11'
        '12'
        '14'
        '16'
        '18'
        '20'
        '22')
    end
  end
  object btnDefaultSettings: TButton
    Tag = 1
    Left = 8
    Top = 674
    Width = 124
    Height = 25
    Caption = 'Default Settings'
    TabOrder = 7
    TabStop = False
    OnClick = btnDefaultSettingsClick
  end
  object gbTranslation: TGroupBox
    Tag = 4
    Left = 5
    Top = 4
    Width = 550
    Height = 57
    Caption = 'Application Language'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    TabStop = True
    object lblFile: TLabel
      Tag = 6
      Left = 8
      Top = 30
      Width = 74
      Height = 13
      Caption = 'Translation File:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtTranslateFile: TEdit
      Tag = 5
      Left = 88
      Top = 24
      Width = 361
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object btnBrowseScripts: TButton
      Tag = 1
      Left = 456
      Top = 24
      Width = 86
      Height = 21
      Caption = 'Browse...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnBrowseScriptsClick
    end
  end
  object gbFlowchartSettings: TGroupBox
    Tag = 4
    Left = 5
    Top = 396
    Width = 548
    Height = 125
    Caption = 'Flowchart Settings'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    object imgShapes: TImage
      Left = 266
      Top = 32
      Width = 265
      Height = 67
      OnClick = imgShapesClick
    end
    object lblFontColor: TLabel
      Tag = 6
      Left = 8
      Top = 27
      Width = 24
      Height = 13
      Caption = 'Font:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblDesktop: TLabel
      Tag = 6
      Left = 8
      Top = 51
      Width = 43
      Height = 13
      Caption = 'Desktop:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblBlockColor: TLabel
      Tag = 6
      Left = 8
      Top = 75
      Width = 47
      Height = 13
      Caption = 'Selection:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblPenColor: TLabel
      Tag = 6
      Left = 8
      Top = 100
      Width = 22
      Height = 13
      Caption = 'Pen:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object pnlFill: TPanel
      Left = 70
      Top = 71
      Width = 25
      Height = 20
      BevelOuter = bvNone
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = clWindow
      Ctl3D = False
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 0
      OnClick = pnlFillClick
    end
    object pnlDesktop: TPanel
      Left = 70
      Top = 46
      Width = 25
      Height = 20
      BevelOuter = bvNone
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = clWindow
      Ctl3D = False
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 1
      OnClick = pnlFillClick
    end
    object pnlFont: TPanel
      Left = 70
      Top = 21
      Width = 25
      Height = 20
      BevelOuter = bvNone
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = clWindow
      Ctl3D = False
      ParentBackground = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = pnlFillClick
    end
    object edtFontNameSize: TEdit
      Tag = 5
      Left = 104
      Top = 21
      Width = 145
      Height = 21
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
      Text = 'Tahoma'
      OnClick = edtFontNameSizeClick
    end
    object chkShowFuncLabels: TCheckBox
      Tag = 8
      Left = 104
      Top = 51
      Width = 148
      Height = 17
      Caption = 'Show function labels'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object chkShowBlockLabels: TCheckBox
      Tag = 8
      Left = 104
      Top = 76
      Width = 145
      Height = 17
      Caption = 'Show block labels'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object chkEnableDBuffer: TCheckBox
      Tag = 8
      Left = 104
      Top = 101
      Width = 145
      Height = 17
      Caption = 'Enable double buffering'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object pnlPen: TPanel
      Left = 70
      Top = 96
      Width = 25
      Height = 20
      BevelOuter = bvNone
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = clWindow
      Ctl3D = False
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 7
      OnClick = pnlFillClick
    end
  end
  object gbPrintSettings: TGroupBox
    Tag = 4
    Left = 5
    Top = 520
    Width = 550
    Height = 98
    Caption = 'Printing'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    object chkMultiPrint: TCheckBox
      Tag = 8
      Left = 8
      Top = 24
      Width = 193
      Height = 17
      Caption = 'Enable multi page printing'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = chkMultiPrintClick
    end
    object chkMultiPrintHorz: TCheckBox
      Tag = 8
      Left = 8
      Top = 43
      Width = 297
      Height = 17
      Caption = 'Enable multi page printing in horizontal directiron'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object gbPrintMargins: TGroupBox
      Tag = 4
      Left = 362
      Top = 8
      Width = 179
      Height = 81
      Caption = 'Margins (in percent)'
      TabOrder = 2
      object lblMarginLeft: TLabel
        Tag = 6
        Left = 31
        Top = 30
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = 'Left:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblMarginRight: TLabel
        Tag = 6
        Left = 24
        Top = 54
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = 'Right:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblMarginTop: TLabel
        Tag = 6
        Left = 118
        Top = 30
        Width = 22
        Height = 13
        Alignment = taRightJustify
        Caption = 'Top:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblMarginBottom: TLabel
        Tag = 6
        Left = 104
        Top = 54
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Bottom:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edtMarginLeft: TEdit
        Tag = 5
        Left = 56
        Top = 24
        Width = 25
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
      end
      object edtMarginRight: TEdit
        Tag = 5
        Left = 56
        Top = 48
        Width = 25
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 1
      end
      object edtMarginTop: TEdit
        Tag = 5
        Left = 144
        Top = 24
        Width = 25
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 2
      end
      object edtMarginBottom: TEdit
        Tag = 5
        Left = 144
        Top = 48
        Width = 25
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object OpenDialog: TOpenDialog
    Tag = 3
    DefaultExt = '*.exe'
    Filter = 'Executable files|*.exe; *.bat; *.cmd;'
    Options = [ofReadOnly, ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 224
    Top = 672
  end
  object ColorDialog: TColorDialog
    Tag = 3
    Left = 184
    Top = 672
  end
  object FontDialog: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 8
    MaxFontSize = 8
    Options = [fdNoStyleSel, fdLimitSize, fdScalableOnly]
    Left = 264
    Top = 672
  end
end
