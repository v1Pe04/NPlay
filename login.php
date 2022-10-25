<?php

session_start();

	include("apps/connection.php");
	include("apps/function.php");


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//data er postet
		//$user_name = $_POST['user_name'];
		//$password = $_POST['password'];
		$user_name = $_POST['user_name'];
		$salt = $user_name;
		$password = $_POST['password'].$salt;
		$password = sha1($password);

		if(!empty($user_name) && !empty($password) && !is_numeric($user_name))
		{

			//lese fra database
			$query = "select * from bruker where user_name = '$user_name' limit 1";
			$result = mysqli_query($connect, $query);

			if($result)
			{
				if($result && mysqli_num_rows($result) > 0)
				{

					$user_data = mysqli_fetch_assoc($result);

					if($user_data['password'] === $password)
					{

						$_SESSION['user_id'] = $user_data['user_id'];
						header("Location: index.php");
						die;
					}
				}
			}

			echo "Feil brukernavn eller passord!";
		}else
		{
			echo "Feil brukernavn eller passord!";
		}
	}

?>


<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="style/login.css">
	<title>NibbaPlay - Login</title>
	<link rel="icon" href="bilder/logo.png" type="image/gif" sizes="32x32">
</head>
<body>

	<style type="text/css">


	</style>

	<div class="box">

		<form method="post">
			<div style="font-size: 40px;margin: 20px;margin-bottom:40px;color: white;">Logg inn</div>

			<input class="text" placeholder="Brukernavn" type="text" name="user_name">
			<input class="text" placeholder="Passord" type="password" name="password">

			<input class="button" type="submit" value="Logg Inn">
		</form>
	</div>
</body>
</html>
