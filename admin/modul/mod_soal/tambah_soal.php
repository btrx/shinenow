 <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                      <!--   <h3 class="page-header"> Peraturan </h3> -->

                    </div>
                    
                </div>
                
                <div class="row">
                    <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                          Kelola Materi
                        </div>
                        <div class="panel-body">


                         
<script language="JavaScript">
function bukajendela(url) {
 window.open(url, "window_baru", "width=800,height=500,left=120,top=10,resizable=1,scrollbars=1");
}
</script>

<?php 
session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}

include "../../../config/koneksi.php";
//include "../../../config/library.php";

// konfigurasi pagenation
$jumlahDataHalaman = 10;
//$jumlahData = count(query($con,"SELECT * FROM t_soal"));
$data = mysqli_query($con, "SELECT * FROM t_soal");
$jumlahData = mysqli_num_rows($data);
$jumlahHalaman = ceil($jumlahData / $jumlahDataHalaman); 

if(isset($_GET['halaman'])){
  $_SESSION['halaman'] = $_GET['halaman']; 
} else {
  $_SESSION['halaman'];
}

$halamanAktif = (isset($_SESSION['halaman'])) ? $_SESSION['halaman'] : 1;

$dataAwal = ($jumlahDataHalaman * $halamanAktif) - $jumlahDataHalaman;

$result = mysqli_query($con, "SELECT * FROM t_soal ORDER BY id DESC LIMIT $dataAwal,$jumlahDataHalaman ");

echo "<h2> Daftar Materi</h2>
    <div style='text-align:left;padding-left:10px;margin-bottom:20px;'>
        <input class='btn btn-primary' type=button value='Tambah Topik' 
        onclick=\"window.location.href='?module=isimateri&act=tambahtopik';\">
    </div>

    <table class='table table-striped table-bordered table-hover'>
          <tr><th>no</th><th>Topik</th><th>Materi</th><th>Soal</th><th>Aksi</th></tr>"; 
    // navigasi
    for($i=1; $i <= $jumlahHalaman; $i++){
      if($i == $halamanAktif){
          echo "<a style='font-weight: bold; color: red; background-color: blue; padding: 0px 5px; margin-right:5px;' href='?module=tambah_soal&halaman=$i'>$i</a>";
      } else {
          echo "<a style='font-weight: bold; color: black; background-color: white; padding: 0px 5px; margin-right:5px;' href='?module=tambah_soal&halaman=$i'>$i</a>";
      }
    }

    $no=1;
    while ($r=mysqli_fetch_array($result)){
       echo "<tr><td>$no</td>
             <td>$r[topik]</td>
             <td>
                
                <input class='btn btn-primary' type=button value='Buat Materi' 
                onclick=\"window.location.href='?module=isimateri&topik=$r[topik]';\"> 

                <input class='btn btn-primary' type=button value='Edit Materi' 
                onclick=\"window.location.href='?module=soal&act=tambahmateri&topik=$r[topik]';\"> 
               
                <input class='btn btn-danger' type=button value='Hapus Materi' 
                onclick=\"window.location.href='modul/mod_soal/aksi_soal.php?module=soal&act=hapusmateri&topik=$r[topik]';\"> 
            
             </td>
             <td>
             
                <input class='btn btn-primary' type=button value='Buat Soal' 
                onclick=\"window.location.href='?module=soal&act=tambahsoal&topik=$r[topik]';\"> 
                <input class='btn btn-primary' type=button value='Lihat Soal' 
                onclick=\"window.location.href='?module=soal&topik=$r[topik]';\">
             
             </td>
             <td>
                <input class='btn btn-danger' type=button value='Hapus' 
                onclick=\"window.location.href='modul/mod_soal/aksi_soal.php?module=soal&act=hapustopik&id=$r[id]&topik=$r[topik]';\">
             </td>";
       
        echo"</tr>";
      $no++;
    }
    echo "</table>";

 ?>

