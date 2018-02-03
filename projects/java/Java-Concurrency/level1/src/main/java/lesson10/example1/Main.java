package lesson10.example1;

/**
 * Example of thread interruption using ThreadGroup.
 */
public class Main {

	public static void main(String[] args) {

		//Grupo de threads para manejarlos de forma mas transparente y eficiente
		ThreadGroup group = new ThreadGroup("Task Group");

		for (int i=0; i<5; i++) {
			Thread thread = new Thread(group, new Task(), "Thread " + i);
			thread.start();
		}
		// Cuando los threads estan creados, interrumpo todo el grupo:
		group.interrupt();

		System.out.println("Finished " + Thread.currentThread().getName());
	}
}
