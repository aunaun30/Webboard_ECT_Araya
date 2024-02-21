<?php
session_start();
if (isset($_SESSION['id'])){
    header("location: index.php");
    die();
}
?>

    <?php
    $login=$_POST['login'];
    $pwd=$_POST['pwd'];
    if ($login=="admin" && $pwd=="ad1234"){
        $_SESSION['username']='admin';
        $_SESSION['role']='a';
        $_SESSION['id']=session_id();
        //echo "ยินดีต้อนรับคุณ ADMIN <br>";        
        header("location:index.php");
        die();
    }elseif ($login=="member" && $pwd=="mem1234"){
        $_SESSION['username']='member';
        $_SESSION['role']='m';
        $_SESSION['id']=session_id();
        //echo "ยินดีต้อนรับคุณ MEMBER <br>";
        header("location:index.php");
        die();
    }else{
       // echo "ชื่อบัญชีหรือรหัสผ่านไม่ถูกต้อง <br>";
       $_SESSION['error']="error";
       header("location:login.php");
       die();
    }
    ?>
    