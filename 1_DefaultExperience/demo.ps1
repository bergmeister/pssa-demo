# Auto-Fix
gci

# Suppression
function Get-foo {
        # [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingWriteHost", "",
        #                                                    Justification="This script has to run on PSv4 as well.")]
        param()
        Write-Host
}


# Formatting: Ctrl + K + F 
# powershell.codeFormatting.preset: https://github.com/PoshCode/PowerShellPracticeAndStyle/issues/81
if ($true)
{

}

# PSPossibleIncorrectUsageOfRedirectionOperator
if ($a > $b) {

}

# PSPossibleIncorrectUsageOAssignmentOperator (not on by default)
if ($a = $b) {

}

Invoke-Expression -Command '#format c'


# PSUseDeclaredVarsMoreThanAssignments: limited to scriptblock scope
$f = 4
# Get-Something $f


### New features in 1.18.0

# auto-fix added in 1.18.0
if ($null -eq $a) { }
# Example why:
if (@() -eq $null) { 'true' } else { 'false' }  # Returns false
if (@() -ne $null) { 'true' } else { 'false' }  # Returns false

## Formatting

# powershell.codeFormatting.pipelineIndentationStyle -> explain defaults
foo |
bar |
baz

# whitespaceInsideBrace, whitespaceAroundPipe, whitespaceBetweenParameters
foo|ForEach-Object    -Scriptblock {bar}

# useCorrectCasing
get-childitem

# alias expansion
gci

# Setting support: https://github.com/PowerShell/PSScriptAnalyzer#settings-support-in-scriptanalyzer
# -> enable setting: "powershell.scriptAnalysis.settingsPath": "PSScriptAnalyzerSettings.psd1",
New-Item -ItemType File -Path 'PSScriptAnalyzerSettings.psd1'
'@{}' > .\PSScriptAnalyzerSettings.psd1
