# Java bloque 2

### Escribiendo un método main() en Java

Un programa en Java comienza su ejecución con su método `main()`. Este método es considerado el punto de entrada al programa, porque es lo que la JVM (Java Virtual Machine) busca cuando inicia la ejecución de un programa nuevo.

#### Creando un método main()

El método `main()` permite que la JVM llame a nuestro código. La clase más simple posible con un método `main()` se ve así:

```java
public class Zoo {
    public static void main(String[] args) {
        System.out.println("Hola Mundo");
    }
}
```

Este código imprime "Hola Mundo". Para compilar y ejecutar este código, debes escribirlo en un archivo llamado `Zoo.java` y ejecutar los siguientes comandos:

```bash
javac Zoo.java
java Zoo
```

Si imprime "Hola Mundo", has tenido éxito. Si recibes mensajes de error, verifica que hayas instalado JDK 17, que lo hayas añadido al PATH y que no hayas cometido errores tipográficos en el ejemplo.

#### Reglas para Archivos Java

- Cada archivo puede contener solo una clase pública.
- El nombre del archivo debe coincidir con el nombre de la clase, incluyendo mayúsculas y minúsculas, y debe tener una extensión `.java`.
- Si la clase de Java es un punto de entrada para el programa, debe contener un método `main()` válido.

#### Detalles del método main()

Exploraremos las palabras en la firma del método `main()`:

- **public**: Es un modificador de acceso que declara el nivel de exposición de este método a posibles llamadores en el programa. 
- **static**: Vincula un método a su clase para que pueda ser llamado solo por el nombre de la clase, como en `Zoo.main()`. Esto es útil ya que Java no necesita crear un objeto para llamar al método `main()`.
- **void**: Representa el tipo de retorno. Un método que no devuelve datos devuelve el control al llamador de forma silenciosa.
- **String[] args**: Representa una lista de argumentos que se pasan al programa. El nombre `args` es común porque indica que esta lista contiene valores que se leyeron al iniciar la JVM.

#### Pasar Parámetros a un Programa Java

Veamos cómo enviar datos al método `main()` de nuestro programa. Modificamos el programa Zoo para imprimir los dos primeros argumentos pasados:

```java
public class Zoo {
    public static void main(String[] args) {
        System.out.println(args[0]);
        System.out.println(args[1]);
    }
}
```

Para ejecutarlo, escriba esto:

```bash
javac Zoo.java
java Zoo Bronx Zoo
```

La salida será:

```
Bronx
Zoo
```

Si no se pasan suficientes argumentos, Java lanzará una excepción indicando que el índice está fuera de los límites.

#### Código Fuente en Archivo Único

Si te cansas de escribir `javac` y `java` cada vez que quieras probar un ejemplo de código, existe un atajo. Puedes ejecutar directamente:

```bash
java Zoo.java Bronx Zoo
```

Cuando omites el paso de compilación explícito, debes incluir la extensión `.java`. Esta característica se llama lanzamiento de programas de código fuente de archivo único y es útil para pruebas o programas pequeños.

### Declaraciones de Paquetes e Importaciones en Java

Java contiene miles de clases incorporadas, además de innumerables más desarrolladas por programadores. Con tantas clases disponibles, Java necesita un método para organizarlas adecuadamente, similar a cómo se organizan los documentos en un archivador usando carpetas. Java utiliza los **paquetes** para agrupar lógicamente las clases.

#### Importancia de las Declaraciones de Importación

Supongamos que intentas compilar este código:

```java
public class NumberPicker {
    public static void main(String[] args) {
        Random r = new Random(); // NO COMPILA
        System.out.println(r.nextInt(10));
    }
}
```

El compilador de Java te mostrará un error indicando que no puede encontrar el símbolo `Random`. Esto puede deberse a un error tipográfico o a la omisión de una declaración de importación necesaria. Al agregar la importación adecuada, el código compila correctamente:

```java
import java.util.Random;

public class NumberPicker {
    public static void main(String[] args) {
        Random r = new Random();
        System.out.println(r.nextInt(10)); // imprime un número entre 0 y 9
    }
}
```

#### Paquetes

Los nombres de los paquetes son jerárquicos, similar a una dirección postal. Por ejemplo, `com.wiley.javabook` indica que el código está asociado con el sitio web o la organización de wiley.com. Los paquetes más detallados son considerados subpaquetes del paquete principal.

#### Importaciones con Comodines

Para importar todas las clases de un paquete específico, puedes usar el comodín `*`:

```java
import java.util.*; // importa java.util.Random entre otras clases
```

Este comodín solo importa clases directamente bajo el paquete especificado, no incluye subpaquetes ni métodos individuales.

#### Importaciones Redundantes

El paquete `java.lang` es especial porque se importa automáticamente, por lo que cualquier referencia a `System` o a otras clases en este paquete no requiere una declaración de importación explícita. Por ejemplo, en este código:

```java
import java.lang.System;
import java.lang.*;
import java.util.Random;
import java.util.*;
```

Las líneas que importan `java.lang` son redundantes.

#### Conflictos de Nombres

Si necesitas clases con el mismo nombre pero de diferentes paquetes, como `java.util.Date` y `java.sql.Date`, puedes solucionar conflictos especificando explícitamente el paquete en la declaración de importación o utilizando el nombre completamente calificado de la clase en tu código:

```java
import java.util.Date;
import java.sql.*;

public class Conflicts {
    Date date; // Se refiere a java.util.Date
    java.sql.Date sqlDate; // Utiliza el nombre completamente calificado para evitar el conflicto
}
```

#### Creando un Nuevo Paquete

Para organizar mejor tu código, es aconsejable utilizar paquetes nombrados en lugar de depender del paquete predeterminado. La estructura de directorios en tu computadora debe relacionarse con el nombre del paquete. Por ejemplo:

```java
package packagea;

public class ClassA {}

package packageb;
import packagea.ClassA;

public class ClassB {
    public static void main(String[] args) {
        ClassA a;
        System.out.println("Got it");
    }
}
```

#### Compilación y Ejecución con Paquetes

Para compilar y ejecutar código que utiliza paquetes, debes especificar la ruta completa del archivo .java en el comando de compilación y usar la opción `-d` para dirigir los archivos .class compilados a un directorio específico. Para ejecutar, especificas la ruta de clases con `-cp` o `-classpath`.

#### Conclusión

Entender cómo Java gestiona paquetes e importaciones es crucial para organizar y manejar eficazmente las clases en proyectos más grandes. Esto facilita la reutilización del código y mejora la legibilidad, al tiempo que previene conflictos entre nombres de clase.