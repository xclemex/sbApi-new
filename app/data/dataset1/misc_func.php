<?php

function insert_img($loc){
	
	if ((($_FILES["file"]["type"] == "image/gif")
|| ($_FILES["file"]["type"] == "image/jpeg")
|| ($_FILES["file"]["type"] == "image/jpg")
|| ($_FILES["file"]["type"] == "image/png")
|| ($_FILES["file"]["type"] == "image/pjpeg"))
&& ($_FILES["file"]["size"] < 300000))
  {
  if ($_FILES["file"]["error"] > 0)
    {
    echo "Return Code: " . $_FILES["file"]["error"] . "<br />";
    }
  else
    {
    echo "Uploaded: " . $_FILES["file"]["name"] . "<br />";
    echo "Type: " . $_FILES["file"]["type"] . "<br />";
    echo "Size: " . ($_FILES["file"]["size"] / 1024) . " Kb<br />";

    if (file_exists("http:localhost/sbRsrcs/images/users/$loc/" . $_FILES["file"]["name"]))
      {
      echo $_FILES["file"]["name"] . " already exists.". "<br />";;
      }
    else
      {
      move_uploaded_file($_FILES["file"]["tmp_name"],
      "http:localhost/sbRsrcs/images/users/".$loc ."/". $_FILES["file"]["name"]);
      echo "Stored in: " . "http:localhost/sbRsrcs/images/users/$loc/" . $_FILES["file"]["name"]. "<br />";
      }
    }
  }
else
  {
  echo "Invalid file". "<br />";
  }
  
}

?>