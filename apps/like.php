<?php

include("connection.php");

session_start();

if(isset($_GET['type'], $_GET['id'])) {

    $type   = $_GET['type'];
    $id     = (int)$_GET['id'];

    switch($type) {
        case 'movie':
            $connect->query("
                INSERT INTO film_likes (user, film)
                    SELECT {$_SESSION['user_id']}, {$id}
                    FROM filmer
                    WHERE EXISTS (
                        SELECT id
                        FROM filmer
                        WHERE id = {$id})
                    AND NOT EXISTS (
                        SELECT id
                        FROM film_likes
                        WHERE user = {$_SESSION['user_id']}
                        AND film = {$id})
                    LIMIT 1
            ");
        header('Location: ../film.php?id='.$id.'');
        break;
    }  
}
