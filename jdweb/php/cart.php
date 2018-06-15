<?php
 require 'conn.php';
 $result=mysql_query('select * from shop');
     $arr6=array();
     for($i=0;$i<mysql_num_rows($result);$i++){
         $arr6[$i]=mysql_fetch_array($result,MYSQLI_ASSOC);
     }

    echo json_encode($arr6);
?>