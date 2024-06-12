package sec01.Exam01;

import java.util.Scanner;

public class For연습Exam {

	public static void main(String[] args) {

		// 주어진 수가 양수(0포함), 음수 여부 출력
//		Scanner scan = new Scanner(System.in);
//			int a = 0;
//		System.out.println("숫자를 입력하세요");
//		int a = scan.nextInt();
//		if(a >= 0) {
//			System.out.println(a + ": 양수");
//		} else {
//			System.out.println(a + ": 음수");
//		}
		
		/*
		// 입력을 3번 반복
		for (int i = 1; i <= 3; i++) {
			System.out.println("숫자를 입력하세요");
			int a = scan.nextInt();
			if(a >= 0) {
				System.out.println(a + ": 양수");
			} else {
				System.out.println(a + ": 음수");
			}
		}
		*/
		
		
//		// 입력받은 숫자가 0이 아닌 동안 계속 반복
//		for(int a = 1; a != 0;) {
//			System.out.println("숫자를 입력하세요(종료: 0)");
//			a = scan.nextInt();
//			if(a >= 0) {
//				System.out.println(a + ": 양수");
//			} else {
//				System.out.println(a + ": 음수");
//			}
//		}
//		System.out.println("종료되었습니다");
		
		
/*
* 0단계
+
+
+
+
+

1단계
+++++

2단계
+++++
+++++
+++++

2-1단계
+ + + + +


3단계
+
++
+++
++++
+++++

4단계
+....
++...
+++..
++++.
+++++

5단계
....+
...++
..+++
.++++
+++++

6단계
....+
...+++
..+++++
.+++++++
+++++++++

7단계
....+....
...+++...
..+++++..
.+++++++.
+++++++++
*/
		
/*
 * 주사위 두 개 굴리기 
 * 1단계 
 * 주사위 2개를 굴려서 나올 수 있는 모든 조합을 출력
 * 
 * 2단계
 * 합 별로 나올 수 있는 조합 
 * 합이 2 : [1,1]
 * 합이 3 : [1,2] [2,1]
 */
		
		
		
		// 0단계 선생님
//		System.out.println("+");
//		System.out.println("+");
		for (int i = 1; i <= 5; i++) {
			System.out.println("+");
		}
		
		
		
		System.out.println("--------- 1단계---------");
		
		int n = 5;
		for (int i = 1; i <= n; i++) {
			System.out.print("+");
		}
		System.out.println();
		
		System.out.println("-------2단계------");
		
		for (int j = 1; j <= 3; j++) {
			for (int i = 1; i <= 5; i++) {
				System.out.print("+");
			}
			System.out.println();
		}
			
		
		System.out.println("-------2-1단계-------");
			
//			System.out.println("+");
//			System.out.println("");
		for (int i=1; i<=5; i++) {
			System.out.print("+");
			System.out.print(" ");
		}
			System.out.println();
			
			
		System.out.println("---------3단계---------");	
		
		for (int f = 1; f <= 5; f++) {
			System.out.println();
			for (int r = 1; r <= f; r++) {
				System.out.print("+");
			}
		}
		
		System.out.println();
		System.out.println("----------4단계-------------");
		
		for (int a = 1; a <= 5; a++) {
			System.out.println();
			for (int b = 1; b <= a; b++) {
				System.out.print("+");
			}
			for (int c = 5; c > a; c--) {
				System.out.print(".");
			}
		}
		
		System.out.println();
		System.out.println("--------5단계---------");
		
		for (int a = 1; a <= 5; a++) {
			System.out.println();
			for (int b = 5; b > a; b--) {
				System.out.print(".");
			}
			for (int c = 1; c <= a; c++) {
				System.out.print("+");
			}
		}	
		
		System.out.println();
		System.out.println("---------6단계---------");
		
		for (int a = 1; a <= 5; a++) {
			System.out.println();
			for (int b = 5; b > a; b--) {
				System.out.print(".");
			}
			for (int c= 1; c <= a ; c++) {
				System.out.print("+");
			}
			for (int d = 2; d <=a ; d++ ) {
				System.out.print("+");
			}
		}
		
		System.out.println();
		System.out.println("----------7단계---------");
		
		for (int a =1; a <= 5; a++) {
			System.out.println();
			for (int b = 5; b > a; b--) {
				System.out.print(".");
			}
			for (int c = 1; c <= a; c++) {
				System.out.print("+");
			}
			for (int d = 2; d <= a; d++) {
				System.out.print("+");
			}
			for (int e = 5; e > a; e--) {
				System.out.print(".");
			}
		}
		

		System.out.println();
		System.out.println("---------구구단 1단계--------");
		
		for (int a = 2; a <= 9; a++) {
			System.out.print(a +"단");
			for (int b = 1; b <= 9; b++) {
				System.out.print(a +"x"+b +"=" +(a*b)+ " " );
			}
			if (a <= 9) {
				System.out.println();
			}
			System.out.println();
		}
		
		System.out.println("-------------- 구구단 2단계------------");
		
		for (int a = 1; a <= 9; a++) {
			System.out.print(a +"단");
			for (int b = 1; b <= 9; b++) {
				System.out.println(a + "x" + b + "=" +(a*b) +" ");
			}
			System.out.println();
		}
		
		

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	}
