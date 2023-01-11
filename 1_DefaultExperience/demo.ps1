## Formatting (shortcut on Windwos: Ctrl + K + F)

# powershell.codeFormatting.preset: https://github.com/PoshCode/PowerShellPracticeAndStyle/issues/81
if ($true)
{

}

# powershell.codeFormatting.pipelineIndentationStyle -> explain defaults
foo |
bar |
baz

# whitespaceInsideBrace, whitespaceAroundPipe, whitespaceBetweenParameters
foo|ForEach-Object    -Scriptblock {bar}

# useCorrectCasing
get-childitem

# autoCorrectAliases
gci


## Code Analysis

# Auto-Fix
gci

# Suppression
function Get-foo {
        # [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingWriteHost", "",
        #                                                    Justification="This script has to run on PSv4 as well.")]
        param()
        Write-Host
}

# PSPossibleIncorrectUsageOfRedirectionOperator
if ($a > $b) {

}

# PSPossibleIncorrectUsageOAssignmentOperator (not on by default)
if ($a = $b) {

}

# PSUseDeclaredVarsMoreThanAssignments: limited to scriptblock scope
$f = 4
# Get-Something $f
