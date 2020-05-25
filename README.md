# AA3_Algebra

Extensión:
Para el funcionamiento correcto de la simulación es necesario implementar la
biblioteca minim, una de las herramientas más populares para la gestión de audio
en processing.


Funcionamiento:
Presionando la tecla "1" se muestra información de debug.
Presionando la tecla "2", mostramos por pantalla las curvas Bezier utilizadas.
En el menú de debug, presionando la tecla "3" se puede aumentar la velocidad
de la simulación.
Las flechas del teclado permiten cambiar la posición de la cámara.
La animación se ejecuta automáticamente.
Con la rueda del ratón se puede hacer zoom al planeta para acercarse/ alejarse.


Descripción:
Animación con dos curvas Bezier que hacen que una luna gire al rededor de un planeta.

Un objeto persigue a la luna flotando por el espacio mediante el calculo entre dos
puntos y su vector unitario.

Un sistema de colisiones controlará la colisión entre el objeto flotante y la luna.
Tras la colisión, empezará a sonar una pista de audio confirmando la colisión.


Elementos utilizados de clases teoricas:
Hemos utilizado colisiones para intentar separar el objeto flotante de la luna, y
para activar la reproducción de una pista de audio.

Encontramos el vector unitario, para que el objeto flotante persiga a la luna
por el espacio.

Hemos optado por utilizar una curva de Bezier para la orbita de la luna
ya que es la que mejores resultados nos da, aún que podría hacerse de forma más
eficiente o con menos líneas en el código, por ejemplo, con rotaciones como en el
código visto en clase, para la creación de un sistema solar.


Narrativa seleccionada:
La narrativa es del tipo meme, aportando como textura al planeta la cara de un perro
raza Shiba, una luna con la tetura de Nicolas Cage, el modelo de otro perro raza Shiba
y una canción carácteristica que siempre suele acompañarle.


PostMortem:
Al principio teníamos un amplio abanico de ideas que incluían la implementación de
portales, un personaje controlable, curvas Bezier para saltar de una cara a otra de
un cubo que se utilizaría como terreno y un objetivo que el personaje debería capturar.

Tras pasar los días, teníamos menos claro como implementar esta idea y más nos
centrabamos en otros proyectos con fechas de entrega más próximas.

Al final acabamos optando por la narrativa de tipo meme, ya que se nos haría más
sencillo plantear que hacer, ya que el hecho de que el proyecto fuese de libre elección
nos dificultaba definir una idea clara sobre la que trabajar y la fecha de entrega cada
vez estaba más cerca.