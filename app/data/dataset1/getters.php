<?php


function get_userd(){
	
	if($_SESSION['loggedIn']==1 and isset($_GET['name']) and isset($_GET['pasword'])){
	$name = $_GET['name'];
	$password = $_GET['password'];
	
	$users = Model::factory('Users')
	->where('name',$name)
	->where('password',$password)
	->find_one();
	    if (!empty($users)){
		
		$ud = array();
		$ud[]=array(
			
     "name"=>$users->name,
     "password"=>$users->password,
	 "firstname"=>$users->firstname,
     "lastname"=>$users->lastname,
     "email"=>$users->email,
     "photo"=>$users->profile_pic,
     "coverphoto"=>$users->coverphoto,
     "gender"=>$users->gender,
     "moviesIWantToSee"=>explode(",",$users->movie_wishlist),
     "favoriteMovies"=>explode(",",$users->favourite_movies),
	 "typeOfAccount"=>$users->type_of_account
	          );
			  echo json_encode($ud);
		}
	}
	
}

function get_movies(){
	if(isset($_GET['type']) and !empty($_GET['type'])){
	
	$type = $_GET['type'];
	
	switch ($type)
 {
	 case 'now_showing' :
	 //query now showing
	 $today = date('Y-m-d');
	 $movies = Model::factory('Movies')
	->where('now_showing','1')
	//(delete this comment on monday (18th January 2013))//->where('show_on',$today)
	->find_many();
	 //add time if it is set
	 //$date = $_GET['date'];
	 if(isset($_GET['type']) and !empty($_GET['type'])){
		 }
	 break;
	 case 'next_attraction' :
	 
	 $movies = Model::factory('Movies')
	->where('n_attr','1')
	->find_many();
	 
	 break;
     case 'coming_soon' :
	 
	 $movies = Model::factory('Movies')
	->where('coming_soon','1')
	->find_many();
	 
	 break;
	 default :
 }

	
	
	
	$m  = array();
	foreach($movies as $movie){
		$rvs = $movie->reviews()
		->find_many();
		    $r = array();
		foreach($rvs as $rv){
			$users = $rv->usera()
			->find_one();
			$un = $users->name;
			$up = "http://localhost/sbRsrcs/images/users/".$users->profile_pic;
		   	
			$r[] = array(
					    "review_id"=>$rv->id,
						"time"=>$rv->time_of_review,
						"comment"=>$rv->comment,
						"reviewer"=>$un,
						"user_image"=>$up
		          );
			}
		$mss = $movie->schedules()
		->find_many();
		$s = array();
		foreach($mss as $ms){
			$s[]= array(
						"schedule id"=>$ms->id,
						"cinema"=>$ms->cinema,
						"theatre"=>$ms->theatre,
						"rate"=>$ms->pricing,
						"date"=>$ms->dates,
						"time"=>$ms->times
			);
		}
		$cas = $movie->cast()
		->find_many();
		$c = array();
		foreach($cas as $ca){
			$c[]= array(
						"id"=>$ca->id,
						"name"=>$ca->real_name,
						"role_name"=>$ca->movie_role_name,
						"photo"=>"http://localhost/sbRsrcs/images/movie_cast/".$ca->actor_photo
			);
		}
	 
    $m[] = array(
     "movieId" => $movie->id,
	 "title" => $movie->title,
     "genre" =>$movie->genre,
	"poster" =>"http://localhost/sbRsrcs/images/movie_posters/".$movie->genre."/".$movie->poster,
	 "language" => $movie->language,
	 "releaseDate" =>$movie->release_date,
	 "directors" =>$movie->directors,
	 "trailers" =>"http://localhost/sbRsrcs/vids/trailers/".$movie->genre."/".$movie->trailers,
	 "synopsis" =>$movie->plot_synopsis,
	 "cast" =>$c,
	 "runningTime" =>$movie->running_time,
	 "showtimes" =>$s,
	 "msnRating" =>$movie->msn_movie_rating,
	 "userRating" =>$movie->user_rating,
	 "ageLimit"=>$movie->age_limit,
	 "reviews" =>$r,
	 "website" =>$movie->movie_website,
	 "awards" =>$movie->awards,
	 "n_attr" =>$movie->n_attr
	);
	}
    echo json_encode($m);
	
	}
}


function get_movie_n_a(){
	
	$movies = Model::factory('Movies')
	->where('n_attr',1)
	->find_many();
	$m  = array();
	foreach($movies as $movie){
		$rvs = $movie->reviews()
		->find_many();
		    $r = array();
		foreach($rvs as $rv){
			$users = $rv->usera()
			->find_one();
			$un = $users->username;
		   	$r[] = array(
					    "review_id"=>$rv->id,
						"time"=>$rv->time_of_review,
						"comment"=>$rv->comment,
						"reviewer"=>$un
		          );
			}
		$mss = $movie->schedules()
		->find_many();
		$s = array();
		foreach($mss as $ms){
			$s[]= array(
						"schedule id"=>$ms->id,
						"cinema"=>$ms->cinema,
						"theatre"=>$ms->theatre,
						"rate"=>$ms->pricing,
						"date"=>$ms->dates,
						"time"=>$ms->times
			);
		}
	 
    $m[] = array(
     "movieId" => $movie->id,
	 "title" => $movie->title,
     "genre" =>$movie->genre,
	"poster" =>"http://localhost/sbRsrcs/images/movie_posters/".$movie->genre."/".$movie->poster,
	 "language" => $movie->language,
	 "releaseDate" =>$movie->release_date,
	 "directors" =>$movie->directors,
	 "trailers" =>"http://localhost/sbRsrcs/vids/trailers/".$movie->genre."/".$movie->trailers,
	 "synopsis" =>$movie->plot_synopsis,
	 "cast" =>$movie->movie_cast,
	 "runningTime" =>$movie->running_time,
	 "showtimes" =>$s,
	 "msnRating" =>$movie->msn_movie_rating,
	 "userRating" =>$movie->user_rating,
	 "ageLimit"=>$movie->age_limit,
	 "reviews" =>$r,
	 "website" =>$movie->movie_website,
	 "awards" =>$movie->awards
	 
	);
	}
    echo json_encode($m);
	
}

