<?php
header("Content-type:text/html; charset=utf-8"); 
$host = 'localhost';
//改成你登入phpmyadmin帳號
$user = 'root';
//改成你登入phpmyadmin密碼
$passwd = '';
//資料庫名稱
$database = 'store';
//實例化mysqli(資料庫路徑, 登入帳號, 登入密碼, 資料庫)
// $connect = new mysqli($host, $user, $passwd, $database);
 
if(strpos(__FILE__,'byethost')!==false){
    $host = 'sql213.byethost12.com';
    //改成你登入phpmyadmin帳號
    $user = 'b12_32583962';
    //改成你登入phpmyadmin密碼
    $passwd = '********';
    //資料庫名稱
    $database = 'b12_32583962_store';
}
//實例化mysqli(資料庫路徑, 登入帳號, 登入密碼, 資料庫)
error_reporting(0);
mysqli_report(MYSQLI_REPORT_OFF);
$connect = new mysqli($host, $user, $passwd, $database);
mysqli_query($connect, "set names utf8"); //utf8 設為對應的編碼


	

?>