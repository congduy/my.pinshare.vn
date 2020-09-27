<?php
//wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1ooKhV8KYsA3ZBA9eNoXiWHr_kPpr6GUo' -O rentpin.php
//https://drive.google.com/file/d/1ooKhV8KYsA3ZBA9eNoXiWHr_kPpr6GUo/view?usp=sharing
require_once('assets/init.php');
if ($wo['loggedin'] == true) {
  // echo "uid: ".$wo['user']['user_id'];
  // echo "\n username: ".$wo['user']['username'];
  // echo "\n sid: ".Wo_Secure($session_id);


//if (!empty($_SESSION['user_id'])) {
//	echo $_SESSION['user_id'];
	
//}
$cmd= $_GET['cmd'];
$cid= $_GET['cid'];
$userid=$wo['user']['user_id'];
$username=$wo['user']['username'];
$sid=Wo_Secure($session_id);

$data='{"type":"control", "uid":"'.$userid.'", "username":"'.$username.'", "sid":"'.$sid.'","cmd":"'.$cmd.'","cid":"'.$cid.'" }';
$client = stream_socket_client('tcp://127.0.0.1:8283');
if(!$client)exit("can not connect");
fwrite($client, $data);

echo $data;
}
else echo "Ban chua login";
?>

