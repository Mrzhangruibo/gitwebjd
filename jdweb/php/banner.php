<?php
 require 'conn.php';
 //轮播图
 $result=mysql_query('select * from jdbanner');
 $arr1=array();
 for($i=0;$i<mysql_num_rows($result);$i++){
     $arr1[$i]=mysql_fetch_array($result,MYSQLI_ASSOC);
 }
 //秒杀区域
  $result=mysql_query('select * from secondskill');
  $arr2=array();
  for($i=0;$i<mysql_num_rows($result);$i++){
      $arr2[$i]=mysql_fetch_array($result,MYSQLI_ASSOC);
  }
  //秒杀区域右边
   $result=mysql_query('select * from killRight');
     $arr3=array();
     for($i=0;$i<mysql_num_rows($result);$i++){
         $arr3[$i]=mysql_fetch_array($result,MYSQLI_ASSOC);
     }
  //meeting区域
   $result=mysql_query('select * from meeting');
    $arr4=array();
    for($i=0;$i<mysql_num_rows($result);$i++){
        $arr4[$i]=mysql_fetch_array($result,MYSQLI_ASSOC);
    }
    //特色推荐
    $result=mysql_query('select * from speity');
        $arr5=array();
        for($i=0;$i<mysql_num_rows($result);$i++){
            $arr5[$i]=mysql_fetch_array($result,MYSQLI_ASSOC);
        }
    //还没逛够
     $result=mysql_query('select * from shop');
             $arr6=array();
             for($i=0;$i<mysql_num_rows($result);$i++){
                 $arr6[$i]=mysql_fetch_array($result,MYSQLI_ASSOC);
             }
     $result=mysql_query('select * from value');
                  $arr7=array();
                  for($i=0;$i<mysql_num_rows($result);$i++){
                      $arr7[$i]=mysql_fetch_array($result,MYSQLI_ASSOC);
                  }
    class indexdata{};
    $index=new indexdata();
    $index->lunbo=$arr1;
    $index->kill=$arr2;
    $index->killRight=$arr3;
    $index->meeting=$arr4;
    $index->speity=$arr5;
    $index->shop=$arr6;
    $index->value=$arr7;

    echo json_encode($index);
?>

