import 'package:equatable/equatable.dart';

class QueryApi extends Equatable {
  final String contactFullName;
  final int offerId;
  final String typeOfferName;
  final String statusName;
  final String offerSum;

  const QueryApi({
    required this.contactFullName,
    required this.offerId,
    required this.typeOfferName,
    required this.statusName,
    required this.offerSum,
  });

  @override
  List<Object?> get props => [
        contactFullName,
        offerId,
        typeOfferName,
        statusName,
        offerSum,
      ];
}
