package sec02.exam01;

public class CarExam {

	public static void main(String[] args) {

		Car myCar = new Car();
		Car myCar2 = new Car();
		
		System.out.println(myCar.model);
		
		myCar.model = "흑블리";
		System.out.println(myCar.model);
		
		System.out.println(myCar2.model);
		
//		int a; 
//		System.out.println(a);
		
		myCar.speed = 500;
		
		System.out.println(myCar.speed + "km");
		
		// void : return 타입에서만 사용, 아무것도 주지 않겠다는 뜻, no return
		
		
		
	}

}
