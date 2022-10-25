<?php
/*
NibbaPlay by Bitchboy IT
╔═════════════════════════════════════════════════════╗
║   _   _ _ _     _           _____  _                ║
║  | \ | (_) |   | |         |  __ \| |               ║
║  |  \| |_| |__ | |__   __ _| |__) | | __ _ _   _    ║
║  | . ` | | '_ \| '_ \ / _` |  ___/| |/ _` | | | |   ║
║  | |\  | | |_) | |_) | (_| | |    | | (_| | |_| |   ║
║  |_| \_|_|_.__/|_.__/ \__,_|_|    |_|\__,_|\__, |   ║
║                                             __/ |   ║
║                                            |___/    ║
╠═══════════════[ 𝓕𝓲𝓵𝓮 𝓢𝓹𝓮𝓬𝓲𝓯𝓲𝓬𝓪𝓽𝓲𝓸𝓷𝓼 ]══════════════╣
║                                                     ║
║ Build Number:           1.0.0                       ║
║ Build on Website        1.0.0                       ║
║ File Name:              index.php                   ║
║ Created By:             NuutXD                      ║
║ Last Edited By:         NuutXD                      ║
║ Languages:                                          ║
║  - PHP                                              ║
║  - HTML                                             ║
║  - MySQL                                            ║
║                                                     ║
╚═════════════════════════════════════════════════════╝
*/
session_start();

include("apps/connection.php");
include("apps/function.php");

$user_data = check_login($connect);

$featoutput = '';
$mcuoutput  = '';
$swoutput   = '';

$date = date("y/m/d");

$featquery = "SELECT * FROM featured_movies LEFT JOIN filmer ON featured_movies.movie_id = filmer.id WHERE featured_from <= '$date' and featured_until >= '$date'";

$sqlfeat = mysqli_query($connect, $featquery);
while ($row = mysqli_fetch_array($sqlfeat)) {
    $featoutput .= '
        <a href="film.php?id=' . $row['movie_id'] . '" class="featmovie swiper-slide">
            <img class="movie" src="' . $row['wallpaper'] . '" alt="">
            <div class="title">
                <h1>' . $row['title'] . '</h1>
                <p class="desc"> - ' . $row['beskrivelse'] . '</p>
            </div>
        </a>
    ';
}

/*
<a href="#" class="featmovie swiper-slide">
                    <img class="movie" src="https://wallpaperaccess.com/full/900472.jpg" alt="">
                    <h1 class="title">The Lego Movie</h1>
                </a>
*/

$querymcu = "SELECT * FROM filmer WHERE kategori = 'MCU'";

$sqlmcu = mysqli_query($connect, $querymcu);
while ($row = mysqli_fetch_array($sqlmcu)) {
    $mcuoutput .= '
        <a href="film.php?id=' . $row['id'] . '" class="videowrapper swiper-slide">
            <img src="' . $row['bilde'] . '" alt="' . $row['title'] . '">
            <h1>' . $row['title'] . '</h1>
            <p>' . $row['beskrivelse'] . '</p>
            <button class="info"><i class="fas fa-info"></i></button>
            <button class="watch"><i class="fas fa-play"></i></button>
            <button class="love"><i class="far fa-heart"></i></button>
        </a>
        ';
}

$querysw = "SELECT * FROM filmer WHERE kategori = 'Starwars'";

$sqlsw = mysqli_query($connect, $querysw);
while ($row = mysqli_fetch_array($sqlsw)) {
    $swoutput .= '
        <a href="film.php?id=' . $row['id'] . '" class="videowrapper swiper-slide">
            <img src="' . $row['bilde'] . '" alt="' . $row['title'] . '">
            <h1>' . $row['title'] . '</h1>
            <p>' . $row['beskrivelse'] . '</p>
            <button class="watch"><i class="fas fa-play"></i></button>
            <button class="info"><i class="far fa-thumbs-up"></i></button>
            <button class="love"><i class="far fa-heart"></i></button>
        </a>
        ';
}


?>

<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <title>Hjem - NPlay</title>
    <link rel="icon" href="bilder/NIBBA.ico" type="image/gif" sizes="32x32">
    <script src="https://kit.fontawesome.com/0e8f967022.js" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <link rel="stylesheet" href="style/style.css">
    <script src="scripts/userPanel.js"></script>
</head>

<body>

    <?php include("apps/header.php"); ?>

    <header class="movieslide">
        <div class="swiper featmovies">
            <div class="swiper-wrapper">
                <?php print($featoutput); ?>
                <!-- <a href="#" class="featmovie swiper-slide">
                    <img class="movie" src="https://wallpaperaccess.com/full/900472.jpg" alt="">
                    <h1 class="title">The Lego Movie</h1>
                </a>
                <a href="#" class="featmovie swiper-slide">
                    <img class="movie" src="https://images.alphacoders.com/987/thumb-1920-987308.jpg" alt="">
                    <h1 class="title">The Lego Movie 2</h1>
                </a> -->
            </div>
            <!-- Swiper Pagination -->
            <div class="swiper-pagination"></div>

            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
        </div>
    </header>

    <nav class="compselect">
        <div class="compwrapper-grid">
            <a href="#" class="marvel grid-item">
                <img src="bilder/marvel-logo.png" alt="">
            </a>
            <a href="#" class="starwars grid-item">
                <img src="bilder/starwars-logo.png" alt="">
            </a>
            <a href="#" class="fnf grid-item">
                <img src="bilder/fnf-logo.png" alt="">
            </a>
            <a href="#" class="lego grid-item">
                <img src="bilder/lego-logo.png" alt="">
            </a>
            <a href="#" class="horror grid-item">
                <img src="bilder/horror-logo.png" alt="">
            </a>
            <a href="#" class="dc grid-item">
                <img src="bilder/dc-logo.png" alt="">
            </a>
        </div>
    </nav>

    <section class="content">
        <!-- Slider main container -->
        <h1 style="color:#33cc66;">Marvel Cinematic Universe</h1>
        <div class="swiper mcuswiper">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                <?php print($mcuoutput); ?>
            </div>

            <!-- If we need navigation buttons -->
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>


        </div>


        <h1 style="color:#33cc66;">Star Wars</h1>
        <div class="swiper swswiper">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                <?php print($swoutput); ?>
            </div>

            <!-- If we need navigation buttons -->
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>


        </div>
    </section>






    <script src="scripts/swiper.js"></script>
</body>

</html>