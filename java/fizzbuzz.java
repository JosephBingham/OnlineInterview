public class fizzbuzz {
	public static void main(String[] args){
		for( int i = 0; i < 100; i++ ){
			String msg = "";
			if( i % 3 == 0 ){
				msg += "fizz";
			}
			if( i % 5 == 0 ){
				msg += "buzz";
			}
			if(msg.equals("")){
				msg = "" + i;
			}
			System.out.println(msg);
		}
	}
}