package sec01.Exam01;

public class BreakExam {

	public static void main(String[] args) {

		
		System.out.println("게임을 시작하지");
		int count = 0;
		while (true) {
			count++;	// 무조건 세는 것 
			int num = (int)(Math.random() * 6) + 1;
			System.out.println(num);
			
			if (num == 6) {
				break;	// break: 가장 가까운 반복문을 종료 
			}
//			count++;	// break를 안만났을 때만 세는 것
		}
		System.out.println("게임 종료 : 총 "+ count); 
		
		
		for (int i = 1; i <= 10; i++) {
			System.out.println(i);
			
			if (i >= 7 ) {
				break;
			}
			System.out.println("한 턴 종료");
		}
		System.out.println("for문 종료");
		
		
		for (int i = 0; i < 5; i++) {
			System.out.println("i : "+ i);
			
			for (int j = 0; j < 3; j++) {				
				if(j >= 1) {
					break;	// j에 대한 for만 적용한다
				}
				
				System.out.println("j : "+ j);
			}
			System.out.println();
		}
		
		for(int i = 0; i < 10; i++) {
			if (i % 2 != 0) {
				continue;	// continue: 이후 실행문은 무시
			}
			System.out.println("짝 수 ?"+ i);
		}
		
		// continue: 다음 릴스로 넘어가기 
		// break: 유튜브 끄기 
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
