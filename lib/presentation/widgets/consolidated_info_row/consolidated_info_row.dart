import 'package:flutter/material.dart';
import 'package:wapig/presentation/widgets/title_text/title_name.dart';

class ConsolidatedInfoRow extends StatelessWidget {
  final String label;
  final String value;
  final Color valueColor;

  const ConsolidatedInfoRow({
    super.key, 
    required this.label,
    required this.value,
    required this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleName(
          welcomeText: label,
          fontSize: 18,
          paddingTop: 0,
          paddingBottom: 0,
          typeText: FontWeight.normal,
          isSansita: false,
        ),
        TitleName(
          welcomeText: value,
          fontSize: 18,
          colorText: valueColor,
          paddingTop: 0,
          paddingBottom: 0,
          typeText: FontWeight.normal,
          isSansita: false,
        ),
      ],
    );
  }
}
