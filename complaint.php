<html> <body><center>
<?php
$conn = mysqli_connect("localhost","root","","cbpos_db");
if (!$conn) {
die("Connection failed: " . mysqli_connect_error());
}
// $sql = "CREATE TABLE complaints1(
//     firstname VARCHAR(30) NOT NULL,
//     lastname VARCHAR(30) NOT NULL,
//     email VARCHAR(50),phoneno VARCHAR(10),cname VARCHAR(50), complaint VARCHAR(70)
//     )";
//     if (mysqli_query($conn, $sql)) {
//     echo "Table complaints created successfully";
//     } else {
//     echo "Error creating table: " . mysqli_error($conn);
//     }
$firstname = $_REQUEST['fname'];
$lastname = $_REQUEST['lname'];
$email = $_REQUEST['email'];
$phoneno = $_REQUEST['phoneno'];
$cname = $_REQUEST['cname'];
$complaint = $_REQUEST['complaint'];
$sql = "INSERT INTO complaints1 VALUES('$firstname','$lastname','$email','$phoneno','$cname','$complaint')";

if(mysqli_query($conn, $sql))
{
echo '<script>';
echo 'alert("complaint registered!")';
echo '</script>';
}
else{
echo "ERROR:". mysqli_error($conn);
}
// Close connection
mysqli_close($conn);
?>
</center>
</body>
</html>