<?php 	
	require "function.php"; 
		session_start();
		if (!isset($_SESSION['login'])) {
			echo "<script>
              alert ('maaf, anda belum login');
              document.location.href = 'login.php';
            </script>";
		}

		$admins = admin("SELECT * FROM admin");

		if(isset($_POST["cari"])){
			$users = cari($_POST["keyword"]);
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

    <title>Halaman Admin</title>
  </head>
  <body>
  	<h1>Super Admin</h1>
	<a href="logout.php">Logout</a>
	<form action="" method="post">
		<input type="text" name="keyword" autofocus size="30" placeholder="Masukan Keyword Pencarian" autocomplete="off" style="margin-bottom: 20px;">
		<button type="submit" name="cari">Cari</button>
	</form>
	<table border="1" cellspacing="0" cellpadding="10">
		<thead>
			<tr>
				<th>NO</th>
				<th>Username</th>
				<th>Password</th>
				<th>Aksi</th>
			</tr>
		</thead>
		<tbody>
			<?php $i = 1 ?>
			<?php foreach ($admins as $admin) : ?>
				<tr>
					<td><?= $i; ?></td>
					<td><?= $admin["username"];?></td>
					<td><?= $admin["password"]; ?></td>
					<td>
						<a href="hapus_admin.php?id=<?= $admin['id'];?>" onclick=" return confirm ('Anda yakin?')">Hapus</a>
					</td>
				</tr>
				<?php $i++; ?>
			<?php endforeach; ?>
			
		</tbody>
	</table>
	<a href="t_admin.php">tambah</a>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
