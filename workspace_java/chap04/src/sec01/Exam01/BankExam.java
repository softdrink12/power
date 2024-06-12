package sec01.Exam01;

import java.util.Scanner;

public class BankExam {

	public static void main(String[] args) {

		// 은행 계좌의 잔고 관리 시스템
		// 1. 입금, 2.출금, 3.조회, 4.종료
		// 입금 : 잔액에 더하기
		//			* 0, 음수는 실행되지 않게 - 금액을 확인하세요 
		// 출금 : 잔액에서 빼기
		//			* 잔액보다 큰 금액은 실행되지 않게 - 잔고가 부족합니다
		// 조회 : 잔액 출력 
		// 종료 : 반복 종료 
		
		
		Scanner scan = new Scanner(System.in);
		
		int ic = -1;
		int count = 0;
		int 입금 = 0;
		int 출금 = 0;
		while (ic != 4) {
			System.out.println("-------------------------");
			System.out.println("1.입금, 2.출금, 3.조회, 4.종료");
			ic = scan.nextInt();
			
			if (ic >= 0 && ic <=3) {
				if (ic == 1) {
					System.out.println("-------------------------");
					System.out.println("입금할 금액을 입력해주세요");
					입금 = scan.nextInt();
					System.out.println("잔액: "+입금);
				} else if(ic == 2) {
					System.out.println("-------------------------");
					System.out.println("출금할 금액을 입력해주세요");
					출금 = scan.nextInt();
				} else if(ic == 3) {
					int 잔액 = 입금 - 출금;
					System.out.println("-------------------------");
					System.out.println("조회"+ (잔액));
					
				} else if(ic == 4) {
					System.out.println("-------------------------");
					System.out.println("이용해주셔서 감사합니다");
				}
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
