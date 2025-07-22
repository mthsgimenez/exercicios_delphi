object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 50
    Top = 40
    Width = 524
    Height = 361
    Margins.Left = 50
    Margins.Top = 40
    Margins.Right = 50
    Margins.Bottom = 40
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitHeight = 377
    object btnAdicionar: TButton
      Left = 296
      Top = 16
      Width = 98
      Height = 29
      Caption = 'Adicionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnAdicionarClick
    end
    object btnRemover: TButton
      Left = 400
      Top = 16
      Width = 99
      Height = 29
      Caption = 'Remover'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnRemoverClick
    end
    object btnVerificar: TButton
      Left = 384
      Top = 311
      Width = 115
      Height = 34
      Caption = 'Verificar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnVerificarClick
    end
    object edtNumeros: TEdit
      Left = 24
      Top = 16
      Width = 266
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 3
      TextHint = 'Digite um n'#250'mero'
    end
    object lstNumeros: TListBox
      Left = 24
      Top = 64
      Width = 473
      Height = 225
      AutoComplete = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemHeight = 21
      ParentFont = False
      TabOrder = 4
    end
  end
end
