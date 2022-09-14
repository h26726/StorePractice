<?php
session_start();
include "_sys/config.php";
include "_sys/query.php";
date_default_timezone_set('Asia/Taipei'); //設定時區
$Now = date('Y-m-d H:i:s'); //現在
// $sql="UPDATE  `online` SET `is_del` = 1 WHERE id =? ";
// $db->exeUpdate($sql,array($_SESSION["userId"]));
// $sql="UPDATE  `online` SET `is_del` = 1 WHERE TIMESTAMPDIFF(MINUTE, ?, `time`) > 1 ";
// $db->exeUpdate($sql,array($now));
// $sql="SELECT `id`, `username`, `team`, `is_del`,`time` FROM `online` ";
// $lobbys=$db->queryAll($sql);
$Data = [];
$UserId = $_SESSION['UserId'];

$Cmd = $_POST['Cmd'];
switch ($Cmd) {
    case 'AddProductToCart':
        $ProductId = $_POST['ProductId'];
        $sql = "INSERT INTO `cart` (`Id`, `UserId`, `ProductId`, `DelFlag`) VALUES (NULL, ?, ?, 'N');";
        $db->exeUpdate($sql, array($UserId, $ProductId));
        $Data['CartProduct'] = $db->GetCartProduct();
        break;
    case 'DeleteProductFormCart':
        $CartId = $_POST['CartId'];
        $sql = "UPDATE `cart` SET `DelFlag` = 'Y' WHERE `cart`.`Id` = ?;";
        $db->exeUpdate($sql, array($CartId));
        $Data['CartProduct'] = $db->GetCartProduct();
        break;
    default:
        # code...
        break;
}
echo json_encode($Data);
