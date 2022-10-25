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
║ File Name:              header.php                  ║
║ Created By:             NuutXD                      ║
║ Last Edited By:         NuutXD                      ║
║ Languages:                                          ║
║  - PHP                                              ║
║  - HTML                                             ║
║  - JavaScript                                       ║
║  - CSS                                              ║
║                                                     ║
╚═════════════════════════════════════════════════════╝
*/
?>
<nav class="topnav">
  <section>

    <div class="headerimg">
      <a href="index.php"><img src="bilder/logo.png" alt="">
        <div class="betaheader">BETA</div>
      </a>
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
      <a href="profile.php" class="userPanel-item"><i class="fas fa-user"></i> Profile</a>
      <a href="settings.php" class="userPanel-item"><i class="fas fa-cog"></i> Settings</a>
      <?php if (isAdmin()) : ?>
        <style>
          #userPanel {
            height: 240px;
          }

          @keyframes userPanel {
            0% {
              height: 0px;
              opacity: 0;
            }

            100% {
              height: 240px;
              opacity: 1;
            }
          }
        </style>
        <a href="admin/adminpanel.php" class="userPanel-item"><i class="fas fa-tools"></i> AdminPanel</a>
      <?php endif; ?>
      <button class="betatester userPanel-item" style="margin-bottom:20px;">
        <i class="fas fa-angle-left"></i> Beta User
        <div class="betapanel">
          <a href="#" class="beta-item"><i class="fas fa-clipboard-check"></i> Changelogs</a>
          <a href="#" class="beta-item">
            <i class="fas fa-bug"></i> Report Bugs
          </a>
        </div>
      </button>
      <a href="https://discord.gg/NTjX6Se" class="userPanel-item" target="new"><i class="fab fa-discord"></i> Discord</a>
      <a href="apps/logout.php" class="userPanel-item"><i class="fas fa-sign-out-alt"></i> Sign Out</a>
    </div>

  </section>
</nav>