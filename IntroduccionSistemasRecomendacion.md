# Sistemas de Recomendación

## Antecedentes
Los sistemas de recomendación son componentes cruciales de la mayoria de los sitios web, para mantener a sus usuarios satisfechos e incrementar el beneficio.

Los SR iniciaron como simple observación de las prefencias de los clientes y solo se ofrecian listas de los artículos más comprados o de temporada, con frecuencia los individuos confiaban en las recomendaciones ofrecidas por otros que realizaban la misma rutina; Seleccionar un articulo y recomendarlo,  de la misma manera que alguien te recomienda un libro o una película. La escala de evaluación comenzo en la mayoria de los productos con una escala fija (A = bueno, B = regular, C = malo) en donde se establecia el valor de cierta variable (calidad, precio, disponibilidad ) es así que  las recomendaciones del cine se basan en críticas de profesionales.

Los sistemas de recomendación juegan un role importante en los principales sitios web (Amazon,Netflix, IMDb)[1]. La meta de ellos es incrementar las ventas y presentar experiencias de usuario personalizadas ofrecienco sugerencias para articulos desconocidos potencialmente interesantes para un usuario.

Los SR actuales nacen de la intención de imitar este comportamiento (sugerir los mejores productos) y su concepto está dividido en tres partes:
- ** La recolección de preferencias de los usuarios: **
No tiene nada que ver con los perfiles de usuario ya que esto se realiza a través de una encuesta que permite conocer las prefencias de los usuarios, algunos de ellos mencionan las características desaables de un artículo específico.
- ** Análisis: **
En esta etapa se detectan patrones en las opciones seleccionadas por los usuarios.
- ** Generación de opciones: **
Los SR se modifican continuamente debido a que el usuario interacciona con el catálogo de artículos y el SR debe adaptarse dinámicamente a dichos cambios.
-- Uno de los ejemplos más importantes de motores de recomendaciones aparece en la competencia que publicó Netflix en 2009.

- ¿Qué son los Artículos Recomendados:
Los artículos pueden ser en general cualquier bien o servicio requerido por un usuario especifíco. No se requiere que el usuario tenga experiencia previa con el uso del sistema principal. Sin embargo sus selecciones son tomadas en cuenta para mejorar la precisión de la recomendación próxima.

## Importancia de los SR:
El interés en esta área permanece alto debido a que constituye un problema rico en investigación y debido a abundancia de aplicaciones practicas que ayuden a los usuarios  a lidiar con sobrecarga de información.
* Las grandes compañías de medios  fueron las primeras en invertir en máquinas de aprendizaje comerciales.
En 2006  Netflix anunció su máquina de aprendizaje y la competencia de mineria de datos con 1 millón de dolares en premio el cual fue reclamdo en 2009, con toda la atención de los medios, lo que se conocio como 'Recomendaciones de Netflix: Más allá de las 5 estrellas' lo que reveló conocimiento  práctico acerca de lo que realmente importa y no solo para los SR si no que para cualquier aplicación de aprendizaje máquina comercial.
La meta de Netflix Prize fue fonder un algoritmo de recomendaciones que pudiera entregar 10% de mejora en precisión de predicción sobre el sistema existente.
Apple basa su sistema de recomendaciones de estrenos en el sistema de crítica Rotten Tomatoes.
Google Play Store en un sistema de ranking de aplicaciones.

El rol clave de los sistemas de recomendación resulta en una vasta cantidad de investigación en este campo[2].

Sin embargo, a pesar de todos estos avances, la actual generación de sistemas de recomendación aun requieren mejoras para realizar métodos más efectivos y aplicables a un rango amplio de casos como recomendaciones vacacionales, ciertos tipos de servicios bancarios o de financiamiento a inversionistas, y productos ha ser vendidos en una tienda creada por un "carrito inteligente"[3]. Estas mejoras incluyen mejores métodos para representar comportamiento y la información acerca de los artículos ha ser adquiridos, metodos avanzados de recomendación, incorporación de información contextual y utilización de ratings multicriterio, además del desarrollo de métodos menos intrusivos que tambien se apoyen en metricas para determinar desempeño de los sistemas de recomendación.

## Antecedentes

Las raices de los sistemas de recomendación inician con trabajos en ciencia cognitiva, recuperación de información y algunas conexiones con administración científica, emergen como un área independiente a mediados de 1990 cuando los investigadores se enfocan en probleas de recomendación que explicitamente se basaban en una estructura de rating. Intuitivamente, esta estimación es usualmente basada en la escala definida por un usuario acerca de una breve información. A partir del rating de algunos articulos se puede determinar el rating de algunos que no han sido seleccionados, con el __rating superior estimado__ .
De manera formal el problema de recomendación puede ser formulado como sigue: Sea $$C$$ el conjunto de todos los usuarios y sea $$S$$ el conjunto de los posibles articulos que pueden ser recomendados talese como libros, peliculas o restaurantes. El espacio $$S$$  de los posibles articulos puede ser muy amplio, alcanzando los cientos de millones de articulos. Similarmente el espacio del usuario puede ser bastante amplio. Sea $$u$$ la función de utilidad que mide el beneficio de un articulo $$s$$ al usuario. De modo que $$C \times S \rigtharrow R$$, donde $$R$$ es la totalidad de un conjunto ordenado. Entonces, para cada usuario $c \in C$$, queremos seleccionar tal $$s' \in S $$ que maximize la utilidad del usuario. De manera simplificada tenemos que:   
$$\forall c \in C, s' = $$  $$arg$$ $$max u(c,s)$$

