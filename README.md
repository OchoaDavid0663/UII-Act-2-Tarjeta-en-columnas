# UII-Act-2-Tarjeta-en-columnas
Hola, necesito ayuda para maquetar la interfaz principal de mi app en Flutter. Ya tengo el ThemeData configurado con un estilo oscuro (0xFF1A1A1D) y acentos en cian neón (0xFF00E5FF).

Lo que necesito es que en el body de la página de inicio se muestre una columna de 5 tarjetas (Cards). Cada tarjeta debe tener la siguiente estructura interna:

Lado izquierdo: El título del producto en negrita y color cian, seguido de una pequeña descripción en color blanco tenue.

Lado derecho: Una imagen del producto. Es muy importante que la imagen se vea completa (sin recortes), así que debe usar un BoxFit.contain dentro de un espacio controlado para que no deforme la tarjeta.

El diseño debe ser limpio, con bordes redondeados y un sutil borde neón en cada Card para que combine con el AppBar que ya tengo. Las imágenes que vamos a usar son estos enlaces de GitHub: (aquí pegarías los 5 links de los peluches).

Por favor, no incluyas Drawer, solo el Scaffold con el AppBar y el cuerpo con las tarjetas en un ListView.
