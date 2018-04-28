package com.ibm.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;

import com.ibm.dao.ProductManagerDAO;
import com.ibm.vo.ProductVO;
import com.opensymphony.xwork2.ActionSupport;

public class ProductManagerAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	final static Logger logger = Logger.getLogger(ProductManagerAction.class);
	
	private String productId;
	private String productName;
	private String productDescription;
	private String relatedProducts;
	private String[] deleteArray;
	private HashMap<String,Object> productManagerHM;
	private List<ProductVO> productDetailsForUpdateList;
	
	public String addProductRedirect(){
		logger.debug("Entered addProductRedirect - Redirecting from Home Page to Add Page");
		return SUCCESS;
	}
	
	public String addProductToDB(){
		
		logger.debug("Entered Entered - AJAX Call to add product");
		
		ProductVO productVO = new ProductVO();
		productVO.setProductId(productId);
		productVO.setProductName(productName);
		productVO.setProductDescription(productDescription);
		productVO.setRelatedProducts(relatedProducts);
		
		ProductManagerDAO productManagerDAO = new ProductManagerDAO();
		productManagerDAO.addProductToDB(productVO);
				
		return SUCCESS;
	}
	
	public String listProductFromDB(){
		
		logger.debug("Entered listProductFromDB");
		
		try {
			ProductManagerDAO productManagerDAO = new ProductManagerDAO();
			productManagerHM = (HashMap<String, Object>)productManagerDAO.retrieveProducts();
			System.out.println("in retrieve : productManagerHM size : "+productManagerHM.size());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			logger.error("Exception Occurred in listProductFromDB",e);
		}
		
		return SUCCESS;
	}
	
	public String deleteProductFromDB(){
		
        System.out.println("Inside deleteProductFromDB : deleteArray "+deleteArray);	
		
		try {
			
			ProductManagerDAO productManagerDAO = new ProductManagerDAO();
			productManagerDAO.deleteProductsInDB(deleteArray);
			productManagerHM = (HashMap<String, Object>)productManagerDAO.retrieveProducts();
			System.out.println("in deleteProductFromDB : productManagerHM size : "+productManagerHM.size());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return SUCCESS;
	}

    public String homePageRedirect(){
		
		logger.debug("Entered homePageRedirect - Getting redirected to Home Page");	
		
		try {
			ProductManagerDAO productManagerDAO = new ProductManagerDAO();
			productManagerHM = (HashMap<String, Object>)productManagerDAO.retrieveProducts();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			logger.error("Exception Occurred in homePageRedirect", e);
		}
		
		return SUCCESS;
	}
    
    public String updateProductRedirect(){
    	
    	logger.debug("Entered updateProductRedirect - Getting redirected to Update Page from Home Page");
    	
		try {
			ProductManagerDAO productManagerDAO = new ProductManagerDAO();
			productDetailsForUpdateList = (ArrayList<ProductVO>)productManagerDAO.retrieveProductsForUpdate(productId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			logger.error("Exception occurred in updateProductRedirect", e);
		}
    	return SUCCESS;
    }
    
	public String updateProductInDB(){
		
		logger.debug("Entered updateProductInDB");
		
		ProductVO productVO = new ProductVO();
		productVO.setProductId(productId);
		productVO.setProductName(productName);
		productVO.setProductDescription(productDescription);
		productVO.setRelatedProducts(relatedProducts);
		
		ProductManagerDAO productManagerDAO = new ProductManagerDAO();
		productManagerDAO.updateProductInDB(productVO);
				
		return SUCCESS;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getRelatedProducts() {
		return relatedProducts;
	}

	public void setRelatedProducts(String relatedProducts) {
		this.relatedProducts = relatedProducts;
	}

	public HashMap<String, Object> getProductManagerHM() {
		return productManagerHM;
	}

	public void setProductManagerHM(HashMap<String, Object> productManagerHM) {
		this.productManagerHM = productManagerHM;
	}

	public String[] getDeleteArray() {
		return deleteArray;
	}

	public void setDeleteArray(String[] deleteArray) {
		this.deleteArray = deleteArray;
	}

	public List<ProductVO> getProductDetailsForUpdateList() {
		return productDetailsForUpdateList;
	}

	public void setProductDetailsForUpdateList(
			List<ProductVO> productDetailsForUpdateList) {
		this.productDetailsForUpdateList = productDetailsForUpdateList;
	}

}
