<?php
 
 if($_POST){
    $name = trim($_POST['name']);
     $password = trim($_POST['password']);
 
    include("db_connection.php");  
    $user;
     try{
     $stmt = $db->prepare("SELECT * FROM singles WHERE name = :name");
     $stmt->execute(array(':name'=>$name));
     $result =$stmt->fetch(PDO::FETCH_ASSOC);
     if(password_verify($password,$result['pass'])){
        $user = $result;
       }else{
       echo 'fail';
     }
 }catch(PDOEXCEPTION $ex){
         print_r($ex->message);
     }
 }
   $statement = $db->prepare("SELECT * FROM singles
     WHERE gender !=:gender 
     AND os = :os
     AND age BETWEEN :min AND :max;
     AND (type1 = :type1 OR type2 = :type2 OR type3 =:type3 OR type4 = :type4)");
   $statement->execute(array(
      ':gender'=>$user['gender'],
       ':os'=>$user['os'],
       ':min'=>$user['min'],
       ':max'=>$user['max'],
       ':type1'=>$user['type1'],
       ':type2'=>$user['type2'],
       ':type3'=>$user['type3'],
       ':type4'=>$user['type4']));
   // $statement->bindValue();
$arr = $statement->fetchAll(PDO::FETCH_ASSOC);
/*  foreach($arr as $single){
    var_dump($single);
      print_r("\n");
  }
die();*/
?>
<?php include("top.html");?>   
 <h2>Matches for :<?= $user['name'] ?></h2> 
<?php
  if(!empty($arr)){
    foreach($arr as $signle){ ?>
           <div class="match">
                <img src="images/user.jpg" alt="user image" />
                  <div>
                    <ul>
                      <li><P><?= $signle['name'] ?></P></li>
                      <li><label><strong>Age</strong></label><?= $signle['age'] ?></li>
                      <li><label><strong>Gender</strong></label><?= $signle['gender'] ?></li>
                      <li><label><strong>Personality Type</strong></label><?= $signle['type1'].$signle['type2'].$signle['type3'].$signle['type4'] ?></li>
                      <li> <label><strong>Favourate OS</strong></label><?= $signle['os'] ?></li>
                    </ul>
                  </div>
                </div>
            

      <?php  }
         }else{
            echo "no matches found";
        } ?>
            <?php include("bottom.html");
?>