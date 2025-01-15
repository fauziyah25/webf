<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <center>
    <h3>Anyeong</h3>
    <br>
    
    <?php
    if(isset($_GET["error"])){
        echo $_GET["error"];
    }
    ?>
    
   <form action="proseslogin.php" method="post">  
    <div>
        Username:
        <input type="text" name="username" />
    </div>
    <br>
    <div>
        Password:
        <input type="password" name="password" />
    </div>
    <br>
    <input type="submit" name="login" value="Login">
   </form>
   </center>
</body>
</html>