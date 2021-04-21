package authentication;

import java.util.Scanner;

public abstract aspect AbstractAuthAspect {

	// private Subject _authenticatedSubject = null;
	private LoginObject _authenticatedSubject = null;

	public abstract pointcut authOperations();

	before() : authOperations() {
		if (_authenticatedSubject != null) {
			return;
		}

		try {
			authenticate();
		} catch (LoginException ex) {
			throw new AuthenticationException(ex);
		}
	}

	private void authenticate() throws LoginException {
		System.out.println("Type in your username: ");
		Scanner sc = new Scanner(System.in);
		String username = sc.nextLine();
		System.out.println("Type in your password: ");
		String password = sc.nextLine();

		LoginObject loginObject = new LoginObject(username, password);

		_authenticatedSubject = loginObject.login();

		// LoginContext lc = new LoginContext("Sample", new TextCallbackHandler());
		// lc.login();
		// _authenticatedSubject = lc.getSubject();
	}
}
