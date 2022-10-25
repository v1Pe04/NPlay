<?php 

include("connection.php");

session_start();

if(isset($_GET['type'], $_GET['id']))

    $type   = $_GET['type'];
    $user_id= $_SESSION['user_id'];
    $id     = (int)$_GET['id'];
    $comment= $_POST['comment'];

    if(!empty($comment)) {

    

    switch($type) {
        case 'movie':
            $connect->query("
                INSERT INTO comments 
                (user,film,comment) 
                VALUES 
                ('$user_id','$id','$comment')
            ");
            header('Location: ../film.php?id='.$id.'');
            break;
        }

    } else {
        header('Location: ../film.php?id='.$id.'');
    }



?>