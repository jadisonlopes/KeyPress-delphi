object fKeyPress: TfKeyPress
  Left = 0
  Top = 0
  Caption = 'New KeyPress'
  ClientHeight = 218
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 82
    Top = 8
    Width = 63
    Height = 25
    Caption = 'Ativar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 211
    Top = 8
    Width = 101
    Height = 25
    Caption = 'Desativar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 82
    Top = 45
    Width = 65
    Height = 25
    Caption = 'Ctrl+I'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 226
    Top = 45
    Width = 71
    Height = 25
    Caption = 'Ctrl+D'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 129
    Width = 376
    Height = 89
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 88
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 96
      Height = 25
      Caption = 'KeyPress'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 200
      Top = 24
      Width = 60
      Height = 25
      Caption = 'Timer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 51
      Width = 88
      Height = 25
      Caption = 'Dura'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edKey: TCurrencyEdit
      Left = 118
      Top = 28
      Width = 49
      Height = 21
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
      OnKeyUp = FormKeyUp
    end
    object edTimer: TCurrencyEdit
      Left = 266
      Top = 28
      Width = 85
      Height = 21
      DecimalPlaces = 0
      DisplayFormat = '0, Seg'
      TabOrder = 1
      OnKeyUp = FormKeyUp
    end
    object edDuraction: TCurrencyEdit
      Left = 118
      Top = 55
      Width = 233
      Height = 21
      DecimalPlaces = 0
      DisplayFormat = '0, Min'
      TabOrder = 2
      OnKeyUp = FormKeyUp
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 84
    Width = 376
    Height = 45
    Align = alBottom
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 83
    object Label8: TLabel
      Left = 14
      Top = 1
      Width = 235
      Height = 13
      Caption = 'Pressione a Tecla para Descobrir o Codigo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edPesq: TEdit
      Left = 14
      Top = 16
      Width = 233
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyUp = edPesqKeyUp
    end
  end
  object tTimer: TTimer
    OnTimer = tTimerTimer
    Left = 24
    Top = 24
  end
  object tDuraction: TTimer
    OnTimer = tDuractionTimer
    Left = 320
    Top = 25
  end
end
