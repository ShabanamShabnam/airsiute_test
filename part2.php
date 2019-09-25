<html>
	<head>
		<title>part2</title>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>
	<body>
		<nav>
			<a href="part1.html">Part1</a>
			<a href="part2.php">Part2</a>
		</nav>
		<?php
		require('mysqli_connect.php');

		$query1 = "SELECT * FROM airsuite_interview WHERE Id=3";
		$query2 = "SELECT * FROM airsuite_interview WHERE  ValueKey='SECOND'";
		$query3 = "SELECT * FROM airsuite_interview";

		$r1 = @mysqli_query($dbc,$query1);
		echo "<br>";
		while ($row = mysqli_fetch_array($r1, MYSQLI_ASSOC)) {   			
			
			function valuedata($Valuedata){
				$Valuedata1= explode(" ", $Valuedata);
				foreach ($Valuedata1 as $data) { 
					if (ctype_lower($data)) { 
						echo strtoupper($data)." " ;
					}
					else { 
						echo strtolower($data)." " ; } 	
				}
			}

			echo $row['Id']." " .$row['ValueKey']." " ;
			valuedata($row['ValueData']);
			echo"<br>";
		}

		$r2 = @mysqli_query($dbc,$query2);
		while ($row = mysqli_fetch_array($r2, MYSQLI_ASSOC)) {   
			echo $row['Id']." " .$row['ValueKey']." ".$row['ValueData']." " ;}
		echo"<br>";
		$r3 = @mysqli_query($dbc,$query3);
		echo"<br>";
		while ($row = mysqli_fetch_array($r3, MYSQLI_ASSOC)) {
			
			$myObj->Id= $row['Id'];
			$myObj->ValueKey= $row['ValueKey'];
			$myObj->ValueData= $row['ValueData'];
			$myJSON = json_encode($myObj);
			echo $myJSON."<br>";
		}
		?>
	</body>
</html>




