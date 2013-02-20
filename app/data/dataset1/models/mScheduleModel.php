<?php

class Movie_schedules extends SbModel{

	public function movie(){
		return $this->belongs_to('Movies');
    }
}

?>