package net.hb.day17;

import java.util.*;

public class First {
	public static void main(String[ ] args){
		int dan=1;  // Scanner = scanf
		Scanner sc = new Scanner(System.in);
		System.out.print("�� �Է�?");
		dan=sc.nextInt();
		for(int i=1; i<10;i++){
			System.out.println(dan+"*"+i+"="+(dan*i));
		}
		
		// for������ Ű���忡�� �Է¹޾Ƽ� ���
	}//main End	
} //class End
