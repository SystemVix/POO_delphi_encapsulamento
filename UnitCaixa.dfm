object FormCaixa: TFormCaixa
  Left = 0
  Top = 0
  Caption = 'Caixa'
  ClientHeight = 611
  ClientWidth = 431
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 168
  TextHeight = 30
  object Label1: TLabel
    Left = 20
    Top = 20
    Width = 391
    Height = 54
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Contagem de C'#233'dulas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -40
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 20
    Top = 84
    Width = 197
    Height = 30
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Valor para contagem:'
  end
  object EditContagem: TEdit
    Left = 20
    Top = 124
    Width = 391
    Height = 38
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabOrder = 0
  end
  object ButtonContar: TButton
    Left = 20
    Top = 172
    Width = 391
    Height = 43
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Contar C'#233'dulas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = ButtonContarClick
  end
  object MemoCedulas: TMemo
    Left = 20
    Top = 225
    Width = 391
    Height = 365
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Lines.Strings = (
      'MemoCedulas')
    TabOrder = 2
  end
end
