<?php
// Create connection
include 'dbdata.php';

$conn = new mysqli(DB_SERVER, DB_USER, DB_PASSWORD, DB_NAME);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>