## Concurrencia
La concurrencia es la capacidad del CPU para procesar más de un proceso al mismo tiempo.
Un procesador puede procesar al mismo tiempo el mismo número de procesos que el número de CORES que tiene, de esta forma, si un procesador tiene un CORE, entonces solo podrá ejecutar un proceso a la vez, por otro parte, si tenemos 8 CORES, entonces podremos ejecutar hasta 8 procesos al mismo tiempo.
En la concurrencia, los procesos en ejecución no tienen por qué estar relacionados, es decir, cualquiera puede iniciar y terminar en el momento que sea, y el resultado de uno no afecta al otro.

## Paralelismo
El paralelismo sigue la filosofía de “divide y vencerás”, ya que consiste en tomar un único problema, y mediante concurrencia llegar a una solución más rápido. El paralelismo lo que hace es tomar el problema inicial, dividir el problema en fracciones más pequeñas, y luego cada fracción es procesada de forma concurrente, aprovechando al máximo la capacidad del procesador para resolver el problema. La principal diferencia del paralelismo contra la concurrencia es que, en el paralelismo, todos los procesos concurrentes están íntimamente relacionados a resolver el mismo problema, de tal forma que el resultado de los demás procesos afecta al resultado final.
En el paralelismo debe de haber un paso final que se encargue de unir los resultados de todos los procesos para poder arrojar un resultado final.


---

# Hilos
Ofrecen paralelismo en la ejecución del código a nivel de un mismo proceso.
 * Procesos livianos: cada uno cuenta con sus propios registros y pila.
 * Forman parte de un mismo proceso: comparten código, recursos asignados, espacio de memoria


- Varios procesos pueden cooperar en una misma app.
- Hilos pretenden llevar paralelismo de tareas al interior de los procesos. --> Mejor tiempo de comunicación, respuesta, más poder de computo.

**Clase Thread**

```java
Long getId()
String getName()
int getPriority() // entre 1 y 10
State getState() // NEW, RUNNABLE, BLOCKED, WAITING, TIMED_WAITING, TERMINATED
```

```java
//Get Current Threads
Thread mainThread = Thread.current.Thread();

//Set thread name
mainThread.setName("Main Thread");

//Print thread name
System.out.println(mainThread.getName());
```


* Thread es una clase con metodo run abstracto que debemos sobreescribir para agregar comportamiento.

```java
Thread thread = new Thread() {
  @Override
  public void run(){
    // Code
  }
};
thread.start();
```

* Otra forma de agregar comportamiento: hacer que extienda de clase runnable

```java
Thread thread = new Thread(new Runnable() {
  @Override
  public void run(){
    // Code
  }
});
thread.start();
```


---

Ejemplo 1.2

```java
public class Tarea implements Runnable{
  @Override
  public void run(){
    System.out.println(Thread.currentThread().getName());
  }
}
```

```java
public class Main{
  public class void main(String[] args){
    Thread[] threads = new Thread[5];

    for (int i=0; i<threads.length; i++){
      threads[i] = new Thread(new Task(), "Thread " + i);
      threads[i].start();
    }

    for (Thread thread: threads){
      try{
        thread.join();
      } catch (InterruptedException e){
        e.printStackTrance();
      }
    }
    System.out.println(Thread.currentThread().getName());
  }
}
```

----

# Thread Safety:
- Es seguro o no correr una app utilizando threads
- Inseguro: salidas inesperadas, fallos, estados internos incorrectos
- Seguras: Aseguran que al ser corrida por multiples threads, las condiciones (estados internos y atributos) mantengan sus valores.

Ejemplos Clases seguras:
- No tiene estados
```java
public class Stateless {
  private final String constant = "constant";

  public void printConstant(){
    System.out.println(constant);
  }

  public String getConstant(){
    return constant;
  }
}
```

- Si tiene estados: las clases que los ultizan sean seguras
```java
public class NotSoStateless {
  private final Stateful stateful = new Stateful();

  public void method(){
    stateful.doSomething();
  }
}
```

- Clases inmutables: tiene estado pero no pueden modificarse
```java
public class Tournament {
  private final List<String> winners = new ArrayList<> ();

  public Tournament(List<String> winners){
    this.winners.addAll(winners);
  }

  public String getWinners(int place){
    return winners.get(place);
  }
}
```

- Confinan atributos a un solo thread
```java
public class Task implements Runnable {
  private int attribute = 0;

  @Override
  public void run(){
    int a = 20;
    attribute += a/2;
    a = attribute * 3;
  }
}
```

---

# Visibilidad

Cada procesador tiene multiples caches asociados. Cada cache actua como memoria intermedia, reduciendo tiempos de acceso a la memoria RAM.

Cuando dos o más threas ejecutan en CPUs diferentes, y alguno actualiza el estado de algun objeto visible para el resto; es posible que el resto no puedan ver el cambio que se hizo sobre ese objeto al no tener acceso a esa cache --> Errores de estados.


* Java cuenta con un mecanismo que obliga a los threas que lean y escriban las variables directamente de la memoria principal, evitando el paso intermedio por la cache; y hace que los objetos sean visibles por todos los threads.

- Usado mucho en condiciones de parada
- Se usa Keyword **volatile**: para escribir variables directamtene en memoria

---
# Condicion de carrera

Cuando la salida o estado de un proceso es dependiente de una secuencia de eventos que se ejecutan en orden arbitrario y van a trabajar sobre un mismo recurso compartido, se puede producir un bug cuando dichos eventos no "llegan" (se ejecutan) en el orden que el programador esperaba.

En determinados escenarios, la gran velocidad de ejecución de un hilo no es suficiente para garantizar que operaciones concurrentes den resultados esperados. Se pueden dar condiciones de carrera a nivel de proceso o incluso a nivel de sistema cuando éste está distribuido.

* Inicializacion perezosa: Cuando se inicializa por getInstance
* En vez de hacer new, llama getInstance

Monitor: **Synchronized**
Hace que la operación sea atómica, haciendo que un solo thread pueda acceder a ella por vez. Es una zona de exclusión mutua.


---

# Monitor

**Secciones criticas**: Bloques de codigo que pueden dar lugar a condiciones de carrera cuando son ejecutados concurrentemente.

**Exclusión Mutua**: Secciones criticas solo pueden ser ejecutadas por un solo thread a la vez.

Bloques de sincronización = Monitores:
Partes
1 - Referencia a un objeto: actuará como cerradura o lock
2 - Bloque de código protegido
