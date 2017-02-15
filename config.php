<?php
########## MySql details #############
$username = "root"; //mysql username
$password = ""; //mysql password
$hostname = "127.0.0.1"; //hostname
$databasename = 'BookSwap'; //databasename

//connect to database
//$mysqli = new mysqli($hostname, $username, $password, $databasename);
 try{
  
  $mysqli = new PDO("mysql:host={$hostname};dbname={$databasename}",$username,$password);
  $mysqli->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
 }
 catch(PDOException $e){
  echo $e->getMessage();
 }
//research pdo
?>