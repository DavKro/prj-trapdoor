<!DOCTYPE html>
<html>
<head>  
<title> Retrieve Data</title> 
<link href="./style.css" type="text/css" rel="stylesheet"> 
</head> 
<body> 
<?php
	//1. Create a database connection (once per php script) 
	require_once("connect.php"); 
 
	//2. Write database query 
	$sql="SELECT * FROM tbladdressbook"; 
 
	//3.  Execute the query 
	$result = mysqli_query($con, $sql); 
 
	//4. Use the returned data 
	//print_r($result); 
	//echo "<br>"; 
	echo "<table>\n"; 
	while($row = mysqli_fetch_array($result)) 
	{ 
	//echo $row['contactID'].' '.$row['firstName'].' '.$row['surname'].' '.$row['address'].' '.$row['suburb']; 
	echo "<tr>"; 
	echo "<td>".$row['contactID']."</td>" 
	."<td>".$row['firstName']."</td>" 
	."<td>".$row['surname']."</td>" 
	."<td>".$row['address']."</td>" 
	."<td>".$row['suburb']."</td>";	 
	echo("</tr>\n"); 
 
  //echo "<br>"; 
	} 
	echo "</table>"; 
 
	//5. Close the connection 
	mysqli_close($con);  

?> 
</body>
</html>