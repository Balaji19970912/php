<?php
include 'dbconn.php';
session_start();
$_SESSIO['role'] = 'Admin';
?>
<html>

<head>
    <title>Generate Report</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />
</head>

<body>
    <form action="check.php" method="POST">
        <div class="container">
            <div style="width: 500px; margin:0 auto">
                <div class="form-group">
                    <label>Parent</label><br />
                    <select id="first_level" name="first_level" class="form-control">
                        <option value="" selected disabled>Select Parent</option>
                        <?php
                        $getparent = array();
                        // if ($_SESSION['role'] == 'Admin' || $_SESSION['role'] == 'NUS Manager') {
                        $getparentdetails = "SELECT * FROM parentcompanydata;";
                        // } else {
                        // $getparentdetails = "SELECT * FROM parentcompanydata WHERE id IN (" . $_SESSION['parent'] . ");";
                        // }
                        $results = $conn->query($getparentdetails);
                        if ($results->num_rows > 0) {
                            while ($row = $results->fetch_assoc()) {
                                $getparent[] = $row;
                            }
                        }
                        foreach ($getparent as $key => $valueparent) {
                        ?>
                            <option value="<?= $valueparent['parentcompany'] ?>"><?= $valueparent['parentcompany'] ?></option>
                        <?php
                        }
                        ?>
                    </select>
                </div>
                <div class="form-group">
                    <label>Country</label><br />
                    <select id="second_level" name="second_level[]" multiple class="form-control">

                    </select>
                </div>
                <div class="form-group">
                    <label>Client</label><br />
                    <select id="third_level" name="third_level[]" multiple class="form-control">

                    </select>
                </div>
                <div>
                    <label for="elec">Electricity</label>
                    <input type="radio" id="elec" class="commValue" value="electricity" name="commodity" checked>
                    <label for="gas">Natural Gas</label>
                    <input type="radio" id="gas" class="commValue" value="natural gas" name="commodity">
                </div>
                <div class="form-group">
                    <label>Contracts</label><br />
                    <select id="fourth_level" name="fourth_level[]" multiple class="form-control">

                    </select>
                </div>
                <input type="submit" value="Generate Report">
            </div>
        </div>
    </form>
</body>

</html>
<script>
    $(document).ready(function() {

        $('#first_level').multiselect({
            nonSelectedText: 'Select Parent',
            buttonWidth: '400px',
            enableFiltering: true,
            enableCaseInsensitiveFiltering: true,
            filterPlaceholder: 'Search Parent...',
            onChange: function(option, checked) {
                $('#second_level').html('');
                $('#second_level').multiselect('rebuild');
                $('#third_level').html('');
                $('#third_level').multiselect('rebuild');
                var selected = this.$select.val();
                if (selected.length > 0) {
                    $.ajax({
                        url: "getMultipleCountriesIER.php",
                        method: "POST",
                        data: {
                            selected: selected
                        },
                        success: function(data) {
                            $('#second_level').html(data);
                            $('#second_level').multiselect('rebuild');
                        }
                    })
                }
            }
        });

        $('#second_level').multiselect({
            nonSelectedText: 'Select Country',
            buttonWidth: '400px',
            enableFiltering: true,
            enableCaseInsensitiveFiltering: true,
            // includeSelectAllOption: true,
            filterPlaceholder: 'Search Country...',
            onChange: function(option, checked, select) {

                // var opselected = $(option).val();
                // console.log("OPS = ",opselected);

                // if(checked == false) {
                //     console.log("Bhai Saab");
                // }

                $('#third_level').html('');
                $('#third_level').multiselect('rebuild');
                var selected = this.$select.val();
                // console.log("Value = ", selected);

                if (selected.length > 0) {
                    var parentVal = document.querySelector('#first_level').value;
                    // console.log(parentVal);
                    $.ajax({
                        url: "getMultipleClientsIER.php",
                        method: "POST",
                        data: {
                            selected: selected,
                            parent: parentVal
                        },
                        success: function(data) {
                            $('#third_level').html(data);
                            $('#third_level').multiselect('rebuild');
                        }
                    });
                }
                // else {
                //     console.log("Herehere");
                // }
            }
        });

        $('#third_level').multiselect({
            nonSelectedText: 'Select Client',
            buttonWidth: '400px',
            enableFiltering: true,
            enableCaseInsensitiveFiltering: true,
            filterPlaceholder: 'Search Client...',
            onChange: function(option, checked, select) {

                // var opselected = $(option).val();
                // console.log("OPS = ",opselected);

                // if(checked == false) {
                //     console.log("Bhai Saab");
                // }

                $('#fourth_level').html('');
                $('#fourth_level').multiselect('rebuild');
                var selected = this.$select.val();
                console.log("Value = ", selected);

                if (selected.length > 0) {
                    var parentVal = document.querySelector('#first_level').value;
                    var allCountries = [];
                    document.querySelector('#second_level').childNodes.forEach((item) => console.log(item.selected == true ? allCountries.push(item.value) : console.log('')));
                    // console.log(allCountries);
                    // console.log(parentVal);
                    var commodity = document.getElementById('elec').checked == false ? 'natural gas' : 'electricity';
                    $.ajax({
                        url: "getMultipleContractsIER.php",
                        method: "POST",
                        data: {
                            clientId: selected,
                            parent: parentVal,
                            commodity: commodity
                        },
                        success: function(data) {
                            $('#fourth_level').html(data);
                            $('#fourth_level').multiselect('rebuild');
                        }
                    });
                }
                // else {
                //     console.log("Herehere");
                // }
            }
        });

        $('#fourth_level').multiselect({
            nonSelectedText: 'Select Contract',
            buttonWidth: '400px',
            enableFiltering: true,
            enableCaseInsensitiveFiltering: true,
            filterPlaceholder: 'Search Contract...'
        })
    });
    $(".commValue").on('change', function() {
        // console.log("Yoyo ==?", $(this).val());
        var commodity = $(this).val();
        var parentVal = document.querySelector('#first_level').value;
        var allClients = [];
        document.querySelector('#third_level').childNodes.forEach((item) => console.log(item.selected == true ? allClients.push(item.value) : console.log('')));

        $.ajax({
            url: "getMultipleContractsIER.php",
            method: "POST",
            data: {
                clientId: allClients,
                parent: parentVal,
                commodity: commodity
            },
            success: function(data) {
                $('#fourth_level').html(data);
                $('#fourth_level').multiselect('rebuild');
            }
        });
    });
</script>