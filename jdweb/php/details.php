<?php
  require 'conn.php';

  if(isset($_POST['sid'])){
      $sid=$_POST['sid'];
  }
  $value=mysql_query("select * from shop where sid=$sid");
  $arr=mysql_fetch_array($value,MYSQLI_ASSOC);
  echo json_encode($arr);
?>