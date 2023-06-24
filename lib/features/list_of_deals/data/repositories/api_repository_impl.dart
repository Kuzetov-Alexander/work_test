import 'package:work_test/features/list_of_deals/data/datasources/api_remote_source.dart';
import 'package:work_test/features/list_of_deals/domain/entities/query_api.dart';
import 'package:work_test/features/list_of_deals/domain/repositories/api_repository.dart';

class ApiRepositoryImpl implements ApiRepository {
  final ApiRemoteSource remoteDataSource;
  ApiRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List> queryApi({required QueryApi parametr}) {
    throw UnimplementedError();
  }
}
