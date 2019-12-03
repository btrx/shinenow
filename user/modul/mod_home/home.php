<?php 
session_start();
include "../../../config/koneksi.php";
include "../../../config/fungsi_thumb.php";

$module=$_GET[module];
$act=$_GET[act];


// $sql_user  =mysqli_query($con,"SELECT count(*) as jum FROM tbl_user WHERE statusaktif='Y'");
// $r_user    =mysqli_fetch_array($sql_user);
// $total_user=$r_user['jum'];

$iduser = $_SESSION['iduser'];
$sql_soal  =mysqli_query($con,"SELECT count(*) as jum FROM tbl_simpanmateri WHERE id_user = '$iduser' ");
$r_soal    =mysqli_fetch_array($sql_soal);
$total_soal=$r_soal['jum'];



?>

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
                           Dashboard
                        </div>
                        <div class="panel-body">


                          <h3>SELAMAT DATANG <?= $_SESSION['username']; ?></h3>

                            <div class="row">
               <!--  <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-file fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $total_user ?></div>
                                    <div>Total User</div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div> -->
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-file fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $total_soal ?></div>
                                    <div>Total Kursus</div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>


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