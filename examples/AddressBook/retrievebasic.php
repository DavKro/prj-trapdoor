<html>
<?php 
//1. Create a database connection (once per php script) 
require_once("connect.php"); 
 
//2. Write database query 
$sql="SELECT * FROM tbladdressbook"; 
 
//3.  Execute the query 
$result = mysqli_query($con, $sql); 
 
//4. Use the returned data 
print_r($result); 
echo "<br>"; 
while($row = mysqli_fetch_array($result)) 
{ 
  print_r($row); 
  echo "<br>"; 
} 
 
//5. Close the connection 
mysqli_close($con);  
?>
</html>