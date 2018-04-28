package com.ibm.action;

import java.util.HashMap;

import org.apache.log4j.Logger;

import com.ibm.dao.ProductManagerDAO;
import com.ibm.dao.UserValidationDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ValidationAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	final static Logger logger = Logger.getLogger(ValidationAction.class);
	
	private String userName;
	private String password;
	private HashMap<String,Object> productManagerHM;
	
	public HashMap<String, Object> getProductManagerHM() {
		return productManagerHM;
	}

	public void setProductManagerHM(HashMap<String, Object> productManagerHM) {
		this.productManagerHM = productManagerHM;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	
	public String validateAccess(){
		logger.debug("Entered validateAccess");
		System.out.println("User validation");
		System.out.println(userName +" / "+password);
		UserValidationDAO userValidationDAO = new UserValidationDAO();
		ProductManagerDAO productManagerDAO = new ProductManagerDAO();
				
		if(userValidationDAO.validateUser(userName, password,userValidationDAO.getValidUser())){
			productManagerHM = (HashMap<String, Object>)productManagerDAO.retrieveProducts();
			return SUCCESS;
		}else{
			return ERROR;
		}
	}


}
