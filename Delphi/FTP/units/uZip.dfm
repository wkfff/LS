object dmZIP: TdmZIP
  OldCreateOrder = False
  Left = 644
  Top = 542
  Height = 239
  Width = 334
  object Zip: TZip
    RelativeDir = byItem
    Attributes = [fsZeroAttr, fsReadOnly, fsArchive, fsCompressed, fsEncrypted]
    DeleteOptions = doAllowUndo
    ArcType = atZip
    AttributesEx = [fsReparsePoints]
    CompressMethod = cmDeflate
    DefaultExt = '.zip'
    SeedDataKeys.Key0 = 305419896
    SeedDataKeys.Key1 = 591751049
    SeedDataKeys.Key2 = 878082192
    SeedHeaderKeys.Key0 = 269766672
    SeedHeaderKeys.Key1 = 33834504
    SeedHeaderKeys.Key2 = 541352064
    StoreFilesOfType.Strings = (
      '.ace'
      '.arc'
      '.arj'
      '.bh'
      '.bz'
      '.bz2'
      '.cab'
      '.enc'
      '.gz'
      '.ha'
      '.jar'
      '.lha'
      '.lzh'
      '.mbf'
      '.mim'
      '.pak'
      '.pk3'
      '.pk_'
      '.rar'
      '.sqx'
      '.tar'
      '.tbz'
      '.tgz'
      '.uue'
      '.uu'
      '.war'
      '.xxe'
      '.z'
      '.zap'
      '.zip'
      '.zoo'
      '.ztv')
    TempDir = 'C:\Temp\'
    Switch = swAdd
    Left = 32
    Top = 24
  end
  object UnZip: TUnZip
    TranslateOemChar = False
    CpuType = cptAuto
    SeedDataKeys.Key0 = 305419896
    SeedDataKeys.Key1 = 591751049
    SeedDataKeys.Key2 = 878082192
    SeedHeaderKeys.Key0 = 269766672
    SeedHeaderKeys.Key1 = 33834504
    SeedHeaderKeys.Key2 = 541352064
    Left = 112
    Top = 24
  end
  object ZipTV: TZipTV
    TranslateOemChar = False
    SeedHeaderKeys.Key0 = 269766672
    SeedHeaderKeys.Key1 = 33834504
    SeedHeaderKeys.Key2 = 541352064
    RecurseDirs = False
    Left = 224
    Top = 24
  end
end
