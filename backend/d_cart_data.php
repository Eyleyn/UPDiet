<?php
    class resp {
        public $op_status;
    }

    include("../conn/connect.php");

    error_reporting(0);
    session_start();

    $uid = $_SESSION['user']['u_id'];

    $q = "SELECT a.menu_id, b.u_id, a.name, a.price, a.img, b.quantity, c.name AS store_name FROM store_menu AS a, customer_cart AS b, store_info AS c WHERE a.menu_id=b.menu_id && b.u_id=$uid && a.u_id=c.u_id ORDER BY b.date DESC;";
    $res = $db->query($q);

    if(mysqli_num_rows($res) > 0) {
        while($row = $res->fetch_assoc()) {
            echo json_encode($row);
            break;
        }
    }
?>