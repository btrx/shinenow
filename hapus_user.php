<?php 
	require "function.php";
 	
 	$id = $_GET['id'];

 	if(hapusUser($id) > 0) {
 		echo "<script>
 				alert ('user berhasil dihapus');
 				document.location.href = 'admin.php';
 				</script>";
 	}

 ?>