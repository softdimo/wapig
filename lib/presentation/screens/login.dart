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
      appBar: AppBar(
        title: const Text('Mi App'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Logo
            Image.asset(
              'assets/images/logoWapig.png',
              width: 300,
              height: 300,
            ),
            // Texto
            const Text('Mi App'),
            // Botones
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
    );
  }
}
