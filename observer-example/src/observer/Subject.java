package observer;

import java.util.Vector;

public interface Subject {

	void add(Observer obs);

	void remove(Observer obs);

	Vector getObservers();

	Object getData();

}
