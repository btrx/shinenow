<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Halaman Registrasi</title>
    <style type="text/css">
      label,input,select,textarea{
        margin-left: 0px;
      }
    </style>
  </head>
  <body>
  <?php
include "config/koneksi.php";
if(isset($_POST['submit'])){
    $simpan="INSERT INTO tbl_user SET username='$_POST[username]',
                                      password='".md5($_POST["password"])."',
                                      nama='$_POST[nama]',
                                      tgl_lahir='$_POST[tgl_lahir]',
                                      jk='$_POST[jk]',                                      
                                      kwgn='$_POST[kwgn]',
                                      sekolah_asal='$_POST[sekolah_asal]',
                                      telp='$_POST[telp]',
                                      alamat='$_POST[alamat]'";
    mysqli_query($con,$simpan);
    echo '<script language="javascript">
    alert("Anda Berhasil Melakukan Registrasi");
    window.location="index.php";
    </script>';
    exit();
}
?>
    <div style="width: 500px; margin: 20px auto 0px;background-color: #eee; padding-left: 75px; padding-right: 75px;">
        <h2 class="font-weight-bold" style="padding-left: 100px; font-family: arial;">Registrasi</h2>
    <form action="" method="post">
         
                               <div class="form-group">
                                    <label>Username</label>
                                    <input type="text" class="form-control" id="username" name="username" placeholder="Username" required="">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" id="password" name="password" class="form-control" placeholder="Password" required="">
                                </div>

                                <div class="form-group">
                                    <label>Nama</label>
                                    <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama" required="">
                                </div>

                                <div class="form-group">
                                    <label>Tgl Lahir</label>
                                    <input type="text" class="form-control" id="tgl_lahir" name="tgl_lahir" placeholder="YYYY-MM-DD">
                                </div>

                                <div class="form-group">
                                    <label>Jenis Kelamin</label>
                                    <select name="jk" id="jk" class="form-control">
                                      <option selected>----Pilih----</option>
                                      <option value="Laki-Laki">Laki-Laki</option>
                                      <option value="Perempuan">Perempuan</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label>Kewarganegaraan</label>
                                    <select name="kwgn" id="kwgn" class="form-control" >
                                      <option selected>---Pilih----</option>
                                      <option value="Indoensia">Indonesia</option>
                                      <option value="Asing">Asing</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label>Sekolah Asal / Universitas</label>
                                    <input type="text" class="form-control" id="sekolah_asal" name="sekolah_asal" placeholder="Sekolah asal">
                                </div>

                                <div class="form-group">
                                    <label>Telp</label>
                                    <input type="text" class="form-control" id="telp" name="telp" placeholder="Telpon">
                                </div>

                                <div class="form-group">
                                    <label>Alamat</label>
                                    <textarea name="alamat" class="form-control" cols="30" rows="4" id="alamat"></textarea>
                                </div>

          <div class="form-group">
            <div class="col-sm-10">
              <button class="btn btn-warning text-center font-weight-bold" style="width: 325px;" type="submit" name="submit">Daftar</button>
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