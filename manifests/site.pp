#
#  Simple script to display powershell processes
#
node default {
  exec { 'powershell_system32':
    command => 'c:\windows\system32\WindowsPowerShell\v1.0\powershell.exe -NonInteractive -NoProfile -ExecutionPolicy Bypass -Command "get-process powershell* | %{ Write-Host $($_.Path)}"',
    logoutput => true,
  } ->
  exec { 'powershell_sysnative':
    command => 'c:\windows\sysnative\WindowsPowerShell\v1.0\powershell.exe -NonInteractive -NoProfile -ExecutionPolicy Bypass -Command "get-process powershell* | %{ Write-Host $($_.Path)}"',
    logoutput => true,
  }
}





