import 'dart:convert';

import 'package:spacex/controller/space_x_exception.dart';
import 'package:spacex/main.dart';
import 'package:spacex/model/launches_query.dart';
import 'package:spacex/model/launches_simple_model.dart';
import 'package:http/http.dart' as http;

abstract class IRepository {}

class Repository {
  final http.Client _httpClient = http.Client();
  final url = 'https://api.spacexdata.com/v4/launches/query';
  static const contentTypeName = 'Content-Type';
  static const contentTypeValue = 'application/json';

  Future<LaunchesSimpleModel> fetchLaunches(
      {required LaunchesQuery query}) async {
    final headers = <String, String>{
      contentTypeName: contentTypeValue,
    };

    final requestBody = jsonEncode(query.toJson());

    try {
      final response = await _httpClient.post(Uri.parse(url),
          headers: headers, body: requestBody);

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        logger.d(jsonResponse);
        return LaunchesSimpleModel.fromJson(jsonResponse);
      } else {
        String msg = 'Failed to fetch launches: ${response.statusCode}';
        logger.e(msg);
        throw SpaceXException(msg);
      }
    } catch (e) {
      String msg = 'Failed to fetch launches: $e';
      logger.e(msg);
      throw SpaceXException(msg);
    }
  }

  init() {
    //TODO load filters from shared preferences
  }
}
