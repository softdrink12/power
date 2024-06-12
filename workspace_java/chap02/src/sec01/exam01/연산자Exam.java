package sec01.exam01;

public class 연산자Exam {

	public static void main(String[] args) {
		
		int a = 10;
//		a = 11;
//		a = 10 + 1;
		int b = a + 1;
		
		// a = 10 + 1;
		a = a + 1;	// a = 1 + a
		a += 1;		// a = a + 1 과 같다
		a++;		// a += 1 와 같다
		++a;
		
		a = 10;
		a++;
		System.out.println("a :"+a);
		
		a = a - 2;
		a -= 2;
		a -= 1;
		a--;		// a = a - 1 과 같다
		--a;
		
		a = 10;
		a--;
		System.out.println("a: "+a);
		// 현재 a가 9인 상태 
		System.out.println("++a : "+ ++a);	// 출력 : 10
		// 현재 a가 10인 상태 
		System.out.println("a++: "+ a++);	// 출력 : 10
		System.out.println("a: "+a);		// 출력 : 11
		// 현재 a가 11인 상태 
		
		System.out.println(a++ + ++a);
		
//		11 + (a가 12가 된 상태)에다가 1 더하기 해서 예측: 11 + 13 
		// 위의 내용을 풀어스기 
		a = 11;
		int result = a;	// a
		a = a + 1;		// a 다음에 오는 ++
		a = a + 1;		// 두 번째 a 앞에 오는 ++
		result = result + a;
		System.out.println(result);
		
		boolean c = true;
		System.out.println("c: "+ c);
		c = !c;
		System.out.println("c: "+ c);
		
		double d = 5.0;
		System.out.println(d / 3);
//		System.out.println(3 / 0);	// double 일때는 infinity, int  일때는 /  by zero
		
		int f = 15;
		int p = 5;
		System.out.println("몫 : "+ (f / p));
		System.out.println("나머지 : "+ (f % p));
		
		// 현재 가진 돈 10,000원
		// 값이 4500원인 커피를 몇 잔을 살 수 있나요?
		int money = 10000;
		int coffee = 4500;
		int count = money / coffee;
		System.out.println(count + "잔");
		int change = money % coffee;
		System.out.println("잔 돈 : " + change);
		
		// 올리브영에서 전품목 15% 행사 진행중
		// 1. 꿀홍차 5000원을 샀을 때 얼마를 내야 하나요? 
		// 2. 꿀홍차 5000원과 립스틱 10000원을 샀다. 얼마를 내야 하나요? 
		
		double percent = 0.15;
		int tea = 5000;
		double discount = tea * percent;
		System.out.println("할인받을 금액: "+ discount);
		double pay = tea - discount;
		System.out.println("내야 하는 돈: "+ pay);
		
		// 7324원이 있다
		// 5000원, 1000원, 500원, 100원, 50원, 10원, 1원
		// 각각 최대 몇 개까지로 표현할 수 있나?
		
		int seven = 7324;
		int five = 5000;
		int ten = 1000;
		int f500 = 500;
		int t100 = 100;
		int f50 = 50;
		int t10 = 10;
		int t1 = 1;
		
		
		int to1 = seven / five;
		int co1 = seven % five;
		System.out.println("5000 :"+to1);
		int to2 = co1 / ten;
		int co2 = co1 % ten;
		System.out.println("1000 : "+ to2);
		int to3 = co2 / f500;
		int co3 = co2 % f500;
		System.out.println("500 : "+ to3);
		int to4 = co3 / t100;
		int co4 = co3 % t100;
		System.out.println("100 : "+ to4);
		int to5 = co4 / f50;
		int co5 = co4 % f50;
		System.out.println("50 : "+ to5);
		int to6 = co5 / t10;
		int co6 = co5 % t10;
		System.out.println("10 : " + to6);
		int to7 = co6 / t1;
		int co7 = co6 % t1;
		System.out.println("1 : "+ to7);
		
		System.out.println("---------------------------");
		
		
		//숙제 
		String left = "수박";
		String right = "멜론";
		// 단, left = "멜론" 금지
		System.out.println(left);	// 결과 : 멜론
		System.out.println(right);	// 결과 : 수박
		 
		
		System.out.println(3 > 5);
		boolean bool = 3 > 5;
		System.out.println(bool);
		
		System.out.println(0.1 == 0.1f);	//결과 false
		// 같은 타입으로 변경해서 비교하자 
		System.out.println((float)0.1 == 0.1f);	
		
		
		System.out.println( "3 == 3: "+ (3 == 3));
		
		String strl = "김승환";
		String str2 = "김승환";
		System.out.println(strl == str2);
		// 글씨 비교는 == 사용 금지 
		// String 변수나 ""에 .equals( ) 붙여서 사용 괄호 안에 글씨와 비교 
		
//		System.out.println(   .equals(str2)     );
		
		System.out.println(10 | 3);
		
		int i1 = 7;
		int i2 = 15;
		int i3 = 17;
		
		
		System.out.println("i3이 가장 큰 값인가?" 
		+(i3 >= i1 && i3 >=i2));
	
		boolean i4 = i3 > i2;
		System.out.println(i4 ?"i3이 크다" :"i3이 작거나 같다" );
		
		// 5번 문제
		int var1 = 5;
		int var2 = 2;
		double var3 = var1 / var2;	
		int var4 = (int) (var3*var2);
		System.out.println(var4);
		
		
		
		
		// 6번 문제 
		int i5 = 356;
		System.out.println(i5 / 100 * 100 );
		System.out.println(i5 - i5 % 100 );
		
		
		
		
	}

}
