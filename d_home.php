
        <!-- Page Content -->
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
                           Materi
                        </div>
                        <div class="panel-body">
                          
<?php
$result=mysqli_query($con, "select * from tbl_soal WHERE aktif='Y'");
$hitung=mysqli_num_rows($result);

if(isset($_GET[topik]) == ''){
    $_SESSION[topik];
} else {
$_SESSION[topik] = $_GET[topik];
}


		$qry=mysqli_query($con, "SELECT * FROM tbl_materi where topik = '$_SESSION[topik]'");
		$r=mysqli_fetch_array($qry);
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
                        <div class="panel-footer">
                           
                        </div>
                    </div>
                    </div>    
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
               


