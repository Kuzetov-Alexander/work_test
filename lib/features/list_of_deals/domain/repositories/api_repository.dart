import 'package:work_test/features/list_of_deals/domain/entities/query_api.dart';

abstract interface class ApiRepository {
  Future<List<dynamic>> queryApi({required QueryApiEntity params});
}
