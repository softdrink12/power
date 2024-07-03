package sec04.exam03;

public class Car {
	
	int gas = 10;
	
	// 필드 == 멤버 변수
	// 클래스 생성(new하는 순간에)과 함께 생성되고
	// 클래스가 소멸할 때까지 생존
	// 메모리를 차지함 
	// 계속 저장된다
	// 메소드에서 변경하는 경우 다음번 실행까지 저장해둠
	// 그래서 계속 초기화 해야하는 상황이 있을 수 있다
	// 클래스 안의 모든 곳에서 사용이 가능하다 
	
	// 방법 1
	boolean isLeftGas() {
		if(gas == 0) {
			System.out.println("gas가 없습니다.");
			return false;
		}
		System.out.println("gas가 있습니다.");
		return true;
	}
	
	// 방법 2
	boolean isLeftGas2() {
		boolean result = false;
		
		if(gas == 0) {
			System.out.println("gas가 없습니다.");
			result = false;
		} else {
			System.out.println("gas가 있습니다.");
			result = true;
		}
		return result;
	}
	
	// 방법 3
	boolean isLeftGas3() {
		return gas != 0;
	}
	
	void run() {
		while(true) {
			if(gas > 0) {
				System.out.println("달립니다.(gas잔량:" + gas +")");
				gas -= 1;
			} else {
				System.out.println("멈춥니다.(gas잔량:" + gas +")");
				// return타입이 void이므로
				// 아무 값도 돌려주면 안된다 
				// return을 만나면 그 즉시 메소드 종료
				return;	// break 대신 사용 
			}
		}
	}
	
	String name;
	
	// name의 값을 변경
	// name의 길이가 0인 경우 변경하지 않음
	// 전달인자 : String
	// return : 없음
	void setName(String nick) {
		System.out.println(nick.length());
		if(nick.length() != 0) {
			name = nick;			
		} else {
			System.out.println("이름은 필수입니다");
//			name = "";
		}
	}
	
}
