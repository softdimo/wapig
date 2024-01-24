import 'package:flutter/material.dart';

class AccionCuentaScreen extends StatefulWidget {
  const AccionCuentaScreen({Key? key}) : super(key: key);

  @override
  _AccionCuentaScreenState createState() => _AccionCuentaScreenState();
}

class _AccionCuentaScreenState extends State<AccionCuentaScreen> {
  @override
  Widget build(BuildContext context) {
    // Obtener las dimensiones de la pantalla
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.2, // El 50% superior
            // color: const Color.fromARGB(255, 94, 113, 1), // Color superior
            // color: const Color(0x195E71), // Color superior
            color: const Color.fromRGBO(25, 94, 113, 1.0), // Color superior
          ),
          Container(
            height: size.height * 0.8, // El 50% inferior
            // color: const Color.fromARGB(160, 159, 159, 255), // Color inferior
            color: const Color.fromRGBO(160, 159, 159, 1.0), // Color inferior
            child: Center(
              // Puedes agregar tus widgets aquí
              child: Text(
                'Contenido de la pantalla',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AccionCuentaScreen(),
  ));
}
