import java.io.*;
import java.util.*;
public class stringreverse{
	public static void main(String[] args){
		System.out.print("string: ");
		Scanner scan = new Scanner(System.in);
		String str = scan.nextLine();
		String rstr = "";
		for( int i = str.length() - 1; i >= 0; i--){
			rstr += str.charAt(i);
		}
		System.out.println(rstr);
	}
}