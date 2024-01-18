<html>
    <head>
        <title>Create Account</title>
        <style>
            form{
                width: 100%;
            }
            fieldset{
                width: 40%;
                font-size: 20px;
                margin-left: 30%;
                margin-right: 30%;
                border-radius: 5px;
            }
            input{
                width: 100%;
                height: 5%;
                font-size: 20px;
            }
        </style>
    </head>
    <body>
        <form action="UserAccountconnection.php" method="POST">
            <fieldset>
                <legend>Create User Accont</legend>
                <label for="emailId">User Name</label><br><br>
                <input type="Text" name="UserName" id="UserName"><br><br>
                <label for="emailId">Email ID</label><br><br>
                <input type="email" name="emailId" id="emailId"><br><br>
                <label for="password">Password</label><br><br>
                <input type="password" name="password" id="password"><br><br>
                <input type="submit" value="create Account">
            </fieldset>
        </form>
    </body>
</html>
