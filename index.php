<jsp:include page="db_connection.php" /><!--Dynamic include-->
<head>
	<title>Book Swap</title>
	
	<!-- Include meta tag to ensure proper rendering and touch zooming -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://demos.jquerymobile.com/1.4.5/css/themes/default/jquery.mobile-1.4.5.min.css" /> 
	<!-- Include jQuery Mobile stylesheets -->
	<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
	<!-- Include the jQuery library -->
	<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
	<!-- Include the jQuery Mobile library -->
	<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>

<script type="text/javascript">

$(document).ready(function() {

	//##### send add record Ajax request to response.php #########
	$("#FormSubmit").click(function (e) {
			e.preventDefault();
			if($("#emailText").val()==='' || $("#passwordText").val()==='')
			{
				alert("Please enter email and password!");
				return false;
			}
			
			//$("#FormSubmit").hide(); //hide submit button
			//$("#LoadingImage").show(); //show loading image
			
		 	var emailData = $("#emailText").val();
		 	var passwordData = $("#passwordText").val();
		 	
			jQuery.ajax({
			type: "POST", // HTTP method POST or GET
			url: "response.php", //Where to make Ajax calls
			dataType:"text", // Data type, HTML, json etc.
			data: {email_txt: emailData, password_txt: passwordData}, //Form variables
			success:function(response){
				$("#myProfile").append(response);
				$("#emailText").val(''); //empty text field on successful
				$("#FormSubmit").show(); //show submit button
				window.location.replace("#myProfile");

			},
			error:function (xhr, ajaxOptions, thrownError){
				//$("#FormSubmit").show(); //show submit button
				//$("#LoadingImage").hide(); //hide loading image
				alert(thrownError);
			}
			});
	});

});
</script>

<body>
	<div id="logo" data-role="page">
		<div data-role="header"> Index Welcome! </div>
			<a href="#login" data-transiction="slide" class="ui-btn"> Login </a>
			<a href="#page3" data-transiction="slide" class="ui-btn"> List </a>
		<div data-role="footer"> Copyright 2016 </div>
	</div>
	
	<div id="login" data-role="page" data-theme="b">
		<div data-role="tabs">
			<div data-role="header"> <!--header roll -->
				<h1>LOGIN</h1>
    			<div data-role="navbar">
        			<ul>
          				<li><a href="#one" data-theme="a" data-ajax="false">EXISTING USER</a></li>
          				<li><a href="#two" data-theme="a" data-ajax="false">NEW USER</a></li>
        			</ul>
    			</div>
    		</div>
    		
    		<div id="one" class="ui-content">
    			<h3>Welcome to BookSwap</h3> <br/>
    			<h4>Enter your email and password to login</h4>
    			
    			<input type="text" name="textinput-s" id="textinput-s" placeholder="Email" value="" data-clear-btn="true">   			
    			<input type="text" name="textinput-s" id="textinput-s" placeholder="Password" value="" data-clear-btn="true"><br/>
    			<input type="button" id="LoginSubmit" class="ui-btn" value="Login">    		
    			
    			<br/>
    			<br/>
    			<h7>Forgot password?</h7>
    		</div>
    		
    		<div id="two" class="ui-content">
    			<a href="#login" data-transiction="slide" class="ui-btn"> Sign Up with Facebook </a>
				<a href="#login" data-transiction="slide" class="ui-btn"> Sign Up with Google </a>
				<br/><h3>OR</h3><br/>
				<input type="text" name="email_txt" id="emailText" placeholder="Email" value="" data-clear-btn="true">   			
    			<input type="password" name="password_txt" id="passwordText" placeholder="Password" value="" data-clear-btn="true"><br/>
    			<!--<input type="button" id="FormSubmit" class="ui-btn" value="Sign Up">  -->
    			<a href="#login" id="FormSubmit" data-transiction="slide" class="ui-btn"> Sign up </a>    		
  		
    		</div>
		</div>
	</div>
	
	<div id="myProfile" data-role="page">
		<div data-role="header"> My Profile </div>
			<h3>This shit works 
			<?php session_start();
			echo $_SESSION['user_session']; ?></h3>
			
		<div data-role="footer"> Copyright 2016 </div>
	</div>	
	
	<div id="page3" date-role="page">
		<form>
    		<input id="filter-for-listview" data-type="search" placeholder="Type to search...">
		</form>
		
		<ul data-role="listview" data-inset="true" data-filter="true" data-input="#filter-for-listview">
    		<li><a href="#">test</a></li>
    		<li><a href="#">Audi</a></li>
    		<li><a href="#">BMW</a></li>
    		<li><a href="#">Cadillac</a></li>
    		<li><a href="#">Ferrari</a></li>
		</ul>
	</div>
</body>