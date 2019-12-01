
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                      <!--   <h3 class="page-header"> Peraturan </h3> -->

                    </div>
                    
                </div>
                
                <div class="row">
                    <?php
                    if(isset($_GET[topik]) == ''){
                        $_SESSION[topik];
                    } else
                     {
                        $_SESSION[topik] = $_GET[topik];
                    }
                        $iduser = $_SESSION['iduser'];

                        $result = mysqli_query($con, "SELECT * FROM tbl_simpanmateri WHERE id_user = '$iduser' AND topik = '$_SESSION[topik]'");
                        $ada = mysqli_affected_rows($con);
                       //var_dump($_GET[topik]);
                        if($ada > 0) {?>
                              <button style=" margin: 10px 16px; font-weight: bold; background-color: #ebc934;" class="btn"><a href=?hal=simpanmateri&tipe=hapus&topik=<?= $_GET[topik] ?>>SELESAI</a></button>
                  
                    <?php } else {  ?>
                            <button style=" margin: 10px 16px; font-weight: bold; background-color: #ebc934;" class="btn"><a href=?hal=simpanmateri&topik=<?= $_SESSION[topik] ?>>Tambahkan</a></button>
                    <?php } ?>
                    <div class="col-lg-12">
                    <div class="panel panel-primary" style="background-color: #e6f5a4">
                        <div class="panel-heading" style="background-color: #ebc934;">
                           Materi
                        </div>
                        <div class="panel-body">
                       
<?php
$result=mysqli_query($con, "select * from tbl_soal WHERE aktif='Y'");
$hitung=mysqli_num_rows($result);


		$qry=mysqli_query($con, "SELECT * FROM tbl_materi where topik = '$_SESSION[topik]'");
		$r=mysqli_fetch_array($qry);

        $video = explode('=', $r[video]);
        $v = "https://www.youtube.com/embed/".end($video);
        //var_dump($v);

?>
<?php if($r[video] != '') { ?>
        <div>
            <iframe width="800" height="500" style="margin:10px 90px;" src=<?= $v; ?>></iframe>
        </div>
<?php } ?>
<?php 
		echo "    
		$r[materi]<br/>
		";
 ?>

<script>
 function cekForm() {
	if (!document.fValidate.agree.checked) {
				alert("Anda belum menyetujui!");
				return false;
			} else {
				location.href="?hal=soal";
			}
		}
</script>
<form name="fValidate">
<input type="checkbox" name="agree" id="agree" value="1"> Saya Mengerti dan Siap Untuk Mengikuti Tes<br/><br/>
          <div style='text-align:center;'><input type="button" name="button-ok" class="btn btn-primary" value="MULAI TES" onclick="cekForm()"></div>
</form>

                        </div>
                        <div class="panel-footer" style="background-color: #e6f5a4">
                           
                        </div>
                    </div>
                    </div>    
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
               


