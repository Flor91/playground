package lesson7.example1;

import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.Semaphore;

/**
 * Example of Producer/Consumer model using Semaphores.
 */
public class Main {

	// Creamos los semaforos:
	private static Semaphore producedSemaphore = new Semaphore(0); // Restringe acceso a la cola
	// Param 0 porque la cola esta vacía
	private static Semaphore mutex = new Semaphore(1);
	// Param 1 porque es binario
	private static Queue<String> produced = new LinkedList<>(); // Cola

	public static void main(String[] args) {

		Thread producer = new Thread(new Producer(15, produced, mutex, producedSemaphore));
		Thread consumer1 = new Thread(new Consumer(produced, mutex, producedSemaphore));
		Thread consumer2 = new Thread(new Consumer(produced, mutex, producedSemaphore));

		producer.start();
		consumer1.start();
		consumer2.start();

		try {
			producer.join(); // Hilo principal termina cuando terminan de correr todos los threads
			while(!isProducedQueueEmpty()) {
				Thread.sleep(500);
			} // Cuando la cola productora se vacia interrumpimos los consumidores
			consumer1.interrupt();
			consumer2.interrupt();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}

	// Funcion auxiliar, que protege el codigo de consulta
	private static boolean isProducedQueueEmpty() throws InterruptedException {
		mutex.acquire();
		boolean isEmpty = produced.isEmpty();
		mutex.release();
		return isEmpty;
	}
}
