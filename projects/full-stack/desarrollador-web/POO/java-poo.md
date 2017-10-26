Un paradigma es una forma de afrontar la construccion de codigo softwar
Todos tienen sus ventajas e inconvenientes
Hay distintos paradigmas: POO, Estructurado, Funcional, Logico, etc

# Programación Orientada a Objetos

* Facilidad de diseño y relacion con el mundo real (UML)
* Reusabilidad y facilidad de mantenimiento
* Sistemas mas complejos
  * Abstraccion
  * Trabajo en equipo
* Del lenguaje maquina hacia el mundo real
* Resuelve problemas complicados. No est´a pensado para tareas sencillas


Los elementos principales son:
**clases***: Especificacion de un conjunto de elementos
Una clase es un tipo al cual pertenecen objetos o instancias de la clase.
  * Plantillas para definir elementos (objetos)
  * Pueden estar directamente relacionadas unas con otras
**objetos**: Elemento autonomo y con una funcionalidad concreta. Instancias concretas de una clase
  * Elementos con comportamiento y estado. Metodos y atributos concretos
  * Instancias de clase
  * Interactuan por medio de mensajes


  Ejemplo de clase
  ```java
  public class PuebloDelOeste    
  {      
  	int establos;
  	int cantinas;
  	int comisarios;
  	int alborotadores;
  	String locacion;
  	int tiempo;


     public PuebloDelOeste()     
     {
     	establos = 3;
     	locacion = "Oeste de los Estados Unidos";
  		tiempo = 1850;
  	}
  }
  ```


Encapsulaci´on
