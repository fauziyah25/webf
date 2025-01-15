<?php
include "../koneksi.php";

$nama_produk = $_POST["nama_produk"];
$harga = $_POST["harga"];
$deskripsi = $_POST["deskripsi"];

//tipe data array
$foto = $_FILES['foto']['name'];
$lokasi_foto = $_FILES['foto']['tmp_name'];
$namabaru = time().$foto;

$query = mysqli_query($koneksi, "insert into tb_produk values ( null,'$nama_produk', '$harga', '$deskripsi', '$namabaru')");

//memasukan file ke dalam folder
move_uploaded_file($lokasi_foto, "../ftproduk/$namabaru")


?>