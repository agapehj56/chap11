package com.example.map;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;

public class MapTests {
	
	/*
	 * Collection Framework
	 * 		1. 배열	- int[], String[], Dept[], ...
	 * 		2. List	- ArrayList, LinkedList
	 *  	3. Set 	- HashSet
	 * 		4. Map	- HashMap
	 */

	@Test
	public void test01() {
		System.out.println("######");
		System.out.println("test01");
		System.out.println("######");
		
		int[] nums = {1, 4, 5};
		int[] nums2 = new int[3];
		nums2[0] = 1;
		nums2[1] = 4;
		nums2[2] = 5;
//		nums2[3] = 7;
		
		System.out.println("nums[0]= " + nums[0]);
		System.out.println("nums[1]= " + nums[1]);
		System.out.println("nums[2]= " + nums[2]);
	}
	
	@Test
	public void test02() {
		System.out.println("######");
		System.out.println("test02");
		System.out.println("######");
		
		Map<String, Integer> map = new HashMap<>();
		
		map.put("one", 1);
		map.put("two", 4);
		map.put("three", 5);
		map.put("four", 7);
		
		System.out.println("one=" + map.get("one"));
		System.out.println("two=" + map.get("two"));
		System.out.println("three=" + map.get("three"));
		System.out.println("four=" + map.get("four"));
		System.out.println("five=" + map.get("five"));
	}
	
	@Test
	public void test03() {
		System.out.println("######");
		System.out.println("test03");
		System.out.println("######");
		
		List<Integer> list = new ArrayList<>();
		
		list.add(1);
		list.add(4);
		list.add(5);
		list.add(7);
		
		System.out.println("index 1 = " + list.get(0));
		System.out.println("index 2 = " + list.get(1));
		System.out.println("index 3 = " + list.get(2));
		System.out.println("index 4 = " + list.get(3));
//		System.out.println("index 5 = " + list.get(4));
	}
}
