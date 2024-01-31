import 'package:flutter/material.dart';
import 'package:wapig/presentation/screens/home_screen.dart';
import 'package:wapig/presentation/screens/side_menu.dart';
import 'package:wapig/presentation/widgets/single_count/single_count.dart';
import 'package:wapig/presentation/widgets/title_text/title_name.dart';

class CuentasScreen extends StatefulWidget {
  const CuentasScreen({Key? key}) : super(key: key);

  @override
  _CuentasScreenState createState() => _CuentasScreenState();
}

class _CuentasScreenState extends State<CuentasScreen> {
  @override
  Widget build(BuildContext context) {
    // Obtener las dimensiones de la pantalla
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla de cuentas',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 8, 176, 223),
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 35,
        ),
        
      ),
      drawer: const SideMenu(),

      // =====================================================

      body: Container(
        padding: EdgeInsets.only(top: size.height * 0.02),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              const Text('Saldo de cuentas: 5.000.000'),
              Container(
                // padding:  EdgeInsets.fromLTRB(
                //   size.width * 0.00, 4,
                //   size.width * 0.1,
                //   size.width * 0.3,
                // ),
                // padding: EdgeInsets.only(top: size.height * 0.01),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border:
                        Border.all(color: const Color.fromARGB(196, 196, 196, 1))
                ),
                height: size.height * 0.08,
                width: size.width * 0.9,
                child: Column(
                  children: [
                    // TitleName(
                    //   welcomeText: 'Cuenta personal',
                    //   fontSize: 20,
                    //   paddingTop: 0,
                    //   paddingBottom: 10,
                    //   onPressed: () {
                    //     /* Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => const AccionCuentaScreen()),
                    //     ); */
                    //   }
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.lock),
                        const Text('Bancolombia'),
                        /* Expanded(
                        // Container(
                          // padding: EdgeInsets.only(left: size.width * 0.1),
                          child: SingleCount(
                              iconType1: Icons.lock,
                              accountName: 'Bancolombia:',
                              fontSize: 18,
                              paddingTop: 0,
                              paddingBottom: 0,
                              typeText: FontWeight.normal,
                              // isSansita: false,
                              onPressed: () {}
                            ),
                        ), */
                        // ================= INICIO PRUEBA =================
                        // Expanded(
                        //   child: Row(
                        //     crossAxisAlignment: CrossAxisAlignment.center,
                        //     children: [
                        //       const Icon(Icons.lock),
                        //       const SizedBox(width: 0), // Ajusta este valor según tus necesidades
                        //       Flexible(
                        //         child: SingleCount(
                        //           accountName: 'Bancolombia:',
                        //           fontSize: 18,
                        //           paddingTop: 0,
                        //           paddingBottom: 0,
                        //           typeText: FontWeight.normal,
                        //           onPressed: () {},
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // ================= FIN PRUEBA =================

                        // ===================================================

                        Expanded(
                        // Container(
                          // padding: EdgeInsets.only(right: size.width * 0.1),
                          // SingleCount(
                          child: SingleCount(
                              // iconType: Icons.mail,
                              accountName: '2.081.275',
                              colorText: const Color.fromRGBO(20, 176, 27, 1),
                              fontSize: 18,
                              paddingTop: 0,
                              paddingBottom: 0,
                              typeText: FontWeight.normal,
                              isSansita: false,
                              onPressed: () {}),
                        ),
                      ],
                    ),
                    // ============================================
                    // Iconos flutter
                    // https://api.flutter.dev/flutter/material/Icons-class.html
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: size.width * 0.1),
                          child: SingleCount(
                              // iconType: Icons.lock,
                              accountName: '',
                              fontSize: 18,
                              paddingTop: 0,
                              paddingBottom: 0,
                              typeText: FontWeight.normal,
                              isSansita: false,
                              onPressed: () {}),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: size.width * 0.1),
                          child: SingleCount(
                              iconType2: Icons.visibility_off_outlined,
                              iconType3: Icons.repeat,
                              iconType4: Icons.more_vert,
                              // accountName: '0',
                              colorText: const Color.fromRGBO(20, 176, 27, 1),
                              fontSize: 18,
                              paddingTop: 0,
                              paddingBottom: 0,
                              typeText: FontWeight.normal,
                              isSansita: false,
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // =====================================================
    );
  }
}

