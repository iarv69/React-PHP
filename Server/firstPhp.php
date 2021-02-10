<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=<device-width>, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    //phpinfo();
        // CORS support
        //header("Access-Control-Allow-Origin: *");
        //header("Access-Control-Allow-Headers: *");

        header("Access-Control-Allow-Origin: *");
        header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");

        

        // https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS
        if($_SERVER["REQUEST_METHOD"] == "OPTIONS") exit();
        
        print "test"
        ?>
</body>
</html>
