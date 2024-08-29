<?php
require_once "../commons/utils.php";

$ID = $_GET['ID'];

$sql1 = "SELECT * FROM product WHERE ID = '$ID'";
$stmt = $conn->prepare($sql1);
$query = $stmt->execute();
$result = $stmt->fetch(PDO::FETCH_ASSOC);

if (!empty($_POST['submit'])) {
    if (isset($_POST['name']) && isset($_POST['price']) && isset($_POST['quantity'])) {
        $name = $_POST['name'];
        $price = $_POST['price'];
        $quantity = $_POST['quantity'];
        $detail = $_POST['detail'];
        $sql = "UPDATE product SET name_pro = '$name', price = '$price', commis = '$quantity', detail = '$detail' WHERE ID = '$ID'";
        $stmt = $conn->prepare($sql);
        $query = $stmt->execute();
        if ($query) {
            header("location:index.php");
            exit;
        } else {
            echo "Sửa thất bại, vui lòng thử lại";
            exit;
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SỬA SẢN PHẨM</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <div class="container mt-5 table table-success">
        <button class="btn btn-primary"><a href="index.php" class="text-white">DANH SÁCH SẢN PHẨM</a></button>
        <form method="post" enctype="multipart/form-data">
            <div class="row mt-3">
                <div class="col-md-6">
                    <label for="masv" class="form-label">Tên sản phẩm:</label>
                    <input type="text" class="form-control" id="name" name="name"
                        value="<?php echo $result['name_pro']; ?>">
                </div>
                <div class="col-md-6">
                    <label for="hoten" class="form-label">Giá:</label>
                    <input type="text" class="form-control" id="price" name="price"
                        value="<?php echo $result['price']; ?>">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-6">
                    <label for="diem" class="form-label">Lợi Nhuận:</label>
                    <input type="text" class="form-control" id="quantity" name="quantity"
                        value="<?php echo $result['commis']; ?>">
                </div>

                <div class="col-md-6">
                    <label for="diem" class="form-label">Mô tả:</label>
                    <input type="text" class="form-control" id="detail" name="detail"
                        style="width:80%;height: 80%;margin:auto;display: block;"
                        value="<?php echo $result['detail']; ?>">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-6">
                    <label for="img">Chọn hình ảnh</label>
                    <img src=".<?php echo $result['img']?>" style="width:100px; height:100px;">

                    <input type="file" name="img" id="img" class="form-control" placeholder="Không có ảnh nào được chọn"
                        value="<?php echo $result['img'] ?>" aria-describedby="helpId" required>
                    <small id="helpId" class="text-muted"></small>

                </div>
            </div>
            <button type="submit" class="btn btn-success mt-3" name="submit" value="submit">LƯU</button>
        </form>
    </div>
</body>

</html>