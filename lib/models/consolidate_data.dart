import 'package:wapig/services/consolidated/consolidated_data_service.dart';

class ConsolidatedData {
  double ingresos; // Permite valores null inicialmente
  double egresos;
  double saldo;

  ConsolidatedData({
    required this.ingresos,
    required this.egresos,
    required this.saldo,
  });

  static Future<ConsolidatedData> fromApi() async {

    final apiData = await _getConsolidatedDataFromApi();

    return ConsolidatedData(
      ingresos: apiData.ingresos,
      egresos: apiData.egresos,
      saldo: apiData.saldo,
    );
  }

  static Future<ConsolidatedData> _getConsolidatedDataFromApi() async {
    
    final consolidatedDataService = ConsolidatedDataServiceImpl();
    final consolidatedData =
        await consolidatedDataService.getConsolidatedData();

    return consolidatedData;
  }
}
