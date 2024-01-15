import 'package:flutter/material.dart';

class LogoSoftdimo extends StatelessWidget {
  final double width;
  final double height;

  const LogoSoftdimo({
    super.key, 
    this.width = 120,
    this.height = 60
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Image.asset(
      'assets/images/logo_b_n.png',
      width: size.width * width,
      height: size.height * height
    );
  }
}