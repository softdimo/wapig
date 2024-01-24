import 'package:flutter/material.dart';
import 'package:wapig/presentation/widgets/title_text/title_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              
              child: Text(
                'cuentas',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



