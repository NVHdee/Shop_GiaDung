<?php
require_once "../commons/utils.php";
if ($_SERVER["REQUEST_METHOD"] != "POST") {
    if (isset($_POST['name']) && isset($_POST['price']) && isset($_POST['loinhuan'])) {
        $name = $_POST['name'];
        $price = $_POST['price'];
        $quantity = $_POST['loinhuan'];
        $img = $_FILES['img']['tmp_name'];
        $path = 'uploads/' . $_FILES['img']['name'];
        move_uploaded_file($img, $path);
        
        $sql = "INSERT INTO product (name_pro, price, commis, img) VALUES (:TenSanPham, :Gia, :Loinhuan, :AnhSP)";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':TenSanPham', $name);
        $stmt->bindParam(':Gia', $price);
        $stmt->bindParam(':SoLuong', $quantity);
        $stmt->bindParam(':AnhSP', $path);

        if ($stmt->execute()) {
            header("location:index.php");
        } else {
            echo "Thêm thất bại, vui lòng thử lại";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>THÊM SẢN PHẨM</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <?php include "../admin/_share/header.php"; ?>
    <div class="container table table-info mt-5">
        <h2 class="mt-5 text-center">Thêm Sản Phẩm</h2>
        <form method="post" enctype="multipart/form-data">
            <table class="table">
                <tbody>
                    <tr>
                        <td>Nhập tên sản phẩm</td>
                        <td><input type="text" class="form-control" name="name"></td>
                    </tr>

                    <tr>
                        <td>Nhập giá</td>
                        <td><input type="text" class="form-control" name="price"></td>
                    </tr>

                    <tr>
                        <td>Nhập số lượng</td>
                        <td><input type="text" class="form-control" name="loinhuan"></td>
                    </tr>

                    <tr>
                        <label for="img">Chọn hình ảnh</label>
                        <input type="file" name="img" id="img" class="form-control"
                            placeholder="Không có ảnh nào được chọn" value="<?php echo $res['AnhSP'] ?>"
                            aria-describedby="helpId" required>
                        <small id="helpId" class="text-muted"></small>
                    </tr>
                </tbody>
            </table>
            <button type="submit" class="btn btn-primary" name="submit" value="submit">Lưu</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-YZB8DcLOd2SdCUc4MmeRlh+XwSv6+I0s2whzWquYYGZ4xBw1jA6pRf5do+uh/AW5" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
</body>

</html>