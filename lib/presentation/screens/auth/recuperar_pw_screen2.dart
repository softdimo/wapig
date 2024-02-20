import 'package:wapig/imports/barrel.dart';

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
      body: SingleChildScrollView(
        // padding: const EdgeInsets.fromLTRB(30, 80, 30, 30),
        padding: EdgeInsetsGeometry.lerp(
          EdgeInsets.zero,
          EdgeInsets.fromLTRB(25, size.width * 0.70, 25, size.width * 0.20),
          0.4,
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
              const TitleName(
                paddingTop: 0,
                paddingBottom: 0,
              ),
              // Logo
              const LogoImage(width: 0.3),

              const TitleName(
                welcomeText: 'wapig',
                paddingTop: 0,
                paddingBottom: 0,
                fontSize: 36,
              ),
              const SizedBox(height: 10),

              // =================================================

              const TitleName(
                welcomeText: 'Recuperar contraseña',
                paddingTop: 0,
                paddingBottom: 0,
                fontSize: 20,
              ),

              const SizedBox(height: 10),

              // =================================================
              const TitleName(
                welcomeText:
                    'Digita el código que fue enviado a tu dirección de correo electrónico',
                paddingTop: 0,
                paddingBottom: 0,
                paddingLeft: 20,
                fontSize: 14,
              ),

              // ============================

              const SizedBox(height: 20),

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
              const SizedBox(height: 10),

              // =====================================

              // Texto de "ya tienes tu contraseña"
              const TitleName(
                welcomeText: '¿Ya tienes tu contraseña?',
                paddingTop: 0,
                paddingBottom: 0,
                fontSize: 19,
              ),

              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: size.height * 0.02,
                    fontFamily: 'Sansita',
                    color: Colors.black, // Color por defecto para el texto
                  ),
                  children: [
                    const TextSpan(
                      text: 'Haz ',
                    ),
                    TextSpan(
                      text: 'click aquí',
                      style: const TextStyle(
                        color: Colors.blue, // Color azul para "click aquí"
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                    ),
                    const TextSpan(
                      text: ' para iniciar sesión',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
