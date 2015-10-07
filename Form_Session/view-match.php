 <?php 
session_start();
include("top.html");
$match = $_SESSION['matches'];
$user = $_SESSION['username'];

if(!empty($user)){ ?>
 <h2><a>Matches for :<?= $user; ?></a></h2>
<a href="logout.php">Logout </a><br>
<?php
/*var_dump($match);
  die();*/
  if(!empty($match)){
    foreach($match as $signle){ ?>
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
            echo "<p> no matches found !!! </P>";
        } 

 }else{
    $_SESSION['error'] = "Please Login First";
    header("Location:login.php");
}?>
            <?php include("bottom.html");?>