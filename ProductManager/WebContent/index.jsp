<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<head>
<meta name="viewport" http-equiv="X-UA-Compatible" content="IE=edge,width=device-width, initial-scale=1" />
<title>Product Manager Login Page</title>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/UserValidation.js"></script>
<link rel="stylesheet" type="text/css" href="css/OM.css">
</head>

<body>
    <!-- Code Starts Here-->
    <form method="post" enctype="multipart/form-data" id="loginForm">
		<div class="container3">
	        <div class="loginForm ">                
	            <div class="selectWidth95">
	            	<input name="userName" id="userName" type="text" class="inputboxBg" size="15" maxlength="15" placeholder="Username">
	            </div>
	            <div class="spacer1"></div>
	            <div class="selectWidth95">
	            	<input name="password" id="password" type="password" class="inputboxBg" placeholder="Password">
	            </div>            
	            <div class="container alignCenter">             
	                <span class="floatLeft marginTop15">  
	                    <a href="#" title="Login Information">
	                    	<button class="roundedButtoninfo" type="button" align="top"> </button>
	                    </a>
	                </span>        
	                <input class="loginButtonblue" id="loginBtn" type="button" value=" Login"/>
	            </div>
	        </div>
		</div>
	</form>
    <!-- Code Ends Here-->	
	<!--<s:action name="validateAccess" namespace="/" executeResult="true"></s:action>-->
</body>
</html>
