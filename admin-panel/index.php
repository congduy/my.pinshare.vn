<?php 
$http_header           = 'http://';
if (!empty($_SERVER['HTTP'])) {
    $http_header = 'http://';
}
$this_url   = $http_header . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];

$this_url = str_replace('admin-panel', 'admin-cp', $this_url);
echo "$this_url";
header("Location: $this_url");
exit();
?>
You can access the admin panel, from <a href="<?php echo $this_url ?>"><?php echo $this_url ?></a>
