package banking;

public class AccountSimpleImpl implements Account {

	private int _accountNumber;
	private float _balance;

	public AccountSimpleImpl(int accountNumber) {
		_accountNumber = accountNumber;
	}

	@Override
	public int getAccountNumber() {
		return _accountNumber;
	}

	/**
	 * Deposit money.
	 */
	@Override
	public void credit(float amount) {
		_balance = _balance + amount;

	}

	/**
	 * When paying something.
	 */
	@Override
	public void debit(float amount) throws InsufficientBalanceException {
		if (_balance < amount) {
			throw new InsufficientBalanceException("Total balance not sufficient");
		} else {
			_balance = _balance - amount;
		}

	}

	@Override
	public float getBalance() {
		return _balance;
	}

}
