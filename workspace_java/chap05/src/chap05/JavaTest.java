package chap05; 

import java.util.Scanner;

public class JavaTest {

	public static void main(String[] args) {

		
		/*【문항1】 커피 생산을 관리하기 위한 서비스를 제작하려고 합니다. 시장의 요구에 따라 필요한 만큼의 생산을 계획하는 시스템을 다음의 규칙을 적용하여 구현하세요. 
		1. 생산하려는 커피의 종류를 선택할 수 있게 해주세요
		2. 커피의 종류에 따라 상세 종류를 선택할 수 있게 해주세요. 
		3. 필요한 경우 더 상세한 내용을 선택할 수 있게 해주세요. 필요없을 경우 생략 가능합니다. 
		4. 각각 선택할 메뉴 표시에 가격이 정해져 있다면 가격도 같이 표시해 주세요
		5. 선택한 내용을 확인할 수 있게 출력해 주세요. 
		6. 언제나 처음 단계로 돌아갈 수 있는 기능이 필요합니다. 
		7. 언제나 종료할 수 있는 기능이 필요합니다.
		*/
		
		Scanner scan = new Scanner(System.in);
		
		int menu = -1;
		while(menu != 5) {	
		System.out.println("메뉴를 골라주세요");
		System.out.println("1.커피, 2.에이드, 3.스무디, 4.디카페인라떼, 5.종료");
		menu = scan.nextInt();
		int sum = 0;
		
			if (menu == 1) {
				int 아메리카노 = 2000;
				int 콜드브루 = 2500;
				int 믹스커피 = 2000;
				int 카라멜마키아또 = 4000;
				int 사이즈업 = 1000;
				int 샷추가 = 500;
				int 시럽추가 = 500;
				int c = 0;
				sum = 0;
				while(menu != 0) {
					System.out.println("1.아메리카노, 2.콜드브루, 3.믹스커피, 4.카라멜마키아또, 5.커피로 돌아가기, 6.결제");
					menu = scan.nextInt();
					if (menu == 1) {
						System.out.println("아메리카노 (2000)"); c = c + 아메리카노;
					} else if (menu == 2) {
						System.out.println("콜드브루 (2500)"); c = c + 콜드브루;
					} else if (menu == 3) {
						System.out.println("믹스커피 (2000)"); c = c + 믹스커피;
					} else if (menu == 4) {
						System.out.println("카라멜마키아또 (4000)"); c = c + 카라멜마키아또;
					} else if (menu == 5) {
						sum = 0;
						continue;
					} else if (menu == 6) {
						break;
					}
					System.out.println("1.사이즈업, 2.샷추가, 3.시럽추가, 4.추가없음, 5.커피로 돌아가기, 6.결제");
					menu = scan.nextInt();
					if (menu == 1) {
						sum = c + 사이즈업;
						System.out.println("사이즈업은 (1000)");
						System.out.println("현재금액 :"+sum);
					} else if (menu == 2) {
						sum = c + 샷추가;
						System.out.println("샷추가는 (500)");
						System.out.println("현재금액 :"+sum);
					} else if (menu == 3) {
						sum = c + 시럽추가;
						System.out.println("시럽추가는 (500)");
						System.out.println("현재금액 :"+sum);
					} else if (menu == 4) {
						System.out.println("현재 금액 : "+c);
					} else if (menu == 5) {
						sum = 0;
						continue;
					} else if (menu == 6) {
						break;
					}
				}
				System.out.println("결제금액 :" + sum);
			}
			
			if (menu == 2) {
				int 레몬에이드 = 4000;
				int 자몽에이드 = 5000;
				int 청포도에이드 = 4000;
				int 딸기에이드 = 6000;
				int 사이즈업 = 1000;
				int c = 0;
				sum = 0;
				while(menu != 0) {
					System.out.println("1.레몬에이드, 2.자몽에이드, 3.청포도에이드, 4.딸기에이드, 5.에이드로 돌아가기, 6.결제");
					menu = scan.nextInt();
					if (menu == 1) {
						System.out.println("레몬에이드 (4000)"); c = c + 레몬에이드;
					} else if (menu == 2) {
						System.out.println("자몽에이드 (5000)"); c = c + 자몽에이드;
					} else if (menu == 3) {
						System.out.println("청포도에이드 (4000)"); c = c + 청포도에이드;
					} else if (menu == 4) {
						System.out.println("딸기에이드 (6000)"); c = c + 딸기에이드;
					} else if (menu == 5) {
						continue;
					} else if (menu == 6) {
						break;
					}
					System.out.println("1.사이즈업, 2.추가없음 3.에이드로 돌아가기, 4.결제");
					menu = scan.nextInt();
					if (menu == 1) {
						sum = c + 사이즈업;
						System.out.println("사이즈업은 (1000)");
						System.out.println("현재금액 :"+sum);
					} else if (menu == 2) {
						System.out.println("현재 금액 : "+c);
					} else if (menu == 3) {
						sum = 0;
						continue;
					} else if (menu == 4) {
						break;
					}
				}
				System.out.println("결제금액 :" + sum);
			}
			
			if (menu == 3) {
				int 딸기스무디 = 5000;
				int 망고스무디 = 5000;
				int 바나나스무디 = 4000;
				int 블루베리스무디 = 6000;
				int 사이즈업 = 1000;
				int c = 0;
				sum = 0;
				while(menu != 0) {
					System.out.println("1.딸기스무디, 2.망고스무디, 3.바나나스무디, 4.블루베리스무디, 5.스무디로 돌아가기, 6.결제");
					menu = scan.nextInt();
					if (menu == 1) {
						System.out.println("딸기스무디 (5000)"); c = c + 딸기스무디;
					} else if (menu == 2) {
						System.out.println("망고스무디 (5000)"); c = c + 망고스무디;
					} else if (menu == 3) {
						System.out.println("바나나스무디 (4000)"); c = c + 바나나스무디;
					} else if (menu == 4) {
						System.out.println("블루베리스무디 (6000)"); c = c + 블루베리스무디;
					} else if (menu == 5) {
						continue;
					} else if (menu == 6) {
						break;
					}
					System.out.println("1.사이즈업, 2.추가없음 3.스무디로 돌아가기, 4.결제");
					menu = scan.nextInt();
					if (menu == 1) {
						sum = c + 사이즈업;
						System.out.println("사이즈업은 (1000)");
						System.out.println("현재금액 :"+sum);
					} else if (menu == 2) {
						System.out.println("현재 금액 : "+c);
					} else if (menu == 3) {
						sum = 0;
						continue;
					} else if (menu ==4) {
						break;
					}
				}
				System.out.println("결제금액 :" + sum);
			}
			
			if (menu == 4) {
				int 바나나라떼 = 4500;
				int 딸기라떼 = 4500;
				int 초코라떼 = 4500;
				int 마카롱라떼 = 6000;
				int 사이즈업 = 1000;
				int c = 0;
				sum = 0;
				while(menu != 0) {
					System.out.println("1.바나나라떼, 2.딸기라떼, 3.초코라떼, 4.마카롱라떼 5.라떼로 돌아가기, 6.결제");
					menu = scan.nextInt();
					if (menu == 1) {
						System.out.println("바나나라떼 (4500)"); c = c + 바나나라떼;
					} else if (menu == 2) {
						System.out.println("딸기라떼 (4500)"); c = c + 딸기라떼;
					} else if (menu == 3) {
						System.out.println("초코라떼 (4500)"); c = c + 초코라떼;
					} else if (menu == 4) {
						System.out.println("마카롱라떼 (6000)"); c = c + 마카롱라떼;
					} else if (menu == 5) {
						continue;
					} else if (menu == 6) {
						break;
					}
					System.out.println("1.사이즈업, 2.추가없음, 3.라떼로 돌아가기, 4.결제");
					menu = scan.nextInt();
					if (menu == 1) {
						sum = c + 사이즈업;
						System.out.println("사이즈업은 (1000)");
						System.out.println("현재금액 :"+sum);
					} else if (menu == 2) {
						System.out.println("현재 금액 : "+c);
					} else if (menu == 3) {
						sum = 0;
						continue;
					} else if (menu == 4) {
						break;
					}
				}
				System.out.println("결제금액 :" + sum);
			}
			
			if (menu == 5) {
				System.out.println("이용해주셔서 감사합니다");
				break;
			}
			
		
		
		}
	}

}
