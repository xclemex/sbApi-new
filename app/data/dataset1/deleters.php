<?php

function delete_user(){
	
   
   
   if($_SESSION['loggegIn']==1){
		session_unset();
                session_destroy();
		
	$name = $_POST['name'];
        $name = json_decode($name); 
	$password = $_POST['password'];
        $password = json_decode($password);
	
	$users = Model::factory('Users')
	->where('name',$name)
	->where('password',$password)
	->find_one();
	    if (!empty($users)){
	 
        $users->delete();
		}
		
		$upd = array();
		$upd[]=array(
			"Msg"=>"See you!Hope U come back later"
              );
	   echo json_encode($upd);

	}

}

?>