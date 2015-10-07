<?php 
    include("db_connection.php");

if($_POST){
    $userName = $_POST["name"];
    $userPassword = trim($_POST["password"]);
    $userGender = $_POST["gender"];
    $userAge = $_POST["age"];
    $userType = $_POST["ptype"];
    $userOs = $_POST["os"];
    $userMinAge = $_POST["minage"];
    $userMaxAge = $_POST["maxage"];
                                       
$hash_pass = password_hash($userPassword,PASSWORD_DEFAULT);                
$stmt = $db->prepare("INSERT INTO singles VALUES (NULL, :name, :pass_hash, :gender, :age, :type1,
           :type2, :type3, :type4, :os, :min, :max)");

$stmt->execute(array(
      ':name'=>$userName,
      ':pass_hash'=>$hash_pass,
      ':gender'=>$userGender,
      ':age'=>$userAge,
      ':type1'=>$userType[0],
      ':type2'=>$userType[1],
      ':type3'=>$userType[2],
      ':type4'=>$userType[3],
      ':os'=>$userOs,
      ':min'=>$userMinAge,
      ':max'=>$userMaxAge));   
    
  header("Location:signup-success.php?name=$userName");
   }
?>

