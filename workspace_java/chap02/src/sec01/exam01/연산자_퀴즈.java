package sec01.exam01;

public class 연산자_퀴즈 {

	public static void main(String[] args) {

		// 7234원이 있다
		// 5000원, 1000원, 500원, 100원, 50원, 10원, 1원
		// 각각 최대 몇 개까지로 표현할 수 있나?
		
		// 5천원 : 1
		// 1천원 : 2
		// 500원 : 0
		// 100원 : 2
		// 50원 : 0
		// 10원 : 3
		// 1원 : 4
		
		// 1. 예측과 결과가 같은지 확인 - 개발
		// 2. 숫자를 바꿔도 잘 나오는지 두 세번 해보기 - 테스트 
		 
		int money = 7234;
		
		int m5000 = 7234 / 5000;	// int끼리 나누기 라서 결과가 int 
									// 예상 값 : 1
		
//		System.out.println("5천원 : "+ m5000);	// 결과 : 1
		
//		int m1000 = money / 1000;	// 예상 값 : 2
		// 2가 나와야 하는데 7이 나옴
		// 왜? 대상금액이 7234이기 때문에
		// 그러면? 아까 5천원을 줬으니까 7234 - 5000을 대상금액으로 지정 해야함
		int money2 = money - (5000 * m5000);
		
		int m1000 = (money - 5000) / 1000;	// 결과 : 2
		System.out.println("1천원 : "+ m1000);	
		
		// 500원
		// 원래 금액에서 5천원 빼고, 1천원 빼고
		int m500 = (money - (5000 * m5000) - ( 1000 * m1000)) / 500;
		System.out.println("500원 : "+ m500);
		
		
	}

}
