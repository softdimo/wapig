import 'package:flutter/material.dart';

class FloatingButtonWidget extends StatelessWidget {
  final bool isClicked;
  final void Function() onPressed;
  final IconData? icon;
  final Color colorButtom;
  final Color colorIcon;
  final double size;

  const FloatingButtonWidget({
    super.key,
    this.isClicked = false,
    required this.onPressed,
    this.icon = Icons.add,
    this.colorButtom = const Color.fromARGB(255, 25, 94, 113),
    this.colorIcon = Colors.white,
    this.size = 40,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: FloatingActionButton(
            onPressed: onPressed,
            backgroundColor: colorButtom,
            shape: const CircleBorder(),
            child: Icon(
              icon,
              color: colorIcon,
              size: size,
            )));
  }
}
