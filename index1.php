
<?php
error_reporting(E_ALL);

echo "<h2>TCP/IP Connection</h2>\n";

/* Get the port for the WWW service. */
$service_port = getservbyname('www', 'tcp');
$service_port = 7272;

/* Get the IP address for the target host. */
$address = gethostbyname('localhost');
//$ipaddress="";
/* Create a TCP/IP socket. */
$socket = socket_create(AF_INET, SOCK_STREAM, SOL_TCP);
if ($socket === false) {
    echo "socket_create() failed: reason: " . socket_strerror(socket_last_error()) . "\n";
} else {
    echo "OK---.\n";
}

echo "<br>Attempting to connect to '$address' on port '$service_port'...";
$result = socket_connect($socket, $address, $service_port);
if ($result === false) {
    echo "socket_connect() failed.\nReason: ($result) " . socket_strerror(socket_last_error($socket)) . "\n";
} else {
    echo "OK.\n";
}

$in = "HEAD / HTTP/1.1\r\n";
$in .= "Host: www.example.com\r\n";
$in .= "Connection: Close\r\n\r\n";
$out = '';

echo "<br> Sending HTTP HEAD request...";
socket_write($socket, $in, strlen($in));
echo "OK.\n";

echo "<br> Reading response:\n\n";
while ($out = socket_read($socket, 2048)) {
    echo $out;
}

echo "<br> Sending data request...";
//$in = "{\"type":\"say\",\"from_client_id \":xxx,\"to_client_id\":\"all\",\"content\":\"55555555555555555\",\"time\":\"xxx\"}";

$in = '{"type":"say","from_client_id ":xxx,"to_client_id":"all","content":"55555555555555555","time":"xxx"}';

socket_write($socket, $in, strlen($in));
echo "OK.\n";

echo "<br> Reading response:\n\n";
while ($out = socket_read($socket, 2048)) {
    echo $out;
}

echo "Closing socket...";
socket_close($socket);
echo "OK.\n\n";
?>

