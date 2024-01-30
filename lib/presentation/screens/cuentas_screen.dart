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
        padding: EdgeInsets.only(top: size.height * 0.01),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              const Text('Saldo de cuentas: 5.000.000'),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    border:
                        Border.all(color: const Color.fromARGB(196, 196, 196, 1))
                ),
                height: size.height * 0.2,
                width: size.width * 0.9,
                child: Column(
                  children: [
                    TitleName(
                      welcomeText: 'Cuenta personal',
                      fontSize: 20,
                      paddingTop: 0,
                      paddingBottom: 10,
                      onPressed: () {
                        /* Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AccionCuentaScreen()),
                        ); */
                      }
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: size.width * 0.1),
                          child: SingleCount(
                              iconType: Icons.lock,
                              accountName: 'Bancolombia:',
                              fontSize: 18,
                              paddingTop: 0,
                              paddingBottom: 0,
                              typeText: FontWeight.normal,
                              // isSansita: false,
                              onPressed: () {}),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: size.width * 0.1),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: size.width * 0.1),
                          child: SingleCount(
                              iconType: Icons.lock,
                              accountName: 'Billetera:',
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
                              // iconType: Icons.mail,
                              accountName: '0',
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

