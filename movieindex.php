<?php

// Laget av Viljar

// Session er et løp
session_start();

// Include betyr inkluder disse filene
include("apps/connection.php");
include("apps/function.php");

$user_data = check_login($connect);

$output='';

$tvoutput='';

$query="SELECT * FROM filmer ORDER BY title ASC";
$tvquery="SELECT * FROM serier ORDER BY serie_navn ASC";



$sql=mysqli_query($connect, $query);
while($row=mysqli_fetch_array($sql)) {
  $output .= '
    <a href="film.php?id='.$row['id'].'" class="list-item">
    <h2>'.$row['title'].'</h2>
    </a>';
}

$sql=mysqli_query($connect, $tvquery);
while($row=mysqli_fetch_array($sql)) {
  $tvoutput .= '
    <a href="show.php?showid='.$row['serie_navn'].'" class="list-item">
    <h2>'.$row['serie_navn'].'</h2>
    </a>';
}              


?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>NibbaPlay - Movie Index</title>
    <link rel="stylesheet" href="style/style.css">
    <link rel="icon" href="bilder/NIBBA.ico" type="image/gif" sizes="32x32">
    <script src="scripts/userPanel.js"></script>
    <script src="https://kit.fontawesome.com/0e8f967022.js" crossorigin="anonymous"></script>
  </head>

  <body>

  <?php include("apps/header.php"); ?>
  

<section class="section">
<h1><span>Movies</span style="color:#33CC66;"> A-Å</h1>
<div class="listgrid">
    <?php print($output) ?>
</div>
<h1 style="margin-top:100px;">TV <span style="color:#33CC66;">Shows</span> A-Å</h1>
    <?php print($tvoutput) ?>
</section>


  </body>
</html>
