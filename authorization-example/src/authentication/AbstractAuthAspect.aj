package authentication;

import java.io.File;

import javax.security.auth.Subject;
import javax.security.auth.login.*;
import com.sun.security.auth.callback.TextCallbackHandler;

public abstract aspect AbstractAuthAspect {
	
	private Subject _authenticatedSubject = null;
	
	public abstract pointcut authOperations();
	
	before() : authOperations() { 
		 if(_authenticatedSubject != null) { 
			 System.out.println("return statement");
			 return; 
		 } 
		 
		 try { 
			 System.out.println("try authenticate");
			 authenticate(); 
		 } catch (LoginException ex) { 
			 throw new AuthenticationException(ex); 
		 } 
	}
	
	private void authenticate() throws LoginException { 
		System.out.println("authenticate");
		 LoginContext lc = new LoginContext("Sample", new TextCallbackHandler()); 
		 lc.login();
		 _authenticatedSubject = lc.getSubject();
	}
}
