unit ExportPayDBF;

interface

uses
  ExportModule;

const

// ============================================================================
// �������� ������ ��� ��������
// "���������� � ������� �������� �������"
// ============================================================================

{  --- �������:
    HDRT.DBF
    PAYT.DBF
    BANT.DBF
{}

  tblHDRT : TCetTableDesc = (
    TableName  : 'HDRT.DBF';
    FieldCount : 13;
    Fields     : (('BIC',     'C', '9',  ''),
                  ('DAT_V',   'D', '',   ''),
                  ('DAT_VL',  'D', '',   ''),
                  ('NLS',     'C', '20', ''),
                  ('KOD_W',   'C', '3',  ''),
                  ('I_KR',    'N', '17', '2'),
                  ('DB_KR',   'N', '17', '2'),
                  ('DB_DT',   'N', '17', '2'),
                  ('O_KR',    'N', '17', '2'),
                  ('K_PD_PR', 'N', '5',  '0'),

                  ('K_PD_RS', 'N', '5',  '0'),
                  ('NUM_V',   'C', '10', ''),
                  ('KODT_V',  'C', '8',  ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),

                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),

                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', '')
  )); // tblHDRT

  tblPAYT : TCetTableDesc = (
    TableName  : 'PAYT.DBF';
    FieldCount : 35;
    Fields     : (('NREF',       'C', '25', ''),
                  ('NLS',        'C', '20', ''),
                  ('BIC',        'C', '9',  ''),
                  ('Z_TPL',      'C', '1',  ''),
                  ('P_KOR',      'N', '1' , '0'),
                  ('DAT_DOC',    'D', '',   ''),
                  ('DAT_BNK',    'D', '',   ''),
                  ('DAT_INBNK',  'D', '',   ''),
                  ('SUM_DOC',    'N', '16', '2'),
                  ('KODV',       'C', '3',  ''),

                  ('NUM_DOC',    'C', '10', ''),
                  ('INN_K',      'C', '12', ''),
                  ('NAME_K',     'C', '80', ''),
                  ('SCHK',       'C', '20', ''),
                  ('KSCHK',      'C', '20', ''),
                  ('BICK',       'C', '9',  ''),
                  ('INFO1',      'C', '70', ''),
                  ('INFO2',      'C', '70', ''),
                  ('INFO3',      'C', '70', ''),
                  ('INFO4',      'C', '70', ''),

                  ('NAIM_BK',    'C', '80', ''),
                  ('KODT',       'C', '8',  ''),
                  ('T_PL',       'C', '2',  ''),
                  ('GR_PAY',     'C', '2',  ''),
                  ('BUDKOD',     'C', '20', ''),
                  ('KOD_VP',     'C', '3', ''),
                  ('SWIFTK',     'C', '11', ''),
                  ('ADDR_BK',    'C', '40', ''),
                  ('ADDR_K',     'C', '80', ''),
                  ('KPP_K',      'C', '9', ''),

                  ('KPP_P',      'C', '9', ''),
                  ('INN_P',      'C', '12', ''),
                  ('OKATO',      'C', '11', ''),
                  ('NOM_RASPOR', 'C', '10', ''),
                  ('DAT_RASPOR', 'D', '', '')
  )); // tblPAYT

  tblBANT : TCetTableDesc = (
    TableName  : 'BANT.DBF';
    FieldCount : 8;
    Fields     : (('NUM_DOC', 'C', '10', ''),
                  ('DAT_V',   'D', '',   ''),
                  ('SWIFT',   'C', '11', ''),
                  ('KORS',    'C', '20', ''),
                  ('NAIM_B',  'C', '80', ''),
                  ('ADDR_B',  'C', '80', ''),
                  ('NPP',     'C', '1',  ''),  // ??
                  ('BIC',     'C', '9',  ''),
                  ('', '', '', ''),
                  ('', '', '', ''),

                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),

                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),

                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', ''),
                  ('', '', '', '')
  )); // tblBANT




implementation


End.

