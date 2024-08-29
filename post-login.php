<?php
require_once './commons/utils.php';
if($_SERVER['REQUEST_METHOD'] == 'POST'){
	header('location: '. SITE_URL. 'login.php');
	die;
}else{
    $use = $_POST['User'];
$password = $_POST['Password'];

$sql = "select * from authen where user LIKE '$use'";

$sqlstmt = $conn->prepare($sql);
$sqlstmt->execute();
$user = $sqlstmt->fetchAll();
if(!isset($user['pass'])){
    $_SESSION["loginAdmin"]="con";
}
else{
    $_SESSION["loginAdmin"]="";
	header('location:'. SITE_URL. 'login.php?msg=Email/mật khẩu không đúng!');
	die;
}
}

  ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>

    <title>Document</title>
</head>

<body>
    <div class="container mt-5 d-fex text-center">
        <h2>Đăng nhập thành công!</h2>
    </div>
    <script type="text/javascript">
    setTimeout(function() {
        window.location.href = '<?= $ADMIN_URL ?>';
    }, 2000);
    </script>
</body>

</html>