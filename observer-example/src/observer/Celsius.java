package observer;

public class Celsius {

	private double degrees;

	public double getDegrees() {
		return degrees;
	}

	public void setDegrees(double aDegrees) {
		degrees = aDegrees;
	}

	Celsius(double aDegrees) {
		setDegrees(aDegrees);
	}
}
