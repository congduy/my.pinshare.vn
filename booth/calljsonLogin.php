<?php
$curl = curl_init();

$url="http://admin.vrfairs.vn:8080/api/auth";
$server_key='2fe899597d8a4dbd88beaaa604cf39c11264d285-e2f87ca295eaafad7ef27627586275f2-69012891';

curl_setopt_array($curl, array(
  CURLOPT_URL => $url,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => array('username' => 'admin','password' => 'admin','server_key' => $server_key),
  CURLOPT_HTTPHEADER => array(
    "Cookie: ad-con=%7B%26quot%3Bdate%26quot%3B%3A%26quot%3B2020-09-13%26quot%3B%2C%26quot%3Bads%26quot%3B%3A%5B%5D%7D; _us=1600106059; mode=day; PHPSESSID=ilpjcl68rjhm5niapf1s33v6jh; access=1"
  ),
));
$response = curl_exec($curl);
curl_close($curl);
echo $response;
?>