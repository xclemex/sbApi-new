<?php

function create_user(){
    if(isset($_POST['firstname']) and isset($_POST['password'])){
		$name = $_POST['name'];
                $name = json_decode($name);
		$firstname = $_POST['firstname'];
                $firstname = json_decode($firstname); 
		$lastname = $_POST['lastname'];
                $lastname = $json_decode($lastname);
		$email = $_POST['email'];
                $email =json_decode($email);
		$img = $_FILES["file"]["name"];
	    insert_img("prof_img");
		$cp = $_FILES["file"]["name"];
		insert_img("coverphoto");
		$gender = $_POST['gender'];
                $gender = json_decode($gender);
		$password = $_POST['password'];
                $password = json_decode($password);
		$typeOfAccount = $_POST['type_of_accout'];
                $typeofAccount = json_decode($typeofAccount);
		$mtsee = $_POST['moviesIwantToSee'];
                $mtsee = json_decode($mtsee);
		$mtsee = implode(",",$mtsee);
		$favmov = $_POST['favoriteMovies'];
                $favmov = json_decode($favmov);
		$favmov = implode(",",$favmov);
		
    $users = Model::factory('Users')
	->where('name',$name)
	->where('password',$password)
	->find_one();
	    if (empty($users)){
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
	 $users = Model::factory('Users')
	->where('name',$name)
	->where('password',$password)
	->find_one();
	$_SESSION['id'] = $users->id;
    $_SESSION['name'] = $users->name;
    $_SESSION['password'] = $users->password;
	$n =  $users->name;
	echo "a new user $n was created"."<br />";
		} 
		else{
	echo "username/password already exists";
	}
		
         }
	
}
function login(){
	 if(isset($_POST['name']) and isset($_POST['password'])){
	 
	 $username = $_POST['name'];
         $username = json_decode($username);
	 $password = $_POST['password'];
         $password = json_decode($password);
	 $user = Model::factory('Users') 
	->where('name',$name)
	->where('password',$password)
	->find_one();
	   if (!empty($user)){
		   $_SESSION['id'] = $user->id;
		   $_SESSION['name'] = $user->name;
		   $_SESSION['password'] = $user->password;
		   $_SESSION['loggedIn'] = 1;
		   $n = $_SESSION['name'];
		   $p =$_SESSION['password'];
		   echo "$n"."<br />"."$p";
	   }
	 }
	
}

function logout(){
   
   session_unset();
   session_destroy();
   //exit();	
}
?>