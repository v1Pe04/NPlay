<?php

// Laget av Viljar

// Session er et løp
session_start();

// Include betyr inkluder disse filene
include("apps/connection.php");
include("apps/function.php");

if ( !isAdmin() ) {
  header('location: ../apps/logout.php');
}

$user_data = check_login($connect);

$output='';

$query="SELECT * FROM filmer ORDER BY id ASC";

 $sql=mysqli_query($connect, $query);
while($row=mysqli_fetch_array($sql)) {
  $output .= '
  <tr>
  <th>'.$row['id'].'</th>
  <th>'.$row['title'].'</th>
  <th>'.$row['beskrivelse'].'</th>
  <th>'.$row['rating'].'</th>
  </tr>
  ';

}

$total="SELECT COUNT(id) as total FROM filmer";
$tot=mysqli_query($connect, $total);
$row2=mysqli_fetch_assoc($tot);

$brukertotal="SELECT COUNT(id) as total FROM bruker";
$brukertot=mysqli_query($connect, $brukertotal);
$row3=mysqli_fetch_assoc($brukertot);

?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>NibbaPlay - Hjem</title>
    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" href="style/adminpanel.css">
    <link rel="icon" href="bilder/NIBBA.ico" type="image/gif" sizes="32x32">
    <script src="userPanel.js"></script>
    <script src="https://kit.fontawesome.com/0e8f967022.js" crossorigin="anonymous"></script>

<style>

.brukere {
    padding: 20px;
}

.search{
  background:transparent;
}

.section {
  width:1000px;
  position: absolute;
  left: 350px;
  margin-top:200px;
}

section {
    max-width: 1000px
}

.section h2 {
    color: #33cc66;
    font-size: 30px;
    padding: 20px;
}

table, th, td {
  border: 1px solid #1b1b1b;
  color: white;
  padding: 4px;
  border-collapse: collapse;
}

th {
  max-width:100px;
  overflow-wrap:break-word;
  max-height:100px;
}

table {
    width: 100%;
    background-color: #333;
}

table td {
    text-align: center;
}

.dashboard{
  background:transparent;
  height:1px;
}

.dashboard .tittel {
  display:block;
}

.tittel h1 {
    font-size: 30px;
}

.id {
  width:50px;
}

.title {
  width:1000px;
}

.imdb {
  width:50px;
}



.topnav .headerimg {
  display: flex;
  align-items: center;
  height: 50px;
  width:200px;
  margin: 0 auto;
  margin-top: 10px;
}
</style>
</head>
  <body>


  <?php include("apps/navbar.php") ?>

  <section class="search">
  <div class="searchbar1">
      <form action="brukersearch.php" method="post">
        <input type="text" placeholder="Søk blant <?php print($row3['total'])?> brukere..." name="search">
        <button type="submit" value="Søk"><i class="fa fa-search"></i></button>
      </form>
    </div>

    <div class="searchbar2">
      <form action="../search.php" method="post">
        <input type="text" placeholder="Søk blant <?php print($row2['total'])?> filmer..." name="search">
        <button type="submit" value="Søk"><i class="fa fa-search"></i></button>
      </form>
    </div>

    <div class="searchbar3">
      <form action="#" method="post">
        <input type="text" placeholder="En søkebar som ikke funka..." name="search">
        <button type="submit" value="Søk"><i class="fa fa-search"></i></button>
      </form>
    </div>
</section>

<section class="dashboard">

<div class="tittel">
<h1><span> Admin </span> Dashboard</h1>
<p>Filmer</p>
</div>

</section>
  

<section class="section">

<div class="brukere">
<table>
  <tr>
    <th class="id">Id</th>
    <th class="title">Tittel</th>
    <th>Beskrivelse</th>
    <th class="imdb">IMDb ID</th>
  </tr>

  <?php print($output); ?>
</table>
</div>


</section>


  </body>
</html>
