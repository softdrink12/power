package sec01.Exam01;

import java.util.Scanner;

public class ifExam {

	public static void main(String[] args) {

		int score = 91;
		
		if(score >= 90) {
			System.out.println("90점 이상입니다");
			
			if(score >= 95) {
				System.out.println("95점 이상입니다");
			}
		}
		
		if(score < 90 ) {
		            	System.out.println("90점 미만입니다");
		}
		
		//참고: if-else문 
		boolean up90 = score >= 90;
		if(up90) {
			System.out.println("up90");
		}
		if( !up90 ) {
			System.out.println("up90");
		}
		
		if(up90) {
			System.out.println("참");
		} else {
			// 위의 조건이 하나도 만족하지 않는 경우 무조건 실행
			System.out.println("거짓");
		}
		
		System.out.println("--------------------");
		
		
		// if, else if, else <- 이렇게 묶여있는 경우 하나만 실행된다
		if (score >= 90) {
			System.out.println("학점은 A");
		} else if (score < 90 && score >= 80) {
			// else if 위의 조건이 거짓일 때만 else if로 옴
			
			System.out.println("학점은 B");
		} else {
			System.out.println("학점은 C");
		}
		
		
		if (score >= 90) {
			System.out.println("90점 이상입니다");
			System.out.println("학점은 A");
		}
		if (score < 90 && score >= 80) {
			System.out.println("90점 미만, 80점 이상입니다");
			System.out.println("학점은 B");
		}
		
//		// 3은 짝수인가?
//		int num = 3;
//		Scanner input = new Scanner(System.in);
//		num = input.nextInt();
//		if(num % 2 == 1) {
//			System.out.println("홀수");
//		} else {
//			System.out.println("짝수");
//		}
		
		String a = "abc";
		String b = "abc";
//		if (a == b)
		if (a.equals(b)) {
			System.out.println("a와 b가 같다");
		} else {
			System.out.println("a와 b가 다르다");
		}
		
		
		double rand = Math.random();
		System.out.println("rand : "+rand);
		// 0 이상 1 미만 
		
		// 주사위
		
		
		
		
	}

}
