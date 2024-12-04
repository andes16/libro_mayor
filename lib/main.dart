import 'package:flutter/material.dart';

void main() {
  runApp(LibroMayorApp());
}

class LibroMayorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  final TextEditingController _nitController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Añadir un fondo de color
      backgroundColor: Color(0xFFdcf8fb),
    
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start, // Alineación a la izquierda
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 200, // Ajusta el ancho de la imagen
                    height: 200, // Ajusta el alto de la imagen
                    child: Image.asset(
                      'lib/img/logoLM.jpg',
                      fit: BoxFit.cover, // Ajusta la imagen para cubrir el espacio del SizedBox
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Empresa',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF07265c), // Color del texto
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'NIT / Código',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF07265c), // Color del texto
              ),
            ),
            TextField(
              controller: _nitController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Contraseña',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF07265c), // Color del texto
              ),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Aquí puedes añadir la lógica para iniciar sesión
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF39bfd0),
                ),
                child: Text(
                  'Iniciar Sesión',
                  style: TextStyle(color: Color(0xFFffffff)), // Color del texto del botón
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: IconButton(
                icon: Image.asset(
                  'lib/img/flechaLibromayor.png', // Asegúrate de que la imagen esté en esta ruta
                  width: 74,
                  height: 74,
                ),
                onPressed: () {
                  // Acción para el botón de volver
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

