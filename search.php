<?php
if(isset( $_POST['search']))
{
$selsearch = $_POST['search'];
}
$sqlcon = mysqli_connect("127.0.0.1","root","sindhu123", "Project"); if(!$sqlcon)
{
die("Error in connecting database");
}
$sql = "SELECT * FROM tourist_places where T_name='$selsearch' ";
$result = $sqlcon->query($sql);
if ($result->num_rows > 0) {
// output data of each row
while($row = $result->fetch_assoc()) {
echo "Tourist place name : " .$row["T_name"]. "<br>"." Tourist place location : "
.$row["T_location"]. "<br>". " Nearby Airport : " . $row["Nearby_Airport"]. "<br>" ;
}
} else {
echo "0 results";
}
?>
