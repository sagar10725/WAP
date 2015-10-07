<?php include("top.html");
   session_start();?>
     <form method="post" accept-charset="UTF-8">
        <fieldset>
            <legend>User Login </legend>
            <br>
            <p>
                <label><strong> Full Name :</strong></label>
                <label><input type='text' name='uname' id='uname' maxlength="16" required /></label>
            </p>

            <p>
                <label><strong>Password :</strong> </label>
                <label>
                    <input type='password' name='password' id='password' minlenght="3" required/>
                </label>
            </p>
            <p>
                <label><strong><input type='submit' name="submit" value='Login' /></strong></label>
            </p>
        </fieldset>
      </from>
       <?php
           if($_POST){
            $formUser_name = htmlspecialchars($_POST['uname']);
            $formUser_password = htmlspecialchars($_POST['password']);            
            $user_accounts = file_get_contents("user.txt");
            $userlist = explode("\n",$user_accounts);
            foreach($userlist as $user){
               $user_acc = explode(",", $user);
                if(!empty($user_acc)){
                  if($user_acc[0] == $formUser_name && $user_acc[1] == $formUser_password ){
                   /* if($_POST["submit"]){ */
                      $_SESSION["uname"] = $formUser_name;
                       header("location: matches.php");
                    //}                               
                  }                    
                }else{?>
                    <p> You are not the member of this grop
                    singup first !!!
                    <a href="index.php"> Sign up</a></p>
                <?php }
            }
            }?>

            <?php include("bottom.html"); ?>