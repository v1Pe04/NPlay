<?php

session_start();

include("apps/connection.php");
include("apps/function.php");

if (isBetaUser()) {
  header("location: beta/index.php");
}

$user_data = check_login($connect);

$output = '';

$tvoutput = '';

$query = "SELECT * FROM filmer ORDER BY RAND() LIMIT 20";
$tvquery = "SELECT * FROM serier ORDER BY serie_id ASC";



$sql = mysqli_query($connect, $query);
while ($row = mysqli_fetch_array($sql)) {
  $output .= '
    <a href="/nibbaplay/film.php?id=' . $row['id'] . '" class="small-img">
    <img src="' . $row['bilde'] . '" class="play-btn">
    <h2>' . $row['title'] . '</h2>
    <h3>Watch Now</h3>
    <span class="imdbRatingPlugin" data-user="ur134500880" data-title="' . $row['rating'] . '" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
    </a>';
}

$sql = mysqli_query($connect, $tvquery);
while ($row = mysqli_fetch_array($sql)) {
  $tvoutput .= '
    <a href="show.php?showid=' . $row['rating'] . '" class="small-img">
    <img src="' . $row['thumbnail'] . '" class="play-btn">
    <h2>' . $row['serie_navn'] . '</h2>
    <h3>Watch Now</h3>
    <span class="imdbRatingPlugin" data-user="ur134500880" data-title="' . $row['rating'] . '" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
    </a>';
}


?>

<!DOCTYPE html>

<html>

<head>
  <meta charset="utf-8">
  <title>Hjem - NPlay</title>
  <link rel="stylesheet" href="style/style.css">
  <link rel="icon" href="bilder/NIBBA.ico" type="image/gif" sizes="32x32">
  <script src="https://kit.fontawesome.com/0e8f967022.js" crossorigin="anonymous"></script>
  <script src="scripts/userPanel.js"></script>
</head>

<body>

  <?php include("apps/header.php"); ?>


  <section class="section">
    <h1 style="color:#33CC66;">Movies</h1>
    <div class="grid">
      <?php print($output) ?>
    </div>
    <h1 style="margin-top:100px;">TV <span style="color:#33CC66;">Shows</span></h1>
    <div class="grid">
      <?php print($tvoutput) ?>
    </div>
  </section>


</body>

</html>