<?php

// Laget av Viljar

// Session er et løp
session_start();

// Include betyr inkluder disse filene
include("apps/connection.php");
include("apps/function.php");

$user_data = check_login($connect);

$id = $_GET['id'];


$output = '';
$title = '';

$query = "SELECT * FROM episoder WHERE sesong_nummer='$id'";

$sql = mysqli_query($connect, $query);
while ($row = mysqli_fetch_array($sql)) {

  $output .= '
    <li class="showitem">
      <a class="show">
        <h2 class="title">Episode <span>' . $row['episode_nummer'] . '</span></h2>
        <p class="showname"><span>-</span> ' . $row['show_title'] . '</p>
        <i class="fas fa-chevron-right"></i>
        
      </a>
      <iframe loading="lazy" src="' . $row['episode_film'] . '" allowfullscreen="true" class="vid"></iframe>
    </li>';
}

/*

<li class="showitem">
  <a class="show">
    <h2 class="title">Episode <span>7</span></h2>
    <p class="showname"><span>-</span> Rick and Morty</p>
    <p class="episoder">Sesong <span>5</span></p>
    <i class="fas fa-chevron-right"></i>
  </a>
  <iframe src="https://www.2embed.ru/embed/imdb/tv?id=tt2861424&s=5&e=7" allowfullscreen="true" class="vid"></iframe>
</li>

*/

$showname = "SELECT * FROM sesonger where sesong_nummer='$id'";

$sql = mysqli_query($connect, $showname);
while ($row = mysqli_fetch_array($sql)) {
  $title = $row['serie_navn'];
  $sesong = $row['sesong_tall'];
}

?>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>NibbaPlay - <?php print($title); ?> Sesong <?php print($sesong); ?></title>
  <link rel="stylesheet" href="style/style.css">
  <link rel="stylesheet" href="style/show.css">
  <link rel="icon" href="bilder/NIBBA.ico" type="image/gif" sizes="32x32">
  <script src="scripts/userPanel.js"></script>

  <script src="https://kit.fontawesome.com/0e8f967022.js" crossorigin="anonymous"></script>
</head>

<body>


  <?php include("apps/header.php"); ?>


  <section class="section">
    <h1 style="color:#33CC66; margin-bottom:20px;"><?php print($title); ?> <span style="color:white;"> Sesong <?php print($sesong); ?> </span></h1>
    <ul class="showlist" id="showlist">
      <?php print($output)
      ?>

      <!-- <li class="showitem active">
        <a class="show">
          <h2 class="title">Episode <span>7</span></h2>
          <p class="showname"><span>-</span> Rick and Morty</p>
          <p class="episoder">Sesong <span>5</span></p>
          <i class="fas fa-chevron-right"></i>
        </a>
        <iframe src="https://www.2embed.ru/embed/imdb/tv?id=tt2861424&s=5&e=7" allowfullscreen="true" class="vid"></iframe>
      </li>
      <li class="showitem">
        <a class="show">
          <h2 class="title">Episode <span>7</span></h2>
          <p class="showname"><span>-</span> Rick and Morty</p>
          <p class="episoder">Sesong <span>5</span></p>
          <i class="fas fa-chevron-right"></i>
        </a>
        <iframe src="https://www.2embed.ru/embed/imdb/tv?id=tt2861424&s=5&e=7" allowfullscreen="true" class="vid"></iframe>
      </li>
      <li class="showitem">
        <a class="show">
          <h2 class="title">Episode <span>7</span></h2>
          <p class="showname"><span>-</span> Rick and Morty</p>
          <p class="episoder">Sesong <span>5</span></p>
          <i class="fas fa-chevron-right"></i>
        </a>
        <iframe src="https://www.2embed.ru/embed/imdb/tv?id=tt2861424&s=5&e=7" allowfullscreen="true" class="vid"></iframe>
      </li> -->
    </ul>
    <script src="scripts/episode.js"></script>
  </section>




</body>

</html>