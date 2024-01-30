import 'package:wapig/models/consolidate_data.dart';

abstract class ConsolidatedDataService {
  Future<ConsolidatedData> getConsolidatedData();
}
