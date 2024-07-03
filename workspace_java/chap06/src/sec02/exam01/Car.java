package sec02.exam01;

public class Car {

	// 필드
	// 클래스 안에서 공통으로 사용할 변수 선언이 가능한 곳 
	// 변수 선언과 동시에 초기화는 가능함
	// 따로 변수의 값을 변경하는 것은 불가능함 
	
	String model = "기블리"; 
	// model 변수 선언과 동시에 초기화 
	
	// 초기화를 하지 않은 경우 
	// 숫자 => 0, boolean => false, String => null로 자동 초기화 됨
	int speed;
	// 변수 선언만 한 상태 
	
	// speed 변수의 값을 60으로 바꾸는 행동 (바꾸는 걸 실행)
	// 필드 영역에서는 실행(행동)하면 에러 
//	speed = 60;
	
	
	
}
