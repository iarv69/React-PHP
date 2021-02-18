
    <?php
      //header("Access-Control-Allow-Origin: *");
      //header('Access-Control-Allow-Headers: Content-Type');
        
       $serverName = "localhost";
       $userName="root";
       $password="";
       $databaseName="mydb";
       $conn=mysqli_connect($serverName,$userName,$password,$databaseName);
       if (mysqli_connect_errno()) {
         echo "Failed to connect to MySQL: " . mysqli_connect_error();
         exit();
       }

       //$recText=$_POST['text']; //Receive formData
       //echo $recText;           //Respose the textfield data

       //Receive JSON data
       $data = json_decode(file_get_contents("php://input"), true);
       echo ($data['text']); //Response the text json field
       
       $return_arr[] = array("id" => 5,
                   "username" => 6,
                   "name" => 7,
                   "email" => 8);

       // Encoding array in JSON format
       echo json_encode($return_arr);
    ?>

