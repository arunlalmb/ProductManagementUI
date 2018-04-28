<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Manager Home Page</title>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/ProductManager.js"></script>
<link rel="stylesheet" type="text/css" href="css/OM.css">
</head>

<body>
	
    <!--Code Starts Here-->
    <form method="post" enctype="multipart/form-data" id="productManagerForm">
	    <div class="container">
	    	<div class="orangeText boldText padding10">Home Page: Product Management</div>                
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
	                	<div class="floatLeft selectWidth15">
	                        <input type="button" id="addProductBtn" value=" Add Product " class="greenButton">
	                    </div>  
	                    <div class="floatLeft selectWidth15">
	                        <input type="button" id="listProductBtn" value=" List Product " class="greenButton">              
	                    </div>                
	                    <div class="clear"></div>
	                    <div class="spacer2"></div>
	                </div>
	                <div class="clear"></div>                                            	                
	            </div>
	            <div class="sharpblueBar">Added Items</div>

	            
	            <div class="omblueLine"></div>

                <s:if test="%{productManagerHM.size>0}">
		            <div class="alignCenter padding15 boldText greybgContent">
		                <div class="floatLeft selectWidth15 alignLeft blueText">
		                	<div class="floatLeft selectWidth50">EDIT</div>
		                    <div class="floatLeft">|</div>
		                    <div class="floatRight trashBlack"  id="deleteIcon"></div>
		                    <div class="clear"></div>
		                </div>                
		                <div class="floatLeft selectWidth15">PRODUCT ID</div>
		                <div class="floatLeft selectWidth15">PRODUCT NAME</div>
		                <div class="floatLeft selectWidth25">DESCRIPTION</div>
		                <div class="floatLeft selectWidth25">RELATED PRODUCTS</div>
		                <div class="clear"></div>
		            </div>
		            
		            <s:iterator value="productManagerHM">
		                <div class="alignCenter padding15" id=<s:property value="value.productId" />>
			                <div class="floatLeft selectWidth15 alignLeft blueText">
			                	<div class="floatLeft selectWidth50"><a href="updateProductRedirect.action?productId=<s:property value="value.productId" />"><img alt="Edit" src="images/edit.png"></a></div>
			                    <div class="floatLeft">|</div>
			                    <div class="floatRight"><input type="checkbox" name="deleteProduct" value=<s:property value="value.productId" />></div>
			                    <div class="clear"></div>
			                </div>                
			                <div class="floatLeft selectWidth15"><s:property value="value.productId" /></div>
			                <div class="floatLeft selectWidth15"><s:property value="value.productName" /></div>
			                <div class="floatLeft selectWidth25"><s:property value="value.productDescription" /></div>
			                <div class="floatLeft selectWidth25"><s:property value="value.relatedProducts" /></div>
			                <div class="clear"></div>
			                <div class="spacer"></div>
			            </div>
			        </s:iterator>
		        </s:if>  
		        <s:else>
		            <div class="container1">
	            	<div class="spacer2"></div>
	            	<div class="instructionText">No items added</div>
	                <div class="spacer2"></div>
	            </div>
		        
		        </s:else>
		                  
	            <div class="spacer"></div>            
	            <div class="omblueLine"></div>
	            
                <div class="container1"> 
	                <div class="floatLeft selectWidth85 marginLeft20">
	                	<div class="floatLeft selectWidth15">
	                        <input type="button" id="deleteProductBtn" value=" Delete Product " class="greenButton">
	                    </div>  
	                    <div class="clear"></div>
	                    <div class="spacer2"></div>
	                </div>
	                <div class="clear"></div>                                            	                
	            </div>
	            
	            <div class="omblueLine"></div>	            
               
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