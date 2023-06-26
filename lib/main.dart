import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work_test/features/list_of_deals/data/datasources/api_remote_source.dart';
import 'package:work_test/features/list_of_deals/data/repositories/api_repository_impl.dart';
import 'package:work_test/features/list_of_deals/domain/repositories/api_repository.dart';
import 'package:work_test/features/list_of_deals/presentation/bloc/api_bloc.dart';
import 'package:work_test/features/list_of_deals/presentation/pages/my_home_page.dart';
import 'package:provider/provider.dart';
import 'package:work_test/features/list_of_deals/presentation/providers/api_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ApiProvider>(
          create: (context) => ApiProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ApiRepository>(
          lazy: false,
          create: (context) => ApiRepositoryImpl(
            remoteDataSource: ApiRemoteSourceImpl(),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ApiBloc>(
            lazy: false,
            create: (context) => ApiBloc(
              useCase: RepositoryProvider.of<ApiRepository>(context),
            ),
          ),
        ],
        child: MaterialApp(
          theme: ThemeData(),
          home: const MyHomePage(),
        ),
      ),
    );
  }
}
