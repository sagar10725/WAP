<?php include("top.html");?>

<?php  
session_start();

  if(!empty($_SESSION['error'])){?>
       <a><h1><?=$_SESSION['error']; ?></h1></a>
 <?php $_SESSION['error']="";} 
  if($_SERVER["REQUEST_METHOD"] == "POST"){ ?>
     <h1>WEL-COME</h1>
     <pre> <?= $_POST['name'] ?> !
     Now <a> login to fing your matches...</a></pre>
   <?php } ?>
   
   
<form action="login-submit.php" method="post" accept-charset="UTF-8">
        <fieldset>
           <legend>Returning User: </legend>
              <p>
                <label><strong> Full Name :</strong></label>
                <input type='text' name='name' id='name' maxlength="16" />
                </p>
                 <p>
                 <label><strong> Password :</strong></label>
                 <input type='password' name='password' id='password' />
                 </p>
                 <p><input type='submit' value='Login User' /></p>
            </fieldset>
    </form>
<?php include("bottom.html"); ?>