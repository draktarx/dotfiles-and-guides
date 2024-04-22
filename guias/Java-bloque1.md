# Java Bloque 1

## Entender Java

### OOP

La programación orientada a objetos (OOP, por sus siglas en inglés) en Java es una de las características más fundamentales y definitorias del lenguaje. Java utiliza este paradigma para estructurar aplicaciones que modelan entidades del mundo real y sus interacciones. Aquí exploraremos los conceptos principales de la OOP en Java con algunos ejemplos modificados para ilustrar mejor estos conceptos.

#### 1. **Objetos**

En OOP, los objetos son los componentes principales de tu programa. Un objeto es una representación de una entidad del mundo real y contiene atributos (campos de datos) y comportamientos (métodos). Por ejemplo, consideremos un objeto `Libro` que representa un libro en una biblioteca:

- **Atributos**: título, autor, número de páginas.
- **Comportamientos**: abrir(), cerrar(), leerPágina().

Cada objeto es una instancia de una clase.

#### 2. **Clases**

Una clase es un plano o plantilla para crear objetos y define los atributos y métodos que los objetos de esa clase deberán tener. Por ejemplo, una clase `Libro` podría definir los atributos mencionados anteriormente y métodos para interactuar con estos datos:

```java
public class Libro {
    private String titulo;
    private String autor;
    private int numPaginas;

    public Libro(String titulo, String autor, int numPaginas) {
        this.titulo = titulo;
        this.autor = autor;
        this.numPaginas = numPaginas;
    }

    public void abrir() {
        System.out.println("Abriendo el libro " + titulo);
    }

    // Métodos adicionales
}
```

#### 3. **Herencia**

La herencia permite que una clase herede atributos y métodos de otra clase. Por ejemplo, si tenemos una clase `Vehiculo` y otra clase `Carro`, la clase `Carro` podría heredar características de `Vehiculo`. Esto facilita la reutilización de código y ayuda a estructurar mejor el código creando una jerarquía de clases relacionadas.

```java
public class Vehiculo {
    protected String marca;
    protected int año;

    public void moverse() {
        System.out.println("Este vehículo se está moviendo.");
    }
}

public class Carro extends Vehiculo {
    private int numPuertas;

    public void acelerar() {
        System.out.println("El carro está acelerando.");
    }
}
```

#### 4. **Encapsulamiento**

El encapsulamiento implica restringir el acceso directo a algunos componentes de un objeto y proteger los datos internos del mismo. Esto se logra definiendo atributos como privados y proporcionando métodos públicos para acceder y modificar esos atributos, como se muestra en el ejemplo de la clase `Libro`.

#### 5. **Polimorfismo y Abstracción**

Estos conceptos se tratan con más profundidad en etapas avanzadas, pero en resumen, el **polimorfismo** permite que un método pueda tener múltiples formas y que un objeto pueda ser tratado como varios tipos de su jerarquía. La **abstracción**, por otro lado, permite trabajar con ideas más genéricas en lugar de objetos concretos.

En resumen, la OOP en Java facilita la creación de programas que son más flexibles y fáciles de mantener, alineando el desarrollo del software más cercanamente con cómo los humanos perciben el mundo real.

### Beneficios de los Lenguajes Compilados

Java, como lenguaje de programación compilado, ofrece características únicas en comparación con los lenguajes interpretados. La compilación en Java implica convertir el código fuente en bytecode, un formato legible por la máquina que se ejecuta en la máquina virtual de Java (JVM). Este proceso se diferencia significativamente del de los lenguajes interpretados, que leen y ejecutan el código fuente directamente en tiempo de ejecución. A continuación, profundizaremos en los beneficios de los lenguajes compilados y el proceso específico de compilación en Java.

1. **Mejor Rendimiento**: Los programas compilados suelen tener un rendimiento superior en comparación con los interpretados. El proceso de compilación incluye la optimización del bytecode, lo que hace que la ejecución del código sea más eficiente en la plataforma objetivo.

2. **Detección Temprana de Errores**: La compilación permite identificar errores de sintaxis y otros tipos de errores antes de que el código se ejecute. Esto es crucial para corregir problemas antes de desplegar la aplicación, reduciendo la probabilidad de errores en tiempo de ejecución.

3. **Independencia de Plataforma**: El bytecode generado por el compilador de Java es independiente de la plataforma. Esto significa que las aplicaciones Java pueden ejecutarse en diferentes sistemas operativos sin necesidad de modificaciones. Esta característica de independencia de plataforma es esencial para la portabilidad del software.

### El Proceso de Compilación en Java

El proceso de compilación en Java se puede describir en los siguientes pasos:

1. **Escritura del Código Fuente**: El desarrollador escribe el código fuente en Java, utilizando un editor de texto o un entorno de desarrollo integrado (IDE).

2. **Compilación a Bytecode**: El código fuente `.java` se compila utilizando el compilador `javac`, que traduce el código fuente a bytecode almacenado en archivos `.class`.

3. **Ejecución en la JVM**: El bytecode es ejecutado por la JVM, que interpreta o compila aún más el bytecode a código máquina nativo según sea necesario durante la ejecución.

