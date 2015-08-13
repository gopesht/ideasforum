/*	Author - Dixant Mittal

 * 
 *	Title - Searching the database for given keywords and return the ID of Ideas that matches to those keywords,
 *			by Ranking them on the basis of the Hit Values of all keywords.  
 */

package com.dixantmittal.search;


//----------------------------------imported packages------------------------------------
import java.sql.*;
import java.util.*;



// class defined to sort idea_id on the basis of hit values.
class EnhancedString implements Comparable<EnhancedString>{
	
	private String key;
	private int hitVal;
	
	//------------------------------------------Setters and Getters-----------------------------------------
	public String getKey(){
		return key;
	}
	
	public int getHitVal(){
		return hitVal;
	}
	
	public void setHitVal(int hitVal){
		this.hitVal = hitVal;
	}
	public void setKey(String key){
		this.key = key;
	}
	//-------------------------------------------------------------------------------------------------------
	
	//----------------------overriding compareTo function----------------------------------------------------
	@Override
	public int compareTo(EnhancedString es) {
		
		if(es.hitVal==this.hitVal)
			return 0;
		else if(es.hitVal>this.hitVal)
			return 1;
		else 
			return -1;
	}
	//-------------------------------------------------------------------------------------------------------
}


//-------------------------------------------Main Search class-----------------------------------------------
class Search {
	
	
	public static String drivername;
	public static String url;
	public static String username;
	public static String password;
	
	//-----------------static function to search for posts on the basis of input keywords--------------------
	@SuppressWarnings("unchecked")
	public static ArrayList<String> searchPosts(String searchTerm){
		
		String keywords[];
		
		// search string is split into different keywords
		searchTerm.trim();
		keywords = searchTerm.split("\\s");
		
		ArrayList<String> allResults = new ArrayList<String>();
		
		// Database is searched for for all keywords one by one and results are added to one single ArrayList i.e allResults.
		ArrayList<String> returnedTable;
		for(String key : keywords){
			
			returnedTable = searchDatabase(key);
			
			for(String result : returnedTable){
				allResults.add(result);
			}
		}
		
		// counting hit value of each ID. creating a new hashmap and mapping each id to its hit value
		HashMap<String, Integer> hitValue = new HashMap<String, Integer>();
		
		for(String id:allResults){
			if(hitValue.containsKey(id))
				hitValue.put(id,hitValue.get(id).intValue() + 1);
			else
				hitValue.put(id,1);
		}
		// now hitValue hashmap has all the ids as well as their hit values.
		
		// sorting keys on the basis of hit values.
		ArrayList<EnhancedString> sortResults = new ArrayList<EnhancedString>();
		
		Set set = hitValue.entrySet();
	    
		// Get an iterator
		Iterator i = set.iterator();
		while(i.hasNext()) {
			Map.Entry me = (Map.Entry)i.next();
			EnhancedString tempString = new EnhancedString();
			tempString.setHitVal((int)me.getValue());
			tempString.setKey((String)me.getKey());
			sortResults.add(tempString);
		}
		
		Collections.sort(sortResults);
		// IDs are sorted on the basis of their hit values.
		
		// adding these sorted values to IDs arraylist
		ArrayList<String> rankedSearchResults = new ArrayList<String>();
		
		i=sortResults.iterator();
		while(i.hasNext()) {
			EnhancedString es = (EnhancedString) i.next();
			rankedSearchResults.add(es.getKey());
		}
		
		return rankedSearchResults;
	}

	
	//	function to search ids in table that match to one keyword.
	private static ArrayList<String> searchDatabase(String keyword){
		
		ArrayList<String> searchResults = new ArrayList<String>();
		
		//-------------------------Searching in database----------------------------------------------------------------
		try {
			Class.forName(drivername);
		
			Connection connection = DriverManager.getConnection(url,username,password);
			
		 	Statement statement = connection.createStatement();
			
		 	ResultSet results = statement.executeQuery("Select Idea_ID from Ideas where Heading like '%" + keyword + "%'");
			
		 	while(results.next()){
				searchResults.add(results.getString(1));
			}	
			
			results = statement.executeQuery("Select Idea_ID from Ideas where Content like '%" + keyword + "%'");
			
			while(results.next()){
				searchResults.add(results.getString(1));
			}
			
		} catch (ClassNotFoundException|SQLException e) {
			e.printStackTrace();
		}
		//-----------------------------------------------------------------------------------------------------------------
		
		return searchResults;
	}
	
	
	// driver Method
	public static void main(String args[]){
		drivername = "com.mysql.jdbc.Drivername";
		url = "";
		username = "root";
		password = "toor";
		
		Iterator i = searchPosts("").iterator();
		while(i.hasNext()) {
			System.out.print(i.next());
		}
	}
}