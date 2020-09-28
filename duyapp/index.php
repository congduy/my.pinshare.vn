<?php
$app_id = '985d04f5f3a778a407f8'; // your application app id
$app_secret = '4c812b6638be1226fdfc906ce129104b143961f'; your application app secret
$code = $_GET['code']; // the GET parameter you got in the callback: http://yourdomain/?code=XXX

$get = file_get_contents("http://my.pinshare.vn:8080/authorize?app_id={$app_id}&app_secret={$app_secret}&code={$code}");

$json = json_decode($get, true);
if (!empty($json['access_token'])) {
    $access_token = $json['access_token']; // your access token
    $type = "get_user_data"; // or posts_data
   $get = file_get_contents("http://my.pinshare.vn:8080/app_api?access_token={$access_token}&type={$type}");
}
?>