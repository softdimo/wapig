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
            color: const Color.fromRGBO(25, 94, 113, 1.0), // Color superior
          ),
          Container(
            height: size.height * 0.8, // El 50% inferior
            child: Center(
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
