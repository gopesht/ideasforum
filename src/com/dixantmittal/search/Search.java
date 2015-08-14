/*	Author - Dixant Mittal

 * 
 *	Title - Searching the database for given keywords and return the ID of Ideas that matches to those keywords,
 *			by Ranking them on the basis of the Hit Values of all keywords.  
 */

package com.dixantmittal.search;


//----------------------------------imported packages------------------------------------
import java.sql.*;
import java.util.*;

import com.database.beans.Ideas;
import com.database.daoI.*;
import com.database.daoImpl.IdeasDaoImpl;




// class defined to sort idea_id on the basis of hit values.
class EnhancedIdeas implements Comparable<EnhancedIdeas>{
	
	private Ideas key;
	private int hitVal;
	
	//------------------------------------------Setters and Getters-----------------------------------------
	public Ideas getKey(){
		return key;
	}
	
	public int getHitVal(){
		return hitVal;
	}
	
	public void setHitVal(int hitVal){
		this.hitVal = hitVal;
	}
	public void setKey(Ideas key){
		this.key = key;
	}
	//-------------------------------------------------------------------------------------------------------
	
	//----------------------overriding compareTo function----------------------------------------------------
	@Override
	public int compareTo(EnhancedIdeas es) {
		
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
	public static ArrayList<Ideas> searchPosts(String searchTerm){
		
		String keywords[];
		
		// search string is split into different keywords
		searchTerm.trim();
		keywords = searchTerm.split("\\s");
		
		ArrayList<Ideas> allResults = new ArrayList<Ideas>();
		
		// Database is searched for for all keywords one by one and results are added to one single ArrayList i.e allResults.

		// also counting hit values of each ID. creating a new hashmap and mapping each id to its hit value
		
		List<Ideas> returnedTable;
		
		HashMap <Integer,Boolean> duplicate = new HashMap<Integer,Boolean>();
		
		HashMap<Ideas, Integer> hitValue = new HashMap<Ideas, Integer>();
		
		for(Ideas id:allResults){
			
		}
		
		for(String key : keywords){
			
			returnedTable = searchDatabase(key);
			
			for(Ideas result : returnedTable){
				
				if(duplicate.containsKey(result.getIdea_id())){
					hitValue.put(result,hitValue.get(result).intValue() + 1);
					continue;
				}
				
				hitValue.put(result,1);
				duplicate.put(result.getIdea_id(),true);
				allResults.add(result);
			}
		}
		
		// now hitValue hashmap has all the ids as well as their hit values.
		
		// sorting keys on the basis of hit values.
		ArrayList<EnhancedIdeas> sortResults = new ArrayList<EnhancedIdeas>();
		
		Set set = hitValue.entrySet();
	    
		// Get an iterator
		Iterator i = set.iterator();
		while(i.hasNext()) {
			Map.Entry me = (Map.Entry)i.next();
			EnhancedIdeas tempString = new EnhancedIdeas();
			tempString.setHitVal((int)me.getValue());
			tempString.setKey((Ideas)me.getKey());
			sortResults.add(tempString);
		}
		
		Collections.sort(sortResults);
		// IDs are sorted on the basis of their hit values.
		
		// adding these sorted values to IDs arraylist
		ArrayList<Ideas> rankedSearchResults = new ArrayList<Ideas>();
		
		i=sortResults.iterator();
		while(i.hasNext()) {
			EnhancedIdeas es = (EnhancedIdeas) i.next();
			rankedSearchResults.add(es.getKey());
		}
		
		return rankedSearchResults;
	}

	
	//	function to search ids in table that match to one keyword.
	private static List<Ideas> searchDatabase(String keyword){
		
		//-------------------------Searching in database----------------------------------------------------------------
		List<Ideas> results;
	 	
		results = new IdeasDaoImpl().searchIdea(keyword);
		
		//-----------------------------------------------------------------------------------------------------------------
		
		return results;
	}
	
	
	// driver Method
	public static void main(String args[]){
		
		Iterator i = searchPosts("").iterator();
		while(i.hasNext()) {
			System.out.print(i.next());
		}
	}
}
