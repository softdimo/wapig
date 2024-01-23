import 'package:flutter/material.dart';
import 'package:wapig/presentation/screens/recuperar_pw_screen2.dart';
import 'package:wapig/presentation/widgets/input_generic/input_generic.dart';
import 'package:wapig/presentation/widgets/input_generic/input_generic_password.dart';
import 'package:wapig/presentation/widgets/single_button/single_button.dart';

class RecuperarPwScreen1 extends StatefulWidget {
  const RecuperarPwScreen1({super.key});

  @override
  _RecuperarPwScreenState1 createState() => _RecuperarPwScreenState1();
}

class _RecuperarPwScreenState1 extends State<RecuperarPwScreen1> {
  @override
  Widget build(BuildContext context) {
    // Obtener las dimensiones de la pantalla
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 242, 248),
      body: SingleChildScrollView(
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

              const Text(
                'Recupera tu contraseña',
                style: TextStyle(
                    fontFamily: 'Sansita',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),

              // =====================================

              const SizedBox(height: 10),

              // =====================================

              const Text(
                'No te preocupes, enviaremos un código a tu email registrado.',
                style: TextStyle(
                    fontFamily: 'Sansita',
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),

              // =====================================
              
              const SizedBox(height: 30),

              // =====================================
              
              // Inputs
              const InputGeneric(
                fontSizeText: 20, 
                textHint: 'Correo electrónico',
                width: 0.8,
                height: 0.06,
              ),

              // =====================================

              const SizedBox(height: 30),

              // =====================================

              // Botón de inicio de sesión
              SingleButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RecuperarPwScreen2()),
                  );
                },
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
