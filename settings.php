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
║ File Name:              settings.php                ║
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
session_start();

include("apps/connection.php");
include("apps/function.php");

if (isBetaUser()) {
    header("location: beta/index.php");
}

$user_data = check_login($connect);




?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Settings - NPlay</title>
    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" href="style/settings.css">
    <link rel="icon" href="bilder/NIBBA.ico" type="image/gif" sizes="32x32">
    <script src="https://kit.fontawesome.com/0e8f967022.js" crossorigin="anonymous"></script>
    <script src="scripts/userPanel.js"></script>
</head>

<body>
    <?php include("apps/header.php"); ?>

    <section class="settingsContent">
        <div class="gridSeperator">
            <div class="gridLeft">

            </div>
            <div class="gridRight">
                <h1>Account Settings</h1>
                <ul>
                    <li>
                        <div class="setting beta">
                            <div class="setting-wrapper-grid">
                                <h2>Enable Beta</h2>
                                <label class="switch">
                                    <input type="checkbox" <?php if (isBetaUser()) : ?>checked <?php endif; ?>>
                                    <a class="slider round" href="apps/setting.php?type=accountsetting&value=beta"></a>
                                </label>
                            </div>
                        </div>
                        <div class="setting beta">
                            <div class="setting-wrapper-grid">
                                <h2>Some setting for the Future</h2>
                                <label class="switch">
                                    <!-- <input type="checkbox" checked> -->
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        <div class="setting beta">
                            <div class="setting-wrapper-grid">
                                <h2>Another setting that most likely will not get added</h2>
                                <label class="switch">
                                    <!-- <input type="checkbox" checked> -->
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        <div class="setting beta">
                            <div class="setting-wrapper-grid">
                                <h2>Placeholder setting</h2>
                                <label class="switch">
                                    <!-- <input type="checkbox" checked> -->
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>
</body>

</html>