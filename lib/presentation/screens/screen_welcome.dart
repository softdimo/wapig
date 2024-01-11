import 'package:flutter/material.dart';
import 'package:wapig/presentation/screens/login.dart';
import 'package:wapig/presentation/screens/logos_imagenes.dart';

class ScreenWelcome extends StatelessWidget {
  const ScreenWelcome({super.key});

  @override
  Widget build(BuildContext context) {

    //Se simula el llamado a la pantalla de login
    Future.delayed(const Duration(seconds: 3), () {
      // Navegar a la próxima pantalla (Home)
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });
    
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 169, 242, 248),
      body: LogoImagenes()
    );
  }
}
