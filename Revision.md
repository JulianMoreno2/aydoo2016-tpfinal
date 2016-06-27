#Revisión del Trabajo Práctico Final para AyDOO 2016
##Estado del repositorio de Julián Moreno hasta el día Domingo 26/06/2016.
##Revisor: Gonzalo Nahuel Di Pierro.

----------

* Observación 01: En las clases del dominio: Nave, Misil, Bomba, Asteroide, y Estrella, la linea donde se encuentra el Hash Map que contiene los diferentes efectos de las diferentes colisiones es muy larga. Recomiendo que se achique esa linea para que sea mas legible el codigo (Por ejemplo: Poniendo cada par clave-valor uno debajo del otro).

Respuesta: Aceptado. Me parece que es correcta la observacion ya que hace referencia a la lectura del codigo. Modifico la disposicion del hash map de cada objeto espacial.

----------

* Observación 02: Hay algunas partes del código donde no está bien identado. Como en la clase 'ObjetoEspacial' en el método 'obtener_masa', el @masa no está en su posición correcta. Parece una tabulación cuando deberían ser dos espacios como indica la convención de Ruby.

Respuesta: Aceptado. Corrijo el codigo de acuerdo a la convencion de indentacion de ruby.

----------

* Observación 03: Me parece innecesario tener dos clases diferentes para los dos únicos estados que puede tener un Objeto Espacial. Si fueran más de dos estados si sería conveniente esa solución. Pero en este momento puedo recomendar simplemente un booleano para saber si el objeto esta destruido o no.

Respuesta: No lo acepto. Me parece que modelar el estado del objeto espacial es importante ya que estamos programando objetos. En esta ocasion, el Estado condiciona la ejecucion del choque.

----------

* Observación 04: La excepción 'NumeroInvalidoException' no lanza ningún mensaje detallado de por qué es inválido el número o que números son los validos para insertar. Recomiendo que cuando se lanze esa excepción haya algún mensaje acompañado.

Respuesta: No lo acepto. La excepcion NumeroInvalidoException hereda de RuntimeError y se lanza un mensaje con 'raise' cuando la vida o la masa que se ingresa es negativa. Por lo tanto, cuando se lanza la excepcion, tiene un mensaje acompañado.