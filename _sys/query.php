<?php

include 'db.php';
class db
{
    protected $connect;
    public function setConnect($connect)
    {
        $this->connect = $connect;
    }
    public function queryAll($sql, $bindParams = array())
    {
        $stmt = $this->connect->prepare($sql);
        if ($bindParams != array()) {
            $stmt->bind_param($this->getTypeCode($bindParams), ...$bindParams);
        }

        $stmt->execute();
        $result = $stmt->get_result();
        $data = array();
        while ($row = $result->fetch_array()) //MYSQLI_NUM
            $data[] = $row;
        

        return $data;
    }
    public function queryOne($sql, $bindParams = array())
    {
        $stmt = $this->connect->prepare($sql);
        if ($bindParams != array()) 
            $stmt->bind_param($this->getTypeCode($bindParams), ...$bindParams);
        

        $stmt->execute();
        $result = $stmt->get_result();
        return $result->fetch_array();
    }

    public function queryVal($sql, $bindParams = array())
    {
        $stmt = $this->connect->prepare($sql);
        if ($bindParams != array()) 
            $stmt->bind_param($this->getTypeCode($bindParams), ...$bindParams);
        

        $stmt->execute();
        $result = $stmt->get_result();
        $data = array();
        $data = $result->fetch_array();
        return $data[0];
    }

    public function exeUpdate($sql, $bindParams=[])
    {
        $stmt = $this->connect->prepare($sql);
        if ($bindParams != array()) 
            $stmt->bind_param($this->getTypeCode($bindParams), ...$bindParams);
        
        $stmt->execute();
        return $stmt->insert_id;

    }
    protected function getTypeCode($ary)
    { //回傳陣列各個參數類型首字並組合
        $typeText = '';
        foreach ($ary as $var) {
            $typeText .= substr(gettype($var), 0, 1);
        }
        return $typeText;
    }

    public function GetCartProduct(){
        $sql = "SELECT cart.Id AS CartId,product.Id AS ProductId ,product.ProductPrice,product.ProductImg,product.ProductName FROM `cart` Join `product` ON `product`.Id = `cart`.ProductId WHERE DelFlag = 'N' AND UserId = ?;";
        $CartProduct = $this->queryAll($sql, array($_SESSION['UserId']));
        return $CartProduct;
    }

}
$db = new db;
$db->setConnect($connect);




// $NameMap=array('A','B','C','D');
// echo date('Y-m-d H:i:s',strtotime($now."+3 second"));
// for ($i=1; $i <= 200; $i++) {
//     $codeName= $NameMap[$i%4].str_pad(floor($i/4+1),3,'0',STR_PAD_LEFT) ;
//     $url='link/img/'.$i.'-500x500.jpg';
//     $price=floor(rand(100,1000)/50)*50;
//     $discountRate=round(rand(1,9)*0.1,2);
//     $promotionStart=date('Y-m-d H:i:s', strtotime($now.'+'.($i*2+10-1440).' minute'));
//     $promotionEnd=date('Y-m-d H:i:s', strtotime($now.'+'.($i*2+20-1440).' minute'));
//     $onDate=date('Y-m-d H:i:s', strtotime($now.'+'.($i*2-1440).' minute'));
//     $offDate=date('Y-m-d H:i:s', strtotime($now.'+'.($i*2+30-1440).' minute'));
//     $bindParam=array($codeName,$url,$price,$discountRate,$promotionStart,$promotionEnd,$onDate,$offDate);
//     $sql="INSERT INTO item VALUES (null,?,?,?,?,?,?,?,?)";
//     $db->exeUpdate($sql,$bindParam);
// }
