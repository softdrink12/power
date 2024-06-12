package sec01.Exam01;

public class ForExam {

	public static void main(String[] args) {

		// 1씩 증가하는 걸 5번 할거임
		// 1 + 1 + 1 + 1 + 1
		int sum = 0;
		sum = sum + 1;
		sum = sum + 1;
		sum = sum + 1;
		sum = sum + 1;
		sum = sum + 1;
		System.out.println(sum);
		
		
		// 참고: 1 ~ n 까지 더한 값
		// n*(n+1) / 2
		
		// 1 + 2 + 3 + 4 + 5
		sum = 0;
		sum = sum + 1;
		sum = sum + 2;
		sum = sum + 3;
		sum = sum + 4;
		sum = sum + 5;
		System.out.println(sum);
		
		// 이번에는 1,2,3... 에 해당하는 걸 변수에 넣어보자
		sum = 0;
		
		// 초기화식
		int i = 0;
		
		// 증감식
		i++;// i == 1
		
		// 실행문
		sum = sum + i;		
		i++; // i == 2
		
		sum = sum + i;		
		i++; // i == 3
		
		sum = sum + i;
		i++; // i == 4
		
		sum = sum + i;
		i++; // i == 5
		sum = sum + i;
		
		
		/*
		 *  반복문 만드는 원리
		 * 
		 *  반복 되는 것 찾기. Ctrl+c, v 해도 바뀌지 않는 것을 말함
		 *  반복 되지 않는 것
		 * 		패턴 (규칙)을 찾을 수 있다면 반복문으로 만들 수 있음
		 * 		변수를 활용해서 반복되게 만들기 
		 * 
		 *  반복 되지 않는 것의 
		 * 		시작 조건 찾기
		 * 		종료 조건 찾기 
		 * 
		 *  for : 반복 횟수를 아는 경우
		 *  while : 반복 횟수를 모르는 경우 
		 * 
		 */
		
		// 맨 처음 한 번만 초기화식 실행
		// 조건이 참이면 
		// 실행블럭을 실행하고 
		// 증감식 실행하고 
		// 다시 조건 보기 반복
		// for (초기화식; 조건; 증감식;) {
		// 		실행블럭
		// }
		
		int sum2 = 0;
		for( int e = 1 ; e <= 5 ; e++ ) {
			sum2 = sum2 + e;
			System.out.println("안쪽에서는 e :"+ e + ", sum2 :"+ sum2);
		}
		System.out.println("for 사용 sum2 : "+sum2);
		
		// 위에거 보지 않고 1 ~ 100까지 합을 구하기
		int sum3 = 0;
		for (int h = 1 ; h <=100 ; h++ ) {
			sum3 = sum3 + h;
		}
		System.out.println("1 ~ 100 sum3 :" + sum3);
		
		// 조금 쉬운 방법
		// 첫 번째
		System.out.println(1);
		System.out.println(2);
		System.out.println(3);
		System.out.println(4);
		// 반복 되는 걸 찾는 쉬운 방법
		// 복사 후 붙여넣기 그 후 변경할 것을 찾는다
		// 그리고 변경하는 규칙도 찾기 
		// 변경 되는 것을 변수로 바꾸기 
		System.out.println(5);
		int i2 = 5 + 1;
		System.out.println(i2);	// 6
		i2 = i2 + 1;
		System.out.println(i2);	// 7
		i2 = i2 + 1;
		System.out.println(i2);	// 8
		
		System.out.println("---------------------");
		// for문으로 만들어보자
		for (int i3 = 1; i3 <= 10; i3 = i3 + 1) {
			System.out.println(i3);
		}
		
		
		for (int i3 = 1; i3 <= 10; i3 = i3 + 1) {
			System.out.print(i3+",");
		}

	
		// [문제 1] 1 ~ 10 까지 짝수만 출력하기 
		// 1. 증감식 이용하기
		// 2. if문 이용하기 
		
		// 조금 어려운 문제 
		// [문제 2] 1 ~ 10 까지 한 줄에 3개씩 출력되게 
		
		System.out.println();
		System.out.println("------------------");
		
		// [문제 1-1]
		for (int i4 = 2; i4 <= 10; i4 = i4 + 2) {
			System.out.println("for 짝수만 출력 : "+i4);
		}
		
		System.out.println("----------------");
		// [문제 1-2]
		for (int i5 = 1; i5 <= 10; i5 = i5 + 1) {
//			System.out.println(i5);
			
			if (i5 % 2 == 0) {
				System.out.println("if 짝수만 출력: "+i5);
			}
		}
	
		System.out.println("----------------");
		// [문제 2]
		for (int i6 = 1; i6 <= 10; i6 = i6 + 1) {
			if (i6 <= 3) {
				System.out.print(i6);
			}
			
		}
		
		
		System.out.println(123);
		System.out.println(456);
		
		System.out.print(1);
		System.out.print(2);
		System.out.print(3);	// 3
		System.out.println();
		
		int num3 = 3;
		num3++;
		System.out.println(num3); // 4
		num3++;
		System.out.println(num3); // 5
		num3++;
		System.out.println(num3); // 6
		if (num3 % 3 == 0) {
			System.out.println();
		}
		
		num3++;
		System.out.println(num3); // 7
		num3++;
		System.out.println(num3); // 8
		num3++;
		System.out.println(num3); // 9
		if (num3 % 3 == 0) {
			System.out.println();
		}
		
		System.out.println("-----------------");
		for(int num4 = 1; num4 <= 10; num4++) {
			System.out.print(num4 +",");
			if (num4 % 3 == 0) {
				System.out.println();
			}
		}
		
		System.out.println();
		
		System.out.println("--------------------");
		// 1 ~ 100 까지 3의 배수가 몇 개 있는가?
		// 내가 푼 것
		
		for (int thr = 1; thr <= 100; thr++) {
			if (thr % 3 == 0) {
				System.out.println(thr);
			}
		}

		// 선생님이 푼 것
		int count = 0;
		for(int t = 1; t <= 100; t += 1) {
			if (t % 3 == 0) {
				count++;
			}
		}
		System.out.println("3의 배수의 갯수는? : "+ count);
		
		
		// 구구단 
		// 2단 출력
		System.out.println("2 * 1 = 2");
		System.out.println("2 * 2 = 4");
		System.out.println("2 * 3 = 6");
		int cnt = 3;
		cnt++;
		System.out.println("2 * "+cnt + " = "+ (2*cnt) );
		
		cnt++;
		System.out.println("2 * "+cnt + " = "+ (2*cnt) );
		
		
		for (int k = 1; k <= 9; k++) {
			System.out.println("2 * "+ k +" = "+ (2*k));
		}
		
		for (int k = 1; k <= 9; k++) {
			System.out.println("3 * "+ k +" = "+ (3*k));
		}

		int dan = 3;
		dan++;	//4
		
		for (int k = 1; k <= 9; k++) {
			System.out.println(dan +" * "+ k +" = "+ (dan*k));
		}

		dan++;	//5
		
		for (int k = 1; k <= 9; k++) {
			System.out.println(dan +" * "+ k +" = "+ (dan*k));
		}		
		
		
		for (int dan2 = 2; dan2 <= 9; dan2++) {
			
			System.out.println("--- "+dan2+"단 ---");
			for (int k = 1; k <= 9; k++) {
				System.out.println(dan2 +" * "+ k +" = "+ (dan2*k));
			}	
		}
		
		
		for (int f = 2; f <= 9; f++) {
			
			System.out.println("---"+f +"단" + "---");
			for (int g = 1; g <= 9; g++) {
				System.out.println(f + "x" + g + "=" + (f * g));
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
