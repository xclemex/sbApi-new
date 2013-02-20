<?php

class Movies extends SbModel{
	
	public function reviews(){
		return $this->has_many('Movie_Reviews');
    }
	public function schedules(){
		return $this->has_many('Movie_schedules');
    }
	public function cast(){
		return $this->has_many('Casts');
    }
	public function items(){
		return $this->belongs_to('Items');
    }
}

?>