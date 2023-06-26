import 'package:work_test/features/list_of_deals/domain/entities/query_api.dart';
import 'package:work_test/features/list_of_deals/domain/repositories/api_repository.dart';

abstract interface class UseCase {
  Future<List<dynamic>> query({required QueryApiEntity params});
}

class ApiCase implements UseCase {
  final ApiRepository repository;

  ApiCase({required this.repository});

  @override
  Future<List<dynamic>> query({required QueryApiEntity params}) async {
    return await repository.queryApi(params: params);
  }
}
