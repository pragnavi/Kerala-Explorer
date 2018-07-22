<?php
if(isset( $_POST['ratbute']))
{
$selratbute = $_POST['ratbute'];
}
$sql = " DELETE FROM tourist_places where T_name = '" .$selratbute. "';";
$sqlcon = mysqli_connect("127.0.0.1","root","sindhu123", "Project"); if(!$sqlcon)
{
die("Error in connecting database");
}
if ($sqlcon -> query($sql) === TRUE)
{
echo 'Successfully Deleted'; echo $sql;
}
else
{
echo 'Error in deleting'; echo $sql;
}
?>
