package chap05;

import java.util.ArrayList;

public class ArrayExam {

	public static void main(String[] args) {

		// 기본타입에는 null을 넣을 수 없음 
		// null은 int도 아니고 double도 아니다 
//		int a = null;
		
		
		// 배열
		// 한 번에 여러 변수를 만드는 방법
		// 같은 타입만 선언할 수 있음
		// 생성된 여러 변수들은 index로 관리할 수 있다 
		
		// 선언 방법
		// "int로 구성된 배열이다"
		int[] score;	// java 스타일
		int score2 [];	// c 스타일 

		score = null;
		
		int[] score3 = null;
		
		int score_0 = 90;
		int score_1 = 60;
		int score_2 = 70;
		
		// 배열을 생성할 때 크기를 알려줘야 한다 
		// 첫 번째[] : int[]는 배열인데 int로 이루어진 배열이다  
		// 두 번째 new int[3] : 배열의 크기; 한 번에 만들 변수의 갯수 
		//					연달아서 타입의 크기만큼 메모리 할당
		//					첫 번째 변수 부터 index 0으로 시작 
		// 세 번째 intarray[0] : 만들어진 변수들 중 첫 번째 변수를 뜻함
		int[] intarray = new int[3];
		intarray[0] = 90; 
		intarray[1] = 60; 
//		intarray[2] = 70;
		
		System.out.println("intarray[1] : "+ intarray[1]);
		
		// 기본값은 0, false, null로 초기화 된다 
		System.out.println("intarray[2] : "+ intarray[2]);
		
		// java.lang.ArrayIndexOutOfBoundsException <- 에러 
//		System.out.println("intarray[3] : "+ intarray[3]);
		
		// 배열의 모든 값을 1로 바꾼다
		intarray[0] = 1; 
		intarray[1] = 1; 
		int a = 1; 
		a++;
		intarray[a] = 1;
		
//		for (int i = 0; i <= 3-1; i++)
		for (int i = 0; i < 3; i++) {
			intarray[i] = 1; 
		}
		
//		for (int i = 0; i < intarray.length; i++)
		for (int i = 0; i < 3; i++) {
			System.out.println(intarray[i]);
		}
		
		System.out.println(intarray);	// [I@59f95c5d <-출력
		System.out.println(intarray.length);
		// 한 번 선언된 배열의 크기는 바꿀 수 없다
//		intArray.length = 4;
		
		// 배열을 선언하는 두 번째 방법
		// 값을 미리 알고 있을 때 
		// 크기는 알아서 계산된다 
		int[] intArray2 = new int[] {10, 20, 30, 40};
		for (int i = 0; i < intArray2.length; i++) {
			System.out.println(intArray2[i]);
		}
		
		// 세 번째 방법 
		// 선언과 동시에 초기화 할 때만 가능
		int[] intArray3 = {100, 200, 300, 400};
		for (int i = 0; i < intArray3.length; i++) {
			System.out.println(intArray3[i]);
		}
		
		String[] strArray = new String[5];
		for (int i = 0; i < strArray.length; i++) {
			strArray[i] = "김승환"+(i+1);
		}
		
		for (int i = 0; i < strArray.length; i++) {
			System.out.println(strArray[i]);
		}
		
		
		// 1 ~ 10까지 배열에 넣고 
		// 배열의 총 합 출력
		// 배열의 평균값 출력
		
		int[] score5 = new int[10];
		for (int i = 0; i < score5.length; i++) {
			score5[i] = i+1;
		}
		
		int sum = 0;
		for (int i = 0; i < score5.length; i++) {
			sum += score5[i];
		}
		System.out.println("총합 : "+ sum); 
		
		double avg = (double)sum / score5.length;
		System.out.println("평균 : "+avg);
		
		int student1 = 90;
		int student2 = 100;
		
		int[] class1 = new int[22];
		int[] class2 = new int[22];
		int[] class3 = new int[22];
		int[] class4 = new int[22];
		
		// 맨 뒤의 []는 배열을 뜻하고 그 앞에 있는 모든 것은 배열의 내용물
		// int[]을 변수들로 관리하는 배열이 된다는 뜻
		// [4]는 천안의 크기, 즉 "천안"으로 관리되는 변수의 개수
		int[][] 천안 = new int[4][22];
		
		System.out.println(천안);		// [[I@67205a84
		System.out.println(천안[0]);	// [I@7d0587f1
		System.out.println(천안[0][0]);	// 0
		
		int[] 클래스1 = 천안[0];
//		int 학생1 = 클래스1[0];
		int 학생1 = 천안[0][0];
		
		
		int [][] test = new int [3][2];
		int [][] test2 = { {5, 6}, {12, 15}, {93, 87}};
		
		
		
		int[][] 수원 = new int[4][22];
		int[][] 서울 = new int[4][22];
		
		int[][][] 휴먼 = new int[3][4][22];
		System.out.println(22 * 4 * 3);
		System.out.println(휴먼);	// [[[I@16f65612

		System.out.println("휴먼.length :"+휴먼.length);
		System.out.println("휴먼[0].length :"+휴먼[0].length);
		System.out.println("휴먼[0][0].length :"+휴먼[0][0].length);
		
		
		int[][] 달력 = new int [12][31];
		for (int i = 0; i < 달력.length; i++) {
			
			for(int j = 0; j < 달력[i].length; j++) {
				
				System.out.println("i : "+i+", j : "+j+", 달력[i][j] :"+달력[i][j]);
			}
		}
		
		
		ArrayList list = new ArrayList();
		list.add(1);
		list.add("문자");
		list.add(true);
		
		list.get(0);
		System.out.println(list.get(0));
		System.out.println(list.get(1));
		System.out.println(list.get(2));
		
		// 배열의 length
		System.out.println(list.size());
		System.out.println(list);
		
		System.out.println("----------------");
		String[] study = {
				 "박규태", 
				 "이제섭",
				 "김아영",
				 "박경민",
				 "정근승",
				 "현준수",
				 "남현우",
				 "김승환",
				 "조민정",
				 "이정은",
				};
		System.out.println("총 "+ study.length + "명");
		
//		// 배열에서 random으로 뽑기 
//		double rand = Math.random() * study.length;
//		// 0 ~ 9.9999
//		int index = (int)rand; // 0 ~ 9 
//		System.out.println("실험 : "+study[index]);
		
		/*
		 * 랜덤으로 뽑는 것을 100번해서 가장 많이 나온 사람을 선택 
		 * 
		 */
		int[] vote = new int[study.length];
		for (int i = 0; i < 1000; i++) {
			// 배열에서 random으로 뽑기 
			double rand = Math.random() * study.length;
			// 0 ~ 0.9999 <- double
			int index = (int)rand; // 0 ~ 9 <- int
			
			vote[index] += 1; 
		}
		
		for (int i = 0; i < vote.length; i++) {
			System.out.println(" index : "+ i +", 득표수: "+ vote[i]);	
		}
		for (int i = 0; i < study.length; i++) {
			System.out.println(" index : "+ i +", 이름: "+ study[i]);	
		}
		
		// 6개의 Lotto 번호를 저장하고 싶다
		int[] lotto = new int[6];
		for (int i = 0; i < lotto.length; i++) {
			
			lotto[i] = (int) (Math.random() * 45) + 1;
				
		}
		
		for (int i = 0; i < lotto.length; i++) {
			System.out.println(i +" 번호 : "+lotto[i]);
		}
	}

}
