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
                          Kelola Soal
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

$result = mysqli_query($con, "SELECT * FROM t_soal Where id_user = '$_SESSION[iduser]' ORDER BY id DESC");

echo "<h2> Daftar Materi</h2>
    <div style='text-align:left;padding-left:10px;margin-bottom:20px;'>
        <input class='btn btn-primary' type=button value='Tambah Topik' 
        onclick=\"window.location.href='?module=isimateri&act=tambahtopik';\"> 
    </div>
    <table class='table table-striped table-bordered table-hover'>
          <tr><th>no</th><th>Topik</th><th>Materi</th><th>Soal</th><th>Aksi</th></tr>"; 
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

