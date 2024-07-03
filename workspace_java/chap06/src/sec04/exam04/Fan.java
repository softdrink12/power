package sec04.exam04;

public class Fan {

	boolean on = false;
	
	void poweron() {
		System.out.println("선풍기 on!!!!!!!!!");
		on = true;
	}
	
	void poweroff() {
		System.out.println("선풍기 off!!!!!!!!!");
		on = false;
	}
	
	void small () {
		if( on ) {
			System.out.println("위이이잉");
		} else {
			System.out.println("전원이 꺼져있습니다");
		}
	}
	
	void big () {
		if( on ) {
			System.out.println("위이이잉!!!!!!!!!!");
		} else {
			System.out.println("전원이 꺼져있습니다");
		}
	}
	
}
