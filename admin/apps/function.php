<?php


function check_login($connect)
{

	if(isset($_SESSION['user_id']))
	{

		$id = $_SESSION['user_id'];
		$query = "select * from bruker where user_id = '$id' limit 1";

		$result = mysqli_query($connect,$query);
		if($result && mysqli_num_rows($result) > 0)
		{

			$user_data = mysqli_fetch_assoc($result);
			return $user_data;
		}
		
	}
	
	

	

	//redirect to login
	header("Location: login.php");
	die;

}




function random_num($length)
{

	$text = "";
	if($length < 5)
	{
		$length = 5;
	}

	$len = rand(4,$length);

	for ($i=0; $i < $len; $i++) {
		# code...

		$text .= rand(0,9);
	}

	return $text;
}

function isAdmin() {
	include("connection.php");
	$user_data = check_login($connect);
	if($user_data['user_level'] == (int)1) {
	  return true;
	} else {
	  return false;
	}
  }


?>