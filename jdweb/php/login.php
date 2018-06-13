<?php
 require 'conn.php';
 if(isset($_POST['user'])||isset($_POST['password'])){
     $name=$_POST['user'];
     $password=md5($_POST['password']);
 }else{
     exit('非法操作');
 };
 $value=mysql_query("select * from user where username='$name' and password='$password'");
 if(mysql_fetch_array($value)){
   echo true;
 }else{
   echo false;
 };
?>