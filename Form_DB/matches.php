<?php include("top.html");?>        
        <p><strong>Returing User !!!</strong></p>                   
                <form action="matches-submit.php" method="post" accept-charset="UTF-8">
                    <fieldset>
                        <legend>Returing User: </legend>
                       <p>
                        <label><strong> Full Name :</strong></label>
                        <input type='text' name='name' id='name' maxlength="16" />
                        </p>
                        <p>
                        <label><strong> Password :</strong></label>
                        <input type='password' name='password' id='password' maxlength="16" />
                        </p>
                        <p><input type='submit' value='View My Matches' /></p>
                    </fieldset>
                    </from>

<?php include("bottom.html"); ?>