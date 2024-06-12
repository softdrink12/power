package chap05;

public class ArrayQuiz {

	public static void main(String[] args) {

		// 배열의 예 : {1, 5, 2, 4,}
		// 문제 1. 배열 뒤집기 : {1, 5, 2, 4} --> {4, 2, 5, 1} 순으로 만들기 
		// 문제 2. 첫 번째 자리에 0 넣기 : {0, 1, 5, 2, 4}
		// 문제 3. 마지막 숫자를 첫 번째에 넣기 : {4, 1, 5, 2}
		
		// 배열의 예 : {3, 4, 7, 5, 1, 4, 6, 4, 5}
		// 문제 4. 홀/짝수의 각각 개수를 출력 
		// 문제 5. 주어진 수 (예를 들어 4)보다 큰 숫자의 개수 구하기 
		
		// 조금 어려운 문제 
		// 문제 6. 두 번째 최대값 구하기 
		// 문제 7. 내림차순으로 정렬 (큰 수부터 작은 수 순으로)
		
		// 문제 8. 로또 6개 번호(1 ~ 45)가 중복되지 않게 선정하기  
		
		// 문제 9. 자리 예약 
		// 자리가 10개 있는 소극장 예약 시스템을 만들어보자 
		// 1 ~ 10 (또는 0 ~ 9) 번까지의 번호의 자리가 있음
		// 예약 할 자리는? <- 하고 입력 받기 
		// 1-1) 예약이 가능하면 "ㅇㅇ자리 예약 했습니다" 출력 
		// 1-2) 예약이 불가능하면 "이미 예약되어 있습니다" 출력 
		// 2) 모든 자리의 예약 가능 여부 출력
		// 3) 예약 가능한 자리만 출력 
		
		// 10. 임시비밀번호 8자리 만들기 
		// 1) 모두 다 숫자로 
		// 2) 모두 다 소문자로 hint: (char ascii) <- 사용하기 
		// 3) 숫자 2개 이상, 대문자 1개 이상, 소문자 1개 이상 조합
		
		
		// [문제1]배열 뒤집기 : {1, 5, 2, 4} --> {4, 2, 5, 1} 순으로 만들기
		
		System.out.println("-----------------1단계-------------------");
		int[] a = {1, 5, 2, 4};
		for (int i = a.length; i > 0;) {
			i--;
			System.out.print(a[i]);
		}
		
		System.out.println();
		System.out.println("--------------2단계----------------");
		// 문제 2. 첫 번째 자리에 0 넣기 : {0, 1, 5, 2, 4}
		int[] b = new int [a.length +1];
		for (int i = 1; i < a.length+1; i++) {
			b[i] = a[i-1];
		}
		b[0] = 0;
		for (int i = 0; i < b.length; i++) {
			int menu = b[i];
			System.out.print(menu);
		}
		
		System.out.println();
		System.out.println("----------------3단계---------------");
		// 문제 3. 마지막 숫자를 첫 번째에 넣기 : {4, 1, 5, 2}
				
		int[] c = new int [a.length ];
		for (int i = 1; i < a.length; i++) {
			c[i] = a[i-1];
			c[0] = a[a.length-1];
		}
		for (int i = 0; i < c.length; i++) {
			int menu = c[i];
			System.out.print(menu);
		}
		
		System.out.println();
		System.out.println("-----------------4단계------------------");
		// 문제 4. 홀/짝수의 각각 개수를 출력
		
		int[] d = {3, 4, 7, 5, 1, 4, 6, 4, 5};
		int count = 0; 
		int count1 = 0;
		for (int i = 0; i < d.length; i++) {
			if (d[i]%2 == 0) {
				count+=1; 
			} else if (d[i]%2 != 0) {
				count1+=1;
			}
		
	}
		System.out.println("짝수 : "+count);
		System.out.println("홀수 : "+count1);
	
		
		System.out.println("----------------------5단계------------------");
		// 문제 5. 주어진 수 (예를 들어 4)보다 큰 숫자의 개수 구하기
		int[] e = new int [d.length];
		
		int count2 = 4; 
		int count3 = 0;
		for (int i = 0; i < e.length; i++) {
			if (count2  < d[i]) {
				count3++; 
			}
		}
		System.out.println("4보다 큰 숫자의 개수: "+count3);
		
		
		System.out.println("------------------6단계----------------");
		// 문제 6. 두 번째 최대값 구하기
		int[] f = {3, 4, 7, 5, 1, 4, 6, 4, 5};
		int num = 0;
		for (int i = 0; i < f.length; i++) {
			for (int j = 0; j < f.length; j++) {
				if (f[i] > f[j]) {
					num = f[i];
					f[i] = f[j]; 
					f[j] = num;
				}
			}
		}
		
		for (int i = 0; i < f.length; i++) {
		}
		System.out.print(f[1]);
		
		
		System.out.println();
		System.out.println("------------------7단계-----------------");
		// 문제 7. 내림차순으로 정렬 (큰 수부터 작은 수 순으로)
		int[] g = {3, 4, 7, 5, 1, 4, 6, 4, 5};
		int num2 = 0;
		for (int i = 0; i < g.length; i++) {
			for (int j = 0; j < g.length; j++) {
				if (g[i] > g[j]) {
					num2 = g[i]; g[i] = g[j]; g[j] = num2;
				}
			}
		}
		
		for (int i = 0; i < g.length; i++) {
			System.out.print(g[i]);
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
}
