<?php
include("config.php");


?>
<?php


//Create database connection
  $dblink = new mysqli($sql_db_host, $sql_db_user, $sql_db_pass, $sql_db_name);

//Check connection was successful
  if ($dblink->connect_errno) {
     printf("Failed to connect to database");
     exit();
  }

//Fetch 3 rows from actor table
  $result = $dblink->query("SELECT * FROM `wo_profilefields`");

//Initialize array variable
  $dbdata = array();

//Fetch into associative array
  while ( $row = $result->fetch_assoc())  {
	$dbdata[]=$row;
	// print_r($row);
  }
  echo "<pre>";
  print_r($dbdata);
  echo "</pre>";
  
  

//Print array in JSON format
//print_r($dbdata);
 //$dt= json_encode($dbdata);
 //$data=json_encode($dt);
// $obj = json_encode($dbdata);
//$str=var_dump($dbdata);
//echo "ancd";

  
 
?>
