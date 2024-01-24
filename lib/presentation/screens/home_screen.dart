import 'package:flutter/material.dart';
import 'package:wapig/presentation/screens/accion_cuenta_screen.dart';
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
            height: size.height * 0.2, // El 20% superior
            color: const Color.fromRGBO(25, 94, 113, 1.0), // Color superior
            child: const Center(
              child: Text(
                'Este es el HOME',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            height: size.height * 0.8, // El 80% inferior
            color: const Color.fromRGBO(160, 159, 159, 1.0), // Color inferior
            child: ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla AccionCuentaScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AccionCuentaScreen()),
                );
              },
              child: const Text(
                'lleva a Screen Acciones cuentas',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
