import 'package:wapig/services/consolidated/consolidated_data_service.dart';

class ConsolidatedData {
  double? ingresos; // Permite valores null inicialmente
  double? egresos;
  double? saldo;

  ConsolidatedData({
    required this.ingresos,
    required this.egresos,
    required this.saldo,
  });

  factory ConsolidatedData.fromApi() {
    final apiData = _getConsolidatedDataFromApi(); // No se usa await aquí
    return ConsolidatedData._fromApiData(apiData);
  }

  static Future<ConsolidatedData> _getConsolidatedDataFromApi() async {
    final consolidatedDataService = ConsolidatedDataServiceImpl();
    final consolidatedData = await consolidatedDataService.getConsolidatedData();
    return ConsolidatedData(
      ingresos: consolidatedData.ingresos,
      egresos: consolidatedData.egresos,
      saldo: consolidatedData.saldo,
    );
  }

  ConsolidatedData._fromApiData(Future<ConsolidatedData> apiData) {
    // Espera a que el Future se complete dentro del constructor
    apiData.then((data) {
      ingresos = data.ingresos;
      egresos = data.egresos;
      saldo = data.saldo;
    });
  }
}
