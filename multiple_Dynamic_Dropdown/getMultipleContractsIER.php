<?php

//fetch_third_level_category.php

include 'dbconn.php';
// session_start();
$clientId = $_POST['clientId'];
// print_r($arr);
$res = '';
foreach ($clientId as $value) {
    $res .= "," . $value . "";
    // echo $value;
}
$res = trim($res, ",");
// if ($_SESSION['role'] == 'Parent company' || $_SESSION['role'] == 'Client company') {
//     $activeStatus = "AND state = 'Active'";
// } else {
$activeStatus = "";
// }
// if (empty($_SESSION['client'])) {

$getdatas = "SELECT * FROM nus_supply_contract as s1 INNER JOIN clientcompanydata as s2 ON s1.clientId = s2.id WHERE parentId='" . $_POST['parent'] . "' " . $activeStatus . " AND
 s1.clientId IN (" . $res . ") AND s1.commodityName = '" . $_POST['commodity'] . "' ORDER BY s2.clientcompany ASC;";
// } else {
//     $inp = $_SESSION['client'];
//     $arr = explode(" ",     trim($inp));
//     $arrLength = count($arr);
//     $x = '';
//     for ($i = 0; $i < $arrLength; $i++) {
//         $x = $arr[$i] . "," . $x;
//     }
//     $res =  trim($x, ",");
//     // echo $res;
//     $getdatas = "SELECT * FROM clientcompanydata WHERE id IN (" . $res . ") " . $activeStatus . " ORDER BY clientcompanydata.clientcompany ASC;";
// }
echo $getdatas;

$result = $conn->query($getdatas);

$output = '';
while ($row = mysqli_fetch_assoc($result)) {
    $output .= '<option value="' . $row["supplierId"] . '">' . $row["clientcompany"] . " - " . $row['countryName'] . " - " . $row['contractTermfromDate'] . '</option>';
}
echo $output;
