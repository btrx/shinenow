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
$aksi="modul/mod_materi/aksi_materi.php";
switch($_GET[act]){
  // Tampil Menuatas
  default:
    echo "<h2>Buat Materi</h2>
          <form method=POST enctype='multipart/form-data' action=$aksi?module=isimateri&act=isi class='form-horizontal'>

          <div class='form-group'>
            <label for='inputEmail3' class='col-sm-2 control-label'>Topik</label>
            <div class='col-sm-5'>
              <input type=text size=30 class='form-control' name='topik' value='$_GET[topik]'>
            </div>
          </div>

          <div class='form-group'>
            <label for='inputEmail3' class='col-sm-2 control-label'>Deskripsi</label>
            <div class='col-sm-5'>
              <input type=text size=30 class='form-control' name='deskripsi' required>
            </div>
          </div>

          <div class='form-group'>
            <label for='inputEmail3' class='col-sm-2 control-label'>Isi Materi</label>
            <div class='col-sm-10'>
              <textarea name='materi' style='width: 790px; height: 350px;'></textarea>
            </div>
          </div>

           <div class='form-group'>
            <label for='inputEmail3' class='col-sm-2 control-label'>Video</label>
            <div class='col-sm-5'>
              <input type=text size=30 class='form-control' name='video'>
            </div>
          </div>

          <div class='form-group'>
            <label for='inputEmail3' class='col-sm-2 control-label'></label>
            <div class='col-sm-5'>
              <input type=submit value=Simpan class='btn btn-primary'>
            </div>
          </div>
         </form>";
    break;  

    case "tambahtopik":
    echo "<h2>Tambah Topik</h2>
          <form method=POST class='form-horizontal' action='$aksi?module=tambahmateri&act=tambah' enctype='multipart/form-data'>
          
                       
                       <div class='form-group'>
                          <label for='inputEmail3' class='col-sm-2 control-label'>Topik</label>
                          <div class='col-sm-4'>
                            <input type=text name='topik' class='form-control' size=80 required/>
                          </div>
                        </div>

                        <div class='form-group'>
                          <label for='inputEmail3' class='col-sm-2 control-label'></label>
                          <div class='col-sm-4'> 
                              <input type=submit name=submit value=Tambah class='btn btn-primary'>
                              <input type=button value=Batal onclick=self.history.back() class='btn btn-danger'>
                          </div>
                        </div>
                  </form>";
     break;
}
?>

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


