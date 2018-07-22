<?php
if(isset( $_POST['newvalue']))
{
$selnewvalue = $_POST['newvalue'];
}
if(isset( $_POST['wcond']))
{
$selwcond = $_POST['wcond'];
}
if(isset( $_POST['colname']))
{$selcolname = $_POST['colname'];
}
$sql = "UPDATE tourist_places SET " . $selcolname . " = '" . $selnewvalue . "' where T_name = '" . $selwcond . "';"; $sqlcon =
mysqli_connect("127.0.0.1","root","sindhu123", "Project");
if(!$sqlcon)
{
die("Error in connecting database");
}
if ($sqlcon -> query($sql) === TRUE)
{
echo 'Successfully Update';
}
Else
{
echo 'Error in updating the value'; echo$sql;
}
?>
