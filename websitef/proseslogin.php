<?php

include("koneksi.php");

// echo "<h1>Login</h1>";

//mendapatkan datanya
$username = $_POST["username"];
$password = $_POST["password"];

//cari data berdasarkan email
$query = mysqli_query($koneksi, "select * from tb_user where username= '$username'");

$jumlah_data = mysqli_num_rows($query);

//kalau datanya ada
if($jumlah_data > 0){
    $data = mysqli_fetch_array($query);
        //kalu password yg ada di table sama dengan password yg di input

    if (password_verify($password, $data['password'])) {
        //sesion
        session_start();
        $_SESSION['id'] = $data['id'];
        $_SESSION['username'] = $data['username'];
        $_SESSION['role'] = $data['role'];

        // echo $data["role"];
        // die();
        if($data['role'] == "Admin"){
            header("location: admin/hal_admin.php");
        }else if($data["role"] == "User"){
            header("Location: index.php");
        }

        //bisa login
        // header ("Location: index.php");
    }else{
        header("Location: login.php?error=username atau password salah");
        //kalau passwordnya salah
    }
}else{
    //kalau datanya tidak ada
    header("Location: login.php?error=username atau password salah");
}
?>