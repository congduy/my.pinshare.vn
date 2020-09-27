<?php
echo "Ket qua: ";
exec('python3 ai/dtsai/listface.py',$output);
echo $output;
print_r($output);
?>
