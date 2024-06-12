package chap05;

public class ArrayCopyExam {

	public static void main(String[] args) {

		// 카페 1호점에서 판매하는 메뉴  
		String[] coffee = new String[3];
		coffee[0] = "아메리카노";
		coffee[1] = "아이스티";
		coffee[2] = "말차";
		
		// 카페 2호점에서 1호점과 똑같은 커피를 판매 예정
		
		/*
		 *  얕은 복사 또는 shallow copy, thin clone, call by reference
		 *  stack 영역의 값(주소)만 복사
		 *  원본이 바뀌면 당연히도 내 값도 바뀜
		 */
		
		String[] coffee2 = coffee;
		
		for (int i =0; i < coffee2.length; i++) {
			System.out.println(coffee2[i]);
		}
		
		// 얕은 복사로 연결되어 있어서
		// 내껄 바꿔도 원본이 바뀐다 
		// 원본의 "주소만 공유"하고 있기 때문에 coffee나 coffee2는 같은거다 
		coffee2[1] = "연유라떼";
		System.out.println("coffee2[1]의 값을 바꾸고 원본인 coffee를 출력");
		for (int i =0; i < coffee.length; i++) {
			System.out.println(coffee[i]);
		}
				
		// 할 일: 크기와 내용을 동일하게 가지는 새로운 배열을 만들겠다
		
		/*
		 *  깊은 복사, deep copy, deep clone, call by value 
		 *  heap 영역의 새로운 주소에 자리를 마련하고 변수에 주소를 넣는다  
		 *  그리고 원본의 값들을 복사해서 채워넣는다 
		 *  그래서 원본과 동일한 게 생기지만 전혀 다른 주소를 가지게 된다 
		 *  즉, 내 값을 바꿔도 원본이 바뀌지 않음 
		 */
		
		String[] coffee3 = new String[coffee.length];
//		coffee3[0] = "뜨아";	// 수동이니까 원본이 바뀌면 이것도 바꿔줘야 함 
		coffee3[0] = coffee[0];
		for (int i= 0; i < coffee3.length; i++) {
			coffee3[i] = coffee[i];
		}
		System.out.println("coffee3 출력");
		coffee3[2] = "아샷추";
		for (int i = 0; i < coffee3.length; i++) {
			System.out.println(coffee3[i]);
		}
		System.out.println("coffee3[2]의 값을 바꾸고 원본인 coffee를 출력");
		for (int i =0; i < coffee.length; i++) {
			System.out.println(coffee[i]);
		}
		
		
		// coffee3에 "사라다빵"을 추가하려면?
//		coffee3 = new String[]{"아메리카노", "연유라떼","아샷추", "사라다빵"};
		
		/*
		 *  전략 : coffee의 크기보다 1개 많은 새로운 배열을 만들고 
		 *  앞에서부터 복사해놓고 
		 *  마지막에 추가할 값을 적어보자 
		 */
		
		coffee3 = new String[coffee.length +1];
		// 앞에 3개만 복사
		for (int i= 0; i < coffee.length; i++) {
			coffee3[i] = coffee[i];
		}
		// 비어있는 3번 인덱스
		coffee3[3] = "사라다빵";
		System.out.println("4번째 메뉴를 추가한 결과");
		for (int i= 0; i < coffee3.length; i++) {
			String menu = coffee3[i];
			System.out.println(menu);
		}
		
		// 향상된 for문
		System.out.println("향상된 for문");
//		int cnt = 0; 
		for( String menu : coffee3) {
//			cnt++;
			System.out.println(menu);
		}
		
		// 모든 자식 배열의 크기가 같게 선언할 수 밖에 없음
		int[][] a2 = new int [10] [100];
		// 자식별로 크기를 다르게 선언할 수 있음
		int[][] a3 = {	
				{1,2},
				{1,2,3}
					};
		
//		// [문제]
//		int[][] Array = {
//				{95,86},
//				{83,92,96},
//				{78,83,93,87,88}
//		};
		
		
//		int sum = 0;
//		double avg = 0.0;
//		
//		for (int i = 0; i < Array.length; i++) {
//			System.out.println(Array[i]);
//		}
//		for (int i = 0; i < Array.length; i++) {
//			sum += Array[i][i];
//		}
//		System.out.println("총 합 : "+sum);
//		
//		
//		int[] array1 = {95,86};
//		for (int i = 0; i < array1.length; i++) {
////			array1[i] = i+1;
//			System.out.println(array1[i]);
//		}
//		int sum1 = 0;
//		for (int i = 0; i < array1.length; i++) {
//			sum += array1[i];
//		}
//		System.out.println(sum);
		
		
		// [문제5]
		int[][] array = {
				{95,86},
				{83,92,96},
				{78,83,93,87,88}
		};
		
		// 1. 모두 출력
//		int[] array1 = array[0];	//{95,86}
////		array1[0]
//		System.out.println(array[0][0]);
//		System.out.println(array[0][1]);
//		
//		System.out.println(array[1][0]);
//		System.out.println(array[1][1]);
//		System.out.println(array[1][2]);
		
		// array[0].length만큼
//		for (int i = 0; i < array[0].length; i++) {
//			System.out.println(array[0][i]);
//		}
//		
//		for (int i = 0; i < array[1].length; i++) {
//			System.out.println(array[1][i]);
//		}
		
		for (int j = 0; j < array.length; j++) {
			
			for (int i = 0; i < array[j].length; i++) {
				System.out.println(array[j][i]);
			}
		}
		
		
		// 2. 합계 출력
		int sum = 0;
		int count = 0; 
		for (int j = 0; j < array.length; j++) {
			
			for (int i = 0; i < array[j].length; i++) {
//				System.out.println(array[j][i]);	// 모두 출력한 값
				sum = sum + array[j][i];
				count++;
			}
		}
		System.out.println("총 합 : "+ sum);
		
		// 3-0. 모든 갯수 세기 
		
		// 모든 요소를 하나씩 세기 : int count; count++;
		System.out.println("개수 : "+ count);
		
		// 배열의 크기만 누적 : count += array[].length;
		count = 0;
		for (int i = 0; i < array.length; i++) {
			count += array[i].length;
		}
		System.out.println("개수2 : "+count);
		
		// 3. 평균 출력 (합계를 갯수로 나누기)
		System.out.println((double)sum / count);
		
		
		// [문제 4]
		// 주어진 배열에서 최대값 찾기 
		// 전략 : 배열의 첫번째 값부터 혹은 절대 나올 수 없는 최저치를 기준으로
		// 기준과 비교해서 큰 값을 새로운 기준으로 정한다 
		// 그렇게 살아남은 값이 최대값 ! 
		// ex) -222, 1, 5, 3, 8, 2 <- 최대값=8
		
		
		int[] array1 = {1, 5, 3, 8, 2, 9, 3};
		int max = Integer.MIN_VALUE;	// int가 가질 수 있는 최소값, 최대값은 MAX_VALUE 
		for (int i = 0; i < array1.length; i++) {
			if (array1[i] > max) {
				max = array1[i]; 
			}
		}
		System.out.println("최대값 : "+max);
		
		
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
		
		int[] a = {1, 5, 2, 4};
		for (int i = a.length; i < 0; ) {
			i--;
			System.out.println(a[i]);
		}
		
	}

}
