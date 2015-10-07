<?php include("top.html");?>
    <?php
if($_SERVER["REQUEST_METHOD"]=="POST"){?>
        <h1>Thank you !</h1>
        <pre> Welcome to WAP-PHP class, <?=$_POST["name"]?> !
  Now <a href="login.php">login to see your matches!</a></pre>

        <?php
    $fileName = "userAccount.txt";
    $useraccount = "user.txt";
    $username = $_POST["username"];
    $password = $_POST["password"];
    $arr =array($_POST["username"],$_POST["password"]);
    $userfile = file_put_contents($useraccount,implode(",", $arr)."\n", FILE_APPEND | LOCK_EX);
    $results = file_put_contents($fileName,implode(",", $_POST)."\n", FILE_APPEND | LOCK_EX);
/*var_dump($results);*/
    
    ?>
            <?php } else {?>
                <pre> you need to signup first.</pre>
                <?php } ?>

                    <?php include("bottom.html");?>