function get_books(){
	
	$books = Model::factory('Items')
	->where('item_category','book')
	->find_many();
	$b = array();
	foreach($books as $book){
		$b[] = array(
			"item_id"=>$book->id,
			"book_title"=>$book->item_title,
			"author"=>$book->author_artist,
			"book_cover"=>"http://localhost/sbRsrcs/books/historical/".$book->item_cover,
			"features"=>$book->features,
			"weight"=>$book->weight,
			"dimensions"=>$book->features,
			"released"=>$book->release_date,
			"price"=>$book->price,
			"description"=>$book->item_description,
			"rating"=>$book->item_user_rating,
			"review"=>$book->item_review,
			"language"=>$book->language,
			"genre"=>$book->genre,
			"ASIN"=>$book->ASIN,
			"ISBN 10"=>$book->ISBN_10,
			"ISBN 13"=>$book->ISBN_13,
			"Available"=>$book->Availability
			
			  );
	} 
	echo json_encode($b);
}

function get_music(){
	
	$musics = Model::factory('Items')
	->where('item_category','music')
	->find_many();
	$m = array();
	foreach($musics as $music){
		$m[] = array(
			"item_id"=>$music->id,
			"book_title"=>$music->item_title,
			"author"=>$music->author_artist,
			"book_cover"=>"http://localhost/sbRsrcs/music/".$music->item_cover,
			"features"=>$music->features,
			"weight"=>$music->weight,
			"dimensions"=>$music->features,
			"released"=>$music->release_date,
			"price"=>$music->price,
			"description"=>$music->item_description,
			"rating"=>$music->item_user_rating,
			"review"=>$music->item_review,
			"language"=>$music->language,
			"genre"=>$music->genre,
			"Available"=>$music->Availability
			
			  );
	} 
	echo json_encode($m);
}

function get_games(){
	
	$games = Model::factory('Items')
	->where('item_category','game')
	->find_many();
	$g = array();
	foreach($games as $game){
		$g[] = array(
			"item_id"=>$game->id,
			"book_title"=>$game->item_title,
			"author"=>$game->author_artist,
			"book_cover"=>"http://localhost/sbRsrcs/games/".$game->item_cover,
			"features"=>$game->features,
			"weight"=>$game->weight,
			"dimensions"=>$game->features,
			"released"=>$game->release_date,
			"price"=>$game->price,
			"description"=>$game->item_description,
			"rating"=>$game->item_user_rating,
			"review"=>$game->item_review,
			"language"=>$game->language,
			"genre"=>$game->genre,
			"Available"=>$game->Availability
			
			  );
	} 
	echo json_encode($g);
}
function get_elec(){
	
	$els = Model::factory('Items')
	->where('item_category','electronic')
	->find_many();
	$e = array();
	foreach($els as $el){
		$e[] = array(
			"item_id"=>$el->id,
			"book_title"=>$el->item_title,
			"author"=>$el->author_artist,
			"book_cover"=>"http://localhost/sbRsrcs/books/historical/".$el->item_cover,
			"features"=>$el->features,
			"weight"=>$el->weight,
			"dimensions"=>$el->features,
			"released"=>$el->release_date,
			"price"=>$el->price,
			"description"=>$el->item_description,
			"rating"=>$el->item_user_rating,
			"review"=>$el->item_review,
			"language"=>$el->language,
			"genre"=>$el->genre,
			"Available"=>$el->Availability
			
			  );
	} 
	echo json_encode($e);
}
function get_dvd(){
	$dvd = Model::factory('Items')
	->where('item_category','dvd')
	->find_many();
	 
	
	$d = array();
        
	foreach($dvd as $dv){
	    
		 
		$detail = Model::factory('Movies')
		->where('title',$dv->item_title)
	    ->find_one();
		
		//echo $detail->title;
		$d[] = array(
			"item_id"=>$dv->id,
			"movie_title"=>$dv->item_title,
			"author"=>$dv->author_artist,
			"dvd_cover"=>"http://localhost/sbRsrcs/books/historical/".$dv->item_cover,
			"features"=>$dv->features,
			"weight"=>$dv->weight,
			"dimensions"=>$dv->features,
			//"released"=>$detail->release_date,
			"price"=>$dv->price,
			"description"=>$dv->item_description,
			//"rating"=>$detail->item_user_rating,
			"review"=>$dv->item_review,
			"language"=>$dv->language,
			//"genre"=>$detail->genre,
			"Available"=>$dv->Availability
			
			);
	}
	echo json_encode($d);
}

?>