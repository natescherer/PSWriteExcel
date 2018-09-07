
Import-Module PSWriteExcel -Force


$FilePath = "$Env:USERPROFILE\Desktop\PSWriteExcel-Example-Test1.xlsx"

$myitems0 = @(
    [pscustomobject]@{name = "Joe"; age = 32; info = "Cat lover"},
    [pscustomobject]@{name = "Sue"; age = 29; info = "Dog lover"},
    [pscustomobject]@{name = "Jason another one"; age = 42; info = "Food lover"
    }
)

ConvertTo-Excel -DataTable $myitems0 -FilePath $FilePath -ExcelWorkSheetName 'This is my test' -AutoFilter -AutoFit

$myitems0 | ConvertTo-Excel -FilePath $FilePath -ExcelWorkSheetName 'This is my test2' -AutoFilter -AutoFit -Verbose -OpenWorkBook -Option Skip