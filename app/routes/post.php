<?php

$app->post('/User', function () {
    //create user
	create_user();
	echo " a new Silver bird user has been created"."<br />";
});

$app->post('/Login', function () {
    //login user
	login();
	echo " a Silver bird user has been logged in"."<br />";
});
$app->post('/Logout', function () {
    //log user out
	logout();
	echo "a Silver bird user has been logged out"."<br />";
});

?>