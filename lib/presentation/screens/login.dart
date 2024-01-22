// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:wapig/presentation/screens/recuperar_pw_screen1.dart';
import 'package:wapig/presentation/screens/registro_screen.dart';
import 'package:wapig/presentation/widgets/buttons/buttons.dart';
import 'package:wapig/presentation/widgets/input_generic/input_generic.dart';
import 'package:wapig/presentation/widgets/input_generic/input_generic_password.dart';
import 'package:wapig/presentation/widgets/logo_image/logo_image.dart';
import 'package:wapig/presentation/widgets/single_button/single_button.dart';
import 'package:wapig/presentation/widgets/title_text/title_name.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.lerp(
            EdgeInsets.zero,
            EdgeInsets.fromLTRB(25, size.width * 0.70, 25, size.width * 0.20),
            0.4,
          )!,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              border: Border.all(color: const Color.fromARGB(204, 173, 173, 178))
            ),
            //alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                // Título
                const TitleName(),
                // Logo
                const LogoImage(width: 0.4),
        
                const TitleName(
                  welcomeText: 'wapig',
                  fontSize: 36,
                  paddingTop: 0,
                  paddingBottom: 10,
                ),
        
                const SizedBox(
                  height: 20,
                ),
        
                //Llamado a la clase botones. Devuelve un Row don dos botones
                //Los botones se alinean horizontalmente
                ButtonsRow(
                  onPressed1: () {},
                  onPressed2: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistroScreen()),
                    );
                  },
                  textButton1: 'Iniciar seión',
                  textButton2: 'Registrarse',
                  colorButton1: const Color.fromARGB(204, 173, 173, 178),
                  colorButton2: const Color.fromARGB(255, 34, 184, 197),
                  spacing: 10,
                  width: 0.4,
                  height: 50,
                ),
        
                const SizedBox(height: 30),
        
                /**
                   * Clase que retorna un input completamente genérico. 
                   */
                const InputGeneric(
                  width: 0.8,
                  height: 0.06,
                  fontSizeText: 20,
                  textHint: 'E-mail',
                  borderColor: Color.fromARGB(204, 173, 173, 178),
                  borderRadius: 30,
                  iconType: Icons.email,
                  colorIcon: Color.fromARGB(204, 173, 173, 178),
                  colorText: Color.fromARGB(204, 173, 173, 178)
                ),
        
                const SizedBox(height: 20),
        
                const InputGenericPassword(
                  width: 0.8,
                  height: 0.06,
                  fontSizeText: 20,
                  textHint: 'Contraseña',
                  borderColor: Color.fromARGB(204, 173, 173, 178),
                  borderRadius: 30,
                  iconType: Icons.lock,
                  colorIcon: Color.fromARGB(204, 173, 173, 178),
                  colorText: Color.fromARGB(204, 173, 173, 178)
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
        
                // Hay que trabajar en esta funcionalidad del texto para navegar a la pantalla de recuperación
                TitleName(
                    welcomeText: '¿Olvidaste tu contraseña?',
                    fontSize: 18,
                    paddingTop: 0,
                    paddingBottom: 10,
                    isUnderLined: true,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RecuperarPwScreen1()),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
