import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  final double width;

  const LogoImage({
    super.key,
    required this.width
  });

  @override
  Widget build(BuildContext context) {
    return _LogoImage(
      width: width
    );
  }
}

class _LogoImage extends StatelessWidget {
  final double width;

  const _LogoImage({
    required this.width
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Image.asset(
      'assets/images/logoWapig.png',
      width: size.width * width,
      fit: BoxFit.contain,
    );
  }
}
