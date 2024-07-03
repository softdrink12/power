package sec04.exam03;

public class CarExam {

	public static void main(String[] args) {

		Car mycar = new Car();
		
		boolean gasState = mycar.isLeftGas();
		if(gasState) {
			System.out.println("출발합니다.");
			mycar.run();
		}
		
		if(mycar.isLeftGas()) {
			System.out.println("gas를 주입할 필요가 없습니다.");
		} else {
			System.out.println("gas를 주입하세요");
		}
		
		System.out.println(mycar.name);
//		mycar.name = "현준수";
		mycar.setName("몽식이");
		System.out.println(mycar.name);
		
		mycar.setName("");
		System.out.println(mycar.name);
	}
	

}
