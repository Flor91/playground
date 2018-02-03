package lesson7.example1;

import java.util.Queue;
import java.util.concurrent.Semaphore;

public class Consumer implements Runnable {

	private Queue<String> produced; // Referencia a la cola del Producer
	private Semaphore mutex, producedSemaphore; // Mismos semaforos que el productor

	public Consumer(Queue<String> produced, Semaphore mutex, Semaphore producedSemaphore) {
		this.produced = produced;
		this.mutex = mutex;
		this.producedSemaphore = producedSemaphore;
	}

	@Override
	public void run() {
		try { // Consume constantemente de la cola de elementos producidos, siempre que el semaforo lo permita
			while(true) {
				// Solo podemos acceder a la siguiente seccion despues que un elemento es producido y agregado en la cola
				producedSemaphore.acquire();
				// Protegemos seccion critica del codigo, donde consumimos de la cola el primer elemento disponible
				mutex.acquire();
				String product = produced.poll();
				System.out.println(Thread.currentThread().getName() + " got: " + product);
				mutex.release();
			}
		} catch (InterruptedException e) {
			System.out.println(Thread.currentThread().getName() + " was interrupted.");
		}
	}
}
