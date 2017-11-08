package lesson5.example1;

public class SafeLazyInit {

	private Object instance = null;

	//operacion atómica, para que se ejecute toda junta y no en pasos
	public synchronized Object getInstance() {
		if (instance == null) {
			instance = new Object();
		}
		return instance;
	}
}
