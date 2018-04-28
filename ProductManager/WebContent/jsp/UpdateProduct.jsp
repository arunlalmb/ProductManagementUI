<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
   <head>
		<meta name="viewport" http-equiv="X-UA-Compatible" content="IE=edge,width=device-width, initial-scale=1" />
		<title>Product Manager Update Page</title>
		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="js/ProductManager.js"></script>
		<link rel="stylesheet" type="text/css" href="css/OM.css">
   </head>

	<body>		
	    <!--Code Starts Here-->
	    <form method="post" enctype="multipart/form-data" id="updateForm">
		    <div class="container">
		    	<div class="orangeText boldText padding10">Update Page: Product Management</div>        
		        <div class="headerBarblock">
		        	<div class="floatLeft boldText">&minus;</div>
		            <div class="floatLeft paddingLeft10">Product Inventory</div>
		            <div class="floatRight paddingLeft10"><a href="index.jsp">Logout</a></div>
		            <div class="clear"></div>
		        </div>
		    	<!-- Below class to show LEFT and Right border -->
		        <div class="headercontentblock1">                      
		            <div class="container1"> 
		                    <div class="floatLeft selectWidth15">
		                        <input type="button" id="homePageUpdatePageBtn" value=" Home " class="greenButton" >
		                    </div>                
		                    <div class="clear"></div>
		                    <div class="spacer2"></div>                	
		                </div>
		                <div class="clear"></div>                                                            	                
		            </div>
		            <div class="sharpblueBar">Item to Update</div>
		            
		            <div class="alignCenter padding15 greybgContent">
     	                <div class="floatLeft selectWidth15">PRODUCT ID</div>
     	                <div class="floatLeft selectWidth15">PRODUCT NAME</div>
		                <div class="floatLeft selectWidth30">DESCRIPTION</div>
		                <div class="floatLeft selectWidth30">RELATED PRODUCTS</div>
		                <div class="clear"></div>
		            </div>
		            <div class="spacer"></div>  
		            
		            <s:iterator value="productDetailsForUpdateList">
		                <div class="alignCenter padding15">
		                
                            <div class="floatLeft selectWidth15">
		                        <input name="productId" id="productId" type="text" class="inputboxBg selectWidth60" size="15" maxlength="15" value="<s:property value="productId" />" disabled="disabled">
		                    </div>     	
		                    <div class="floatLeft selectWidth15">
		                        <input name="productName" id="productName" type="text" class="inputboxBg selectWidth60" size="15" maxlength="15" value="<s:property value="productName" />">
		                    </div>
		                    <div class="floatLeft selectWidth30">
		                        <input name="productDescription" id="productDescription" type="text" class="inputboxBg selectWidth80" size="80" maxlength="100" value="<s:property value="productDescription" />">
		                    </div>
		                    <div class="floatLeft selectWidth30">
		                        <input name="relatedProducts" id="relatedProducts" type="text" class="inputboxBg selectWidth80" size="60" maxlength="60" value="<s:property value="relatedProducts" />">
		                    </div>                     
		                    <div class="clear"></div>
		                </div>
		                <div class="spacer"></div>
		            </s:iterator>
	                      
		            <div class="omblueLine"></div>
		            
		            <div class="container1"> 
		                <div class="floatLeft selectWidth85 marginLeft20">
		                	<div class="floatLeft selectWidth15">
		                        <input type="button" id="updateSubmitBtn" value=" Update Product " class="greenButton">
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
