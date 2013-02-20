<?php

class Movie_reviews extends SbModel{
	
	public function usera(){
		return $this->belongs_to('Users');
    }
	public function movie(){
		return $this->belongs_to('Movies');
    }

}
?>