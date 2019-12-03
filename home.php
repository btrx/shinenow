<?php 
   
    $iduser = $_SESSION['iduser'];
    $result2 = mysqli_query($con,"SELECT m.id, m.topik, materi, deskripsi, video, cover FROM tbl_materi AS m  JOIN tbl_simpanmateri AS s ON m.topik = s.topik WHERE id_user ='$iduser' ORDER BY deskripsi ASC");
    $r2 = mysqli_num_rows($result2);
    //var_dump($r2);

    if( isset($_POST['cari'])){
        $keyword = $_POST['caritopik'];
        $result = mysqli_query($con, "SELECT * FROM tbl_materi WHERE deskripsi LIKE '%$keyword%' ");
    } else {
         $result = mysqli_query($con, "SELECT * FROM tbl_materi ORDER BY id DESC");
    }                   
                    

 ?>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="css/custom.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    <link rel="stylesheet" href="css/custom-style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <title>Shine Now</title>
    <style type="text/css">
        body, a, option{
            font-size: 14px;
            font-weight: bold;
            color: black;
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-white" style="width: 1349px; height: 65px">
        <a class="navbar-brand mb-3" href="?hal=home">
            <img src="images/logo.png" width="100px">
        </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse " id="navbarSupportedContent">

            <ul class="navbar-nav mr-auto container-fluid">

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle mt-1" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-list-ul"></i> Kategori
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <div class="btn-group dropright">
                            <button tpye="button" class="dropdown-item btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Teknologi</a>
                        </div>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>

                <li class="nav-item col-8 mt-4" >
                    
                    <form class="form-inline my-2 my-lg-0 inbutton" action="" method="post">
                        <input class="form-control form-control-lg mr-sm-0 col-8 bg-light border-0 " style="border-radius: 5px 0px 0px 5px" type="text" name="caritopik" placeholder="Cari apa?" aria-label="Search">

                        <button class="btn btn-warning btn-lg  my-2 my-sm-0 ml-0 col-2" style="border-radius: 0px 5px 5px 0px;height: 30px; margin-top: 13px; " type="submit" name="cari"><i class="fas fa-search text-danger "></i></button>
                    </form>
                </li>
                <button class="btn-warning" style="border-radius: 3px; height: 30px; margin-top: 13px; margin-left: 120px; "><a href="user/media.php?module=home"><h4 style="font-weight: bold;">Jadilah tutor</h4></a>
                
            </ul>
            
            <button class="btn-warning" style="border-radius: 3px; height: 30px; "><a href="logout.php" onclick="return confirm('Apakah anda yakin ?');"><h4 style="font-weight: bold;">Logout</h4></a>
        </div>
    </nav>
    <nav>
      <?php if(!isset($_POST['cari'])) :?> 
        <?php if($r2 > 0) : ?>
        <h3 style="margin-left: 120px;">
            <small class="text-muted">Kursus yang anda ikuti</small>
        </h3>
        
    <div class="container" style="overflow-x: auto;">
        
        <div class="card-deck" onclick="location.href='#';" style="cursor: pointer; height: 300px; border: 1px solid yellow;">
            <!-- <div class="kotak2"> -->
            <?php while($r2=mysqli_fetch_array($result2)) : ?>
         
            <div class="mx-1 kotak">
                <?php if ($r2[cover] != ''){
                        $cover2 = $r2['cover'];
                ?>
                <img class="card-img-top h-50" src="admin/modul/mod_soal/img/<?= $cover2 ?>" alt="Card image cap">
                <?php
                    } else{
                        $cover2 = 'images/petrik.png';
                ?>
                <img class="card-img-top h-50" src="<?= $cover2 ?>" alt="Card image cap">
                <?php
                    }
                 ?>
                <div class="card-body px-2">
                    <h6><a href="media.php?hal=d_home&topik=<?= $r2['topik'] ;?>"><?= $r2['deskripsi']; ?></a></h6>
                    <p class="card-text" style="font-size: 11px;">ShineNow</p>
                    <div class="progress-bar bg-warning" style="width:15%;height:15px; padding: 2px;">10%</div>
                </div>
            </div>
            <?php endwhile; ?>
          <!-- </div> -->
        </div>
    </div>
            <?php endif; ?>
        <?php   endif; ?>
    </nav>
    <div class="container mt-6">
        <h3>
               <small class="text-muted">Kursus Tersedia "All"</small>
             </h3>
        <div class="card-deck">
            <?php while($r = mysqli_fetch_array($result)) : ?>
            <div class="kotak mx-1 shadow-sm">
                <!-- <span class="badge  badge-warning w-50 mt-2" style="position: absolute; z-index: 3">TERBAIK</span> -->
                <?php if ($r[cover] != ''){
                        $cover = $r['cover'];
                ?>
                <img class="card-img-top h-50" src="admin/modul/mod_soal/img/<?= $cover ?>" alt="Card image cap">
                <?php
                    } else{
                        $cover = 'images/petrik.png';
                ?>
                <img class="card-img-top h-50" src="<?= $cover ?>" alt="Card image cap">
                <?php
                    }
                 ?>

                <div class="card-body px-2">
                    <h6><a href="media.php?hal=d_home&topik=<?= $r['topik'] ;?>"><?= $r['deskripsi']; ?></a></h6>
                    <p class="card-text" style="font-size: 11px;">ShineNow</p>
                    <p class="card-text"><small class="text-muted">
                           <i class="fas fa-star text-warning"></i>
                           <i class="fas fa-star text-warning"></i>
                           <i class="fas fa-star text-warning"></i>
                           <i class="fas fa-star text-warning"></i>
                           <i class="fas fa-star-half text-warning"></i>
                         4.5 (18,560)</small>

                </div>
            </div>

            <?php endwhile; ?>
            
        </div>

    </div>

    <div class="container mt-5">
        <h3>
                <small class="text-muted">Kelas Populer "Developer"</small>
              </h3>
        <div class="card-deck">

            <div class="card mx-1 ">
                <span class="badge  badge-warning w-50 mt-2" style="position: absolute; z-index: 3">TERBAIK</span>
                <img class="card-img-top h-50" src="images/mysql.png" alt="Card image cap">
                <div class="card-body px-2">
                    <h6>Teknik membersihkan hidung yang mantab</h6>
                    <p class="card-text" style="font-size: 11px;">Petrik</p>
                    <p class="card-text"><small class="text-muted">
                            <i class="fas fa-star text-warning"></i>
                            <i class="fas fa-star text-warning"></i>
                            <i class="fas fa-star text-warning"></i>
                            <i class="fas fa-star text-warning"></i>
                            <i class="fas fa-star-half text-warning"></i>
                          4.5 (18,560)</small>

                </div>
            </div>

            <div class="card mx-1 ">
                <img class="card-img-top h-50" src="images/mysql.png" alt="Card image cap">
                <div class="card-body px-2">
                    <h6>Teknik membersihkan hidung yang mantab</h6>
                    <p class="card-text" style="font-size: 11px;">Petrik</p>
                    <p class="card-text"><small class="text-muted">
                              <i class="fas fa-star text-warning"></i>
                              <i class="fas fa-star text-warning"></i>
                              <i class="fas fa-star text-warning"></i>
                              <i class="fas fa-star text-warning"></i>
                              <i class="fas fa-star-half text-warning"></i>
                            4.5 (18,560)</small>

                </div>
            </div>

            <div class="card mx-1 ">
                <img class="card-img-top h-50" src="images/mysql.png" alt="Card image cap">
                <div class="card-body px-2">
                    <h6>Teknik membersihkan hidung yang mantab</h6>
                    <p class="card-text" style="font-size: 11px;">Petrik</p>
                    <p class="card-text"><small class="text-muted">
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star-half text-warning"></i>
                              4.5 (18,560)</small>

                </div>
            </div>

            <div class="card mx-1 ">
                <img class="card-img-top h-50" src="images/mysql.png" alt="Card image cap">
                <div class="card-body px-2">
                    <h6>Teknik membersihkan hidung yang mantab</h6>
                    <p class="card-text" style="font-size: 11px;">Petrik</p>
                    <p class="card-text"><small class="text-muted">
                                  <i class="fas fa-star text-warning"></i>
                                  <i class="fas fa-star text-warning"></i>
                                  <i class="fas fa-star text-warning"></i>
                                  <i class="fas fa-star text-warning"></i>
                                  <i class="fas fa-star-half text-warning"></i>
                                4.5 (18,560)</small>

                </div>
            </div>

            <div class="card mx-1 ">
                <img class="card-img-top h-50" src="images/mysql.png" alt="Card image cap">
                <div class="card-body px-2">
                    <h6>Teknik membersihkan hidung yang mantab</h6>
                    <p class="card-text" style="font-size: 11px;">Petrik</p>
                    <p class="card-text"><small class="text-muted">
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star-half text-warning"></i>
                                  4.5 (18,560)</small>

                </div>
            </div>

        </div>

    </div>

    <div class="container mt-5">
        <h3>
               <small class="text-muted">Kelas Favorit Untuk "Bisnis"</small>
             </h3>

        <div class="row">
            <div class="col">
                <a href="#" class="btn btn-primary btn-block btn-lg">Rating teratas</a>
            </div>
            <div class="col">
                <a href="#" class="btn btn-secondary btn-block btn-lg">Paling populer</a>
            </div>
            <div class="col">
                <a href="#" class="btn btn-info btn-block btn-lg">Kelas baru</a>
            </div>
        </div>

    </div>

    <div class="container mt-5">
        <h3>
               <small class="text-muted">Dapatkan apa yang kau impikan</small>
             </h3>

        <div class="row">
            <div class="col-md-4">
                <a href="#">
                    <figure class="figure">
                        <img src="images/php.png" style="height: 250px;" class="figure-img img-fluid rounded" alt="A generic square placeholder image with rounded corners in a figure.">
                        <figcaption class="figure-caption text-center">
                            lorem</figcaption>
                    </figure>
                </a>
            </div>
            <div class="col-md-4">
                <a href="#">
                    <figure class="figure">
                        <img src="images/php.png" style="height: 250px;" class="figure-img img-fluid rounded" alt="A generic square placeholder image with rounded corners in a figure.">
                        <figcaption class="figure-caption text-center">
                            lorem</figcaption>
                    </figure>
                </a>
            </div>
            <div class="col-md-4">
                <a href="#">
                    <figure class="figure">
                        <img src="images/mysql.png" style="height: 250px;" class="figure-img img-fluid rounded" alt="A generic square placeholder image with rounded corners in a figure.">
                        <figcaption class="figure-caption text-center">
                            lorem</figcaption>
                    </figure>
                </a>
            </div>
        </div>

    </div>

    <div class="container mt-3">
        <div class="row">
            <div class="col-md-3">
                <a href="#">
                    <figure class="figure">
                        <img src="images/mysql.png" style="height: 150px;" class="figure-img img-fluid rounded" alt="A generic square placeholder image with rounded corners in a figure.">
                        <figcaption class="figure-caption text-center">
                            lorem</figcaption>
                    </figure>
                </a>
            </div>

            <div class="col-md-3">
                <a href="#">
                    <figure class="figure">
                        <img src="images/php.png" style="height: 150px;" class="figure-img img-fluid rounded" alt="A generic square placeholder image with rounded corners in a figure.">
                        <figcaption class="figure-caption text-center">
                            lorem</figcaption>
                    </figure>
                </a>
            </div>
            <div class="col-md-3">
                <a href="#">
                    <figure class="figure">
                        <img src="images/php.png" style="height: 150px;" class="figure-img img-fluid rounded" alt="A generic square placeholder image with rounded corners in a figure.">
                        <figcaption class="figure-caption text-center">
                            lorem</figcaption>
                    </figure>
                </a>
            </div>
            <div class="col-md-3">
                <a href="#">
                    <figure class="figure">
                        <img src="images/php.png" style="height: 150px;" class="figure-img img-fluid rounded" alt="A generic square placeholder image with rounded corners in a figure.">
                        <figcaption class="figure-caption text-center">
                            lorem</figcaption>
                    </figure>
                </a>
            </div>
        </div>

    </div>

    <div class="container mt-5">
        <h3>
               <small class="text-muted">Topik terkait</small>
             </h3>

        <a href="#" class="btn btn-light shadow">Photography</a>
        <a href="#" class="btn btn-light shadow mx-1">Digital Marketing</a>
        <a href="#" class="btn btn-light shadow mx-1">Project Management</a>
        <a href="#" class="btn btn-light shadow mx-1">Graphic Design</a>
        <a href="#" class="btn btn-light shadow mx-1">Web Design </a>
        <a href="#" class="btn btn-light shadow mx-1">Data Science</a>
        <a href="#" class="btn btn-light shadow mx-1">Python</a>
        <a href="#" class="btn btn-light shadow mx-1">SQL</a>
        <a href="#" class="btn btn-light shadow mx-1">Piano</a>
    </div>

    <!-- <div class="container " style="margin-top: 120px;">
        <div class="row">
            <div class="col text-center border-right">
                <div class="col-8 offset-1">
                    <h4>Jadilah tutor</h4>
                    <p class="lead" style="font-size: 15px;">Ajarkan apa yang kamu bisa</p>
                    <a href="#" class="btn btn-lg btn-danger">Mulai mengajar</a>
                </div>
            </div>

        </div>
    </div>
 -->
    <div class="row pt-5 px-3 border-top mt-5 " style="font-size: 13px;">
        <div class="col">

            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link text-info" href="#">Jadilah tutor</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-info" href="#">Ikuti kelas</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-info" href="#">Mobile Apps</a>
                </li>
            </ul>

        </div>
        <div class="col">

            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link text-info" href="#">Tentang</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-info" href="#">Karir</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-info" href="#">Blog</a>
                </li>
            </ul>

        </div>
        <div class="col">

            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link text-info" href="#">Topik</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-info" href="#">Bantuan</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-info" href="#">Sosial</a>
                </li>
            </ul>

        </div>
        <div class="col">
            <form>
                <div class="form-group col-6 float-right" style="font-size: 13px;">
                    <select class="form-control" id="exampleFormControlSelect2">
                        <option>Bahasa</option>
                        <option>Japanese</option>
                        <option>English</option>
                        <option>Igbo</option>
                        <option>Hausa</option>
                    </select>
                </div>
            </form>

        </div>
    </div>
    <hr/>

    <div class="row" style="font-size: 12px;">
        <div class="col pl-5">
            <img src="images/logo.png" width="90px" class="mr-5"> <span>Copyright © 2049 ShineNow, Inc.</span>
        </div>
        <div class="col">
            <ul class="nav justify-content-end">
                <li class="nav-item">
                    <a class="nav-link active text-info" href="#">Terms</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-info" href="#">Privacy and Cookie Police</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-info" href="#">Intellectual Property</a>
                </li>
            </ul>

        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script>
        $(function() {
            $('[data-toggle="popover"]').popover()
        })
    </script>

</body>

</html>