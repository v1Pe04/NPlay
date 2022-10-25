<?php
include("connection.php");
include("function.php");

session_start();

$user_data = check_login($connect);

if (isset($_GET['type'], $_GET['value'])) {
    $type   = $_GET['type'];
    $value  = $_GET['value'];


    // Switch for type of setting
    switch ($type) {
            // Account Settings
        case 'accountsetting':
            // Swtich for account settings value
            switch ($value) {
                    // Beta user setting [1 = True, 0 = False]
                case 'beta':
                    $betaCheck = $user_data['beta_user'];
                    if ($betaCheck == 1) {
                        $connect->query("
                            UPDATE bruker
                            SET beta_user = 0
                            WHERE user_id = {$user_data['user_id']}
                        ");
                        header("Location: ../settings.php");
                        break;
                    } else {
                        $connect->query("
                            UPDATE bruker
                            SET beta_user = 1
                            WHERE user_id = {$user_data['user_id']}
                        ");
                        header("Location: ../beta/settings.php");
                        break;
                    }
                    break;
                case 'anonComments':
                    echo "gay";
                    $anonCommentsCheck = $user_data['anon_comments'];
                    if ($anonCommentsCheck == 1) {
                        $connect->query("
                            UPDATE bruker
                            SET anon_comments = 0
                            WHERE user_id = {$user_data['user_id']}
                        ");
                        header("Location: ../settings.php");
                        break;
                    } else {
                        $connect->query("
                            UPDATE bruker
                            SET beta_user = 1
                            WHERE user_id = {$user_data['user_id']}
                        ");
                        header("Location: ../settings.php");
                        break;
                    }
                    break;
            }
    }
}
