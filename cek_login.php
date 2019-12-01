<?php
include "config/koneksi.php";

$username=$_POST['username'];
$pass = $_POST['password'];
$password=md5($_POST['password']);
var_dump($pass);
if($username == 'admin' && $pass == 'admin'){

$qry=mysqli_query($con, "SELECT * FROM tbl_admin WHERE username='$username' AND password='$password' ");
$jumpa=mysqli_num_rows($qry);
$r=mysqli_fetch_array($qry);

if ($jumpa > 0) {
	session_start();
	$_SESSION['username']= $r['username'];
	$_SESSION['idadmin']= $r['id_admin'];
	header('location:admin/media.php?module=home');
}
else {
	echo '<script language="javascript">
	alert("Userid atau Password Yang anda Masukkan Salah atau Acount Sudah Diblokir");
	window.location="index.php";
	</script>';
	exit();
}
} else {

$qry=mysqli_query($con, "SELECT * FROM tbl_user WHERE username='$username' AND password='$password' AND statusaktif='Y'");
$jumpa=mysqli_num_rows($qry);
$r=mysqli_fetch_array($qry);

if ($jumpa > 0) {
	session_start();
	$_SESSION['username']= $r['username'];
	$_SESSION['iduser']= $r['id_user'];
	header('location:media.php?hal=home');
}
else {
	echo '<script language="javascript">
	alert("Userid atau Password Yang anda Masukkan Salah atau Acount Sudah Diblokir");
	window.location="index.php";
	</script>';
	exit();
}
}
?>