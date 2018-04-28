$(document).ready(function() {

	$('#addProductBtn').click(function(){
		var form = $("#productManagerForm");
		$(form).attr("action", "addProductRedirect.action");
		$(form).submit();
	});
	
	$('#addSubmitBtn').click(function(){	
		
		var canAdd = performValidationForAdd();
		if(canAdd != false){
			$.ajax({
			       type: 'POST',
			       url:'addProductToDB.action?productId='+ $("#productId").val()+'&productName='+$("#productName").val()+'&productDescription='+$("#productDescription").val()+'&relatedProducts='+$("#relatedProducts").val(),
			       success: 
			    	   function()
	        	        {
			    	        $("#addForm")[0].reset();
	        	            alert('Record Added Successfully');
	        	        }
			});
		}

	});
	
	$('#updateSubmitBtn').click(function(){	
		
		var canAdd = performValidationForUpdate();
		if(canAdd != false){
			$.ajax({
			       type: 'POST',
			       url:'addProductToDB.action?productId='+ $("#productId").val()+'&productName='+$("#productName").val()+'&productDescription='+$("#productDescription").val()+'&relatedProducts='+$("#relatedProducts").val(),
			       success: 
			    	   function()
	        	        {
	        	            alert('Record Updated Successfully');
	        	        }
			});
		}

	});
	
	$('#listProductBtn').click(function(){
		var form = $("#productManagerForm");
		$(form).attr("action", "listProductFromDB.action");
		$(form).submit();
	});
	
	$('#homePageListPageBtn').click(function(){
		var form = $("#listForm");
		$(form).attr("action", "homePageRedirect.action");
		$(form).submit();
	});
	
	$('#homePageAddPageBtn').click(function(){
		var form = $("#addForm");
		$(form).attr("action", "homePageRedirect.action");
		$(form).submit();
	});
	
	$('#homePageUpdatePageBtn').click(function(){
		var form = $("#updateForm");
		$(form).attr("action", "homePageRedirect.action");
		$(form).submit();
	});
	
	$('#deleteProductBtn').click(function(){
		var deletearray = [];
        $.each($("input[name='deleteProduct']:checked"), function(){            
        	deletearray.push($(this).val());
        });
        
        if(deletearray.length>0){
        	$.ajax({
        	    method: "POST",
        	    url: 'deleteProductFromDB.action',
        	    data: { deleteArray : deletearray },
        	    traditional: true,
        	    success:
        	        function()
        	        {
        	            for(var i=0 ; i<deletearray.length ; i++ ){
        	            	$('#'+deletearray[i]).remove();
        	            }
        	        }
        	});
        }else{
        	alert('Please select atleast one Product to delete');
        }
    	

	});
	
});


function performValidationForAdd(){
	
	if( $('#productId').val()=="" ||  $('#productName').val()=="" ||  $('#productDescription').val()=="" ||  $('#relatedProducts').val()==""){
		alert('Required Field(s) Missing');
		return false;		
	}
	
}

function performValidationForUpdate(){
	
	if( $('#productName').val()=="" ||  $('#productDescription').val()=="" ||  $('#relatedProducts').val()==""){
		alert('Required Field(s) Missing');
		return false;		
	}
	
}