import 'package:intl/intl.dart';

///Esta clase le aplica formato a los valores de moneda que se van a mostrar en cada una de las pantallas
///Recibe un valor de tipo double y retorna un String
class CurrencyFormatter {
  static String formatColombianPesos(double value) {
    NumberFormat formatter = NumberFormat.currency(
      locale: 'es_CO',
      symbol: '\$',
      decimalDigits: 0,  // Adjust decimal digits as needed
    );
    return formatter.format(value);
  }
}