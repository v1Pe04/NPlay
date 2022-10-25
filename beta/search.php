<?php
/*
NibbaPlay by Bitchboy IT
+-----------------------------------------------------+
|   _   _ _ _     _           _____  _                |
|  | \ | (_) |   | |         |  __ \| |               |
|  |  \| |_| |__ | |__   __ _| |__) | | __ _ _   _    |
|  | . ` | | '_ \| '_ \ / _` |  ___/| |/ _` | | | |   |
|  | |\  | | |_) | |_) | (_| | |    | | (_| | |_| |   |
|  |_| \_|_|_.__/|_.__/ \__,_|_|    |_|\__,_|\__, |   |
|                                             __/ |   |
|                                            |___/    |
+-------------===[ File Specifications ]===-----------+
|                                                     |
| Build Number:           1.0.0                       |
| Build on Website        1.0.0                       |
| File Name:              search.php                  |
| Created By:             NuutXD                      |
| Last Edited By:         NuutXD                      |
| Languages:                                          |
|  - PHP                                              |
|  - HTML                                             |
|  - JavaScript                                       |
|  - CSS                                              |
|                                                     |
+-----------------------------------------------------+
*/

session_start();

include("apps/connection.php");
include("apps/function.php");

$user_data = check_login($connect);



$output = '';

$tvoutput = '';


if (isset($_POST['search'])) {
  $searchq = $_POST['search'];
  //$searchq = preg_replace("#[^0-9a-z]#i","", $searchq);

  $query = mysqli_query($connect, "SELECT * FROM filmer WHERE title LIKE '%$searchq%'") or die("error");
  $count = mysqli_num_rows($query);

  if ($count == 0) {
    $output = 'There was no movie with that title';
  } else {
    while ($row = mysqli_fetch_array($query)) {

      $output .= '
      <a href="film.php?id=' . $row['id'] . '" class="small-img">
      <img src="' . $row['bilde'] . '" class="play-btn">
      <h2>' . $row['title'] . '</h2>
      <h3>Watch Now</h3>
      <span class="imdbRatingPlugin" data-user="ur134500880" data-title="' . $row['rating'] . '" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
      
      </a>';
    }
  }

  $tvquery = mysqli_query($connect, "SELECT * FROM serier WHERE serie_navn LIKE '%$searchq%'") or die("error");
  $tvcount = mysqli_num_rows($tvquery);

  if ($tvcount == 0) {
    $tvoutput = 'There was no show with that title';
  } else {
    while ($tvrow = mysqli_fetch_array($tvquery)) {
      $tvoutput .= '
            <a href="show.php?showid=' . $tvrow['rating'] . '" class="small-img">
            <img src="' . $tvrow['thumbnail'] . '" class="play-btn">
            <h2>' . $tvrow['serie_navn'] . '</h2>
            <h3>Watch Now</h3>
            <span class="imdbRatingPlugin" data-user="ur134500880" data-title="' . $tvrow['rating'] . '" data-style="p3"></span><script>(function(d,s,id){var js,stags=d.getElementsByTagName(s)[0];if(d.getElementById(id)){return;}js=d.createElement(s);js.id=id;js.src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";stags.parentNode.insertBefore(js,stags);})(document,"script","imdb-rating-api");</script>
            </a>';
    }
  }
}
?>

<!DOCTYPE html>
<html lang="no">

<head>
  <link rel="stylesheet" href="style/style.css">
  <link rel="icon" href="bilder/logo.ico" type="image/gif" sizes="32x32">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="scripts/userPanel.js"></script>
  <link rel="icon" href="bilder/NIBBA.ico" type="image/gif" sizes="32x32">
  <script src="https://kit.fontawesome.com/0e8f967022.js" crossorigin="anonymous"></script>
  <title>NibbaPlay - <?php print($searchq); ?></title>
</head>

<body id="topp">


  <?php include("apps/header.php"); ?>


  <section class="section">
    <h1 style="color:#33CC66;">Movies</h1>
    <div class="grid" style="color:white;">
      <?php print($output) ?>
    </div>
    <h1 style="margin-top:100px;">TV <span style="color:#33CC66;">Shows</span></h1>
    <div class="grid" style="color:white;">
      <?php print($tvoutput) ?>
    </div>
  </section>


</body>



</html>