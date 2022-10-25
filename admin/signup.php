<?php

// Laget av Viljar

session_start();

	include("apps/connection.php");
	include("apps/function.php");

	$user_data = check_login($connect);

	if ( !isAdmin() ) { // Sjekker om bruker er Admin, Hvis ikke blir brukeren redirected til logout.php
		header('location: ../apps/logout.php');
	  }


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//hvis noe som helst er skrevet
		//$user_name = $_POST['user_name'];
		//$password = sha1($_POST['password']);
		$user_name = $_POST['user_name'];
		$password = $_POST['password'];
		$fornavn= $_POST['fornavn'];
		$etternavn= $_POST['etternavn'];
		$uppercase = preg_match('@[A-Z]@', $password);
		$lowercase = preg_match('@[a-z]@', $password);
		$number    = preg_match('@[0-9]@', $password);
		$added_by  = $user_data['user_name'];
		// Koden her sier hvis du ikke har 8 karakter, stor, liten bokstav og 1 nummer, error.
		if(!$uppercase || !$lowercase || !$number || strlen($password) < 8) {

			echo "Passordet er ikke sterk nok";
			return;

		}

		$salt = $user_name;
		$password = $_POST['password'].$salt;
		$password = sha1($password);




		if(!empty($user_name) && !empty($password) && !is_numeric($user_name))
		{

			//hvis username ikke er tom, og passord ikke er tom og nummerert lagre til database
			$user_id = random_num(20);
			$query = "insert into bruker (user_id,user_name,password,fornavn,etternavn,added_by) values ('$user_id','$user_name','$password','$fornavn','$etternavn','$added_by')";

			mysqli_query($connect, $query);

			header("Location: adminpanel.php");
			die;
		}else
		{
			echo "Vennligst skriv riktig info!";
		}
	}
?>


<!DOCTYPE html>
<html>
<head>
	<title>NibbaPlay - Registrer</title>
	<link rel="stylesheet" href="../style/login.css">
	<link rel="icon" href="../bilder/NIBBA.ico" type="image/gif" sizes="32x32">
</head>
<body>

	

	<div class="box" style="height:400px;">

		<form method="post">
			<div style="font-size: 40px;margin: 20px;margin-bottom:40px;color: white;">Registrer</div>

			<input class="text" placeholder="Brukernavn" type="text" name="user_name">
			<input class="text" placeholder="Passord" type="password" name="password">
			<input class="text" placeholder="Fornavn" type="text" name="fornavn">
			<input class="text" placeholder="Etternavn" type="text" name="etternavn">

			<input class="button" type="submit" value="Registrer">
		</form>
	</div>
</body>
</html>
