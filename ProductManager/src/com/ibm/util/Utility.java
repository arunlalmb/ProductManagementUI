package com.ibm.util;

import java.io.FileInputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Properties;

public class Utility {
	
	private static Properties props = null;
		
	public static String getProperty(String source) {
		if( source != null && !"".equals(source.trim())) {
			if(props != null) {
				return (String) props.get(source);
			} else {
				return null;
			}
		} else {
			return null;
		}
	}
		
	public static String n2e(String value) {
		if(value == null) {
			return "";
		} else {
			return value;
		}
	}
	
	public static void parseProperties(String fileName) throws Exception {
		System.out.println("Inside Util.parseProperties()");
        System.out.println("Loading application's configuration files");
        if (props == null) {
            if (fileName == null || (fileName.trim()).equals("")) 
            	fileName = new String("C:\\ProductManager\\conf\\ProductManager.properties");
            System.out.println("Loading application's configuration from " + fileName);
            props = new Properties();
            props.load(new FileInputStream(fileName));

            Enumeration e = props.propertyNames();
            String name = null;
            while (e.hasMoreElements()) {
                name = (String)e.nextElement();
                System.out.println(name + " = " + props.getProperty(name));
            }
        }
    } 
	
	public static void main(String args[]){
		
		HashMap hm = new HashMap();
		hm.put("name", "arun");
		System.out.println(hm.get("name"));
		hm.put("name", "arunlal");
		System.out.println(hm.get("name"));
		
	}

}
