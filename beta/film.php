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
| File Name:              film.php                    |
| Created By:             NuutXD                      |
| Last Edited By:         NuutXD                      |
| Languages:                                          |
|  - PHP                                              |
|  - HTML                                             |
|  - MySQL                                            |
|  - JavaScript                                       |
|  - CSS                                              |
|                                                     |
+-----------------------------------------------------+
*/

// Session er et løp
session_start();

// Include betyr inkluder disse filene
include("apps/connection.php");
include("apps/function.php");

$user_data = check_login($connect);



$output = '';

$like = '';

$anboutput = '';
$comments = '';

$id = $_GET['id'];



$query = "SELECT * FROM filmer WHERE id='$id'";



$sql = mysqli_query($connect, $query);
while ($row = mysqli_fetch_array($sql)) {
  $title = $row['title'];
  $desc = $row['beskrivelse'];
  $vid = $row['film'];
  $rating = $row['rating'];
}

$anbefalt = "SELECT * FROM filmer ORDER BY RAND() LIMIT 5";

$sql2 = mysqli_query($connect, $anbefalt);
while ($row = mysqli_fetch_array($sql2)) {
  $anboutput .= '
      <a href="film.php?id=' . $row['id'] . '" class="item">
        <div class="bilde">
        <img src="' . $row['bilde'] . '">
        </div>
        <h4>' . $row['title'] . '</h4>
      </a>
    ';
}

$movieQuery = $connect->query("SELECT 
  filmer.id, 
  filmer.title

  FROM filmer

  LEFT JOIN film_likes
  ON filmer.id = film_likes.film

  GROUP BY filmer.id
");

while ($row = $movieQuery->fetch_object()) {
  $movies[] = $row;
}

function likeCheck()
{
  include("apps/connection.php");
  $user_data = check_login($connect);
  $id = $_GET['id'];
  $query3 = "SELECT COUNT(id) AS total FROM film_likes WHERE film='$id' AND user={$user_data['user_id']}";
  $querycheck = mysqli_query($connect, $query3);
  $if = mysqli_fetch_assoc($querycheck);
  if ($if['total'] == (int)1) {
    return true;
  } else {
    return false;
  }
}

$commentQuery = ("SELECT * FROM comments INNER JOIN bruker ON comments.user = bruker.user_id WHERE film='$id'");


$sql3 = $connect->query($commentQuery);
while ($row = mysqli_fetch_array($sql3)) {
  $comments .= '
    <div class="comment">
      <div class="user">
        <a class="user-items"><i class="far fa-user"></i></a>
        <div class="userinfo">
          <div class="bruker"><div class="navn"><p><span>' . $row['fornavn'] . '</span> ' . $row['etternavn'] . '</p>
          <div class="brukernavn"><p>@' . $row['user_name'] . '</p></div></div></div>
        </div>
      </div>

      <div class="commenttext">
        ' . $row['comment'] . '
      </div>
    </div>
    ';
}




$likequery = "SELECT COUNT(id) as total FROM film_likes where film='$id'";
$likemy = mysqli_query($connect, $likequery);
$like = mysqli_fetch_assoc($likemy);


?>

<!DOCTYPE html>
<html lang="no">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="stylesheet" href="style/style.css">
  <link rel="stylesheet" href="style/film.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NibbaPlay - <?php print($title) ?></title>
  <script src="https://kit.fontawesome.com/0e8f967022.js" crossorigin="anonymous"></script>
  <link rel="icon" href="bilder/NIBBA.ico" type="image/gif" sizes="32x32">
  <script src="scripts/userPanel.js"></script>
  <style>
    .imdbRatingPlugin {
      z-index: 200;
      background: rgba(0, 0, 0, 0);
      width: 60px;
      height: 30px;
      padding: 5px 15px;
      transform: none;
      box-shadow: none;
      transform: translateY(14px)translateX(-12px);
      overflow: hidden;
    }
  </style>
</head>

<body>

  <?php include("apps/header.php"); ?>

  <section class="film">
    <section class="video">
      <h1>Powered by Nibba<span>Play™</span></h1>
      <iframe src="<?php print($vid) ?>" allowfullscreen="true" style="width:800px;height:500px;margin-top:50px;"></iframe>
      <h1 style="text-align:left; margin-top: 10px;">
        <?php print($title) ?>
      </h1>
      <?php if (likeCheck()) : ?>
        <style>
          .like i {
            color: #33CC66;
          }
        </style>
      <?php endif; ?>
      <div class="like"><a href="apps/like.php?type=movie&id=<?php echo $id; ?>">
          <p><?php print($like['total']) ?></p> <i class="fas fa-thumbs-up"></i>
        </a></div>
      <h4 style="color:white;text-align:left;margin-top:10px;font-weight:300;width:70%;">
        <?php print($desc) ?>
      </h4>
      <br>
      <h3 style="color:white;display:inline;">IMDb rating: </h3>
      <span class="imdbRatingPlugin" data-user="ur134500880" data-title="<?php print($rating); ?>" data-style="p3"></span>
      <script>
        (function(d, s, id) {
          var js, stags = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) {
            return;
          }
          js = d.createElement(s);
          js.id = id;
          js.src = "https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js";
          stags.parentNode.insertBefore(js, stags);
        })(document, "script", "imdb-rating-api");
      </script>


      <div class="comments">
        <div class="commentsheader">Comments <span>BETA</span></div>

        <div class="commentform">
          <form action="apps/comment.php?type=movie&id=<?php print($id); ?>" method="post">
            <textarea type="text" placeholder="Write a comment..." name="comment"></textarea>
            <button type="submit" value="Post">Post</button>
          </form>
        </div>


        <?php print($comments); ?>

      </div>
    </section>

    <section class="anbefalt">
      <h1 style="text-align:right;">Nibba<span>Play</span> <br> Anbefaler også</h1>
      <?php print($anboutput); ?>
    </section>

  </section>

</body>

</html>