<?php
    class resp {
        public $op_status;
    }

    include("../conn/connect.php");

    error_reporting(0);
    session_start();

    if(isset($_POST["u_id"])) {
        $uid = $_POST["u_id"];
        $mid = $_POST["menu_id"];

        $q = "SELECT * FROM customer_cart WHERE u_id=$uid && menu_id=$mid;";
        $res = $db->query($q);

        if(mysqli_num_rows($res) > 0) {
            $row = mysqli_fetch_array($res);
            $n = $row["quantity"] + 1;

            $q = "UPDATE customer_cart SET quantity=$n WHERE u_id=$uid && menu_id=$mid;";
            $res = $db->query($q);

            echo $n;
        }
        else {
            $q = "INSERT INTO customer_cart (u_id, menu_id, quantity) VALUES ($uid, $mid, 1);";
            $res = $db->query($q);
            
            echo 1;
        }
    }

?>