package test;

import beans.User;

public class Test {

	public static void main(String[] args) {
		//     System.out.println("Hello");
		User user = new User("ben@cos.pl","abcd12345");
		
		if(user.validate()) {
			System.out.println("Bean validate OK");
		}else {
			System.out.println(user.getMassage());
		}
	}

}
