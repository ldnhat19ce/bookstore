package com.bookstore.utils;

import java.util.ArrayList;
import java.util.List;

public class Count {
	
	public static List<Integer> CountBook() {
		List<Integer> list = new ArrayList<Integer>();
		
		for(int i = 0; i < 5; i++) {
			list.add(i);
		}
		
		return list;
	}
	
	public static List<Integer> CountBook2() {
		List<Integer> list = new ArrayList<Integer>();
		
		for(int i = 5; i < 10; i++) {
			list.add(i);
		}
		
		return list;
	}
	
	
}
