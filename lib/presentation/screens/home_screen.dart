import 'package:flutter/material.dart';
import 'package:wapig/presentation/screens/cuentas_screen.dart';
import 'package:wapig/presentation/widgets/single_button/single_button.dart';
import 'package:wapig/presentation/widgets/title_text/title_name.dart';
import 'side_menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Vista principal',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(25, 94, 113, 1.0),
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 35,
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Text('Aquí va el consolidado', style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
      ),
      drawer: SideMenu(
        onItemSelected: onItemSelected,
      ),
      body: Container(
        padding: EdgeInsets.only(top: size.height * 0.01),
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
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
                  welcomeText: 'Cuentas',
                  fontSize: 25,
                  paddingTop: 0,
                  paddingBottom: 10,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CuentasScreen()),
                    );
                  }
                ),
              ],
            ),
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
