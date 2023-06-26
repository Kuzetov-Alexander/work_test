import 'package:work_test/features/list_of_deals/data/datasources/api_remote_source.dart';
import 'package:work_test/features/list_of_deals/domain/repositories/api_repository.dart';

class ApiRepositoryImpl implements ApiRepository {
  final ApiRemoteSourceImpl remoteDataSource;
  ApiRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<dynamic>> queryApi() async {
    try {
      return await remoteDataSource.queryApi();
    } catch (error) {
      print('$error');
      return [];
    }
  }
}
