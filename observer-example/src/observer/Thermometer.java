package observer;

public abstract class Thermometer {
	private Celsius tempSource;

	public void setTempSource(Celsius atempSource) {
		tempSource = atempSource;
	}

	public Celsius getTempSource() {
		return tempSource;
	}

	public abstract void drawTemperature();
}
