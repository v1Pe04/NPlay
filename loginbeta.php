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
<html lang="no">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NibbaPlay - Login</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    
    <p class="step1">D:\Users\Servers> cd Nibbaplay</p>
    <p class="step2">D:\Users\Servers\Nibbaplay> run.bat</p>
    <p class="step3">host@nibbaplay.xyz> initializing nibbaplay.php</p>
    <p class="step4">Login needed</p>
    <form action="post">
    <p class="step5">Username:</p> <input class="text" type="text" name="user_name" autofocus>

    <!--<p>Password: [Password]</p> -->
    </form>
    <!--<p>Checking for user...</p>
    <p>Access granted</p>
    <p>Rederecting to nibbaplay.xyz</p> -->

</body>
</html>