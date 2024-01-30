import 'package:flutter/material.dart';

/// Esta clase debe recibir el porcentaje de (egresos / ingresos) * 100
/// Debe recibir el porcentaje del saldo disponible para pintar la barra en verde
class PercentageIndicatorBar extends StatelessWidget {
  const PercentageIndicatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(
        size.width * 0.02,
        size.width * 0.01,
        size.width * 0.02,
        size.width * 0.015,
      ), // Ajuste de espacio
      child: SizedBox(
        width: size.width * 0.85,
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
