package oh;
import java.util.Scanner;

public class fruit {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner jo =new Scanner(System.in);
		String[] fruit = {"����","����","�Ѷ��"};
		int[] price = {100,200,300};
		String name;
		int das;
		int num;
 
		
		
		System.out.println("�̸�: ");
		name = jo.next();
		System.out.println("���ϸ�: ");
		das= jo.nextInt();
		System.out.println("����: ");
		num= jo.nextInt();
		
		
		System.out.println(name+" "+fruit[das]+" "+num+" "+price[das]*num);
	}

}
