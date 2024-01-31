import 'package:flutter/material.dart';
import 'package:wapig/models/consolidate_data.dart';
import 'package:wapig/presentation/widgets/consolidated_info_row/consolidated_info_row.dart';
import 'package:wapig/presentation/widgets/progress_indicator/progress_indicator.dart';
import 'package:wapig/presentation/widgets/title_text/title_name.dart';
import 'package:wapig/services/currency_format/currency_format.dart';

class ConsolidatedService extends StatelessWidget {
  final ConsolidatedData data;

  const ConsolidatedService({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: const Color.fromARGB(204, 173, 173, 178)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TitleName(
            welcomeText: 'Consolidado',
            fontSize: 20,
            paddingTop: 0,
            paddingBottom: 0,
            typeText: FontWeight.normal,
            isSansita: false,
          ),
          ConsolidatedInfoRow(
            label: 'Ingresos:',
            value: CurrencyFormatter.formatColombianPesos(data.ingresos),
            valueColor: const Color.fromRGBO(20, 176, 27, 1),
          ),
          ConsolidatedInfoRow(
            label: 'Egresos:',
            value: CurrencyFormatter.formatColombianPesos(data.egresos),
            valueColor: const Color.fromRGBO(242, 8, 8, 1),
          ),
          ConsolidatedInfoRow(
            label: 'Saldo:',
            value: CurrencyFormatter.formatColombianPesos(data.saldo),
            valueColor: const Color.fromRGBO(51, 97, 151, 1),
          ),
          const PercentageIndicatorBar(),
        ],
      ),
    );
  }
}
