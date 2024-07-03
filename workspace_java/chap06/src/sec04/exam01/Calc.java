package sec04.exam01;

public class Calc {
	
	// 계산기 전원 상태 
	boolean isOn = false;
	
	void powerOff() {
		System.out.println("전원을 끕니다.");
	}
	
	void powerOn() {
		System.out.println("전원을 켭니다.");
		isOn = true;
	}
	
	/**
	 * 더하기 기능 
	 * 두 수를 받아서 더한 결과를 돌려줌 
	 * 
	 * 메소드명 : plus
	 * 전달인자 : int, int 
	 * return : int (두 수를 더한 결과) 
	 * 
	 * @author : email@naver.com
	 * @param : int x, int y
	 * @return : int
	 */
	// 전달인자, 지역변수는 
	// 선언되고 메소드 또는 {}가 끝나면 사라짐
	int plus(int x, int y) {
		System.out.println("x : " + x);
		System.out.println("y : " + y);
		
		return x + y;
	}
	
	
	/*
	 * 두 정수를 받아서 
	 * 나누기한 결과를
	 * 실수(소수점 나옴)로 돌려줌
	 * 
	 * 두번째 전달인자가 0인경우에 대한 방어코딩
	 * 두번째 전달인자가 0이라면 "0으로 나눌 수 없습니다" 출력
	 * return값은 0으로 고정
	 * 
	 * 전달인자 : int, int
	 * 리턴타입 : double
	 */
	
	double divide(int x, int y) {
		System.out.println("x : " + x);
		System.out.println("y : " + y);
//		if ( y == 0 ) {
//			System.out.println("0으로 나눌 수 없습니다");
//			return 0;
//		}
//		
//		while (y == 0) {
//			System.out.println("0으로 나눌 수 없습니다");
//			return 0;
//		}
		
		for (; y == 0;) {
			System.out.println("0으로 나눌 수 없습니다");
			return 0;
		}
		
		double result = (double)x / (double)y;
		return result;
	}
	
	/**
	 * 더하기2 
	 * 
	 * 전달인자 : int 배열
	 * return : int
	 */
	// 배열에 넣고 사용하는 방법
	int plus2(int[] num) {
		int x = num[0];
		int y = num[1];
		
		return x + y;
	}
	
	/**
	 * 전달인자의 갯수를 지정하지 않고
	 * 전달 받은 만큼 처리하는 방법
	 * "..." : 가변인자, 가변 길이 파라미터 
	 * 전달 받은 모든 전달인자를 배열로 처리함 
	 */
	int plus3(int ...num) {
		System.out.println("num : " + num);
		
		int sum = 0;
		for(int i = 0; i < num.length; i++) {
			sum = sum + num[i];
		}
		return sum;
	}
}
