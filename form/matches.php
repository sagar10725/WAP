<?php include("top.html");?>

    <?php   
     session_start();
     ?>
        <h1>Wel-come !</h1>
        <p><?=$_SESSION["uname"]; ?> !
        Now <a>find your matches!</a></p>
                   
                <form action="matches-submit.php" method="post" accept-charset="UTF-8">
                    <fieldset>
                        <legend>Returing User: </legend>
                       <p>
                        <label><strong> Full Name :</strong></label>
                        <input type='text' name='name' id='name' maxlength="16" />
                        </p>
                        <p><input type='submit' value='View My Matches' /></p>
                    </fieldset>
                    </from>

<?php include("bottom.html"); ?>