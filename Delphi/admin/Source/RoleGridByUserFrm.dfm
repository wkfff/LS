inherited RoleGridByUserForm: TRoleGridByUserForm
  Left = 298
  Top = 350
  Caption = #1088#1086#1083#1080' '#1076#1086#1089#1090#1091#1087#1072' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  PixelsPerInch = 96
  TextHeight = 13
  inherited ActionList: TActionList
    inherited actOpen: TAction
      Enabled = False
      Visible = False
    end
    inherited actAdd: TAction
      Enabled = True
      Visible = True
    end
    inherited actDelete: TAction
      Enabled = True
      Visible = True
    end
  end
  inherited OfficeEditStyleController: TcxEditStyleController
    Style.IsFontAssigned = True
  end
  inherited WebEditStyleController: TcxEditStyleController
    Style.IsFontAssigned = True
  end
  inherited DefaultEditStyleController: TcxDefaultEditStyleController
    Style.IsFontAssigned = True
  end
  inherited BarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    DockControlHeights = (
      0
      0
      26
      0)
  end
  inherited dsData: TfdcQuery
    SQL.Strings = (
      'select  rl.*'
      '          ,ul.id as USERID'
      '  from fdc_role_Lst rl'
      '        ,dba_role_privs rp'
      '        ,fdc_user_lst ul'
      ' where (:Name is null or upper(rl.name) like upper(:Name))'
      '  and rl.role_name= rp.granted_role'
      '  and rp.grantee=:LOGIN'
      '  and ul.id=:ID'
      '  and rp.grantee=ul.login'
      'order by rl.name')
    ParamData = <
      item
        DataType = ftString
        Name = 'Name'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Name'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'LOGIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
end