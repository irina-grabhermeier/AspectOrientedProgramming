package observer;

public class FahrenheitThermometer extends Thermometer {
	public void drawTemperature() {
		System.out.println("Temperature in Fahrenheit:" + (1.8 * getTempSource().getDegrees()) + 32);
	}

}
