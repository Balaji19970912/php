<?php

//fetch_second_level_category.php

include('dbconn.php');

// session_start();
        // if ($_SESSION['role'] == 'Parent company' || $_SESSION['role'] == 'Client company') {
            // $activeStatus = "AND state = 'Active'";
        // } else {
            $activeStatus = "";
        // }

        // if (empty($_SESSION['client'])) {
            $getdatas = "SELECT DISTINCT country FROM clientcompanydata WHERE parentcompany='" . $_POST['selected'] . "' " . $activeStatus . "
        ORDER BY clientcompanydata.country ASC";
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
        //     $getdatas = "SELECT DISTINCT country FROM clientcompanydata WHERE id IN (" . $res . ") " . $activeStatus . " ORDER BY clientcompanydata.country ASC;";
        // }

        // echo $getdatas;
        $result = $conn->query($getdatas);

        if ($result->num_rows > 0) {
            $output = '';
            while ($row = $result->fetch_assoc()) {
                $output .= '<option value=' . $row['country'] . '>' . $row['country'] . '</option>';
            }
            echo $output;
        }
        ?>