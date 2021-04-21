package observer;

public class CelsiusThermometer extends Thermometer {
	public void drawTemperature() {
		System.out.println("Temperature in Celsius:" + getTempSource().getDegrees());
	}

}
