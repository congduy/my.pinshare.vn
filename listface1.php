python3 ai/dtsai/listface.py
<?php
exec("python3 /ai/dtsai/listface.py", $output);

$myJSON = json_encode($output);
echo $myJSON;

?>
