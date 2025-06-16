object frmRelatorioProfessores: TfrmRelatorioProfessores
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios - Professores'
  ClientHeight = 284
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLReport1: TRLReport
    Left = -8
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dmConexao.dsProfessores
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      AlignWithMargins = True
      Left = 38
      Top = 38
      Width = 718
      Height = 107
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object rlblTitulo: TRLLabel
        Left = 153
        Top = 18
        Width = 425
        Height = 32
        Caption = 'RELAT'#211'RIO DE PROFESSORES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 584
        Top = 74
        Width = 115
        Height = 16
        Info = itNow
        Text = ''
      end
      object RLLabel1: TRLLabel
        Left = 472
        Top = 74
        Width = 106
        Height = 16
        Caption = 'Data de emiss'#227'o:'
      end
    end
    object RLBand2: TRLBand
      AlignWithMargins = True
      Left = 38
      Top = 248
      Width = 718
      Height = 16
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
    end
    object RLDetailGrid1: TRLDetailGrid
      AlignWithMargins = True
      Left = 38
      Top = 145
      Width = 718
      Height = 103
      object RLDBText1: TRLDBText
        Left = 40
        Top = 49
        Width = 43
        Height = 18
        DataField = 'nome'
        DataSource = dmConexao.dsProfessores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 40
        Top = 24
        Width = 88
        Height = 19
        Caption = 'Professor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 457
        Top = 24
        Width = 162
        Height = 19
        Caption = 'Usu'#225'rio no sistema:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 457
        Top = 49
        Width = 55
        Height = 18
        DataField = 'usuario'
        DataSource = dmConexao.dsProfessores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
end
