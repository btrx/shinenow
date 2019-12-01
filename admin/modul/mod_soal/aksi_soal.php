<?php
session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
include "../../../config/koneksi.php";
include "../../../config/library.php";
include "../../../config/fungsi_thumb.php";


$module=$_GET['module'];
$act=$_GET['act'];

// Input soal
if ($module=='soal' AND $act=='input'){
  $lokasi_file    = $_FILES['fupload']['tmp_name'];
  $tipe_file      = $_FILES['fupload']['type'];
  $nama_file      = $_FILES['fupload']['name'];
  $acak           = rand(1,99);
  $nama_file_unik = $acak.$nama_file;
  
  // Apabila ada gambar yang diupload
  if (!empty($lokasi_file)){
    UploadBanner($nama_file_unik);
  mysqli_query($con,"INSERT INTO tbl_soal(soal,a,b,c,d,knc_jawaban,tanggal,gambar,topik) 
  				VALUES('$_POST[soal]',
					   '$_POST[a]',
					   '$_POST[b]',
					   '$_POST[c]',
					   '$_POST[d]',
					   '$_POST[knc_jawaban]',
                       '$tgl_sekarang',
                       '$nama_file_unik',
              '$_POST[topik]')");
  }
  else{
  mysqli_query($con,"INSERT INTO tbl_soal(soal,a,b,c,d,knc_jawaban,topik) 
  				VALUES('$_POST[soal]',
					   '$_POST[a]',
					   '$_POST[b]',
					   '$_POST[c]',
					   '$_POST[d]',
					   '$_POST[knc_jawaban]',
             '$_POST[topik]')");
  }
    $topik = $_POST[topik];
    header('location:../../media.php?topik='.$topik.'&module='.$module);
}
//Hapus Soal
elseif ($module=='soal' AND $act=='hapus') {
  $id= $_GET['id'];
  $result = mysqli_query($con, "SELECT topik FROM tbl_soal WHERE id_soal= '$id'");
  $topik= mysqli_fetch_assoc($result);

	mysqli_query($con,"DELETE FROM tbl_soal WHERE id_soal='$_GET[id]'");
    header('location:../../media.php?topik='.$topik[topik].'&module='.$module);
}

//Hapus Topik
elseif ($module=='soal' AND $act=='hapustopik') {
  $cekisi = mysqli_query($con, "SELECT materi FROM tbl_materi WHERE topik = '$_GET[topik]'");
  $cek = mysqli_num_rows($cekisi);

  if($cek == 0 ){
    mysqli_query($con,"DELETE FROM t_soal WHERE id ='$_GET[id]'");
    header('location:../../media.php?module=tambah_soal');
  }else{

    echo "<script>
          alert ('Silahkan Hapus Materi Topik $_GET[topik] untuk menghapus!!');
           document.location.href = '../../media.php?module=tambah_soal';
        </script>";

  }

}

// Hapus Materi
elseif ($module=='soal' AND $act=='hapusmateri') {

  mysqli_query($con,"DELETE FROM tbl_materi WHERE topik ='$_GET[topik]'");

  echo "<script>
          alert ('Materi untuk Topik $_GET[topik] telah dihapus!!');
           document.location.href = '../../media.php?module=tambah_soal';
        </script>";
}

//Tambah Materi
else if($module=='soal' AND $act=='tambahmateri'){
    // mysqli_query($con,"INSERT INTO tbl_materi VALUES ('', '$_POST[topik]','$_POST[materi]')");
  //var_dump($_POST['materi']);
    mysqli_query($con,"UPDATE tbl_materi SET   
                topik = '$_POST[topik]',
                deskripsi = '$_POST[deskripsi]',
                materi = '$_POST[materi]',
                video = '$_POST[video]'
                            WHERE id = '$_GET[id]'");
    header('location:../../media.php?module=soal&act=tambahmateri&topik='.$_GET[topik]);
}
// Update soal
elseif ($module=='soal' AND $act=='update'){
  $lokasi_file    = $_FILES['fupload']['tmp_name'];
  $tipe_file      = $_FILES['fupload']['type'];
  $nama_file      = $_FILES['fupload']['name'];
  $acak           = rand(1,99);
  $nama_file_unik = $acak.$nama_file; 

  // Apabila gambar tidak diganti
  if (empty($lokasi_file)){
    mysqli_query($con,"UPDATE tbl_soal SET soal       = '$_POST[soal]',
                                   			 a  = '$_POST[a]' ,
								             b  = '$_POST[b]',
											 c  = '$_POST[c]',
											 d  = '$_POST[d]',
											knc_jawaban= '$_POST[knc_jawaban]',
                      topik =   '$_POST[topik]'
                             WHERE id_soal   = '$_POST[id]'");
  }
  else{
    UploadBanner($nama_file_unik);
    mysqli_query($con,"UPDATE tbl_soal SET soal       = '$_POST[soal]',
                                   			 a  = '$_POST[a]' ,
								             b  = '$_POST[b]',
											 c  = '$_POST[c]',
											 d  = '$_POST[d]',
											knc_jawaban= '$_POST[knc_jawaban]',
                                   gambar      = '$nama_file_unik' ,
                                   topik = '$_POST[topik]'
                             WHERE id_soal   = '$_POST[id]'");
  }
  $id= $_GET['id'];
  $result = mysqli_query($con, "SELECT topik FROM tbl_soal WHERE id_soal= '$id'");
  $topik= mysqli_fetch_assoc($result);
  header('location:../../media.php?topik='.$topik[topik].'&module='.$module);
}
//Pengaktifan dan Pengnonaktifan
elseif ($module=='soal' AND $act=='nonaktif'){
$aktif='N';
    mysqli_query($con,"UPDATE tbl_soal SET aktif  = '$aktif'  WHERE id_soal='$_GET[id]'");
  $id= $_GET['id'];
  $result = mysqli_query($con, "SELECT topik FROM tbl_soal WHERE id_soal= '$id'");
  $topik= mysqli_fetch_assoc($result);
  header('location:../../media.php?topik='.$topik[topik].'&module='.$module);
  echo "tes";
  
 }
elseif ($module=='soal' AND $act=='aktif'){
$aktif='Y';
    mysqli_query($con,"UPDATE tbl_soal SET aktif  = '$aktif'  WHERE id_soal='$_GET[id]'");
  $id= $_GET['id'];
  $result = mysqli_query($con, "SELECT topik FROM tbl_soal WHERE id_soal= '$id'");
  $topik= mysqli_fetch_assoc($result);
  header('location:../../media.php?topik='.$topik[topik].'&module='.$module);
  echo "tes";
  
 }

}
?>
