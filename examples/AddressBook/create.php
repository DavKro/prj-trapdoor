<html> 
<head> 
<title> Create Contact</title> 
</head> 
<body> 

<!--
	Structure
	If the save button has not been pressed 
      Use HTML to collect the data using the form 
      Use HTML to submit the data 
	Else 
	Connect to database 
	Create the Insert SQL query (echo the $sql to check the syntax) 
	Execute the query to insert the data into the database 
	No need to use the data (but a good idea to go into phpmyadmin/retrieve.php to check if the data is there) 
	Close file (if finished with database)
-->

<?php  
	//If the save button has not been pressed 
	if (!isset($_POST["save"])) 
	{  
	?> 
	<!-- Use HTML to collect the data using the form--> 
	<!-- Open html form read to gather data  
	The action attribute defines the action to be performed when the form is submitted. 
	No action indicates that the same form will be refreshed. 
	The method attribute specifies the HTTP method (GET or POST) to be 
	    used when submitting the forms. 
	The name attribute gives the form a name. --> 
	<form action="" method = "post"> 
	<p> First Name<br/><input type = "text" name = "first"/></p> 
	<p> Last Name<br/><input type = "text" name = "last"/></p> 
	<p> Address<br/><input type = "text" name = "address"/></p> 
	<p> Suburb<br/> 
	<select name = "suburb"> 
	  <option value="Sippy Downs">Sippy Downs</option> 
	  <option value="Buderim">Buderim</option> 
	  <option value="Mountain Creek">Mountain Creek</option> 
	</select> 
	</p> 
	<!-- Use HTML to submit the data --> 
	<input name = "save" type = "submit" value = "Save Information" /> 
	</form> 
	<?php  
	} 
	//Else 
	else 
	{ 
	//print_r ($_POST); 
	//1.	Connect to database 
	require_once("connect.php"); 
	 
	//2.	Create the Insert SQL query (echo the $sql to check the syntax) 
	// Get the data which has been posted from the form 
	$first = $_POST['first']; 
	$last = $_POST['last']; 
	$address = $_POST['address']; 
	$suburb = $_POST['suburb']; 
	 
	$sql = "INSERT INTO tbladdressBook VALUES ('','".$first."', '".$last."', '".$address."', '".$suburb."')"; 
	//echo $sql; 
	//3.	Execute the query to insert the data into the database 
	$result = mysqli_query($con, $sql); 
	//print_r ($result); 
	 
	//4.	No need to use the data (but a good idea to go into phpmyadmin/retrieve.php 
	// to check if the data is there) 
	//You could go back to the retrieve file to check to see if your data is there 
	echo("<br/>Go back to <a href='retrievePretty.php'>data print out.</a>"); 
	//5.	Close file (if finished with database)  
	  
	} 
?>  
</body>      
</html> 
 