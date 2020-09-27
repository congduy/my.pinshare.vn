<?php
// +------------------------------------------------------------------------+
// | @author Deen Doughouz (DoughouzForest)
// | @author_url 1: http://www.wowonder.com
// | @author_url 2: http://codecanyon.net/user/doughouzforest
// | @author_email: wowondersocial@gmail.com   
// +------------------------------------------------------------------------+
// | WoWonder - The Ultimate Social Networking Platform
// | Copyright (c) 2018 WoWonder. All rights reserved.
// +------------------------------------------------------------------------+
$response_data = array(
    'api_status' => 400
);

if (empty($_POST['user_id'])) {
    $error_code    = 3;
    $error_message = 'user_id is missing';
}
else{

	
	$article = Wo_UserFieldsData($_POST['user_id']);
	$detail = Wo_ListProfileFields();


   
	if (!empty($article)) {	
		$response_data = array(
                               // 'api_status' => 200,
								'data' => $article,
								'detail' => $detail 
								//$response_data['detail'] = array(
								//	 'detail' => $detail 
								// )
								
                            );
	}
	
	else{
		$error_code    = 4;
	    $error_message = 'Article not found';
	}
}