<?php



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

$filmoutput='';

$query="SELECT * FROM bruker ORDER BY id DESC LIMIT 4";

$sql=mysqli_query($connect, $query);
while($row=mysqli_fetch_array($sql)) {
  $output .= '
  <div class="users">
    <a class="user-items"><i class="far fa-user"></i></a>
    <div class="bruker"><div class="navn"><p><span>'.$row['fornavn'].'</span> '.$row['etternavn'].'</p>
    <div class="brukernavn"><p>@'.$row['user_name'].'</p></div></div></div>
  </div>';
}      

$filmquery="SELECT * FROM filmer ORDER BY id DESC LIMIT 5";
$sql2=mysqli_query($connect, $filmquery);
while($row=mysqli_fetch_array($sql2)) {
  $filmoutput .= '
  <a href="../film.php?id='.$row['id'].'" class="item">
    <div class="bilde">
      <img src="'.$row['bilde'].'">
    </div>
    <h4>'.$row['title'].'</h4>
  </a>';
}    

$total="SELECT COUNT(id) as total FROM filmer";
$tot=mysqli_query($connect, $total);
$row2=mysqli_fetch_assoc($tot);

$brukertotal="SELECT COUNT(id) as total FROM bruker";
$brukertot=mysqli_query($connect, $brukertotal);
$row3=mysqli_fetch_assoc($brukertot);


?>

<!DOCTYPE html>
<html lang="no">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="style/adminpanel.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../bilder/NIBBA.ico" type="image/gif" sizes="32x32">
    <title>NibbaPlay - AdminPanel</title>
    <script src="https://kit.fontawesome.com/0e8f967022.js" crossorigin="anonymous"></script>

    <style>
      .super {
        margin-top:50px;
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
<p>Welcome Aboard, <?php echo $user_data['fornavn']; ?> <?php echo $user_data['etternavn']; ?></p>
</div>


<div class="panel1 panel">
    <h2>Nye Brukere </h2>

    <?php print($output); ?>
    

   <div class="btn"><a href="signup.php">Registrer ny bruker</a></div>


</div>
<div class="panel2 panel">

</div>
<div class="panel3 panel">

</div>
<div class="panel4 panel">

<div class="heading">
<div class="title">
<h2> Nye Filmer </h2>
</div>
<div class="knapp">
<div class="btnfilm"><a href="filmsubmit.php">Legg til film</a></div>
</div>
</div>

<section class="nyefilmer">
          <?php print($filmoutput); ?>
          </section>

</div>
</section>


</body>
</html>