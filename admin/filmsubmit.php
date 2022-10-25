<?php

session_start();

    include("apps/connection.php");
    include("apps/function.php");

    if ( !isAdmin() ) {
        header('location: ../apps/logout.php');
      }


    if($_SERVER['REQUEST_METHOD'] == "POST")
    {
        $title = $_POST['title'];
        $bilde = $_POST['bilde'];
        $film = $_POST['film'];
        $beskrivelse = $_POST['beskrivelse'];
        $rating = $_POST['rating'];
        $kategori = $_POST['rating'];


            $query = $connect->prepare("insert into filmer (title,bilde,film,beskrivelse,rating,kategori) values ('$title','$bilde','$film',?,'$rating','$kategori')");

            $query->bind_param("s", $beskrivelse);

            $query->execute();

            $query->close();

            //mysqli_query($connect, $query);

            header("Location: adminpanel.php");
            die;
        
    }

    
?>


<!DOCTYPE html>
<html>
<head>
    <title>NibbaPlay - Legg til film</title>
    <link rel="stylesheet" href="style/filmsubmit.css">
    <link rel="icon" href="../bilder/NIBBA.ico" type="image/gif" sizes="32x32">
    <script src="scripts/copytext.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
</head>
<body>

<div class="nav-item">
       <div class="icon">
       <a href="../index.php"><i class="fas fa-sign-out-alt fa-flip-horizontal"></i></a>
       </div>
   </div>
    

    <div class="box">

        <form method="post">
            <div style="font-size: 30px;margin: 10px;margin-bottom:20px;color: white;">Legg til film</div>

    <div class="skjema">
        <div class="left">
            <input class="text" placeholder="Film tittel" type="text" name="title">
            <input style="width:270px;"class="text" placeholder="Film link" type="text" name="film">
            
            
            
            <textarea class="text1" placeholder="Bilde link" type="text" name="bilde"></textarea>
        </div>

        <div class="right">
            <input class="text" placeholder="IMDb ID" type="text" name="rating">
            <textarea class="text2" placeholder="Beskrivelse" type="text" name="beskrivelse"></textarea>
            <select name="rating" class="text">
                <option value="MCU">MCU</option>
                <option value="Starwars">Star Wars</option>
                <option value="Lego">Lego</option>
                <option value="Family">Familie</option>
                <option value="Action">Action</option>
                <option value="Drama">Drama</option>
                <option value="Crime">Crime</option>
                <option value="Comedy">Comedy</option>
                <option value="FNF">Fast Franchise</option>
                <option value="Horror">Horror</option>
                <option value="Adventure">Eventyr</option>
                <option value="Sci-fi">Sci-Fi</option>
                <option value="Disaster">Disaster</option>
                <option value="Documentary">Dokumentar</option>
                <option value="Youtube">Youtube</option>

            </select>
        </div>
    </div>

            <input class="button" type="submit" value="Submit">
        </form>
        <input type="text" style="height:0px;width:1px;opacity:0;" value="https://www.2embed.ru/embed/imdb/movie?id=" id="myInput">
        <button onclick="kopierTekst()"  class="button1" id="copy">Copy</button>


        <input type="text" class="text3" id="checkfield" placeholder="IMDb ID">
        <iframe src="https://www.2embed.ru/embed/imdb/movie?id=" frameborder="0" id="check"></iframe>
        <button class="button2" onclick="movieCheck()">Check</button>

    </div>
</body>
</html>
