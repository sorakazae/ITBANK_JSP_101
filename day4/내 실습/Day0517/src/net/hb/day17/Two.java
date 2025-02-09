package net.hb.day17;

import java.util.*;

public class Two {
	public static void main(String[ ] args){
		int kor=27;
		double avg=78.9;
		String data="1200";
		
		int a=(int)avg;
		int b=Integer.parseInt(data);  // String은 클래스라서 바로 표준타입
		String c=String.valueOf(kor);
		System.out.println( b+98); //1298
		System.out.println( data+98); //120098
	}//main End	
} //class End
