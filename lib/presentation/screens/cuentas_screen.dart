import 'package:flutter/material.dart';
import 'package:wapig/presentation/screens/home_screen.dart';
import 'package:wapig/presentation/screens/side_menu.dart';
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
          'Resumen Cuentas',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 8, 176, 223),
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 35,
        ),
        
      ),
      drawer: SideMenu(
        onItemSelected: onItemSelected,
      ),
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
                        Border.all(color: const Color.fromARGB(204, 173, 173, 178))
                ),
                height: size.height * 0.2,
                width: size.width * 0.9,
                child: Column(
                  children: [
                    TitleName(
                      welcomeText: 'Bancolombia',
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void onItemSelected(int index) {
    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
    } else if (index == 1) {
      // Navegar a la pantalla de perfil
      // Implementa la navegación a la pantalla de perfil aquí
    } else if (index == 2) {
      // Navegar a la pantalla de configuración
      // Implementa la navegación a la pantalla de configuración aquí
    }
  }
}

