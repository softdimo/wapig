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

    const logoBancolombia = AssetImage('assets/images/LogoBancolombia.png');
    const logoBilletera = AssetImage('assets/images/billetera.png');

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
                padding: const EdgeInsets.all(12.0),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Image(
                              image: logoBancolombia, // Ruta de la imagen
                              width: 24, // Ajusta el ancho según sea necesario
                              height: 24, // Ajusta la altura según sea necesario
                            ),
                            Text('Bancolombia'),
                          ],
                        ),
                        
                        // ===================================================

                        SingleCount(
                          accountName: '2.081.275',
                          colorText: const Color.fromRGBO(20, 176, 27, 1),
                          fontSize: 18,
                          paddingTop: 0,
                          paddingBottom: 0,
                          typeText: FontWeight.normal,
                          isSansita: false,
                          onPressed: () {}
                        ),
                      ],
                    ),

                    // ============================================

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SingleCount(
                          iconType2: Icons.visibility_off_outlined,
                          iconType3: Icons.repeat,
                          iconType4: Icons.more_vert,
                          colorText: const Color.fromRGBO(20, 176, 27, 1),
                          fontSize: 10,
                          paddingTop: 0,
                          paddingBottom: 0,
                          typeText: FontWeight.normal,
                          isSansita: false,
                          onPressed: () {}
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ========================================================
              // ========================================================
              // ========================================================

              Container(
                padding: EdgeInsets.all(size.height * 0.01),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Image(
                              image: logoBilletera, // Ruta de la imagen
                              width: 24, // Ajusta el ancho según sea necesario
                              height: 24, // Ajusta la altura según sea necesario
                            ),
                            // Icon(Icons.lock),
                            Text('Billetera'),
                          ],
                        ),
                        
                        // ===================================================

                        SingleCount(
                          accountName: '500.000',
                          colorText: const Color.fromRGBO(20, 176, 27, 1),
                          fontSize: 18,
                          paddingTop: 0,
                          paddingBottom: 0,
                          typeText: FontWeight.normal,
                          isSansita: false,
                          onPressed: () {}
                        ),
                      ],
                    ),

                    // ============================================

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SingleCount(
                          iconType2: Icons.visibility_off_outlined,
                          iconType3: Icons.repeat,
                          iconType4: Icons.more_vert,
                          colorText: const Color.fromRGBO(20, 176, 27, 1),
                          fontSize: 10,
                          paddingTop: 0,
                          paddingBottom: 0,
                          typeText: FontWeight.normal,
                          isSansita: false,
                          onPressed: () {}
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

