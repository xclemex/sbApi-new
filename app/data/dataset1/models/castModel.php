<?php

class Casts extends SbModel{

		public function movie(){
		return $this->belongs_to('Movies');
    }
}

?>