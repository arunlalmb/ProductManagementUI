package com.ibm.dao;

import java.util.HashMap;

import com.ibm.util.Utility;

public class UserValidationDAO {
	
	public HashMap<String, String> getValidUser(){
		
		HashMap<String,String> validUsersHM = new HashMap<String,String>();
		
		try{
			Utility.parseProperties("C:\\ProductManager\\conf\\ProductManager.properties");
			validUsersHM.put(Utility.getProperty("user1"), Utility.getProperty("password1"));
			validUsersHM.put(Utility.getProperty("user2"), Utility.getProperty("password2"));
			System.out.println("HM Size : "+validUsersHM.size());
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return validUsersHM;
		
	}
	
	public boolean validateUser(String userName, String password,HashMap<String,String> validUsersHM){
		
		boolean isValidUser= false;
		
		//HashMap<String,String> validUsersHM = new HashMap<String,String>();
		//validUsersHM.put("arun", "arun789");
		//validUsersHM.put("lal", "lal789");
		
		if(validUsersHM.containsKey(userName) && validUsersHM.get(userName).equals(password)){
			isValidUser = true;
		}		
		
		return isValidUser;
		
	}

}
