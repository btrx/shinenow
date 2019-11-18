<?php
session_start();
include "../../../config/koneksi.php";
include "../../../config/fungsi_thumb.php";

$module=$_GET['module'];
$act=$_GET['act'];
var_dump($_POST['topik']);
echo 'hkjh';
// Update pengaturanujian
if ($module=='isimateri' AND $act=='isi'){
		mysqli_query($con,"INSERT INTO tbl_materi VALUES ('', '$_POST[topik]','$_POST[materi]')");
  		header('location:../../media.php?module=tambah_soal');
	} else if($module=='tambahmateri' AND $act=='tambah')
	{
		mysqli_query($con,"INSERT INTO t_soal VALUES ('', '$_POST[topik]')");
  		header('location:../../media.php?module=tambah_soal');
	}
?>
