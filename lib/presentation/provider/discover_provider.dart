import 'package:flutter/material.dart';

//Esta es nuetra clase de provider para manejar los estados
class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true; //Bandera de carga de aplicación
 
  Future<void> loadNextpage() async {
    await Future.delayed(const Duration(milliseconds: 500));

    initialLoading = false;
    notifyListeners();
  }
}
