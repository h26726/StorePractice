<?php
session_start();

include '_sys/query.php';
$_SESSION['username'] = "test";
if(!isset($_SESSION['UserId'])){
    $_SESSION['UserId'] = $db->exeUpdate("INSERT INTO `user` (`Id`) VALUES (NULL);");
}
$ProductDbData = $db->queryAll("SELECT * FROM `product`");
$CategoryDbData = $db->queryAll("SELECT * FROM `category`");
$CartProduct = $db->GetCartProduct();


foreach ($CategoryDbData as $key => $value) {
    $CategoryDbArrange[$value["Id"]]=$value;
}
foreach ($ProductDbData as $key => $value) {
    $CategoryId =  $value["CategoryId"];
    $CategoryDbArrange[$CategoryId]["CategoryProduct"][] = $value;
}
$ProductArrange = ["Left" => [],"Middle" => [],"Right" => []];

foreach ($CategoryDbArrange as $key => $value) {
    $ColumnCode =  $value['ColumnCode'];
    $ProductArrange[$ColumnCode][]=$value;
}

$ProductArrange = json_encode($ProductArrange);
$CartProduct = json_encode($CartProduct);
include "menu.html";

