<?php

session_start();

include("apps/connection.php");
include("apps/function.php");

$user_data = check_login($connect);

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $imdb = $_POST['imdbid'];
    $added_by  = $user_data['user_id'];

    $query = mysqli_query($connect, "SELECT * FROM filmer WHERE rating LIKE '$imdb'") or die("error");
    $count = mysqli_num_rows($query);

    if ($count >= 1) {
        echo ("error");
    } elseif (!empty($imdb)) {

        $user_id = random_num(20);
        $query = $connect->prepare("insert into submissions (user_id,imdb_id) values ('$added_by',?)");

        $query->bind_param("s", $imdb);

        $query->execute();

        $query->close();

        header("Location: index.php");
        die;
    } else {
        echo "Error, noe gikk galt";
    }
}

$user_data = check_login($connect);


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="style/submissions.css">
    <link rel="stylesheet" href="style/style.css">
    <link rel="icon" href="bilder/NIBBA.ico" type="image/gif" sizes="32x32">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/0e8f967022.js" crossorigin="anonymous"></script>
    <script src="scripts/userPanel.js"></script>
    <title>Submissions - NibbaPlay</title>
</head>

<body>

    <?php include("apps/header.php"); ?>

    <div class="subpanel">
        <div class="subs">
            <button class="active">
                MOVIE
            </button>
            <button>
                COMING SOON...
            </button>
        </div>
        <div class="subform">
            <form method="post">
                <input class="text" placeholder="IMDb ID..." type="text" name="imdbid">
                <input class="button" type="submit" value="Submit">
            </form>
            <div class="check">
                <h3>Check if movie exists in API</h3>
                <input class="text" placeholder="IMDb ID..." type="text" id="checkfield">
                <input class="button" type="submit" value="Check" onclick="movieCheck()">
                <iframe src="https://www.2embed.ru/embed/imdb/movie?id=tt3554046" id="check"></iframe>
            </div>
            <script>
                function movieCheck() {
                    var frame = document.getElementById("check");
                    var field = document.getElementById("checkfield").value;
                    frame.src = "https://www.2embed.ru/embed/imdb/movie?id=" + field;
                }
            </script>
        </div>
    </div>

</body>

</html>