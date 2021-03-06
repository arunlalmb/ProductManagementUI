<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
   <head>
		<meta name="viewport" http-equiv="X-UA-Compatible" content="IE=edge,width=device-width, initial-scale=1" />
		<title>Product Manager Add Page</title>
		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="js/ProductManager.js"></script>
		<link rel="stylesheet" type="text/css" href="css/OM.css">
   </head>

	<body>
		
	    <!--Code Starts Here-->
	    <form method="post" enctype="multipart/form-data" id="addForm">
		    <div class="container">
		    	<div class="orangeText boldText padding10">Add Page: Product Management</div>                
		        <div class="headerBarblock">
		        	<div class="floatLeft boldText">&minus;</div>
		            <div class="floatLeft paddingLeft10">Product Inventory</div>
		            <div class="floatRight paddingLeft10"><a href="index.jsp">Logout</a></div>
		            <div class="clear"></div>
		        </div>
		    	<!-- Below class to show LEFT and Right border -->
		        <div class="headercontentblock1">                      
		            <div class="container1"> 
		                    <div class="floatLeft selectWidth85 marginLeft20">
		                    <div class="boldText">Enter the Product information below</div>
		                    <div class="spacer2"></div>
		                    
		                    <div class="floatLeft selectWidth15">
		                        <input name="productId" id="productId" type="text" class="inputboxBg selectWidth60" size="15" maxlength="15" placeholder="">
		                        <div class="padding10">*ID</div>
		                    </div>
		                    <div class="floatLeft selectWidth15">
		                        <input name="productName" id="productName" type="text" class="inputboxBg selectWidth60" size="15" maxlength="15" placeholder="">
		                        <div class="padding10">*Name</div>
		                    </div>
		                    <div class="floatLeft selectWidth45">
		                        <input name="productDescription" id="productDescription" type="text" class="inputboxBg selectWidth80" size="80" maxlength="100" placeholder="">
		                        <div class="padding10">*Description</div>
		                    </div>
		                    <div class="floatLeft selectWidth15">
		                        <input name="relatedProducts" id="relatedProducts" type="text" class="inputboxBg selectWidth80" size="60" maxlength="60" placeholder="">
		                        <div class="padding10">*Related Products</div>
		                    </div>
		                    <div class="floatLeft selectWidth15">
		                        <input type="button" id="addSubmitBtn" value=" Quick Add " class="greenButton">
		                    </div> 
		                    <div class="floatLeft selectWidth15">
		                        <input type="button" id="homePageAddPageBtn" value=" Home " class="greenButton" >
		                    </div>               
		                    <div class="clear"></div>
		                    <div class="spacer2"></div>
		                </div>
		                <div class="clear"></div>                                            	                
		            </div>
		        </div>
		        <!-- End to show LEFT and Right border -->
		        <!-- Below class to show Bottom border with LEFT and RIGHT rounded corners. -->
		    	<div class="headercontentblock0"></div>
		    	<!-- End to show Bottom border with LEFT and RIGHT rounded corners. -->
		    	<div class="spacer2"></div>        
		    </div> 
	    </form>
	    <!--Code Ends Here-->
	
	</body>

</html>
