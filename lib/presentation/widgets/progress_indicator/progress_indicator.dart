import 'package:flutter/material.dart';

/// Esta debe ser una clase que se encargará de realizar 
/// el cálculo del porcentaje para mostrárlo en la barra de progreso
/// Esta clase debe recibir el porcentaje de (egresos / ingresos) * 100
class PercentageIndicatorBar extends StatelessWidget {
  const PercentageIndicatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 16), // Ajuste de espacio
      child: SizedBox(
        width: size.width * 0.9,
        child: const LinearProgressIndicator(
          value: 0.86, // Ajusta el valor según tus variables
          backgroundColor: Colors.red,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          minHeight: 10,
        ),
      ),
    );
  }
}
