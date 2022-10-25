<?php
// Laget av Viljar

// tast din host , user, passord og databasen 
// Vi oppretter variabel under for connection

$host   =   "localhost";
$user   =   "root";
$pass   =   "";
$db     =   "pirat";


$connect=mysqli_connect($host, $user, $pass, $db) or die("Koblingen feil");
