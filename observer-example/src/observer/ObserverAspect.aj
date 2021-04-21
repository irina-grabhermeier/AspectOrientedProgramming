package observer;

import java.util.Vector;

public aspect ObserverAspect extends AbstractObserverAspect {
	declare parents: Celsius implements Subject;

	public Object Celsius.getData() {
		return this;
	}

	declare parents: Thermometer implements Observer;

	public void Thermometer.update() {
		drawTemperature();
	}

	pointcut stateChanges(Subject s): target(s) &&
	 call(void Celsius.setDegrees(..));

}
