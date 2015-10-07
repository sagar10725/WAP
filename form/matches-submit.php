<?php include("top.html");?>
    <?php

if($_POST){
  $name = $_POST["name"];
   echo  $name." your matches are :";
?>
    <br><br>
<?php
  $file1 = file_get_contents("userAccount.txt");
     $array = explode("\n",$file1); 
     //$arr;
     foreach($array as $line){
        $arr = explode(",", $line);       
         if(in_array($name, $arr, true)){            
             break;             
         }
      }  
    
     $groupList = array();
       foreach($array as $listArr){
          $singleArray = explode(",", $listArr);  
           
          if(@$singleArray[5] == $arr[5]
             && $singleArray[6] == $arr[6] 
             && ($singleArray[1] >= $arr[7] 
             && $singleArray[1] <= $arr[8]) 
             && $singleArray[2] != $arr[2]){
             array_push($groupList, $singleArray);
         }
       }  
    
  if(!empty($groupList)){
    foreach($groupList as $signle){ ?>
         <div>
            <form>
              <div class="match">
                <img src="images/user.jpg" alt="user image" />
                  <div>
                    <ul>
                      <li><P><?= $signle[0] ?></P></li>
                      <li><label><strong>Age</strong></label><?= $signle[1] ?></li>
                      <li><label><strong>Gender</strong></label><?= $signle[2] ?></li>
                      <li><label><strong>Personality Type</strong></label><?= $signle[5] ?></li>
                      <li> <label><strong>Favourate OS</strong></label><?= $signle[6] ?></li>
                    </ul>
                  </div>
                </div>
              </form>
            </div>

      <?php     }
         }else{
            echo "no matches found";
        } ?>
            <?php include("bottom.html");
   }?>

                <!--
           $uname = $singlearray[0];
           $uage = $singlearray[1];
           $ugender = $singlearray[2];
           $utype = $singlearray[5];
           $uos = $singlearray[6];
           $umin = $singlearray[7];
           $umax = $singlearray[8];-->