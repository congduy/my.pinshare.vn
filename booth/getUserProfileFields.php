<?php
echo"<hr>";
$url = "http://192.168.2.26:82/booth/listProfileFields.php?user_id=1";
$data = file_get_contents($url);

echo $data;
?>