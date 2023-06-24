import 'package:work_test/features/list_of_deals/domain/entities/query_api.dart';

abstract interface class ApiRemoteSource {
  Future<List> queryApi({required QueryApi parametr});
}

class ApiRemoteSourceImpl implements ApiRemoteSource {
  @override
  Future<List> queryApi({required QueryApi parametr}) {
    throw UnimplementedError();
  }
}
