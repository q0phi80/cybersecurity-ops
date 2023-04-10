$p = Get-Process
foreach ( $proc in $p )
        {
            $proc.Name
        }