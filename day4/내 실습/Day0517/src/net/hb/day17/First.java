package net.hb.day17;

import java.util.*;

public class First {
	public static void main(String[ ] args){
		int dan=1;  // Scanner = scanf
		Scanner sc = new Scanner(System.in);
		System.out.print("단 입력?");
		dan=sc.nextInt();
		for(int i=1; i<10;i++){
			System.out.println(dan+"*"+i+"="+(dan*i));
		}
		
		// for구구단 키보드에서 입력받아서 출력
	}//main End	
} //class End
