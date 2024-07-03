package sec04.exam01;

public class CalExam {

	public static void main(String[] args) {
		powerOn();	// 이건 내꺼
		powerOn();	// 두 번 써도 되서 두 번 씀
		
		Calc calc = new Calc();
		calc.powerOff();	// 이건 Calc꺼 '
		System.out.println(calc);
		
		Calc calc2 = new Calc();
		System.out.println(calc2);
		
		Calc calc3 = new Calc();
		calc3.powerOn();
//		calc3.isOn = true;
		
		calc2.powerOn();
		
		int result = calc3.plus(3, 8);
		System.out.println("plus 결과 : " + result);
		
		double result2 = calc3.divide(13, 0);
		System.out.println("divide 결과 : " + result2);
		
		// 배열에 넣고 사용하는 방법
//		int[] a = {2, 7};	-방법 1
//		int[] a = new int[]{2, 7};	-방법 2
		int[] a = new int [2];	// -방법 3
		a[0] = 2;
		a[1] = 7;
		System.out.println( calc3.plus2(a) );
		
		System.out.printf("%d %s", 3, "abc");	// 백틱처럼 사용가능 
												// %d에 첫번째 인자가 들어가고
												// %s에 두번째 인자가 들어감
		
		int num = calc.plus3(1,2,3,4);
		System.out.println("plus3 결과 : " + num);
		
		num = calc.plus3(1,2,3,4,5,6,7,8,9);
		System.out.println("plus3 결과 : " + num);
	}
	
	static void powerOn() {
		System.out.println("전원을 켭니다.");
	}

}
