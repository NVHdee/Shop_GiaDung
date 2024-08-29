<?php 
require_once "./commons/utils.php";
if (!empty($_GET['btn_search'])){
    if (empty($_GET['txt_Search'])){
        $q_sql = "SELECT * FROM product";
    }else{
        $key = $_GET['txt_Search'];
        $q_sql = "SELECT * From product Where name_pro LIKE '%$key%'";
    }
    
}else{
    $q_sql = "SELECT * FROM product ";
}
$stmt = $conn->prepare($q_sql);
$stmt->execute();
$ress = $stmt->fetchAll();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopee</title>
    <link rel="icon" href="./src/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/grid.css">
    <link rel="stylesheet" href="./assets/css/responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>

<body>
    <!-- main -->
    <div class="app">

        <header class="header">
            <div class="grid wide">

                <nav class="header__navbar hide-on-mobile-tablet">
                    <ul class="header__nav-list">
                        <li class="header__nav-item">
                            <a href="index.php" class="header__nav-icon-link">Store</a>
                            <a href="https://www.facebook.com/nhvha23" class="header__nav-icon-link">
                                <i class="header__nav-icon fab fa-facebook"></i>
                            </a>
                            <a href="#" class="header__nav-icon-link">
                                <i class="header__nav-icon fab fa-instagram"></i>
                            </a>
                        </li>
                    </ul>
                    <ul class="header__nav-list">
                        <li class="header__nav-item header__show-note">
                            <a href="#" class="header__nav-item-link">
                                <i class="header__nav-icon far fa-bell"></i>
                                Thông báo

                            </a>
                            <!-- thông báo -->
                            <div class="header__notifi">
                                <header class="header__notifi-header">
                                    <h3>Thông Báo Mới Nhận</h3>
                                </header>

                                <footer class="header__notifi-footer">
                                    <a href="#" class="header__notifi-footer-btn">Xem tất cả</a>
                                </footer>
                            </div>
                        </li>
                        <li class="header__nav-item header__nav-item--bold">
                            <a href="login.php" class="header__nav-item-link">Đăng nhập</a>
                        </li>
                    </ul>
                </nav>
                <!-- search -->
                <div class="header__contain">
                    <label for="mobile-search" class="header__mobile-search">
                        <i class="header__mobile-search-icon fas fa-search"></i>
                    </label>
                    <input type="checkbox" id="mobile-search" class="header__search-check" hidden>
                    <form class="header__search" action="" method="get">
                        <div class="header__search-input-wrap">
                            <input type=zalo "text" class="header__search-input" placeholder="Tìm kiếm trên Shoppee"
                                name="txt_Search">
                        </div>
                        <button class="btn header__search-btn" type="submit" name="btn_search" value="btn_search">
                            <i class="header__search-btn-icon fas fa-search"></i>
                        </button>
                    </form>
                    <div class="header__cart header__cart--has-cart">
                        <i class="header__cart-icon fas fa-shopping-cart"></i>
                        <div class="header__cart-count">
                        </div>

                        <div class="header__cart-list no-cart">
                            <img src="./assets/img/sp/no-cart.png" class="header__no-cart-img">
                            <p class="header__no-cart-text">Chưa có sản phẩm</p>
                        </div>

                        <div class="header__cart-list has-cart">
                            <h4 class="header__cart-heading">Sản phẩm đã chọn</h4>
                            <ul class="header__cart-list-item">
                            </ul>
                            <div class="header__cart-footer">
                                <a href="#" class="btn btn--primary header__cart-see-cart">Xem giỏ hàng</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="container">
            <div class="grid wide">
                <div class="row sm-gutter">
                    <div class="col l-10 m-12 c-12">
                        <div class="home-product">
                            <div id="" class="row sm-gutter">
                                <?php foreach ($ress as $item): ?>
                                <div class="col l-2-4 m-3 c-6 home-product-item">
                                    <a class="home-product-item-link" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(<?php echo $item['img'] ?>);"></div>
                                        <div class="home-product-item__info">
                                            <h4 class="home-product-item__name"><?php echo $item['name_pro'] ?></h4>
                                            <div class="home-product-item__price">
                                                <p class="home-product-item__price-old"><?php echo $item['price'] ?></p>
                                                <p class="home-product-item__price-new"><?php echo $item['price'] ?></p>
                                                <i class="home-product-item__ship fas fa-shipping-fast"></i>
                                            </div>
                                            <div class="home-product-item__footer">
                                                <div class="home-product-item__save">
                                                    <input type="checkbox" name="save-check" id="heart-save">
                                                    <label for="heart-save" class="far fa-heart"></label>
                                                </div>
                                                <div class="home-product-item__saled">Đã bán 0k</div>
                                            </div>
                                            <div class="home-product-item__origin">Hải Phòng</div>
                                            <div class="home-product-item__favourite">
                                                Yêu thích
                                            </div>
                                            <div class="home-product-item__sale-off">
                                                <div class="home-product-item__sale-off-value">0%</div>
                                                <div class="home-product-item__sale-off-label">GIẢM</div>
                                            </div>
                                        </div>
                                        <!--
                                        <div class="home-product-item-footer">Tìm sản phẩm tương tự</div>
                                -->
                                    </a>
                                </div>
                                <?php endforeach ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="./assets/js/product.js"></script>
</body>

</html>