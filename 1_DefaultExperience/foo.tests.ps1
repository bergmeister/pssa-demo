$situation = 'a'
Describe "situation 1'$situation'" {
    It 'works as expected' {
        $true | Should -BeTrue
    }
}

Describe "situation 2'$situation'" {
    It 'works as expected' {
        $true | Should -BeTrue
    }
}

