<?php
session_start();

require_once('app/lib/orm/idiorm.php');
require_once('app/lib/orm/paris.php');
require_once('models/sbModel.php');
require_once('models/itemModel.php');
require_once('models/movieModel.php');
require_once('models/castModel.php');
require_once('models/mReviewModel.php');
require_once('models/mScheduleModel.php');
require_once('models/userModel.php');

require_once('app/other lib/c_inp/input_sanitizer.php');
//globals
sanitize($_GET, array( 'date'=>date('Y-m-d'), 
                        'id'=>'int',
						'type'=>'str'
					   ) );
sanitize($_POST, array( 'user_id' =>'int',
                        'rating' =>'str',
                        'review' => 'str',
						'username'=>'str',
						'password'=>'str'
						) );
/*sanitize($_SESSION, array( 'id'=>'int',
						   'name'=>'str',
						   'password'=>'str'
      				      ) );*/
//singles
sanitizeOne('$id','int');
//sanitizeOne($id,'int');



require_once('misc_func.php');
require_once('getters.php');
require_once('posters.php');
require_once('updaters.php');
require_once('deleters.php');



  ORM::configure('mysql:host=localhost;dbname=silver bird');
  ORM::configure('username', 'root');
  ORM::configure('password', '');

 






 
?>