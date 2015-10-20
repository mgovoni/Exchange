$RecvConn = Get-ReceiveConnector "Receive SMTP Internal Relay (Relay2)"
import-csv "C:\procedure\ip.txt" | ForEach-Object -Process {
  $indirizzo = $_.ip
  $RecvConn.RemoteIPRanges += $indirizzo
}
Set-ReceiveConnector "exugbo1gazza3\Receive SMTP Internal Relay (Relay2)" -RemoteIPRanges $RecvConn.RemoteIPRanges
