# aydoo2016-tpfinal
Repositorio del tp final de Analisis y Diseño Orientado a Objetos

Para resolver el problema del Viaje Espacial, utilice dos patrones, por un lado el patron Comando, y por el otro, el patron State.

El patron Comando consiste en guardar en cada objeto espacial un mapa en el cual contiene el efecto que debe ejecutar de acuerdo a la clase que se le pase.
De esta manera, puedo asegurar que se va a ejecutar el efecto correspondiente al choque.
Cabe destacar que para no violar el principio Abierto-Cerrado, basta con agregar un objeto espacial que herede de ObjetoEspacial 
y asignarle a cada mapa de los objetos, el efecto que provocaria sobre el. 
Por ultimo, el EfectoNulo esta codeado como tal solo para facilitar la lectura del codigo.

El patron State lo utilizo para representar el Estado del objeto ( EstadoConstruido o EstadoDestruido ). 
De esta manera, cuando el objeto se crea esta en EstadoConstruido y cuando la vida del objeto llega a cero, pasa a EstadoDestruido.