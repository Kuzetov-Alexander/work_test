import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work_test/features/list_of_deals/domain/entities/query_api.dart';
import 'package:work_test/features/list_of_deals/domain/usecases/api_case.dart';
import 'package:work_test/features/list_of_deals/presentation/bloc/api_bloc_state.dart';
import 'api_bloc_event.dart';

class ApiBloc extends Bloc<ApiBlocEvent, ApiBlocState> {
  final ApiCase useCase;

  ApiBloc({required this.useCase}) : super(InitialState()) {
    on<GetApiEvent>((event, emit) async {
      emit(DownloadingQueryState());
      try {
        await useCase
            .query(params: QueryApiEntity())
            // params: const QueryApiEntity(
            //     contactFullName: 'CONTACT_TITLE',
            //     offerId: 'OFFER_ID',
            //     typeOfferName: 'OFFERS_TYPE_NAME',
            //     statusName: 'STATUS_NAME',
            //     offerSum: 'OFFER_SUM'))
            .then(
              (value) => emit(
                GetApiQueryState(queryData: value),
              ),
            );
      } catch (error) {
        log('Ошибка запроса $error');
      }
    });
  }
}