```java
// Ejemplo de código Java
public class HolaMundo {
    public static void main(String[] args) {
        System.out.println("Hola Mundo");
    }
}

// Compilación y ejecución
// Compilar: javac HolaMundo.java
// Ejecutar: java HolaMundo
```

Este ejemplo ilustra cómo un simple programa en Java se compila y luego se ejecuta. La JVM es responsable de ejecutar el bytecode en cualquier plataforma, manteniendo la consistencia del programa en diferentes entornos operativos.

En resumen, la compilación en Java facilita la optimización del rendimiento, mejora la detección de errores y proporciona una portabilidad excepcional a través de la independencia de plataforma, lo que hace de Java una opción robusta y versátil para el desarrollo de software en una variedad de aplicaciones.

El principio de "Write Once, Run Anywhere" (WORA) de Java es una característica distintiva que le permitió destacarse de otros lenguajes de programación. Este principio garantiza que el código Java pueda ejecutarse en diversas plataformas sin requerir versiones diferentes del código para cada una, lo cual simplifica enormemente la gestión y el mantenimiento del software.

### ¿Cómo Funciona el WORA?

La implementación del principio WORA en Java se basa en dos componentes clave: el bytecode y la Máquina Virtual de Java (JVM). Aquí desglosamos cada uno:

1. **Bytecode**: Cuando se compila un programa en Java, el código fuente se transforma en bytecode, un tipo de código intermedio que es independiente de la plataforma. El bytecode es un nivel de abstracción que se sitúa entre el código fuente y el código máquina.

2. **Java Virtual Machine (JVM)**: La JVM es el motor que ejecuta el bytecode en cualquier plataforma. Cada sistema operativo (Windows, macOS, Linux, etc.) tiene su propia implementación de la JVM, que interpreta el bytecode y lo traduce al código máquina específico de la plataforma. Esto permite que el mismo archivo de bytecode se ejecute en diferentes sistemas sin modificaciones.

#### Ventajas del WORA

- **Mantenimiento Simplificado**: Al no requerir múltiples versiones del mismo programa para diferentes plataformas, se reduce significativamente la carga de mantenimiento. Cualquier actualización o corrección se realiza en una sola base de código.
  
- **Portabilidad**: Los programas pueden ejecutarse en cualquier dispositivo que cuente con una JVM compatible, lo que expande enormemente el alcance de las aplicaciones Java.

- **Consistencia**: La ejecución del mismo bytecode en todas las plataformas asegura que la aplicación se comporta de manera uniforme, independientemente del sistema operativo o la arquitectura de hardware.

#### Ejemplo Práctico

Imagina que desarrollas una aplicación en Java que gestiona información estudiantil. Esta aplicación puede ser usada en colegios con sistemas operativos diferentes sin necesidad de ajustes específicos para cada uno:

```java
public class InfoEstudiantil {
    private String nombre;
    private int edad;

    public InfoEstudiantil(String nombre, int edad) {
        this.nombre = nombre;
        this.edad = edad;
    }

    public void mostrarInfo() {
        System.out.println("Nombre: " + nombre + ", Edad: " + edad);
    }

    public static void main(String[] args) {
        InfoEstudiantil estudiante = new InfoEstudiantil("Juan", 15);
        estudiante.mostrarInfo();
    }
}
```

**Compilación y ejecución**:

- **Compilación**: `javac InfoEstudiantil.java` (genera bytecode).
- **Ejecución**: `java InfoEstudiantil` (en cualquier sistema con JVM).

Este ejemplo, aunque sencillo, ilustra cómo una sola versión del programa puede ser distribuida y ejecutada en diferentes plataformas sin necesidad de adaptaciones, demostrando así la potencia y la conveniencia del modelo WORA en Java.

La gestión automática de la memoria en Java es una característica fundamental que simplifica considerablemente el desarrollo y previene errores comunes relacionados con la memoria. A continuación, exploraremos en detalle qué implica esta gestión automática, centrándonos en dos aspectos clave: la asignación de memoria y la recolección de basura.

### Asignación de Memoria

En Java, la asignación de memoria ocurre automáticamente cuando se crean objetos. Por ejemplo, al instanciar un objeto, Java automáticamente reserva en la memoria del dispositivo el espacio necesario para almacenar los atributos y datos asociados con ese objeto. Esto elimina la necesidad de escribir código explícito para la gestión de memoria, a diferencia de lo que sucede en lenguajes como C y C++, donde los desarrolladores deben gestionar la memoria manualmente.

#### Ejemplo de Asignación de Memoria en Java

```java
public class Persona {
    private String nombre;
    private int edad;

    public Persona(String nombre, int edad) {
        this.nombre = nombre;
        this.edad = edad;
    }

    public static void main(String[] args) {
        Persona persona = new Persona("Ana", 30);
        System.out.println("Persona creada: " + persona.nombre + ", edad " + persona.edad);
    }
}
```

En este ejemplo, cuando se crea una nueva `Persona`, Java asigna memoria automáticamente para almacenar los valores de `nombre` y `edad`. No hay necesidad de código adicional para la asignación de memoria.

