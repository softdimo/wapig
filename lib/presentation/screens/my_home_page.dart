import 'package:flutter/material.dart';
import 'side_menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Título de la pantalla'),
      ),
      drawer: SideMenu(onItemSelected: (int index) {  },),
      body: const Center(
        child: Text('Contenido de la pantalla'),
      ),
    );
  }

  void onItemSelected(int index) {
    // Implementa la lógica para manejar la selección del item
  }
}
