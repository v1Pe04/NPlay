<?php



// Session er et løp
session_start();

// Include betyr inkluder disse filene
include("apps/connection.php");
include("apps/function.php");

$user_data = check_login($connect);


$title='';
$output= '';
$episode='';

$id=$_GET['viewkey'];

$query="SELECT * FROM episoder WHERE episode_id='$id'";



    $sql=mysqli_query($connect, $query);
    while($row=mysqli_fetch_array($sql)) {
    $title=$row['episode_navn'];
    $vid=$row['episode_film'];
    $episode=$row['episode_nummer'];
        
        
    
                    }

                  


?>

<!DOCTYPE html>
<html lang="no">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="bilder/NIBBA.ico" type="image/gif" sizes="32x32">
    <link rel="stylesheet" href="style/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NibbaPlay - <?php print($title) ?></title>
    <script src="https://kit.fontawesome.com/0e8f967022.js" crossorigin="anonymous"></script>
    <script src="scripts/userPanel.js"></script>
</head>
<body>
    
<?php include("apps/header.php"); ?>
    
    <section class="serie">
                    <h1 style="text-align:center;">
                    Episode <?php print($episode) ?> - <?php print($title) ?>
                    </h1>
                    <iframe src="<?php print($vid) ?>" allowfullscreen="true" style="width:800px;height:500px;margin-left:190px;margin-top:50px;"></iframe>
        </section>
</body>
</html>