import 'dart:convert';

import 'package:spacex/controller/space_x_exception.dart';
import 'package:spacex/main.dart';
import 'package:spacex/model/launches/launches_query.dart';
import 'package:spacex/model/launches/launches_simple_model.dart';
import 'package:http/http.dart' as http;

abstract class IRepository {
  static var defaultPageSize = 10;

  Future<SimpleLaunches> fetchLaunches({required LaunchesQuery query});
}

class Repository implements IRepository {
  final http.Client _httpClient = http.Client();
  final url = 'https://api.spacexdata.com/v4/launches/query';
  static const contentTypeName = 'Content-Type';
  static const contentTypeValue = 'application/json';

  @override
  Future<SimpleLaunches> fetchLaunches({required LaunchesQuery query}) async {
    final headers = <String, String>{
      contentTypeName: contentTypeValue,
    };

    final requestBody = jsonEncode(query.toJson());
    logger.d(requestBody);

    try {
      final response = await _httpClient.post(Uri.parse(url),
          headers: headers, body: requestBody);

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        logger.d(jsonResponse);
        return SimpleLaunches.fromJson(jsonResponse);
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
    //TODO do I need it?
  }
}
