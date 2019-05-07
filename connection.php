<?php
     //session creation  
	 session_start();
     //server Connection v2
     mysql_connect("localhost", "root", "") or die ("connection error");
	 
	 //DataBase Connection
	  
	  Mysql_select_db('country_state') or die ("Database Error");
?>