### Recolección de Basura (Garbage Collection)

La recolección de basura es el proceso mediante el cual Java identifica y libera la memoria que ya no está en uso. Esto se logra mediante el recolector de basura de la JVM, que se ejecuta periódicamente para buscar objetos a los que ya no se puede acceder y liberar la memoria que ocupan. Esto ayuda a prevenir fugas de memoria y otros problemas relacionados con la gestión incorrecta de la memoria.

#### Cómo Funciona la Recolección de Basura

- **Identificación**: El recolector de basura identifica los objetos que ya no son accesibles en el programa.
- **Liberación**: Libera la memoria ocupada por estos objetos, haciéndola disponible para nuevos objetos.

El mecanismo de recolección de basura en Java utiliza varios algoritmos sofisticados para determinar cuándo un objeto ya no es necesario, incluyendo marcado y barrido, compactación y diferentes generaciones de recolección para optimizar el rendimiento.

### Beneficios de la Gestión Automática de Memoria

- **Simplicidad**: Los desarrolladores pueden centrarse en la lógica del programa sin preocuparse por la gestión detallada de la memoria.
- **Seguridad**: Reduce la probabilidad de errores comunes en la gestión de memoria, como fugas de memoria y punteros colgantes.
- **Eficiencia**: El uso eficiente de la memoria ayuda a mantener la aplicación funcionando de manera fluida y eficiente.

La gestión automática de la memoria es, por lo tanto, una de las piedras angulares de Java que contribuye a su robustez y eficacia, permitiendo que los desarrolladores construyan aplicaciones más seguras y confiables con menos esfuerzo de mantenimiento.

### Performance

La comparación de rendimiento de Java con otros lenguajes de programación puede variar considerablemente según el tipo de tarea, la implementación del código, y el entorno de ejecución. Java, como lenguaje de alto nivel con gestión automática de memoria y ejecución en la máquina virtual de Java (JVM), tiene características distintas que afectan su rendimiento en comparación con otros lenguajes.

#### Java vs. Lenguajes Compilados a Código Nativo (C, C++)

- **C y C++** son conocidos por su alto rendimiento debido a que se compilan directamente a código máquina, lo que les permite operar más cerca del hardware. Esto es beneficioso para aplicaciones que requieren manipulación intensiva de recursos y para sistemas donde el control fino del hardware es crítico.
- **Java** suele ser más lento que C y C++ en tareas que requieren alta eficiencia de procesamiento debido a la capa adicional de abstracción que proporciona la JVM y el overhead de la recolección de basura. Sin embargo, las mejoras en los compiladores Just-In-Time (JIT) y en la JVM han cerrado significativamente esta brecha en muchos casos.

#### Java vs. Lenguajes Interpretados (Python, Ruby)

- **Python y Ruby** son lenguajes interpretados que generalmente proporcionan una velocidad de desarrollo más rápida a costa de un rendimiento de ejecución más lento. Esto es debido a la interpretación en tiempo de ejecución sin una fase de compilación dedicada que optimice el código.
- **Java** es más rápido en ejecución que Python y Ruby porque el código Java se compila a bytecode, que la JVM ejecuta de manera más eficiente que el código interpretado directamente.

#### Java vs. Lenguajes Modernos de Alto Nivel (Go, Rust)

- **Go** ha ganado popularidad por su simplicidad y su sistema de concurrencia integrado, además de compilar a código máquina, lo que le confiere un rendimiento superior al de Java en algunas aplicaciones, especialmente aquellas que se benefician de la gestión eficiente de múltiples hilos.
- **Rust** ofrece seguridad de memoria sin un recolector de basura y es conocido por su rendimiento que puede rivalizar con C y C++. Rust proporciona garantías en tiempo de compilación que previenen errores de ejecución comunes, lo que puede hacerlo más eficiente en tiempo de ejecución en comparación con Java en aplicaciones que requieren un manejo intensivo de memoria.

#### Consideraciones de Rendimiento

- **Optimización de JIT**: Java utiliza compiladores JIT dentro de la JVM para optimizar el bytecode mientras el programa se ejecuta, lo que puede mejorar significativamente el rendimiento durante la ejecución prolongada de una aplicación.
- **Ecosistema y Herramientas**: Java tiene un ecosistema maduro y una amplia gama de herramientas para monitoreo y análisis de rendimiento que pueden ayudar a optimizar aplicaciones.

En resumen, mientras que lenguajes como C y C++ pueden superar a Java en términos de rendimiento puro debido a su proximidad al hardware, Java ofrece un equilibrio entre rendimiento, facilidad de desarrollo, y portabilidad. Lenguajes más modernos como Go y Rust presentan competencia seria en ciertos dominios específicos donde las características únicas de esos lenguajes pueden ser aprovechadas para superar las limitaciones inherentes de Java.

**Repositorio interesante que muestra benchmarks de diferentes lenguajes para distintas tareas**

https://github.com/kostya/benchmarks

### Entender el ecosistema Java

https://www.jetbrains.com/lp/devecosystem-2023/java/