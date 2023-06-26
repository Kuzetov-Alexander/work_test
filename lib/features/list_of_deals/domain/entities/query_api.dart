import 'package:equatable/equatable.dart';

class QueryApiEntity extends Equatable {
  // final String contactFullName;
  // final String offerId;
  // final String typeOfferName;
  // final String statusName;
  // final String offerSum;

  // const QueryApiEntity({
  //   required this.contactFullName,
  //   required this.offerId,
  //   required this.typeOfferName,
  //   required this.statusName,
  //   required this.offerSum,
  // });

  final String contactFullName = 'CONTACT_TITLE';
  final String offerId = 'OFFER_ID';
  final String typeOfferName = 'OFFERS_TYPE_NAME';
  final String statusName = 'STATUS_NAME';
  final String offerSum = 'OFFER_SUM';

  @override
  List<Object?> get props => [
        contactFullName,
        offerId,
        typeOfferName,
        statusName,
        offerSum,
      ];
}
