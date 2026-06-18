function Get-DefaultPrinter { 
  [CmdletBinding()]
param (
    $defaultPrinter
    )
  BEGIN {
    Write-Verbose "Узнаю принтер по умолчанию ... "
  } #BEGIN

  PROCESS {
  $defaultPrinter = Get-CimInstance -ClassName Win32_Printer | Where-Object {$_.Default -eq $true} | Select-Object *
  $defaultPrinter.Name 
  } #PROCESS

  END {
    Write-Verbose "Операция завершена"
  } #END
}
