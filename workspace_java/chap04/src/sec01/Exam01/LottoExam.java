package sec01.Exam01;

import java.util.Scanner;

public class LottoExam {

	public static void main(String[] args) {

		double rand = Math.random();
		// 0 이상 1미만 
		/*
		 * 0 <- rand && rand < 1
		 * 0 ~ 0.9999999999
		 * 0 * 45 <- rand * 45 < 1*45
		 * 0 ~ 45 * 0.999999999 == 44.999999999
		 * int로 바꾸면 
		 * 0 ~ 44 까지 나오고 1을 더하면 
		 * 1 ~ 45 까지 random한 숫자가 나온다
		 */
		
		int number = (int)(rand * 45);	// 0 ~ 44
		number = number + 1;			// 1 ~ 45
		number = (int) (rand * 45) + 1;	// 위에거 종합
		
		number = ( (int)(rand * 10000) ) % 45 + 1;
//		System.out.println(number);
		
		
		double hi = Math.random();
		int  bi = (int) (hi * 6);
		bi = bi + 1;
		bi = (int) (hi * 6) + 1;
		
		System.out.println("주사위 숫자: " +bi);
		
		if (bi==6) {
			System.out.println("6이 나왔군요");
		}
		
		
		
		double rcp = Math.random();
		
		int  tr = (int) (rcp * 3);
		tr = tr + 1;
		tr = (int) (rcp * 3) + 1;
		
//		System.out.println(tr);
	
		if (tr==1) {
			System.out.println("가위");
		} else if (tr==2) {
			System.out.println("바위");
		} else if (tr==3) {
			System.out.println("보");
		}
		
		
		
		double pcr = Math.random();
		
		int  tr2 = (int) (pcr * 3);
		tr2 = tr + 1;
		tr2 = (int) (pcr * 3) + 1;
		
//		System.out.println(tr);
	
		if (tr2==1) {
			System.out.println("가위");
		} else if (tr2==2) {
			System.out.println("바위");
		} else if (tr2==3) {
			System.out.println("보");
		}
		
		
		rand = Math.random();
		int rsp = (int) (rand * 3);	// 0 ~ 2
		if (rsp== 0) {
			System.out.println("가위");
		} else if (rsp == 1) {
			System.out.println("바위");
		} else {
			System.out.println("보");
		}
		
		int my = 1;	// 바위
		
		if (rsp == my) {
			System.out.println("비김");
		} else {
			
		}
		
		if (rsp == 0 && my == 0 ) {
			System.out.println("비김");
		} else if (rsp == 0 && my == 1) {
			System.out.println("내가 이김");
		} else if (rsp == 0 && my == 2) {
			System.out.println("내가 짐");
		}
			
		
		double hi3 = Math.random();
		int  bi3 = (int) (hi3 * 6);
		bi3 = bi3 + 1;
		bi3 = (int) (hi3 * 6) + 1;
		System.out.println("주사위 숫자: " +bi3);
		
		if (bi3 == 1) {
			System.out.println("주사위 1이 나왔습니다");
		} else if (bi3 == 2) {
			System.out.println("주사위 2가 나왔습니다");
		}
		
		
		// if 중에서 == 또는 equals인 경우 switch로 바꿀 수 있다
		switch (bi3) {
		case 1 : 
			System.out.println("주사위 1이 나왔습니다");
			break;
		case 2 : 
			System.out.println("주사위 2이 나왔습니다");
			break;
		case 3 : 
			System.out.println("주사위 3이 나왔습니다");
			break;
		case 4 : 
			System.out.println("주사위 4이 나왔습니다");
			break;
		case 5 : 	// else if (bi3 == 5)
			System.out.println("주사위 5이 나왔습니다");
			break;
		default : 	// if의 else
			System.out.println("주사위 6이 나왔습니다");
			break;
		}
		
		
		int month = 9;
		
		if (month >= 3 && month <= 5 ) {
			System.out.println("spring");
		} else if (month >= 6 && month <= 8 ) {
			System.out.println("summer");
		} else if (month >= 9 && month <= 11 ) {
			System.out.println("fall");
//		} else if (month ==12 || month == 1 || month == 2) {
//		} else if (month ==12 || (month >= 1 && month <= 2)) {
		} else {
			System.out.println("winter");
		}
		
		
		
		// break가 없을 때 다음 case도 실행되는 원리를 이용함
		switch (month) {
			case 3 : 
			case 4 :
			case 5 : 
				System.out.println("spring2");
				break;
			case 6 : 
			case 7 : 
			case 8 : 
				System.out.println("summer2");
				break;
			case 9 :
			case 10 :
			case 11 :
				System.out.println("fall2");
				break;
			default :
				System.out.println("winter2");
				break;
		}
		
		// char, byte, short, int (즉, int 이하), String만 허용됨
		// boolean, long, double, float은 사용 불가능 
		
	}

}
