<?php

//get requests
$app->get('/item/:id', function ($id) {
    //Api-tester ..get item
	echo " a Silver bird item of id = $id showing"."<br />";
});

//cinema
$app->get('/cinema/movies', function () {
    //returns all movie items
	get_movies();
});
$app->get('/cinema/movie/:id', function ($id) {
    //returns all movie items
	//sanitizeOne($id,'int');
	get_movie_by_id($id);
	//echo "$id";
});
$app->get('/cinema/na/movies', function () {
    //returns all next attraction movies items
	get_movie_n_a();
});


//store
$app->get('/store/dvd', function () {
    //returns all movie items
	get_dvd();
});
$app->get('/store/books', function () {
    //returns all book items
	get_books();
});
$app->get('/store/music', function () {
    //reurns all music items
	get_music();
});
$app->get('/store/games', function () {
   //returns all game items
   get_games();
});
$app->get('/store/electronics', function () {
  //returns all electronic items
    get_elec();
});
//User
$app->get('/User/d', function () {
    //get user detail after user login
	get_userd();
	echo "<br/>"."get user ";
});

//spotlight

$app->get('/Spotlight', function () {
    //get spotlght light
         get_spli();
	echo "<br/>"."get user";
});







?>