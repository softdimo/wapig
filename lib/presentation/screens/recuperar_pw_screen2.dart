import 'package:flutter/material.dart';
import 'package:wapig/presentation/widgets/input_generic/input_generic.dart';
import 'package:wapig/presentation/widgets/input_generic/input_generic_password.dart';
import 'package:wapig/presentation/widgets/single_button/single_button.dart';

class RecuperarPwScreen2 extends StatefulWidget {
  const RecuperarPwScreen2({super.key});

  @override
  _RecuperarPwScreenState2 createState() => _RecuperarPwScreenState2();
}

class _RecuperarPwScreenState2 extends State<RecuperarPwScreen2> {
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
              const SizedBox(height: 20),

              // =================================================

              const Text(
                'Recupera tu contraseña',
                style: TextStyle(
                    fontFamily: 'Sansita',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              // =================================================

              const Text(
                'Digita el código que fue enviado a tu dirección de correo electrónico',
                style: TextStyle(
                    fontFamily: 'Sansita',
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),

              // ============================
              
              const SizedBox(height: 30),

              // ============================

              // Inputs
              const InputGeneric(
                fontSizeText: 20, 
                textHint: 'Ingrese código',
                width: 0.8,
                height: 0.06,
                iconType: Icons.emergency,
              ),
              
              // ============================
              
              const SizedBox(height: 20),

              // ============================

              const InputGeneric(
                fontSizeText: 20, 
                textHint: 'Correo electrónico',
                width: 0.8,
                height: 0.06,
              ),
              
              // ============================
              
              const SizedBox(height: 20),

              // ============================
              
              const InputGenericPassword(
                fontSizeText: 20,
                textHint: 'Contraseña',
                iconType: Icons.lock,
              ),
              
              // ============================

              const SizedBox(height: 20),

              // ============================

              const InputGenericPassword(
                fontSizeText: 20,
                textHint: 'Confirmar Contraseña',
                iconType: Icons.lock,
              ),
              
              // ============================

              const SizedBox(height: 20),

              // ============================

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
              
              // ============================
              
              const SizedBox(height: 20),

              // ============================

              // Botón de inicio de sesión
              SingleButton(
                onPressed: () {},
                textButton: 'Obtener Código',
                colorButton: const Color.fromARGB(255, 34, 184, 197),
                width: 0.7,
                height: 50,
              ),
              const SizedBox(height: 30),

              // =====================================

              // Texto de "ya tienes tu contraseña"
              Text(
                '¿Ya tienes tu contraseña?',
                style: TextStyle(
                  fontSize: size.height * 0.02,
                  fontFamily: 'Sansita',
                ),
              ),

              // =====================================

              // Texto de "Haz click aquí para iniciar sesión"
              Text(
                'Haz click aquí para iniciar sesión',
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
