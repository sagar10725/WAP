<?php 
  session_start();
  include("db_connection.php");
if($_POST){
  $userName = $_POST["name"];
  $password = trim($_POST["password"]); 
   $user_data;
       $stmt = $db->prepare("SELECT * FROM singles WHERE name=:name");
        $stmt->execute(array(':name'=>$userName));  
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        if(pasSword_verify($password,$result['pass'])){
            $user_data = $result;
        }
          
//var_dump($user_data);die();
if($user_data == NULL){
    $_SESSION['error'] = "Invalid username and password !!";
    header("Location:login.php");
}else{
  
     //adding username in session
    $_SESSION['username'] = $userName;
    //print_r($_SESSION["username"]);
    
    //Find all the matches form database
    $statement = $db->prepare("SELECT * FROM singles
     		WHERE gender!= :gender AND os= :os AND age BETWEEN :min AND :max AND (type1=:type1 OR type2=:type2 OR type3=:type3 OR type4=:type4)");
  		 $statement->execute(
		array(':gender'=>$user_data['gender'],
       		':os'=>$user_data['os'],
       		':min'=>$user_data['min'],
       		':max'=>$user_data['max'],
       		':type1'=>$user_data['type1'],
       		':type2'=>$user_data['type2'],
       		':type3'=>$user_data['type3'],
       		':type4'=>$user_data['type4']));
		$match_data = $statement->fetchAll(PDO::FETCH_ASSOC);
	
     $_SESSION['matches'] = $match_data;
    //print_r($_SESSION['matches'] );    
     header("Location:view-match.php");
  }
 }
?>