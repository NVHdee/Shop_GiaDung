<?php 
include "./_share/header.php"; 
require_once "../commons/utils.php";
if ($_SESSION["loginAdmin"] == "con"){
header('location: '. SITE_URL. 'login.php');
die;
}
if (!empty($_GET['search_btn'])){
if (!empty($_GET['name_pro'])){
    $key = $_GET['name_pro'];
    $q_sql = "SELECT * From product Where name_pro LIKE '%$key%'";
}else if (!empty($_GET['price'])){
    $key = $_GET['price'];
    $q_sql = "SELECT * From product Where price <= '$key' ";
}
else{
    $q_sql = "SELECT * FROM product";
}
}else{
$q_sql = "SELECT * FROM product";
}
$stmt = $conn->prepare($q_sql);
$stmt->execute();
$ress = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/modern-normalize/0.7.0/modern-normalize.min.css">
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,300;0,400;0,700;1,300&display=swap"
        rel="stylesheet">
    <title>Admin</title>

</head>

<body>

    <div class=" container nav-item active hover-a">
        <h4 class="">Tìm Kiếm</h4>
        <form class="form-inline my-2 mr-4 my-lg-0" method="get" action="">
            <input class="form-control mr-sm-2" type="text" placeholder="Search Name" name="name_pro">
            <button class="btn btn-dark my-2 my-sm-0" type="submit" name="search_btn" value="search_btn">Search</button>
        </form>
        <form class="form-inline my-2 mr-4 my-lg-0" method="get" action="">
            <input class="form-control mr-sm-2" type="text" placeholder="Search Price" name="price">
            <button class="btn btn-dark my-2 my-sm-0" type="submit" name="search_btn" value="search_btn">Search</button>
        </form>
    </div>
    <div class="container nav-item my-2">
        <form action="add_product.php" method="post">
            <h5>Thêm Sản Phẩm</h5>
            <button class="btn btn-success my-2 my-sm-0" type="submit" name="add_btn" value="add_btn">Add</button>
        </form>
    </div>
    <table class="table table-bordered mt-3 container">
        <thead>
            <tr>
                <th>ID</th>
                <th>Ảnh sản phẩm</th>
                <th>Tên sản phẩm</th>
                <th>Giá</th>
                <th>Lợi Nhuận</th>
                <th>Mô Tả</th>
                <th>Thao tác</th>
                <th>Ghi Chú</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($ress as $row):?>
            <tr>
                <td><?php echo $row['id'] ?></td>
                <td><img src=".<?php echo $row['img'] ?>" style="width:100px; height:100px;"></td>
                <td><?php echo $row['name_pro'] ?></td>
                <td><?php echo $row['price'] ?> VNĐ</td>
                <td><?php echo $row['commis'] ?> VNĐ</td>
                <td><?php echo $row['detail'] ?></td>
                <td>
                    <a href="edit_product.php?ID=<?php echo $row['id'] ?>" class="btn btn-sm btn-warning">Sửa</a>
                    <a href="delete_product.php?ID=<?php echo $row['id'] ?>" class="btn btn-sm btn-danger">Xoá</a>
                </td>
                <td><?php echo $row['notes'] ?></td>
            </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</body>

</html>