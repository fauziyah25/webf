<?php 
include("koneksi.php");
$id = $_GET["id"];
$query = mysqli_query($koneksi, "select * from tb_produk where id = $id");

$dataproduk = mysqli_num_rows($query);
if($dataproduk == 0){
    echo "<p>data produk tidak di temukan</p>";
    die();
}

$data = mysqli_fetch_array($query)
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
       img{
        width: 30%;
    }
    </style>
</head>
<body>
    <div class="produk">
    <img src="ftproduk/<?= $data['foto'] ?>">

    <h1><?= $data["nama_produk"] ?></h1>
    <h1><?= $data["harga"] ?></h1>
    <p><?= $data["deskripsi"] ?></p>
</div>

    <form action="proses_keranjang.php" method="post">
        <input type="hidden" name="produk_id" value="<?=$id?>">
        <button type="submit">keranjang</button>
    </form>
</body>
</html>