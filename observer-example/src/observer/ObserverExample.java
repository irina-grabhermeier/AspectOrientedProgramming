package observer;

public class ObserverExample {
	
	public static void main(String[] args) {
		Celsius tempSource = new Celsius(12);
		Thermometer celsiusThermometer = new CelsiusThermometer();
		Thermometer fahrenheitThermometer = new FahrenheitThermometer();
		
		celsiusThermometer.setTempSource(tempSource);
		fahrenheitThermometer.setTempSource(tempSource);
		
		tempSource.setDegrees(tempSource.getDegrees() + 5);
		
		tempSource.setDegrees(tempSource.getDegrees() + 5);
		
		tempSource.setDegrees(tempSource.getDegrees() + 5);
			
		
	}

}
