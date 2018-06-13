<?php
 require 'conn.php';

 if(isset($_POST['repeatname'])||isset($_POST['submit'])){
       $name=@$_POST['repeatname'];
 }else{
      exit('非法操作');
 };

 $value=mysql_query("select * from user where username='$name'");
 if(mysql_fetch_array($value)){
    echo true;
 }else{
    echo false;
 };
 if(isset($_POST['submit'])){
    $name=$_POST['username'];
    $password=md5($_POST['password']);
    $tel=$_POST['tel'];
    $value="insert user value(default,'$name','$password','$tel')";
    mysql_query($value);
    header('location:../src/html/login.html');
 }
?>