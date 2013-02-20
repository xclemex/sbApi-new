<?php

class Users extends SbModel{

	public function reviews(){
		return $this->has_one('Movie_Reviews');
    }
}

?>