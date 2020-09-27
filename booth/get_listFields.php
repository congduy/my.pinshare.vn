<?php
echo"<hr>";
$url = "http://192.168.2.26:82/booth/listFields.php";
$data = file_get_contents($url);

echo $data;
?>