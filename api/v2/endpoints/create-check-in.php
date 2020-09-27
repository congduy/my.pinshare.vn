<?php

// +------------------------------------------------------------------------+
$response_data = array(
    'api_status' => 400
);

$required_fields = array(
    'name',
    'address',
    'lat',
    'lng' 
);

foreach ($required_fields as $key => $value) {
    if (empty($_POST[$value]) && empty($error_code)) {
        $error_code = 3;
        $error_message = $value . ' (POST) is missing';
    }
}

if (empty($error_code)) {
    $name = Wo_Secure($_POST['name']);
    $address = Wo_Secure($_POST['address']);
    $description = Wo_Secure($_POST['description']);
    $lat = Wo_Secure($_POST['lat']);
    $lng = Wo_Secure($_POST['lng']);
    $page_id = Wo_Secure($_POST['page_id']);
    
    $is_exist = Wo_IsLatLngCheckInExist($lat, $lng, $wo['user']['user_id']);
    
    if ($is_exist) {
        $error_code    = 4;
        $error_message = 'Location is already exists.';
    }
    
    if (empty($error_code)) {
        $group_data = array(
            'name' => $name,
            'address' => $address,
            'user_id' => $wo['user']['user_id'],
            'description' => $description,
            'lat' => $lat,
            'lng' => $lng,
            'page_id' => $page_id,
            'time' => time()
        );
        
        $register_check_in_id = Wo_RegisterCheckIn($group_data);
        
        if ($register_check_in_id) {
            $response_data = array(
                'api_status' => 200,
                'check_in_data' => Wo_CheckInDataById($register_check_in_id)
            );
        }
    }
}