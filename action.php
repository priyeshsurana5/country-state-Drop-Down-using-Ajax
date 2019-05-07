<!--Country State city Ajax Start Here-->
<!--By Priyesh Surana-->
<?php
   include("connection.php");
   error_reporting(0);
 if(isset($_POST['country_id'])){
 $id=$_POST['country_id'];

         echo "<option value disabled selected>-Select State-</option>";
		 $sel="select * from add_state where country_id='$id'";
		 $exe=mysql_query($sel); 
		 while($fetch=mysql_fetch_array($exe)){
				/*echo "<pre>";
				 echo  print_r($fetch);
				 echo "</pre>";*/
				 
		 ?>
				<option value="<?php echo $fetch['state_id'] ?>"><?php echo $fetch['state_name'] ?></option>

<?php } } ?>

<?php
 if(isset($_POST['state_id'])){
 $id=$_POST['state_id'];

         echo "<option value disabled selected>-Select City-</option>";
		 $sel="select * from add_city where State_id='$id'";
		 $exe=mysql_query($sel); 
		 while($fetch=mysql_fetch_array($exe)){
				 //echo "<pre>";
				 //echo  print_r($fetch);
				 //echo "</pre>";
		 ?>
		        
				<option value="<?php echo $fetch['city_id'] ?>"><?php echo $fetch['city_name'] ?></option>

<?php } } ?>
<!--Country State city Ajax Ends Here-->