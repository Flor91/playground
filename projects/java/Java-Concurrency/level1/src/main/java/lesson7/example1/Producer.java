package lesson7.example1;

import java.util.Queue;
import java.util.concurrent.Semaphore;

public class Producer implements Runnable {

	// cantidad de objetos a producir
	private int produce;
	// cola de objetos producidos
	private Queue<String> produced;
	// semaforos: para restringir la seccion critica; y otro para restringir el acceso a la cola
	private Semaphore mutex, producedSemaphore;

	public Producer(int produce, Queue<String> produced, Semaphore mutex, Semaphore producedSemaphore) {
		this.produce = produce;
		this.produced = produced;
		this.mutex = mutex;
		this.producedSemaphore = producedSemaphore;
	}

	@Override
	public void run() {
		try {
			for (int i=0; i<produce; i++) {
				// Adquirir semaforo de mutua exclusión a la sección crítica
				mutex.acquire();
				// Inserts the specified element into this queue if it is possible to do so immediately without violating capacity restrictions. When using a capacity-restricted queue, this method is generally preferable to add(E), which can fail to insert an element only by throwing an exception.
				produced.offer("Product " + (i+1));
				// Libera el semaforo de agregar un elemento
				mutex.release();
				// Libera el semaforo de la cola, permitiendo a otros threads consumir el elmento que acabamos de añadir a la cola
				producedSemaphore.release();
				Thread.sleep(500);
			}
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
}
