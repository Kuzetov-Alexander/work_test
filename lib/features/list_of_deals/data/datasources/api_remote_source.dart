import 'dart:convert';

import 'package:http/http.dart' as http;

abstract interface class ApiRemoteSource {
  Future<List<dynamic>> queryApi();
}

class ApiRemoteSourceImpl implements ApiRemoteSource {
  @override
  Future<List<dynamic>> queryApi() async {
    var headers = {
      'Content-Type': 'application/json',
      'Cookie': 'crm_uuid=10813_0c0a9a2f86eab09196705a274378b64a'
    };
    var request = http.Request(
      'POST',
      Uri.parse(
          'https://nastintesthodl.stocrm.ru/api/external/v1/offers/get_from_filter'),
    );
    request.body = json.encode({
      "SID": "10813_0c0a9a2f86eab09196705a274378b64a",
      "FILTER": {"BOARD_ID": 1843},
      "REQUIRED_FIELDS": ["CAR_NUMBER_FLAT"],
      "VISUAL_FIELDS": [
        "CONTACT_TITLE",
        "OFFER_ID",
        "OFFERS_TYPE_NAME",
        "STATUS_NAME",
        "OFFER_SUM"
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

      // Process the resultList further if needed
      print(result);
      return result;
    } else {
      print(response.reasonPhrase);
      return []; // or return null, depending on your needs
    }
  }
}
