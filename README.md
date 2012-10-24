Considere el desarrollo de una clase Ruby para representar el juego de Piedra-Papel-Tijeras. Empiece desde cero, no reciclando código de las prácticas anteriores. La clave de esta práctica está en diseñar pruebas que dirijan el desarrollo y si reutiliza el desarrollo anterior estará haciéndolo mal.

1) Cree una Clase PiedraPapelTijeras usando Desarrollo Dirigido por el Comportamiento (Behavior Driven Development - BDD) como caso particular del Desarrollo dirigido por pruebas (Test Driven Development - TDD) usando como herramienta Rspec. 

Puede tomar como ejemplo la siguiente salida:

rspec -Ilib test/ppt_spec.rb --format documentation

PiedraPapelTijeras
Debe existir una tirada para el humano
Debe existir una tirada para la maquina
Debe existir una lista de tiradas validas
Debe existir una lista de jugadas posibles y quien gana
Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida
Se debe invocar al metodo obtener_maquina() para recoger la tirada de la maquina y que esta sea valida
Debe existir una lista de resultados de un juego desde el punto de vista de la maquina
Debe existir un resultado para un juego, desde el punto de vista de lamaquina
Se debe invocar al metodo jugar() para determinar el ganador de la tirada
Se debe de comprobar que las tiradas de la maquina al ser aleatorias recorren las tres posibilidades
Se debe comprobar que las tiradas de la maquina y del humano no son siempre la misma

Finished in 0.00261 seconds
11 examples, 0 failures

2) Añada un Rakefile que permita los siguientes objetivos:

    $ rake -T

rake bin   # Run bin/ppt_main.rb
rake test  # Run tests with --format documentation
rake thtml # Run tests with format: html

3) Indique la URL del repositorio github o bitbucket que ha desarrollado.