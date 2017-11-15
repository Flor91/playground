package lesson3.example1;

//Factory que produzca objetos independientes para cada thread
// Para -> permitir el confinamiento de los objetos dentro de cada thread.
public class Factory {
	//Implementado en Java en la clase ThreadLocal
	private final ThreadLocal<Object> threadLocal;

	public Factory() {
		//Pasamos el tipo de objeto que queremos producir
		threadLocal = ThreadLocal.withInitial(Object::new);
		// Nos va a proveer de diferentes objetos a diferentes threads
	}

	public Object getObject() {
		return threadLocal.get();
		// Va a devolver un objeto distinto para cada thread
		// Si un mismo thread vuelve a ejecutar getObject -> Obtiene el mismo objeto
	}
}
