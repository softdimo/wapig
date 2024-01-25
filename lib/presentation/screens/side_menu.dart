import 'package:flutter/material.dart';
class SideMenu extends StatefulWidget {
  final Function(int index) onItemSelected; // Agrega un parámetro para la función

  const SideMenu({super.key, required this.onItemSelected}); // Requiere el parámetro

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int _currentSelectedItem = 0;
@override
  Widget build(BuildContext context) {
  final List<ListTile> items = [
    ListTile(
      title: const Text('Vista principal'),
      onTap: () {
        setState(() {
          _currentSelectedItem = 0;
        });
      },
    ),
    ListTile(
      title: const Text('Perfil', ),
      onTap: () {
        setState(() {
          _currentSelectedItem = 1;
        });
      },
    ),
    ListTile(
      title: const Text('Configuración'),
      onTap: () {
        setState(() {
          _currentSelectedItem = 2;
        });
      },
    ),
  ];

  
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/logoWapig.png'),
                ),
                SizedBox(height: 10),
                Text('Pablo Lara'),
              ],
            ),
          ),
          for (int i = 0; i < items.length; i++)
            ListTile(
              title: items[i].title,
              selected: i == _currentSelectedItem,
              onTap: () {
                widget.onItemSelected(i); // Llama a la función desde la propiedad widget
              },
            ),
        ],
      ),
    );
  }
}