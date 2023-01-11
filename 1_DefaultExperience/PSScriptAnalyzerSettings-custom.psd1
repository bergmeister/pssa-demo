@{
    ExcludeRules = @(
        'PSUseDeclaredVarsMoreThanAssignments'
    )

    'Rules' = @{
        'PSAvoidUsingCmdletAliases' = @{
            'allowlist' = @('cd')
        }
    }
}