<?php

//fetch_third_level_category.php

include 'dbconn.php';
// session_start();
$arr = $_POST['selected'];
// print_r($arr);
$res = '';
foreach ($arr as $value) {
    $res .= ",'" . $value . "'";
    // echo $value;
}
$res = trim($res, ",");
// if ($_SESSION['role'] == 'Parent company' || $_SESSION['role'] == 'Client company') {
//     $activeStatus = "AND state = 'Active'";
// } else {
    $activeStatus = "";
// }
// if (empty($_SESSION['client'])) {
    $getdatas = "SELECT * FROM clientcompanydata WHERE parentcompany='" . $_POST['parent'] . "' " . $activeStatus . " AND country IN (" . $res . ")
ORDER BY clientcompanydata.clientcompany ASC";
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

$result = $conn->query($getdatas);

$output = '';
while ($row = mysqli_fetch_assoc($result)) {
    $output .= '<option value="' . $row["id"] . '">' . $row["clientcompany"] . " - " . $row['country'] . '</option>';
}
echo $output;