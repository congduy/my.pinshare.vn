<?php
$cmd= $_GET['cmd'];
$cid= $_GET['cid'];
$client = stream_socket_client('tcp://192.168.4.20:8282');
if(!$client)exit("can not connect");
fwrite($client, $cmd.$cid);
?>
