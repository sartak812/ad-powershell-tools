# ad-powershell-tools
PowerShell scripts for managing Active Directory users, groups, and more

###########  Get-NewADComputersByMonth.ps1 ##########
This script retrieves a list of only newly added computers in Active Directory that were created (joined or re-joined) in a specific month, based on the whenCreated attribute.In this specific example, it’s configured to show computers added in May.
# Only list new computers in Active Directory: join/rejoin based on "whenCreated" in AD.
# January - Month 1
# February - Month 2
# March - Month 3
# April - Month 4
These comments just explain that months are numbered (1 = January, etc.). You can change the month to target different periods.
Gets all AD computers, including the OperatingSystem and whenCreated properties.
######################################################
