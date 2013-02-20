<?php

$app->delete('/User/:id', function ($id) {
    //Api-tester ..get item
	delete_user();
    echo " deleted user $id created"."<br />";
});

?>