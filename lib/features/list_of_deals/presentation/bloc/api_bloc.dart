import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work_test/features/list_of_deals/domain/repositories/api_repository.dart';
import 'package:work_test/features/list_of_deals/presentation/bloc/api_bloc_state.dart';
import 'api_bloc_event.dart';

class ApiBloc extends Bloc<ApiBlocEvent, ApiBlocState> {
  final ApiRepository useCase;

  ApiBloc({required this.useCase}) : super(InitialState()) {
    on<ApiBlocEvent>((event, emit) async {
      try {
        await useCase.queryApi().then(
              (value) => emit(
                GetApiQueryState(queryData: value),
              ),
            );
      } catch (error) {
        print('Ошибка запроса $error');
      }
    });
  }
}
