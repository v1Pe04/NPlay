<?php

// Laget av Viljar

// Session er et løp
session_start();

// Include betyr inkluder disse filene
include("apps/connection.php");
include("apps/function.php");

$user_data = check_login($connect);

$id = $_GET['showid'];

$title = '';

$output = '';

$query = "SELECT * FROM sesonger WHERE serie_id='$id' ORDER BY sesong_tall ASC";

$sql = mysqli_query($connect, $query);
while ($row = mysqli_fetch_array($sql)) {
  $title = $row['serie_navn'];
  $output .= '
  <li class="showitems">
    <a href="episoder.php?id=' . $row['sesong_nummer'] . '" class="show">
      <h2 class="title">Sesong <span>' . $row['sesong_tall'] . '</span></h2>
      <p class="showname"><span>-</span> ' . $row['serie_navn'] . '</p>
      <p class="episoder">Episoder: <span>' . $row['episoder'] . '</span></p>
      <i class="fas fa-chevron-right"></i>
    </a>
  </li>
  ';
}



// <a href="episoder.php?id=' . $row['sesong_nummer'] . '" class="small-img">
// <h2>' . $row['serie_navn'] . '<br>Sesong ' . $row['sesong_tall'] . '</h2>
// <h3>Watch Now</h3>
// </a>';


//  <li class="showitem">
//    <a href="#" class="show">
//      <h2 class="title">Sesong <span>4</span></h2>
//      <p class="showname"><span>-</span> Rick and Morty</p>
//      <p class="episoder">Episoder: <span>10</span></p>
//      <i class="fas fa-chevron-right"></i>
//    </a>
//  </li>


?>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title><?php print($title); ?> - NibbaPlay</title>
  <link rel="stylesheet" href="style/style.css">
  <link rel="stylesheet" href="style/show.css">
  <link rel="icon" href="bilder/NIBBA.ico" type="image/gif" sizes="32x32">
  <script src="https://kit.fontawesome.com/0e8f967022.js" crossorigin="anonymous"></script>
  <script src="scripts/userPanel.js"></script>
</head>

<body>


  <?php include("apps/header.php"); ?>


  <section class="section">
    <h1 style="color:#33CC66;"><?php print($title) ?></h1>
    <ul class="showlist">
      <?php print($output) ?>
      <!-- <li class="showitem">
        <a href="#" class="show">
          <h2 class="title">Sesong <span>1</span></h2>
          <p class="showname"><span>-</span> Rick and Morty</p>
          <p class="episoder">Episoder: <span>11</span></p>
          <i class="fas fa-chevron-right"></i>
        </a>
      </li>
      <li class="showitem">
        <a href="#" class="show">
          <h2 class="title">Sesong <span>2</span></h2>
          <p class="showname"><span>-</span> Rick and Morty</p>
          <p class="episoder">Episoder: <span>10</span></p>
          <i class="fas fa-chevron-right"></i>
        </a>
      </li>
      <li class="showitem">
        <a href="#" class="show">
          <h2 class="title">Sesong <span>3</span></h2>
          <p class="showname"><span>-</span> Rick and Morty</p>
          <p class="episoder">Episoder: <span>10</span></p>
          <i class="fas fa-chevron-right"></i>
        </a>
      </li>
      <li class="showitem">
        <a href="#" class="show">
          <h2 class="title">Sesong <span>4</span></h2>
          <p class="showname"><span>-</span> Rick and Morty</p>
          <p class="episoder">Episoder: <span>10</span></p>
          <i class="fas fa-chevron-right"></i>
        </a>
      </li> -->
    </ul>
  </section>


</body>

</html>