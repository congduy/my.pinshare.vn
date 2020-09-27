<?php
require_once 'Gateway.php';

/**
 * gatewayClient 3.0.0及以上版本加了命名空间
 * 而3.0.0以下版本不需要use GatewayClient\Gateway;
 **/
use GatewayClient\Gateway;

/**
 *====这个步骤是必须的====
 *这里填写Register服务的ip和Register端口，注意端口不是gateway端口
 *ip不能是0.0.0.0，端口在start_register.php中可以找到
 *这里假设GatewayClient和Register服务都在一台服务器上，ip填写127.0.0.1。
 *如果不在一台服务器则填写真实的Register服务的内网ip(或者外网ip)
 **/
Gateway::$registerAddress = '192.168.4.20:1238';


// 以下是调用示例，接口与GatewayWorker环境的接口一致
// 注意除了不支持sendToCurrentClient和closeCurrentClient方法
// 其它方法都支持
$data="9999RL3H081911640069";
Gateway::sendToAll($data);


?>
