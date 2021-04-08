package banking;

import authentication.AbstractAuthAspect;

public aspect BankingAuthAspect extends AbstractAuthAspect {
	/*public pointcut authOperations() 
 		: execution(public * banking.Account.*(..))
 		|| execution(public * banking.InterAccountTransferSystem.*(..));
*/
	
	public pointcut authOperations() 
	 : execution(void banking.Test.main(String[]));

}