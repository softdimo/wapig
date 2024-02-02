import 'package:flutter/material.dart';
import 'package:wapig/presentation/widgets/floatingButton/floating_button.dart';

class FloatingButtonWithText extends StatelessWidget {
  final String text;
  final bool isClicked;
  final void Function() onPressed;
  final IconData? icon;
  final Color colorButtom;
  final Color colorIcon;
  final double sizeIcon;

  const FloatingButtonWithText({
    super.key,
    required this.text,
    this.isClicked = false,
    required this.onPressed,
    required this.icon,
    required this.colorButtom,
    required this.colorIcon,
    required this.sizeIcon,

  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        SizedBox(width: size.width * 0.03),
        FloatingButtonWidget(
          onPressed: onPressed,
          colorButtom: colorButtom,
          icon: icon,
          colorIcon: colorIcon,
          size: sizeIcon,
        )
      ],
    );
  }
}

