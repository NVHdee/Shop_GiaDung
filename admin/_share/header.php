<?php 
require_once '../commons/utils.php';
$sqlstr = "select * from web_settings";
$stmt = $conn->prepare($sqlstr);
$stmt->execute();
$sets = $stmt->fetch();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Store</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous">
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
        integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <link rel="stylesheet" href="OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="OwlCarousel2-2.3.4/dist/assets/owl.theme.default.min.css">
    <link rel="shortcut icon" type="image/png" href="src/logo.png">

    <style>
    .nav-link {
        margin: 0rem 1rem;
    }

    .card,
    .card-header:first-child,
    .list-group-item:first-child,
    .list-group-item:last-child {
        border-radius: 0;
    }

    .border-none {
        border: none;
    }

    body {
        background: #f7f7f7;
    }

    .breadcrumb {
        background-color: #f7f7f7;
        /* box-shadow: 0 2px 3px rgb(209, 209, 209); */
    }
    </style>

    <script>
    $(document).ready(function() {
        $(window).scroll(function() {
            if ($(this).scrollTop() > 40) {
                document.getElementById("logo").style.height = "35px";
            } else {
                document.getElementById("logo").style.height = "50px";
            }
        });
    });
    </script>
</head>

<body>

    <div class="blog-header bg-dark py-1">
        <div class="d-flex justify-content-between align-items-center">
            <a class="text-white ml-2" href="http://localhost/Shop_GiaDung/admin/logout.php">Đăng Xuất</a>
            <div>
                <a class="text-white mr-4" href="#"><i class="fa fa-phone"></i> Hotline: <?php echo $sets['hl'] ?></a>
                <a class="text-white" href="#"><i class="fa fa-clock-o"></i> Time: <?php echo $sets['timework'] ?></a>
            </div>
        </div>
    </div>

    <nav class="navbar navbar-expand-sm shadow-sm bg-white sticky-top">
        <a class="navbar-brand text-muted" href="#"><img id="logo" style="height:50px;transition: ease 0.3s;"
                src="<?= SITE_URL.$sets['logo']  ?>" alt=""></a>
        <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#collapsibleNavId"
            aria-controls="collapsibleNavId" aria-expanded="false" aria-label="Toggle navigation"></button>
        <div class="collapse navbar-collapse" id="collapsibleNavId">
            <ul class="navbar-nav mr-auto ml-4 mt-2 mt-lg-0">
                <li class="nav-item active hover-a">
                    <a class="nav-link text-muted  mx-1 hover-a"
                        href="http://localhost/Shop_GiaDung/admin/index.php">Trang chủ</a>
                </li>
            </ul>
        </div>
    </nav>