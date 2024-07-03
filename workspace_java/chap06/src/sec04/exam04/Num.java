package sec04.exam04;

import java.util.Scanner;

public class Num {

	double rand = (int) (Math.random() * 10);
	
	int a1;
	int a2 = 0;
	Scanner sc = new Scanner(System.in);
	
	void up() {
		while(true) {
		int b = sc.nextInt();
		if ( b > rand) {
			a2++;
			System.out.println("down" + "시도횟수:" + a2);
		} else if (b < rand) {
			a2++;
			System.out.println("up" + "시도횟수:" + a2);
		} else if (b == rand) {
			System.out.println("정답: " + "시도횟수:" + a2);
			break;
		} 
		
	}
	}
}
