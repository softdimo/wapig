import 'package:wapig/imports/barrel.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int _currentSelectedItem = 0;
  @override
  Widget build(BuildContext context) {
    final List<ListTile> items = SideMenuItems.getItems();

    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            //padding: EdgeInsets.only(top: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/perfil.png'),
                ),
                SizedBox(height: 10),
                Text(
                    'Pablo Lara'), //Aqui se debe mostrar el nombre de usuario desde la BD
              ],
            ),
          ),
          for (int i = 0; i < items.length; i++)
            ListTile(
              leading: items[i].leading,
              title: items[i].title,
              selected: i == _currentSelectedItem,
              onTap: () {
                setState(() {
                  _currentSelectedItem = i;
                });
                SideMenuItems.handleItemSelected(context, i);
              },
            ),
        ],
      ),
    );
  }
}
