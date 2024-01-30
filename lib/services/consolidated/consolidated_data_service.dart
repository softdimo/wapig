import 'dart:convert';
//import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:wapig/interfaces/consolidated_data_service.dart';
import 'package:wapig/models/consolidate_data.dart';

///Esta será la clase encargada de hacer la petición a la Api que se conectará con la base de datos
class ConsolidatedDataServiceImpl implements ConsolidatedDataService {
  final _dio = Dio();
  @override
  Future<ConsolidatedData> getConsolidatedData() async {
    //final response =
    //  await _dio.get('https://api.example.com/consolidated-data');
    //if (response.statusCode == 200) {
    //final data = jsonDecode(response.data);

    /* return ConsolidatedData(
        ingresos: data['ingresos'],
        egresos: data['egresos'],
        saldo: data['saldo'],
      ); */
    await Future.delayed(
        const Duration(seconds: 1)); // Simula un retraso de red
    return ConsolidatedData(
      ingresos: 3500000,
      egresos: 500000,
      saldo: 3000000,
    );
    //} else {
    //  throw Exception('Error al obtener los datos consolidados');
    //}
  }
}
