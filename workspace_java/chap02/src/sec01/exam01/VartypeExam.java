package sec01.exam01;

public class VartypeExam {

	public static void main(String[] args) {

		byte b = 127;
//		b = 128;
		
		char c = 97;
		System.out.println(c);
		c = 97 + 5;
		c = 'c' + 5; // 'h'
		System.out.println(c);
		char c1 = 'a';  // 문자 하나만 저장하는 용도, 홀따옴표 ''로 감싼다.
		
		long balnce = 3000000000L; // 명확하게 long으로 지정하려면 
                                   // 숫자 뒤에 L 또는 l을 붙여준다.
		
		String s = "문자열";
		System.out.println(s);
		
		//  \n <- enter 효과 
		//  \t <- tab 효과 
		// 역슬래시 출력 -> \\
		
		float f = 0.1234567890123456789F;
		// float은 소수점 7번째 자리까지 정확함
		System.out.println(f);
		
		double d = 0.1234567890123456789;
		// double은 소수점 16번째 자리까지 정확함
		System.out.println(d);
		
		boolean b1 = true;
		boolean b2 = false;
		
		boolean car = true;
		
		int smart = 4;
		
		String name = "김승환";
		
		double area = 3.3*5;
		

		
			
		
		
	}		

}
