package oh;
import java.util.Scanner;

public class fruit {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner jo =new Scanner(System.in);
		String[] fruit = {"수박","딸기","한라봉"};
		int[] price = {100,200,300};
		String name;
		int das;
		int num;
 
		
		
		System.out.println("이름: ");
		name = jo.next();
		System.out.println("과일명: ");
		das= jo.nextInt();
		System.out.println("수량: ");
		num= jo.nextInt();
		
		
		System.out.println(name+" "+fruit[das]+" "+num+" "+price[das]*num);
	}

}
