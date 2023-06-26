import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:work_test/features/list_of_deals/domain/entities/query_api.dart';

abstract interface class ApiRemoteSource {
  Future<List<dynamic>> queryApi({required QueryApiEntity params});
}

class ApiRemoteSourceImpl implements ApiRemoteSource {
  @override
  Future<List<dynamic>> queryApi({required QueryApiEntity params}) async {
    var headers = {
      'Content-Type': 'application/json',
      'Cookie': 'crm_uuid=10813_0c0a9a2f86eab09196705a274378b64a'
      // вообще не нужно
    };
    var request = http.Request(
      'POST',
      Uri.parse(
          'https://nastintesthodl.stocrm.ru/api/external/v1/offers/get_from_filter'),
    );
    request.body = json.encode({
      "SID": "10813_0c0a9a2f86eab09196705a274378b64a",
      "FILTER": {"BOARD_ID": 1843},
      "REQUIRED_FIELDS": ["CAR_NUMBER_FLAT", (params.offerSum)],
      "VISUAL_FIELDS": [
        (params.contactFullName),
        (params.offerId),
        (params.typeOfferName),
        (params.statusName)
      ],
      "PAGE": 1,
      "LIMIT": 12
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String responseBody = await response.stream.bytesToString();
      Map<String, dynamic> data = json.decode(responseBody);
      final res = data['RESPONSE'];
      final result = res['DATA'];
      return result;
    } else {
      log('${response.reasonPhrase}');
      return [];
    }
  }
}
