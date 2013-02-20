<?php

function rate_movie($id){
	
	$r = $_POST['rating'];
        $r = json_decode($r);
	$rate = Model::factory('Movies')
	->find_one($id);
	$sum = $rate->r_sum;
	$count =$rate->cnt;
	$sum = $sum + $r;
	$count =$count + 1;
	$rate->r_sum = $sum;
	$rate->cnt = $count;
	$rate->user_rating = $sum/$count;
	$rate->save();
	
}


function rate_book($id){
	
	$b = $_POST['rating'];
        $b = json_decode($b);
	$rate = Model::factory('Items')
	->where('item_category','book')
	->find_one($id);
	$sum = $rate->r_sum;
	$count =$rate->cnt;
	$sum = $sum + $b;
	$count =$count + 1;
	$rate->r_sum = $sum;
	$rate->cnt = $count;
	$rate->user_rating = $sum/$count;
	$rate->save();
}

function rate_music($id){
	
	
	$m = $_POST['rating'];
        $m = json_decode($m);
	$rate = Model::factory('Items')
	->where('item_category','music')
	->find_one($id);
	$sum = $rate->r_sum;
	$count =$rate->cnt;
	$sum = $sum + $m;
	$count =$count + 1;
	$rate->r_sum = $sum;
	$rate->cnt = $count;
	$rate->user_rating = $sum/$count;
	$rate->save();	
}

function rate_game($id){
	
	
	$g = $_POST['rating'];
        $g = json_decode($g);
	$rate = Model::factory('Items')
	->where('item_category','game')
	->find_one($id);
	$sum = $rate->r_sum;
	$count =$rate->cnt;
	$sum = $sum + $g;
	$count =$count + 1;
	$rate->r_sum = $sum;
	$rate->cnt = $count;
	$rate->user_rating = $sum/$count;
	$rate->save();}

function rate_elec($id){
	
	
	$e = $_POST['rating'];
        $e = json_decode($e);
	$rate = Model::factory('Items')
	->where('item_category','electronic')
	->find_one($id);
	$sum = $rate->r_sum;
	$count =$rate->cnt;
	$sum = $sum + $e;
	$count =$count + 1;
	$rate->r_sum = $sum;
	$rate->cnt = $count;
	$rate->user_rating = $sum/$count;
	$rate->save();
}


function rv_movie($id){
	
	$user=$_POST['user_id'];
        //$user = json_decode($user);
	$rev = $_POST['review'];
        //$user = json_decode($user);
	$rv = Model::factory('Movie_reviews')->create();
	$rv->movies_id = $id;
	$rv->users_id = $user;
	$rv->comment = $rev;
	$rv->time_of_review = date('Y-m-d h:i:s');
	$rv->save(); 
}

function rv_movie_alt($id){
	
	$request = Slim::getInstance()->request();
    $body = $request->getBody();
	$rev = $body->review;
    $rev = json_decode($rev);
	$user = $body->user_id;
	$user = json_decode($body['user_id']);
	$rv = Model::factory('Movie_reviews')->create();
	$rv->movies_id = $id;
	$rv->users_id = $user;
	$rv->comment = $rev;
	$rv->time_of_review = date('Y-m-d h:i:s');
	$rv->save(); 
}
 
 function rv_book($id){
	
	//$user= session_id
	$rev = $_POST['review'];
        $rev = json_decode($rev);
	$rv = Model::factory('Items')
	->where('item_category','book')
	->find_one($id);
	$rv->reviews .=$rev.",";
	$rv->save(); 
}

function rv_music($id){
	
	//$user= session_id
	$rev = $_POST['review'];
        $rev = json_decode($rev);
	$rv = Model::factory('Items')
	->where('item_category','music')
	->find_one($id);
	$rv->reviews .=$rev.",";
	$rv->save();
}

function rv_game($id){
	
	//$user= session_id
	$rev = $_POST['review'];
        $rev = json_decode($rev);
	$rv = Model::factory('Items')
	->where('item_category','game')
	->find_one($id);
	$rv->reviews .=$rev.",";
	$rv->save();}

function rv_elec($id){
	
	//$user= session_id
	$rev = $_POST['review'];
        $rev = json_decode($rev);
	$rv = Model::factory('Items')
	->where('item_category','electronic')
	->find_one($id);
	$rv->reviews .=$rev.",";
	$rv->save();
}

function edit_user_account(){
	if($_SESSION['loggegIn']==1){
		$name = $_POST['name'];
                $name = json_decode($name);
		$firstname = $_POST['firstname'];
                $firstname = json_decode($firstname);
		$lastname = $_POST['lastname'];
                $lastname = json_decode($lastname);
		$email = $_POST['email'];
                $email = json_decode($email);
		$img = $_FILES["file"]["name"];
	    insert_img("users");
		$gender = $_POST['gender'];
                $gender = json_decode($gender);
		$password = $_POST['password'];
                $password = json_decode($password);
		$typeOfAccount = $_POST['type_of_accout'];
                $typeofAccount = json_decode($typeofAccount);
		$mtsee = $_POST['moviesIwantToSee'];
                $mtsee = json_decode($mtsee);
		$favmov = $_POST['favoriteMovies'];
                $favmov = json_decode($favmov);
		
	$users = Model::factory('Users')
	->where('name',$name)
	->where('password',$password)
	->find_one();
	    if (!empty($users)){
	 $users = Model::factory('Users')->create();
     $users->name = $name;
     $users->password = $password;
	 $users->firstname = $firstname;
     $users->lastname = $lastname;
     $users->email = $email;
     $users->profile_pic = $img;
	 $users->coverphoto = $cp;
     $users->gender = $gender;
     $users->movie_wishlist = $mtsee;
     $users->favourite_movies = $favmov;
	 $users->type_of_account = $typeOfAccount;
     $users->save();
		}
		
		$upd = array();
		$upd[]=array(
			
     "name"=>$users->name,
     "password"=>$users->password,
	 "firstname"=>$users->firstname,
     "lastname"=>$users->lastname,
     "email"=>$users->email,
     "photo"=>$users->profile_pic,
	 "coverphoto"=>$users->coverphoto,
     "gender"=>$users->gender,
     "moviesIWantToSee"=>explode(" ",$users->movie_wishlist),
     "favoriteMovies"=>explode(" ",$users->favourite_movies),
	 "typeOfAccount"=>$users->type_of_account
	          );
			  echo json_encode($upd);

	}
}

?>