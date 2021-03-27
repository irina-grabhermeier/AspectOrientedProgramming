package roomsensor;

/**
 * Aspect for logging operations.
 */
public aspect LogginOperation {
	
	/**
	 * Point-cut definition. It matches executions of setPersonsDetected 
	 * operation.
	 * @param roomSensor
	 */
	pointcut personDetectedChanges(RoomSensor roomSensor):
		(execution(public void RoomSensor.setPersonsDetected(Integer)) &&
				this(roomSensor)
		);
	
	/**
	 * Operation that is carried out before the execution of the point cut.
	 * @param roomSensor
	 */
	before(RoomSensor roomSensor): personDetectedChanges(roomSensor) {
		// Print the value of the trade
		System.out.println("Persons Detected Old Value: "
				+ roomSensor.getPersonsDetected());
	}
	
	/**
	 * Operation that is carried out after the execution of the point cut.
	 * @param roomSensor
	 */
	after(RoomSensor roomSensor): personDetectedChanges(roomSensor) {
		// Print the value of the trade
		System.out.println("Persons Detected New Value "
				+ roomSensor.getPersonsDetected());
	}

}
