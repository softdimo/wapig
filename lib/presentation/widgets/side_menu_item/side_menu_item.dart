import 'package:wapig/imports/barrel.dart';

class SideMenuItems {
  static List<ListTile> getItems() {
    return [
      const ListTile(
        leading: Icon(
          Icons.home_outlined,
          size: 30,
        ),
        title: Text('Vista principal',
            style: TextStyle(fontWeight: FontWeight.w400)),
      ),
      const ListTile(
        leading: Icon(Icons.repeat, size: 30),
        title:
            Text('Movimientos', style: TextStyle(fontWeight: FontWeight.w400)),
      ),
      const ListTile(
        leading: Icon(Icons.account_balance_outlined, size: 30),
        title: Text('Cuentas', style: TextStyle(fontWeight: FontWeight.w400)),
      ),
      const ListTile(
        leading: Icon(Icons.person, size: 30),
        title: Text('Perfil', style: TextStyle(fontWeight: FontWeight.w400)),
      ),
      const ListTile(
        leading: Icon(Icons.credit_card, size: 30),
        title: Text('Trajetas de crédito',
            style: TextStyle(fontWeight: FontWeight.w400)),
      ),
      const ListTile(
        leading: Icon(Icons.settings_outlined, size: 30),
        title: Text('Configuración',
            style: TextStyle(fontWeight: FontWeight.w400)),
      ),
    ];
  }

  static void handleItemSelected(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MyHomePage()),
        );
        break;
      case 1:
        //TODO
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const AccionCuentaScreen()),
        );
        break;
      case 3:
        //TODO
        break;
      case 4:
        //TODO
        break;
      case 5:
        //TODO
        break;
      default:
    }
  }
}
