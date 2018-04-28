/**
 * 
 */
package com.ibm.util;

import java.io.PrintWriter;
import java.io.StringWriter;

import org.apache.log4j.NDC;

import com.att.edb.common.servicelogger.ServiceLevelsConstant;
import com.att.edb.common.servicelogger.ServiceLogger;
import com.att.edb.common.util.GuidGenerator;
import com.att.edb.dispatcher.util.DispatcherConstants;

/**
 * @author IBM
 *
 */
public class LoggerUtil {

	public static ServiceLogger logger;
	private static GuidGenerator guidGenerator;

	public static void setGuid(){
		guidGenerator = new GuidGenerator();
		String guid = "";
		try{
			guid = guidGenerator.getGuid();
		}catch(Exception e){
			guid = "";
		}
		NDC.clear();
		NDC.push(guid);
	}

	public static ServiceLogger getLogger() {

		if(logger == null) {
			logger = ServiceLogger.getInstance("C:\\ProductManager\\conf\\ProductManagerLogCon.xml");
		}
		return logger;
	} // getLogger closing

	public static void logSeverityInfo(String seve, String msg) {

		String severity = seve;
		String message = msg;
		if(logger == null) {
			logger = getLogger();
		}
		logger .logSeverity(severity,message);
	}
	
	public static void debug(String msg) {

		/*if(logger == null) { 
			logger = getLogger(); 
		} 
		logger .debug(msg);*/ 
		logSeverityInfo(ServiceLevelsConstant.SEVERITY7, msg); 
	}
	
	public static void info(String msg) {

		if(logger == null) {
			logger = getLogger();
		}
		logger .info(msg);
	}
	
	/**
	 * Used to Print the StackTrace in the application Log
	 * @param e
	 * @return
	 */

	public static void logStackTrace(String msg,Exception e) {
		StringWriter wr = new StringWriter();
		PrintWriter pr = new PrintWriter(wr);
		e.printStackTrace(pr);
		logSeverityInfo(ServiceLevelsConstant.SEVERITY7,"Exception Occured "+msg+" : "+wr.toString() ); 
	}

	public static void logPerformanceInfo(String systemName,
			String transactionName,
			String event,
			String result,
			String perfFactor,
			String txData) {
		if(logger == null) {
			logger = getLogger();
		}

		logger.logPerformance(
				ServiceLevelsConstant.PERFORMANCE1,
				"", // client request id
				systemName, // "BVOIP", // systemName
				DispatcherConstants.SYNCHRONOUS_KEY, // sync indicator
				systemName + "-" + transactionName,
				"", // interface name
				event,
				result,
				perfFactor,
				txData);

	}
	
}
