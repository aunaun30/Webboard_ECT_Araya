<?php 
session_start();
if (isset($_SESSION['id'])){
    header("location: index.php");
    die();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <h1 style="text-align: center;">Webboard GG</h1>
    <hr>
    <form action="verify.php" method="post">
        <table style="border: 2px solid black; width: 20%;" align="center">
        <tr><td colspan="2" style="background-color: #6CD2FE">เข้าสู่ระบบ</td></tr>
        <tr><td>Login</td><td><input type="text" name="login" size="30" required></td></tr>
        <tr><td>Password</td><td><input type="password" name="pwd" size="30"></td></tr>
        <tr><td colspan="2" align="center"><input type="submit" value="Login"></td></tr>
        </table>
    </form>
    <br>
    <div align="center">
    ถ้ายังไม่ได้เป็นสมาชิก <a href="register.php">กรุณาสมัครสมาชิก</a>  
    </div>
</body>
</html>