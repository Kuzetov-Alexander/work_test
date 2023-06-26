import 'dart:developer';
import 'package:work_test/features/list_of_deals/data/datasources/api_remote_source.dart';
import 'package:work_test/features/list_of_deals/domain/entities/query_api.dart';
import 'package:work_test/features/list_of_deals/domain/repositories/api_repository.dart';

class ApiRepositoryImpl implements ApiRepository {
  final ApiRemoteSourceImpl remoteDataSource;
  ApiRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<dynamic>> queryApi({required QueryApiEntity params}) async {
    try {
      return await remoteDataSource.queryApi(params: params);
    } catch (error) {
      log('$error');
      return [];
    }
  }
}
