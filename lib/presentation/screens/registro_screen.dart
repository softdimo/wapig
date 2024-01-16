import 'package:flutter/material.dart';
import 'package:wapig/presentation/screens/login.dart';
import 'package:wapig/presentation/screens/recuperar_pw_screen1.dart';
import 'package:wapig/presentation/widgets/buttons/buttons.dart';
import 'package:wapig/presentation/widgets/single_button/single_button.dart';

class RegistroScreen extends StatefulWidget {
  const RegistroScreen({super.key});

  @override
  _RegistroScreenState createState() => _RegistroScreenState();
}

class _RegistroScreenState extends State<RegistroScreen> {
  @override
  Widget build(BuildContext context) {
    // Obtener las dimensiones de la pantalla
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 242, 248),
      body: Padding(
        // padding: const EdgeInsets.fromLTRB(30, 80, 30, 30),
        padding: EdgeInsetsGeometry.lerp(
          EdgeInsets.zero,
          EdgeInsets.fromLTRB(25, size.width * 0.90, 25, size.width * 0.20), 0.4,
        )!,

        // ==========================================================

        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                child: const Text(
                  'Bienvenido',
                  style: TextStyle(
                      fontFamily: 'Sansita',
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              // Logo
              Image.asset(
                'assets/images/logoWapig.png',
                width: size.width * 0.4,
                height: size.width * 0.4,
              ),
              const Text(
                'wapig',
                style: TextStyle(
                    fontFamily: 'Sansita',
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),

              // Llamado a la clase botones. Devuelve un Row con dos botones
              // Los botones se alinean horizontalmente
              ButtonsRow(
                onPressed1: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                },
                onPressed2: () {},
                textButton1: 'Iniciar sesión',
                textButton2: 'Registrarse',
                colorButton1: const Color.fromARGB(255, 34, 184, 197),
                colorButton2: const Color.fromARGB(204, 173, 173, 178),
                spacing: 10,
                width: 0.4,
                height: 50,
              ),

              const SizedBox(height: 30),

              // Inputs
              SizedBox(
                width: size.width * 0.8,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Correo electrónico',
                  ),
                  style: TextStyle(
                    fontSize: size.height * 0.02,
                    fontFamily: 'Sansita',
                  ),
                ),
              ),

              // =====================================

              SizedBox(
                width: size.width * 0.8,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Contraseña',
                  ),
                  style: TextStyle(
                    fontSize: size.height * 0.02,
                    fontFamily: 'Sansita',
                  ),
                ),
              ),
              // const SizedBox(height: 30),

              // =====================================
              
              SizedBox(
                width: size.width * 0.8,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Confirmar Contraseña',
                  ),
                  style: TextStyle(
                    fontSize: size.height * 0.02,
                    fontFamily: 'Sansita',
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // =====================================

              // Botón de inicio de sesión
              SingleButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RecuperarPwScreen1()),
                  );
                },
                textButton: 'Registrarse',
                colorButton: const Color.fromARGB(255, 34, 184, 197),
                width: 0.7,
                height: 50,
              ),
              const SizedBox(height: 30),

              // Texto de "olvidaste tu contraseña"
              Text(
                '¿Olvidaste tu contraseña?',
                style: TextStyle(
                  fontSize: size.height * 0.02,
                  fontFamily: 'Sansita',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
