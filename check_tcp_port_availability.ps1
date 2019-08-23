$Ipaddress= Read-Host "Enter the IP address:"
$Port= Read-host "Enter the port number to access:"

$connection = New-Object Net.Sockets.TcpClient
$connection.Connect($Ipaddress,$Port)
    if($connection.Connected)
    {
        "Port $Port is open"
    }
    else
    {
        "Port $Port is closed"
    }