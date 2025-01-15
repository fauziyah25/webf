<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tbh produk</title>
</head>
<body>

   <form action="proses_tambah.php" method="post" enctype="multipart/form-data">  
    <div>
        <label for="nama">Nama Produk</label>
        <input type="text" name="nama_produk" id="nama"/>
    </div>
    <div>
        <label for="harga">Harga</label>
        <input type="number" name="harga" id="harga"/>
    </div>
    <div>
        <label for="deskripsi">Deskripsi</label>
        <textarea name="deskripsi" id="" cols="30" rows="10"></textarea>
    </div>
    <div>
        <label for="foto">Foto</label>
        <input type="file" name="foto" />
    </div>

    <input type="submit" value="simpan">
   </form>
</body>
</html>