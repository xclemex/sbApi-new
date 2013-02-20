<?php

class Items extends SbModel{
	
	public function movies(){
		return $this->has_one('Movies');
    }
}

?>