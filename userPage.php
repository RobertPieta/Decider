<!DOCTYPE html>
<html lang="en">
<head>
	<script src="bootstrap/js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
<title>Oh hai</title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
</head>
<body>


<div class="container"><h1>Hello</h1>
  <p>
<?php

include('./scripts/database_connection.php');

$id = $_POST['id'];
$email = $_POST['email'];


$query = 'SELECT * FROM Event NATURAL JOIN User NATURAL JOIN Participates WHERE FBid = ' . $id;

      
  $result = mysql_query($query) or die(mysql_error());

  // Put the result in our own rows table.
  for($i = 0; $row = @mysql_fetch_assoc($result); $i++) {
    $rows[$i] = $row;
  }

  if(!isset($rows))
  {
    //Put into database
    $query = 'INSERT INTO User VALUES('.$id.', "'.$email.'");';
    $result = mysql_query($query) or die(mysql_error());
    echo 
  }
  else
  {
    foreach ($rows as $event) {
      echo '<li>'.$event['title'].'</li>';
    }
  }



echo $id;

?>
</p>
</div>






</body>
</html>