En un sistema de recomendación la utilidad de un articulo es usualmente representada por un _rating_ el cuál indica como a un usuario particular le gustó un articulo en particular. Juan Perez le dio a "Harry Potter" el rating de 7 (en escala de 1 a 10).

## Marco Teórico
1. ¿Qué es un SR?
Son un conjunto de herramientas de software y algoritmos de aprendizaje automático que ofrece una sugerencia de artículos para se utilizados por un usuario.
Los SR se dirigen principalmente a individuos que carecen de experiencia personal para evaluar el potencial inmenso número de articulos que existe en un website.
En su forma más simple los sistemas de recomendación ofrecen a lista basada en ranking e intenta predecir cuál será el producto o servicio, basado en las características y perfil del usuario; para completar tal tarea computacional los SR recolectan información del usuario y sus preferencias.


** Ejemplos de SR:**
- Filtardo Colaborativo:
La idea detrás del filtrado colaborativo es que se pueden usar los rating de los usuarios que comparten gustos similares para predecir los que aún no han sido definidos. Para obtener intuición, se comparan los ratings por pares del usuario
- Rotten Tomatoes (Tomatómetro):
El rating del tomatómetro se basa en las opciones publicadas por críticos de cine y televisión, es una medida confiable de la calidad de una película y representa el porcentaje de reseñas positivas dadas a una película, los SR de grandes empresas como Google Play, Apple Movies y Netflix utilizan las reseñas escritas ahí, para mejorar las sugerencias de los artículos.


2. ¿Existe una clasificación?


Los SR usualmente son clasificados en las siguientes categorias:

+ Recomendaciones Basadas en contenido: Al usuario le serán recomendados articulos similares a los que selecciono en el pasado.
+ Recomendaciones Colaborativas: Al usuario  le serán recomendados articulos que gustan a las personas con preferencias  y  gustos similares en el pasado.
+ Aproximacíon Híbrida: Éstos métodos combinan  métodos colaborativos y basádos en contenido.

Adicionalmente los sistemas de recomendacion que predicen valores absolutos de rating que usuarios individulmente no han marcado aun en articulos no conocidos, se les conoci como _filtrado basádo en preferencias_.

** Un SR deberá cumplir con las siguientes condiciones: **


- Incrementar el número de artículos vendidos:
Deberá ser capaz de vender un conjunto de artículos de modo que puedan ser comprados sin la intervención de los SR, es decir puede tener su propia meta de venta (** ningún visitante se puede ir sin comprar **).
- Vender artículos diversos:
Se prefiere la diversidad de artículos al ofertar productos ya que las empresas buscan que los usuarios (clientes) detecten productos en los que ni siquiera han pensado adquirir. Con frecuencia se dan descuentos o rebajas en ellos lo que ocasiona que las recomendaciones de los usuarios impacten su venta.
- Incrementar la satisfacción del usuario:
Un SR bien diseñado cambia la interfaz de usuario según las preferencias de los mejores clientes, ofreciendo objetivos resaltados y posobilidad de que en base a los cambios de la interfase se crean grupos de interés para ofertar productos.
- Mejor entendimiento de lo que el usuario quiere:
El sondeo adecuado de las preferencias del usuario, permite afinar los parámetros del SR con el fin de acertar en el "mejor" producto.
- Incrementar la fidelidad del usuario:
La intereacción por parte del usuario con el sitio permite que la información sea dinámica (contenido que mantega la atención) con frecuencias las sugerencias y reseñas de un producto mantienen al usuario más tiempo en el sitio lo que se aprovecha dando más opcones de compra.


3. ¿Es posible aplicar un sistema de recomendación al problema planteado?
Si es posible, para el SR existen varias rutas para llegar a la ENES, y con ayuda de un GPS ver las posibles apciones que hay para llegar, tambien se podría aplicar una encuesta a diferentes usuarios que usen transporte, que tengan automóvil, que vengan a pie y los usuarios que vengan en bicicleta.


## Descripción del Problema

## Solución
1. Hipótesis:
Resolver por medio de herramientas informáticas, el problema de acceso vial a la ENES, y así poder encontrar otras formas de llegar evitando el embotellamiento.

## Conclusiones
Los sistemas de recomendación han logrado una grán precisión, sin embargo pero cuando el mejor desempeño se ha alcanzado aparece la llamada _barrera mágica_[5] que se refiere a algunos niveles desconocidos de precisión, lo que revela que los ratings de los usuarios pueden ser aflijidos por inconsistencias en la información , básicamente _ruido_. En la mayoria de sistemas de recomendación aparecen inconsistencias y ello produce que la calidad de las recomendaciones se vea afectada.


## Bibliografía
[1] Ricci, Francesco. Recommender Systems Handbook. New York: Springer, 2011. Print

[2] Adomavicius, G., and A. Tuzhilin. "Toward the next Generation of Recommender Systems: A Survey of the State-of-the-art and Possible Extensions." IEEE Trans. Knowl. Data Eng. IEEE Transactions on Knowledge and Data Engineering: 734-49. Print.

[3] Sauter, Vicki Lynn, and Vicki Lynn Sauter. Decision Support Systems for Business Intelligence. 2nd ed. Hoboken, N.J.: Wiley, 2010. Print.

[4] R.Bell, Y. Koren and C. Volinsky. The BellKor 2008 Solution to the Netflix Prize. 2008

[5] Said, Alan, Brijnesh J. Jain, Sascha Narr, and Till Plumbaum. "Users and Noise: The Magic Barrier of Recommender Systems." User Modeling, Adaptation, and Personalization Lecture Notes in Computer Science: 237-48. Print

4. Plan a ride with Surface, Directions, and Turf.js (Mapbox)
https://www.mapbox.com/blog/dc-bikeshare-revisited/


![texto](archivo.png)
