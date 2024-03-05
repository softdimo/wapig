import 'package:wapig/imports/barrel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  //final _formKey = GlobalKey<FormState>();
  bool isLogged = false;

  @override
  Widget build(BuildContext context) {
    // Obtener las dimensiones de la pantalla
    final size = MediaQuery.of(context).size;
    final loginController = LoginController();

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
                border: Border.all(
                    color: const Color.fromARGB(204, 173, 173, 178))),
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
                InputGeneric(
                  fontSizeText: 20,
                  textHint: 'E-mail',
                  iconType: Icons.email,
                  textEditingController: _emailController,
                ),

                const SizedBox(height: 20),

                InputGenericPassword(
                  fontSizeText: 20,
                  textHint: 'Contraseña',
                  iconType: Icons.lock,
                  textEditingController: _passwordController,
                ),
                const SizedBox(height: 5),
                SizedBox(
                  child: isLogged 
                  ? const Text(
                      'Usuario o contraseña incorrecta', 
                      style:  TextStyle(color: Colors.red, fontSize: 15),
                    ) 
                  : Container()
                ),

                const SizedBox(height: 30),

                // Botón de inicio de sesión
                SingleButton(
                  onPressed: () async {
                    final userModel = UserModel(
                      email: _emailController.text,
                      password: _passwordController.text,
                    );

                    bool authenticationResult =
                        await loginController.login(userModel);

                    if (authenticationResult) {
                      
                      // ignore: use_build_context_synchronously
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyHomePage(),
                        ),
                      );
                    } else {
                      setState(() {
                        isLogged = true;
                      });
                      // Mostrar mensaje de error al usuario o realizar otras acciones según el caso
                      print(
                          'Autenticación fallida. Verifica el email y la contraseña.');
                    }
                  },
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
