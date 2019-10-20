<?php 
// koneksi database
$conn = mysqli_connect("localhost", "root", "", "db_elearning");

// registrasi
function registrasi($data) {
	global $conn;

	$username = strtolower(stripslashes($data["username"]));
	$password = mysqli_real_escape_string($conn, $data["password"]);
	$nama = strtolower(stripslashes($data["nama"]));
	$jkel = strtolower(stripslashes($data["jns_kelamin"]));
	$alamat = strtolower(stripslashes($data["alamat"]));
	$email = strtolower(stripslashes($data["email"]));
	$foto = strtolower(stripslashes($data["foto"]));

	// cek username sudah ada apa belum
	$result = mysqli_query($conn,"SELECT username FROM user WHERE username = '$username'");
	if(mysqli_fetch_assoc($result)) {
		echo "<script>
				alert ('Username sudah ada!!');
		</script>";
		return false;
	}

	// enkripsi password
	$password = password_hash($password, PASSWORD_DEFAULT);

	// insert ke dalam database
	mysqli_query($conn, "INSERT INTO user VALUES ('', '$username', '$password', '$nama', '$jkel', '$alamat', '$email' , '$foto')");

	// menghasilkan angka 1 jika berhasil dan -1 jika gagal
	return mysqli_affected_rows($conn);



   }

 // login
 function login($data) {
 	global $conn;

 	// Tangkap data login
 	$username = $_POST["username"];
 	$password = $_POST["password"];

 	$result = mysqli_query($conn, "SELECT * FROM user where username = '$username'");

 	// cek username
 	if(mysqli_num_rows($result) === 1){

 		// cek password
 		$row = mysqli_fetch_assoc($result);
 		if(password_verify($password, $row["password"])) {
 			// menghasilkan angka 1 jika berhasil dan -1 jika gagal
 			return mysqli_affected_rows($conn);
 			}
 		}
	}

// login admin
function loginAdmin($data){
	global $conn;
	$username = $_POST["username"];
	$password = $_POST["password"];


	// ambil data dari database
	$result = mysqli_query($conn,"SELECT * FROM admin where username = '$username'" );

	// tampung database dalam sebuah array
	$row = mysqli_fetch_assoc($result);

	// cek username dan password
	if($row["username"] == $username && $row["password"] == $password){
			return mysqli_num_rows($result);
	}
}

// user
function user($user){
	global $conn;

	// ambil data user
	$result = mysqli_query($conn, $user);
	$rows = [];
	while ($row = mysqli_fetch_assoc($result)) {
		$rows[] = $row;
	}
	return $rows;
}

// hapus user
function hapusUser($id){
	global $conn;

	$result = mysqli_query($conn, "DELETE FROM user WHERE id = '$id'");
	return mysqli_affected_rows($conn);
}

// cari
function cari($keyword){
	// global $conn;

	$result = "SELECT * FROM user WHERE nama LIKE '%$keyword%' OR jns_kelamin LIKE '%$keyword%' OR alamat LIKE '%$keyword%' OR email LIKE '%$keyword%'";
		
	return user($result);
}

// super admin
function admin($admin) {
		global $conn;

		$result = mysqli_query($conn, $admin);
		$rows = [];
		while($row = mysqli_fetch_assoc($result)){
			$rows[] = $row;
		}

		return $rows;
}

// tambah admin
function tambahAdmin($data) {
	global $conn;

	$username = $data["username"];
	$password = $data["password"];

	if($username != '' && $password != ''){
		$result = mysqli_query($conn, "INSERT INTO admin VALUES ('','$username','$password')");

		return mysqli_affected_rows($conn);
	}
}

// hapus admin
function hapusAdmin($id){
	global $conn;

	$result = mysqli_query($conn, "DELETE FROM admin WHERE id = '$id'");
	return mysqli_affected_rows($conn);
}

// login super admin
function loginSuperAdmin($data){
	global $conn;

	$username = $data["username"];
	$password = $data["password"];

	if($username == 'sadmin' && $password == 'sadmin') {
		return 1;
	}
}


 ?>

 
