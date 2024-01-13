// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 242, 248),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 80, 20, 20),
        child: Container(
          padding: const EdgeInsets.all(20),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          //alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              // Logo
              Image.asset(
                'assets/images/logoWapig.png',
                width: 300,
                height: 300,
              ),
              // Texto
              const Text(
                'wapig',
                style: TextStyle(
                    fontFamily: 'Sansita',
                    fontSize: 52,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Botón de registro
                  ElevatedButton(
                    child: const Text('Registrarse'),
                    onPressed: () {
                      // Navegar a la pantalla de registro
                    },
                  ),
                  // Botón de inicio de sesión
                  ElevatedButton(
                    child: const Text('Iniciar sesión'),
                    onPressed: () {
                      // Iniciar sesión
                    },
                  ),
                ],
              ),
              // Inputs
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                ),
              ),
              // Botón de inicio de sesión
              ElevatedButton(
                child: const Text('Iniciar sesión'),
                onPressed: () {
                  // Iniciar sesión
                },
              ),
              // Texto de "olvidaste tu contraseña"
              const Text('¿Olvidaste tu contraseña?'),
            ],
          ),
        ),
      ),
    );
  }
}
