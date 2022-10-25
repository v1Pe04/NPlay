<nav class="topnav">
  <section>

    <div class="headerimg">
      <a href="index.php"><img src="bilder/logo.svg" alt=""></a>
    </div>

    <div class="searchbar">
      <form action="search.php" method="post">
        <input type="text" placeholder="Søk etter filmer..." name="search">
        <button type="submit" value="Søk"><i class="fa fa-search"></i></button>
      </form>
    </div>

    <div class="nav-items">
      <a href="movieindex.php" class="nav-item" style="font-size:26px;"><i class="fas fa-video"></i></a>
      <a href="submissions.php" class="nav-item" style="font-size:26px;"><i class="fas fa-download"></i></a>
      <a class="nav-item" onclick="userPanel();" style="cursor:pointer;"><i class="far fa-user"></i></a>
      <p>Movie Index</p>
      <p>Submit</p>
      <p>@<?php echo $user_data['user_name']; ?></p>
    </div>

    <div id="userPanel">
      <a href="profile.php"><i class="fas fa-user"></i> Profile</a>
      <a href="settings.php"><i class="fas fa-cog"></i> Settings</a>
      <?php if (isAdmin()) : ?>
        <style>
          #userPanel {
            height: 160px;
          }

          @keyframes userPanel {
            0% {
              height: 0px;
              opacity: 0;
            }

            100% {
              height: 160px;
              opacity: 1;
            }
          }
        </style>
        <a href="admin/adminpanel.php"><i class="fas fa-tools"></i> AdminPanel</a>
      <?php endif; ?>
      <a href="apps/logout.php"><i class="fas fa-sign-out-alt"></i> Sign Out</a>
    </div>

  </section>
</nav>