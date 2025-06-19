$startOfFebruary = Get-Date -Year (Get-Date).Year -Month 5 -Day 1
$endOfFebruary = $startOfFebruary.AddMonths(1).AddDays(-1)

Get-ADComputer -Filter * -Property OperatingSystem, whenCreated | Where-Object {
    ($_.whenCreated -ne $null) -and (
        $_.whenCreated -ge $startOfFebruary -and
        $_.whenCreated -le $endOfFebruary
    )
} | Select-Object Name, OperatingSystem, whenCreated