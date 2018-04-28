package com.ibm.dao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;

import com.ibm.vo.ProductVO;

public class ProductManagerDAO {
	
    final static Logger logger = Logger.getLogger(ProductManagerDAO.class);
	public static HashMap<String, ProductVO> productManagerHM = new HashMap<String, ProductVO>();
	
	public void addProductToDB(ProductVO productVO){
		
		logger.debug("Entered addProductToDB");
		
		try{
			
			logger.debug("Adding Product");
			logger.debug("ProductId : "+productVO.getProductId()+" ; ProductName : "+productVO.getProductName()+" ; ProductDescription : "+productVO.getProductDescription()+" ; RelatedProduct : "+productVO.getRelatedProducts());
			
			productManagerHM.put(productVO.getProductId(), productVO);
			
			logger.debug("Product added Successfully");
			logger.debug("Number of Products : "+productManagerHM.size());
			
		}catch(Exception e){
			e.printStackTrace();
			logger.error("Exception Occurred while adding product", e);
		}
		
	}
	
	public Object retrieveProducts(){
		
		logger.debug("Inside retrieveProducts - Retrieving Products ");
		logger.debug("No of products retrieved : "+productManagerHM.size());
		return productManagerHM;
		
	}
	
	public void deleteProductsInDB(String[] deletedProductIdArr){
		
		logger.debug("Inside deleteProductsInDB - Deleting Products ");
		
		Set<String> productIdSet;
		
		try{
			
			productIdSet = new HashSet<String>(Arrays.asList(deletedProductIdArr));
			logger.debug("Deleting Products count: "+productIdSet.size());
			productManagerHM.keySet().removeAll(productIdSet);
			
		}catch(Exception e){
			e.printStackTrace();
			logger.debug("Exception Occurred while Deleting Products", e);
		}
	}
	
	public Object retrieveProductsForUpdate(String productId){
		
		logger.debug("Entered retrieveProductsForUpdate : Retrieving productId : "+productId);
		
		List<ProductVO> productDetailsForUpdateList = new ArrayList<ProductVO>();
		
		try{
			productDetailsForUpdateList.add(productManagerHM.get(productId));
			logger.debug("Product retrieved to update");
		}catch(Exception e){
			e.printStackTrace();
			logger.error("Exception occurred while retrieving record to update", e);
		}
		
		return productDetailsForUpdateList;
		
	}
	
	public void updateProductInDB(ProductVO productVO){
		
		logger.debug("Entered updateProductInDB to update product : "+productVO.getProductId());
		
		try{
			
			productManagerHM.put(productVO.getProductId(), productVO);
			
            logger.debug("Product Details updated");
			
		}catch(Exception e){
			e.printStackTrace();
			logger.error("Exception occurred while updating product", e);
		}
		
	}
	
}
