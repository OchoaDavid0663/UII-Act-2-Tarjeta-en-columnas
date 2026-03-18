import 'package:flutter/material.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SIMILARES',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF1A1A1D),
        primaryColor: const Color(0xFF00E5FF),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xFF1D1E33),
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),
      home: const PaginaInicio(),
    );
  }
}

class PaginaInicio extends StatelessWidget {
  const PaginaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> peluches = [
      {'titulo': 'Peluche Bombero', 'desc': 'Héroe del fuego listo para el rescate.', 'url': 'https://raw.githubusercontent.com/OchoaDavid0663/UII-Act-2-Tarjeta-en-columnas/refs/heads/main/Peluche%20Bombero.jpeg'},
      {'titulo': 'Peluche Graduación', 'desc': 'Celebrando tus logros académicos.', 'url': 'https://raw.githubusercontent.com/OchoaDavid0663/UII-Act-2-Tarjeta-en-columnas/refs/heads/main/Peluche%20Graduacion.jpeg'},
      {'titulo': 'Peluche Lares', 'desc': 'Edición especial Dr. Simi Lares.', 'url': 'https://raw.githubusercontent.com/OchoaDavid0663/UII-Act-2-Tarjeta-en-columnas/refs/heads/main/Peluche%20Lares.webp'},
      {'titulo': 'Peluche Selección', 'desc': 'Apoyando al equipo con toda la pasión.', 'url': 'https://raw.githubusercontent.com/OchoaDavid0663/UII-Act-2-Tarjeta-en-columnas/refs/heads/main/Peluche%20Seleccion.jpeg'},
      {'titulo': 'Peluche Tradicional', 'desc': 'El clásico Dr. Simi de siempre.', 'url': 'https://raw.githubusercontent.com/OchoaDavid0663/UII-Act-2-Tarjeta-en-columnas/refs/heads/main/Peluche%20Tradicional.jpeg'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("SIMILARES")),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        itemCount: peluches.length,
        itemBuilder: (context, index) {
          return _crearTarjeta(
            peluches[index]['titulo']!,
            peluches[index]['desc']!,
            peluches[index]['url']!,
          );
        },
      ),
    );
  }

  Widget _crearTarjeta(String titulo, String descripcion, String url) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.only(bottom: 20),
      color: const Color(0xFF1D1E33),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Color(0xFF00E5FF), width: 0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: IntrinsicHeight(
          child: Row(
            children: [
              // --- AHORA LA IMAGEN ESTÁ A LA IZQUIERDA ---
              Expanded(
                flex: 2,
                child: Container(
                  constraints: const BoxConstraints(maxHeight: 120),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      url,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.broken_image, color: Colors.white30, size: 50),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 15), // Espacio entre imagen y texto
              // --- AHORA EL TEXTO ESTÁ A LA DERECHA ---
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titulo,
                      style: const TextStyle(
                        color: Color(0xFF00E5FF),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      descripcion,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}