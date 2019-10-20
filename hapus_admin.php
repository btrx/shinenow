<?php 	
	require "function.php";

	$id = $_GET['id'];

	if(hapusAdmin($id) > 0){
		echo "<script>
 				alert ('Admin berhasil dihapus');
 				document.location.href = 's_admin.php';
 				</script>";
	}
 ?>