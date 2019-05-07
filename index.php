<!--verson 1.2.1-->
<?php include("connection.php") ?>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap.css">
  
  
</head>
<body>
           <h2 class="text-center">Country State City Using Ajax By-:Priyesh Surana</h2>
		   <div>
			<form>
					  <div class="form-group">
						<div class="form-group col-md-4">
						      <select class="form-control" id="country-list" onChange="getState(this.value);">
							     <option value disabled selected>Select Country</option>
							          <?php
									      $sel="select * from add_country";
										  $exe=mysql_query($sel);
										  while($fetch=mysql_fetch_array($exe)){
									  ?>
									      <option value="<?php echo $fetch['country_id']?>"><?php echo $fetch['country_name']?></option>
									  <?php } ?>
							  </select>
						</div>
						<div class="form-group col-md-4">
						      <select class="form-control" id="state-list" onChange="getCity(this.value);">
							          <option>-Select State-</option>
							  </select>
						</div>
						<div class="form-group col-md-4">
						      <select class="form-control" id="city-list">
							          <option>-Select City-</option>
							  </select>
						</div>
					  </div>
           </form>
</body>

<script src="jquery-1.11.3.min.js"></script>
<script src="bootstrap.min.js"></script>
<script>
		function getState(val) {
			$.ajax({
			type: "POST",
			url: "action.php",
			data:'country_id='+val,
			success: function(data){
				$("#state-list").html(data);
				getCity();
			}
			});
		}
		
		function getCity(val) {
		$.ajax({
		type: "POST",
		url: "action.php",
		data:'state_id='+val,
		success: function(data){
			$("#city-list").html(data);
		}
		});
	}
</script>   
</html>
