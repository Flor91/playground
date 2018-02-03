package lesson10.example1;

public class Task implements Runnable {

	@Override
	public void run() {
		// La idea es que esta tarea sea interrumpida por el hilo principal
		try {
			Thread.sleep(10000000); // wait 10000 seconds
		} catch (InterruptedException e) {
			// Mensaje cuando se interrumple
			System.out.println("Interrupted " + Thread.currentThread().getName());
		}
		// Mensaje cuando termina
		System.out.println("Finished " + Thread.currentThread().getName());
	}
}
