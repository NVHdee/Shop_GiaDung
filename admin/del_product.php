<?php
include 'connect.php';

if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['ID'])) {
    $id = $_GET['ID'];

    $sql = "DELETE FROM SanPham WHERE id = :id";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':id', $id);

    if ($stmt->execute()) {
        header("location:products.php");
    } else {
        echo "Xoá thất bại, vui lòng thử lại";
    }
} else {
    header("location:index.php");
}
?>