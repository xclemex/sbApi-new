<?php

//put

$app->put('/cinema/movie/:id/rate', function ($id) {
    //rates movie :id
	rate_movie($id);
});
$app->put('/cinema/movie/:id/review', function ($id) {
    //reviews movie :id
	rv_movie($id);
});

$app->put('/cinema/movie/:id/review/alt', function ($id) {
    //reviews movie :id
	rv_movie_alt($id);
});

$app->put('/store/dvd/:id/rate', function ($id) {
    //rates movie :id
	rate_movie($id);
});
$app->put('/store/dvd/:id/review', function ($id) {
    //reviews movie :id
	rv_movie($id);
});

$app->put('/store/book/:id/rate', function ($id) {
    //rate book with :id
	rate_book($id);
});
$app->put('/store/book/:id/review', function ($id) {
    //reviews book :id
	rv_book($id);
});
$app->put('/store/music/:id/rate', function ($id) {
    //rates music :id
	rate_music($id);
});
$app->put('/store/music/:id/review', function ($id) {
    //reviews movie :id
	rv_music($id);
});
$app->put('/store/games/:id/rate', function ($id) {
    //rates movie :id
	rate_game($id);
});
$app->put('/store/games/:id/review', function ($id) {
    //reviews movie :id
	rv_game($id);
});
$app->put('/store/electronics/:id/rate', function ($id) {
    //rates movie :id
	rate_elec($id);
});
$app->put('/store/electronics/:id/review', function ($id) {
    //reviews movie :id
	//rv_elec($id);
});
$app->put('/User/:id', function ($id) {
    edit_user_account();
	echo " a Silver bird user profile has been updated"."<br />";
});
?>