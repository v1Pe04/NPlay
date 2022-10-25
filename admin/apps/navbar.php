<nav class="topnav">
    <section>

    <div class="headerimg">
    <a href="../index.php"><img src="../bilder/logo.svg" alt=""></a>
    </div>

    <div class="super">
    <a href="#" class="super-items"><i class="far fa-user"></i></a>
    
    <div class="bruker"><div class="navn"><p><span><?php echo $user_data['fornavn']; ?></span> <?php echo $user_data['etternavn']; ?></p>
    
    <div class="brukernavn"><p>@<?php echo $user_data['user_name']; ?></p></div></div></div>
   </div> 

<div class="ting">
   <div class="nav-item">
       <div class="icon">
       <a href="adminpanel.php"><i class="far fa-user-circle"></i></a>
       </div>
       <div class="nav-link">
           <a href="adminpanel.php">Dashboard</a>
       </div>
   </div>
   <div class="nav-item">
       <div class="icon">
       <a href="brukere.php"><i class="fas fa-users"></i></a>
       </div>
       <div class="nav-link">
           <a href="brukere.php">Bruker liste</a>
       </div>
   </div>
   <div class="nav-item">
       <div class="icon">
       <a href="filmer.php"><i class="fas fa-video"></i></a>
       </div>
       <div class="nav-link">
           <a href="filmer.php">Film liste</a>
       </div>
   </div>
   <div class="nav-item">
       <div class="icon">
       <a href="https://youtu.be/6ONRf7h3Mdk"><i class="fab fa-youtube"></i></a>
       </div>
       <div class="nav-link">
           <a href="https://youtu.be/6ONRf7h3Mdk">Sicko mode</a>
       </div>
   </div>
   <div class="nav-item">
       <div class="icon">
       <a href="#"><i class="fas fa-exclamation-circle"></i></a>
       </div>
       <div class="nav-link">
           <a href="#">TBD</a>
       </div>
   </div>
   <div class="nav-item">
       <div class="icon">
       <a href="apps/logout.php"><i class="fas fa-sign-out-alt"></i></a>
       </div>
       <div class="nav-link">
           <a href="apps/logout.php">Sign Out</a>
       </div>
   </div>
</div>

    
    </section>
    <div class="nibbaplay">Powered by Nibba<span>Play™</span></div>
  </nav>