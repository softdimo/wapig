import 'package:flutter/material.dart';
import 'package:wapig/presentation/screens/accion_cuenta_screen.dart';
import 'package:wapig/presentation/screens/home_screen.dart';

class SideMenuItems {
  static List<ListTile> getItems() {
    return [
      const ListTile(
        leading: Icon(Icons.home),
        title: Text('Vista principal'),
      ),
      const ListTile(
        leading: Icon(Icons.car_crash),
        title: Text('Cuentas'),
      ),
      const ListTile(
        leading: Icon(Icons.person),
        title: Text('Perfil'),
      ),
      const ListTile(
        leading: Icon(Icons.settings),
        title: Text('Configuración'),
      ),
    ];
  }

  static void handleItemSelected(BuildContext context, int index) {
    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
    } else if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AccionCuentaScreen()),
      );
    } else if (index == 2){
      //navegar a perfil
    } else {
      //Navegar a configuración 
    }
  }
}
