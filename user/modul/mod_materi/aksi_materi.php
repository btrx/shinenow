<?php
session_start();
include "../../../config/koneksi.php";
include "../../../config/fungsi_thumb.php";

$module=$_GET['module'];
$act=$_GET['act'];
//var_dump($_POST['topik']);

// Buat Topik
if ($module=='isimateri' AND $act=='isi'){
		$result = mysqli_query($con, "SELECT * FROM tbl_materi WHERE topik = '$_POST[topik]'");
		$rt = mysqli_affected_rows($con);

		if($rt == 0){
       // cek gambar
        $cover = upload();

        if(!$cover){
           $cover = '';
        }

			mysqli_query($con,"INSERT INTO tbl_materi VALUES ('', '$_POST[topik]','$_POST[deskripsi]','$_POST[materi]','$_POST[video]', '$cover')");
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
		mysqli_query($con,"INSERT INTO t_soal VALUES ('','$_POST[iduser]','$_POST[topik]')");
      $_SESSION[topiku] = $_POST[topik];
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

  // cover
  function upload() {
  $namaFile = $_FILES["cover"]["name"];
  $ukuranFile = $_FILES["cover"]["size"];
  $error = $_FILES["cover"]["error"];
  $tmpFile = $_FILES["cover"]["tmp_name"];

  // cek apakah ada gambar yg diupload
  if($error === 4){
    echo "<script>
        alert ('tolong pilih gambar!!!');
        </script>";
    return false;
  }

  // cek apakah yg diupload adalah gambar
  $ekstensiGambarValid = ['jpeg', 'jpg', 'png'];
  $ekstensigambar = explode('.', $namaFile);
  $ekstensigambar = strtolower(end($ekstensigambar));

  if (!in_array($ekstensigambar, $ekstensiGambarValid)) {
    echo "<script>
        alert ('bukan gambar!!!');
        </script>";
    return false;
  }

  // cek ukuran gambar
  if($ukuranFile > 2000000){
    echo "<script>
        alert ('terlalu besar!!!');
        </script>";
    return false;
  }

  // nama file baru
  $namaFileBaru = uniqid();
  $namaFileBaru .= '.';
  $namaFileBaru .= $ekstensigambar;

  // lolos
  move_uploaded_file($tmpFile, '../../../admin/modul/mod_soal/img/'. $namaFileBaru);
  return $namaFileBaru;
}
?>
