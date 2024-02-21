<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <title>Webboard GG</title>
</head>

<body>
    <div class="container">
    <h1 style="text-align: center;" class="mt-3">Webboard GG</h1>
    <?php include "nav.php"; ?>

    <div class="mt-3 d-flex justify-content-between">
        <div>
            <label>หมวดหมู่</label>
            <span class="dropdown">
                <button class="btn btn-light dropdown-toggle btn-sm"
                 type="button" id ="Button2" data-bs-toggle="dropdown"
                  aria-expanded="false">--ทั้งหมด--
                </button>
                <ul class="dropdown-menu" aria-labelledby="Button2">
                    <li><a href="#" class="dropdown-item">ทั้งหมด</a></li>
                    <li><a href="#" class="dropdown-item">เรื่องเรียน</a></li>
                    <li><a href="#" class="dropdown-item">เรื่องทั่วไป</a></li>
                </ul>
            </span>
        </div>
        <div><a href="newpost.php" class="btn btn-success btn-sm">
            <i class="bi bi-plus"></i>สร้างกระทู้ใหม่
        </a></div>
    </div>


    <table class="table table-striped mt-4">
        <?php
        for($i=1;$i<=10;$i++){
            echo "<tr><td class='d-flex justify-content-between'><a href = post.php?id=$i style=text-decoration:none>กระทู้ $i</a>";
            if(isset($_SESSION['id']) && $_SESSION['role']=='a'){
                echo "&nbsp;&nbsp;<a href=delete.php?id=$i class='btn btn-danger btn-sm'>
                <i class='bi bi-trash'></i></a>";
            }
            echo "</td></tr>";
        }
        ?>
</table>
    
    </div>
</body>    
</html>