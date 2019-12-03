<?php 
$iduser = $_SESSION['iduser'];
$topik = $_GET[topik];
$tipe = $_GET[tipe];

// hapus
if($tipe == 'hapus'){

	$result = mysqli_query($con,"DELETE FROM tbl_simpanmateri WHERE topik = '$topik'");
	$r=mysqli_affected_rows($result);

	//header('location : media.php?hal=d_home');
	echo"<script>
			window.location = 'media.php?hal=d_home&topik=$topik';
		</script>";

	exit;

}


// var_dump(expression)
$result = mysqli_query($con,"INSERT INTO tbl_simpanmateri VALUES ('','$iduser','$topik')");
$r=mysqli_affected_rows($result);

	//header('location : media.php?hal=d_home');
	echo"<script>
			window.location = 'media.php?hal=d_home&topik=$topik';
		</script>";
 ?>