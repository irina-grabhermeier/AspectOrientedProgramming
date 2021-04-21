package authentication;

public class LoginObject {

	private String username;
	private String password;
	private boolean isLoggedIn = false;

	public LoginObject(String username, String password) {
		this.username = username;
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public LoginObject login() throws LoginException {
		if (!(username.equals("testUser") && password.equals("testPassword"))) {
			throw new LoginException("Wrong username or password.");
		} else {
			isLoggedIn = true;
			return this;
		}
	}
}
