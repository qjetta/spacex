import 'dart:convert';

import 'package:spacex/controller/space_x_exception.dart';
import 'package:spacex/main.dart';
import 'package:spacex/model/launch/launch.dart';
import 'package:spacex/model/launches/launches_query.dart';
import 'package:spacex/model/launches/launches_simple_model.dart';
import 'package:http/http.dart' as http;

enum EMethod {
  get,
  post,
  put,
  delete,
}

abstract class IRepository {
  static var defaultPageSize = 10;

  Future<SimpleLaunches> fetchLaunches({required LaunchesQuery query});
  Future<Launch> fetchLaunch({required String id});
}

class Repository implements IRepository {
  final http.Client _httpClient = http.Client();
  final baseUrl = 'https://api.spacexdata.com/v4/launches';
  static const contentTypeName = 'Content-Type';
  static const contentTypeValue = 'application/json';

  @override
  Future<SimpleLaunches> fetchLaunches({required LaunchesQuery query}) async {
    final String requestBody = jsonEncode(query.toJson());
    final jsonResponse = await _postRequest(
      requestBody: requestBody,
      urlSuffix: '/query',
      method: EMethod.post,
    );
    return SimpleLaunches.fromJson(jsonResponse);
  }

  @override
  Future<Launch> fetchLaunch({required String id}) async {
    final jsonResponse = await _postRequest(urlSuffix: '/$id');
    return Launch.fromJson(jsonResponse);
  }

  Future<Map<String, dynamic>> _postRequest({
    String? requestBody,
    String urlSuffix = '',
    EMethod method = EMethod.get,
  }) async {
    final headers = <String, String>{
      contentTypeName: contentTypeValue,
    };
    logger.d(requestBody);
    try {
      var url = baseUrl + urlSuffix;
      logger.d(url);
      logger.d(requestBody);
      http.Response response = await _sendRequest(
        url: url,
        headers: headers,
        requestBody: requestBody,
        method: method,
      );

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        logger.d(jsonResponse);
        return jsonResponse;
      } else {
        String msg = 'Failed to fetch launches: ${response.statusCode}';
        logger.e(msg);
        throw SpaceXException(msg);
      }
    } on SpaceXException {
      rethrow;
    } catch (e) {
      String msg = 'Failed to fetch launches: $e';
      logger.e(msg);
      throw SpaceXException(msg);
    }
  }

  Future<http.Response> _sendRequest({
    required EMethod method,
    required String url,
    required Map<String, String> headers,
    required String? requestBody,
  }) async {
    switch (method) {
      case EMethod.post:
        return await _httpClient.post(
          Uri.parse(url),
          headers: headers,
          body: requestBody,
        );

      case EMethod.put:
        return await _httpClient.put(
          Uri.parse(url),
          headers: headers,
          body: requestBody,
        );

      case EMethod.delete:
        return await _httpClient.delete(
          Uri.parse(url),
          headers: headers,
          body: requestBody,
        );

      case EMethod.get:
        return await _httpClient.get(
          Uri.parse(url),
          headers: headers,
        );
      default:
        throw SpaceXException('Unknown method: $method');
    }
  }

  init() {
    //TODO do I need it?
  }
}
