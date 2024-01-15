// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:wapig/presentation/screens/buttons/buttons.dart';
import 'package:wapig/presentation/screens/single_button/single_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // Obtener las dimensiones de la pantalla
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 242, 248),
      body: Padding(
        padding: EdgeInsetsGeometry.lerp(
          EdgeInsets.zero,
          EdgeInsets.fromLTRB(
            25, 
            size.width * 0.70, 
            25, 
            size.width * 0.20
          ),
          0.4,
        )!,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          //alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              // Título
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

              //Llamado a la clase botones. Devuelve un Row don dos botones
              //Los botones se alinean horizontalmente
              ButtonsRow(
                onPressed1: () {},
                onPressed2: () {},
                textButton1: 'Iniciar seión',
                textButton2: 'Registrarse',
                colorButton1: const Color.fromARGB(204, 173, 173, 178),
                colorButton2: const Color.fromARGB(255, 34, 184, 197),
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
              const SizedBox(height: 30),

              // Botón de inicio de sesión
              SingleButton(
                onPressed: () {},
                textButton: 'Iniciar sesión',
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
