<?php

// Laget av Viljar

session_start();
//Hvis du er pålogget, med engang du trykker på Logg ut så logg ut
if(isset($_SESSION['user_id'])) {
    unset($_SESSION['user_id']);
}

// Videresend til login.php
header("Location:../login.php");
die;


?>