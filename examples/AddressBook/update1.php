<html> 
<head> 
<title> Update data </title> 
</head> 
<body> 

<!-- 
	If the save button has not been pressed 
	  Use php to connect to the data base 
	  Create the select query to collect the data from the record to be altered 
	  Execute the query 
	  Set up a HTML form 
	      Display the data in the form  
	      Use HTML to submit the changed data in the form 
	Else 
	1. Connect to database 
	2. Create the Update SQL query (echo the $sql to check the syntax) 
	3. Execute the query to update the data into the database 
	4. No need to use the data (but a good idea to go into phpmyadmin/retrieve.php to check if the data is there) 
	5. Close file (if finished with database)
-->

<?php 
	//If the save button has not been pressed 
	if (!isset($_POST["save"])) 
	{ 
	  //Use php to connect to the data base 
	  require_once("connect.php"); 
	  //Create the select query to collect the data from the record to be altered 
	  $sql = "SELECT * from tbladdressBook WHERE contactID = 13"; 
	  //Execute the query 
	  $result = mysqli_query($con, $sql); 
	  echo count($result); 
	  //Set up a HTML form 
	  $row = mysqli_fetch_array($result); 
	  //print_r ($row); 
?> 
	      <!--Display the data in the form --> 
	    <form action="" method = "post"> 
	<!--<p> First Name<br/><input type = "text" name = "first" /></p>--> 
	<!--<p> First Name<br/><input type = "text" name = "first" value = "fred"/></p>--> 
	<p> First Name<br/><input type = "text" name = "first"  
	    value = "<?php echo $row['firstName']; ?>"/></p> 
	<p> Last Name<br/><input type = "text" name = "last"  
	value = "<?php echo $row['surname']; ?>"/></p> 
	<p> Address<br/><input type = "text" name = "address" 
	value = "<?php echo $row['address']; ?>"/></p> 
	<p> Suburb<br/> 
	<select name = "suburb"> 
	 	<option selected disabled><?php echo $row['suburb']; ?></option> 
	  <option value="Sippy Downs">Sippy Downs</option> 
	  <option value="Buderim">Buderim</option> 
	  <option value="Mountain Creek">Mountain Creek</option> 
	</select> 
	</p> 
	<!-- Use HTML to submit the changed data in the form--> 
	<input name = "save" type = "submit" value = "Save Information" /> 
	</form> 
	 
<?php 
	} 
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
		$sql = "UPDATE tbladdressBook SET  firstName = '".$first."', surname = '".$last."', address = '".$address."', suburb= '".$suburb."' where contactID = 13"; 
		echo $sql; 
		//3.	Execute the query to insert the data into the database 
		$result = mysqli_query($con, $sql); 
		//print_r ($result); 
		echo("<br/>Go back to <a href='retrievePretty.php'>data print out.</a>"); 
		//4.	No need to use the data (but a good idea to go into phpmyadmin/retrieve.php to //check if the data is there) 
		//You could go back to the retrieve file to check to see if your data is there 
		 
		//5.	Close file (if finished with database)  
		 
	} 
?> 
</body>
</html>
