<?php
if(isset( $_POST['T_name']))
{
$selT_name = $_POST['T_name'];
}
if(isset( $_POST['T_location']))
{
$selT_location = $_POST['T_location'];
}
if(isset( $_POST['Nearby_Airport']))
{
$selNearby_Airport = $_POST['Nearby_Airport'];
}
$sql = "INSERT INTO tourist_places (T_name,T_location,Nearby_Airport ) VALUES
('$selT_name','$selT_location','$selNearby_Airport')";
$sqlcon = mysqli_connect("127.0.0.1","root","sindhu123", "Project"); if(!$sqlcon)
{
die("Error in connecting database");
}
if ($sqlcon -> query($sql) === TRUE)
{
echo 'inserted successfully';
}
else
{
echo 'Error
- ';
echo 'No duplicate value of primary key is accepted';
}
?>
