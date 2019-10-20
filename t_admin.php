<?php 	
	require "function.php";
  session_start();
    if (!isset($_SESSION['login'])) {
      echo "<script>
              alert ('maaf, anda belum login');
              document.location.href = 'login.php';
            </script>";
    }

	if (isset($_POST['tambah'])) {
		if(tambahAdmin($_POST) > 0){
			echo "<script>
 				alert ('Admin berhasil ditambahkan!!');
 				document.location.href = 's_admin.php';
 				</script>";
		} else {
			echo "<script>
				alert ('Admin gagal ditambahkan!!');
				</script>";
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

    <title>Tambah Admin</title>
  </head>
  <body>
    <div style="width: 500px; margin: 20px auto 0px;">
        <h1 style="margin: 100px 0px 20px;">Tambah Admin</h1>
    <form action="" method="post">
          <div class="form-group row">
            <label for="username" class="col-sm-2 col-form-label">Username</label>
            <div class="col-sm-10">
              <input type="text" name="username" class="form-control" id="username" placeholder="Username">
            </div>
          </div>
          <div class="form-group row">
            <label for="password" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
              <input type="password" name="password" class="form-control" id="password" placeholder="Password">
            </div>
          </div>
          <div class="form-group row">
            <div class="col-sm-10">
              <button type="submit" name="tambah" class="btn btn-primary">tambah</button>
            </div>
          </div>
    </form>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>