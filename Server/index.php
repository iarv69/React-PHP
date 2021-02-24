
  <?php

  $serverName = "localhost";
  $userName = "root";
  $password = "";
  $databaseName = "mydb";

  $conn = mysqli_connect($serverName, $userName, $password, $databaseName);
  if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    exit();
  }

  //Receive JSON data
  $data = json_decode(file_get_contents("php://input"), true);
  //echo ($data['action']); //Response the text json field

  if ($data['action'] == 'sRequest') {
    $query = "select s,t from S";

    if ($result = mysqli_query($conn, $query)) {
      $matches = cast_query_results($result);

      echo (json_encode($matches, JSON_UNESCAPED_UNICODE)); // get all products in json format.    
    } else {
      echo ("SQL query failed");
    }
  }
  else if ($data['action'] == 'uRequest') {
    $query = "select u,t from U";

    if ($result = mysqli_query($conn, $query)) {
      $matches = cast_query_results($result);

      echo (json_encode($matches, JSON_UNESCAPED_UNICODE)); // get all products in json format.    
    } else {
      echo ("SQL query failed");
    }
  }

  function cast_query_results($result): array
  {
    if ($result === false)
      return null;

    $data = array();
    $fields = $result->fetch_fields();
    while ($row = $result->fetch_assoc()) {
      foreach ($fields as $field) {
        $fieldName = $field->name;
        $fieldValue = $row[$fieldName];
        if (!is_null($fieldValue))
          switch ($field->type) {
            case 3:
              $row[$fieldName] = (int)$fieldValue;
              break;
            case 4:
              $row[$fieldName] = (float)$fieldValue;
              break;
              // Add other type conversions as desired.
              // Strings are already strings, so don't need to be touched.
          }
      }
      array_push($data, $row);
    }

    return $data;
  }

  ?>