<?php

$sername = "localhost";
// $user = "devadmin_nususer";
// $pass = "Nusadmin@02062023";
// $dbname = "devadmin_nusdev";
$user = "root";
$pass = "";
$dbname = "dev_sep19";


$conn = mysqli_connect($sername, $user, $pass, $dbname);

if(!$conn) {
    echo "Connection Failed...!";
    die();
}

?>