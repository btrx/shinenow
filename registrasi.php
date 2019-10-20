<?php 
  require "function.php";
  if(isset($_POST["register"])) {
    if(registrasi($_POST) > 0) {
      echo "<script>
              alert ('Selamat, registrasi berhasil');
              document.location.href = 'login.php';
            </script>";
     // header ("Location: login.php");
    } else {
      echo mysqli_error($conn);
    }


  }


 ?>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Halaman Registrasi</title>
  </head>
  <body>
    <div style="width: 500px; margin: 20px auto 0px;background-color: #eee; padding-left: 75px;">
        <h2 class="font-weight-bold" style="padding-left: 100px; font-family: arial;">Registrasi</h2>
    <form action="" method="post">
          <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 col-form-label">Username</label>
            <div class="col-sm-10">
              <input type="text" name="username" class="form-control" id="inputEmail3" placeholder="Username">
            </div>
          </div>
          <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
              <input type="password" name="password" class="form-control" id="inputEmail3" placeholder="Password">
            </div>
          </div>
          <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 col-form-label">Nama</label>
            <div class="col-sm-10">
              <input type="text" name="nama" class="form-control" id="inputEmail3" placeholder="Nama">
            </div>
          </div>
          <div class="form-group">
            <label for="inputEmail3" class="col-sm col-form-label">Jenis Kelamin</label>
            <div class="col-sm-10">
              <select name="jns_kelamin" class="form-control">
                <option>---------</option>
                <option>Laki-Laki</option>
                <option>Perempuan</option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 col-form-label">Alamat</label>
            <div class="col-sm-10">
              <input type="text" name="alamat" class="form-control" id="inputEmail3" placeholder="Alamat">
            </div>
          </div>
          <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
              <input type="email" name="email" class="form-control" id="inputEmail3" placeholder="Email">
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-10">
              <button class="btn btn-warning text-center font-weight-bold" style="width: 325px;" type="submit" name="register">Daftar</button>
            </div>
          </div>
          <h6 class="pl-3">Sudah daftar?  <a href="login.php">Klik disini</a></h6>
    </form>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>