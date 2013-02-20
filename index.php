<?php
//require_once('app/data/dataset2/data-tree.php');
require_once('app/data/dataset1/data-tree.php');
require_once('app/slim/Slim.php');

$app = new Slim(array(
  'mode' => 'production'
));

$app->configureMode('production', function () use ($app) {
    $app->config(array(
        'log.enable' => true,
        'debug' => true
    ));
});
$app->contentType('application/json');

require_once('app/routes/get.php');
require_once('app/routes/post.php');
require_once('app/routes/put.php');
require_once('app/routes/delete.php');


$app->run();

//API documentation goes here
?>

