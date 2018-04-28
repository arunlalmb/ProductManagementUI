<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
   <head>
		<meta name="viewport" http-equiv="X-UA-Compatible" content="IE=edge,width=device-width, initial-scale=1" />
		<title>Product Manager List Page</title>
		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="js/ProductManager.js"></script>
		<link rel="stylesheet" type="text/css" href="css/OM.css">
   </head>

	<body>		
	    <!--Code Starts Here-->
	    <form method="post" enctype="multipart/form-data" id="listForm">
		    <div class="container">
		    	<div class="orangeText boldText padding10">List Page: Product Management</div>        
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
		                        <input type="button" id="homePageListPageBtn" value=" Home " class="greenButton" >
		                    </div>                
		                    <div class="clear"></div>
		                    <div class="spacer2"></div>                	
		                </div>
		                <div class="clear"></div>                                                            	                
		            </div>
		            <div class="sharpblueBar">Added Items</div>
		            
		            <div class="alignCenter padding15 boldText greybgContent">
     	                <div class="floatLeft selectWidth15">PRODUCT ID</div>
     	                <div class="floatLeft selectWidth15">PRODUCT NAME</div>
		                <div class="floatLeft selectWidth30">DESCRIPTION</div>
		                <div class="floatLeft selectWidth30">RELATED PRODUCTS</div>
		                <div class="clear"></div>
		            </div>
		            <div class="spacer"></div>  
		            
		            <s:iterator value="productManagerHM">
		                <div class="alignCenter padding15">
     	                    <div class="floatLeft selectWidth15"><s:property value="value.productId" /></div>
     	                    <div class="floatLeft selectWidth15"><s:property value="value.productName" /></div>
		                    <div class="floatLeft selectWidth30"><s:property value="value.productDescription" /></div>
		                    <div class="floatLeft selectWidth30"><s:property value="value.relatedProducts" /></div>
		                    <div class="clear"></div>
		                </div>
		                <div class="spacer"></div>
		            </s:iterator>
	                      
		            <div class="omblueLine"></div>

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
