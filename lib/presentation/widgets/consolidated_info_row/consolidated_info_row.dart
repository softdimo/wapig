import 'package:wapig/imports/barrel.dart';

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
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: size.width * 0.05),
          child: TitleName(
            welcomeText: label,
            fontSize: 18,
            paddingTop: 0,
            paddingBottom: 0,
            typeText: FontWeight.normal,
            isSansita: false,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: size.width * 0.05),
          child: TitleName(
            welcomeText: value,
            fontSize: 18,
            colorText: valueColor,
            paddingTop: 0,
            paddingBottom: 0,
            typeText: FontWeight.normal,
            isSansita: false,
          ),
        ),
      ],
    );
  }
}
