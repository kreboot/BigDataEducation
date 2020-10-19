package kr.co.kihd.loop3;

import java.util.Scanner;

public class WhileTest2 {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		
		boolean run = true;         // flag 변수
		int speed = 0;

		while(run)
		{
			System.out.println();
			System.out.println("====================================");
			System.out.println("1. 증속   |2. 감속    |3. 중지  ");
			System.out.println("====================================");
			System.out.print("입력 : ");
			
			int choice = scan.nextInt();
			
			if(choice == 1)
			{
				speed++;
				System.out.println("현재 속도 : " + speed);
			}
			else if(choice == 2)
			{
				speed--;
				System.out.println("현재 속도 : " + speed);
			}
			else if(choice == 3)
			{
				//System.exit(0);
				run = false;
				//break;
			}
			else
			{
				System.out.println("잘못된 입력 값입니다.");
			}

		}
		System.out.println("프로그램을 종료합니다.");
		scan.close();
	}

}
