package beans;

public class User {
	private String email="";
	private String password="";

	private String massage = "Error validation";

	
	public User() {

	}

	public User(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String user) {
		this.email = user;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMassage() {
		return massage;
	}

	public void setMassage(String massage) {
		this.massage = massage;
	}

	public boolean validate() {

		if (email == null) {
			massage = "No email address set";
			return false;
		}
		if (password == null) {
			massage = "No password address set";
			return false;
		}
		if (!email.matches("\\w+@\\w+\\.\\w+")) {
			massage = "Inwalid email address";
			return false;
		}

		if (password.length() < 8) {
			massage = "Password must be 8 characters.";
			return false;
		} else if (password.matches("\\w*\\s+\\w*")) {
			massage = "Password cannot contains space";
			return false;
		}
		return true;
	}

}
