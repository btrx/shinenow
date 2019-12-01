<?php
session_start();
include "../../../config/koneksi.php";
include "../../../config/fungsi_thumb.php";

$module=$_GET['module'];
$act=$_GET['act'];
//var_dump($_POST['topik']);

// Update pengaturanujian
if ($module=='isimateri' AND $act=='isi'){
		$result = mysqli_query($con, "SELECT * FROM tbl_materi WHERE topik = '$_POST[topik]'");
		$rt = mysqli_affected_rows($con);

		if($rt == 0){

			mysqli_query($con,"INSERT INTO tbl_materi VALUES ('', '$_POST[topik]','$_POST[deskripsi]','$_POST[materi]','$_POST[video]')");
	  		header('location:../../media.php?module=tambah_soal');
  		}

  		else
  		{	
  			echo "<script>
  				alert ('Maaf, Sudah Diisi. Silahkan Edit Jika ingin Mengubah Isinya!!');
  				 document.location.href = '../../media.php?module=tambah_soal';
  			</script>";
  			//header('location:../../media.php?module=tambah_soal');
  		}
	} else if($module=='tambahmateri' AND $act=='tambah')
	{
		$result = mysqli_query($con, "SELECT * FROM t_soal WHERE topik = '$_POST[topik]'");
		$rt = mysqli_affected_rows($con);

		if($rt == 0){
		mysqli_query($con,"INSERT INTO t_soal VALUES ('', '$_POST[topik]')");
  		header('location:../../media.php?module=tambah_soal');
  		}

  		else
  		{	
  			echo "<script>
  				alert ('Maaf, Nama Topik Sudah Ada. Silahkan Cari Nama Lain!!');
  				 document.location.href = '../../media.php?module=isimateri&act=tambahtopik';
  			</script>";
  			//header('location:../../media.php?module=tambah_soal');
  		}
	}
?>
