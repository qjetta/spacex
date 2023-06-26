// ignore_for_file: unused_import

import 'dart:convert';
import 'dart:io';

import 'package:spacex/controller/space_x_exception.dart';
import 'package:spacex/main.dart';
import 'package:spacex/model/crew/crew.dart';
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
  static const baseUrl = 'https://api.spacexdata.com/v4';
  static const launchesPath = '/launches';
  static const crewPath = '/crew';
  static const queryPath = '/query';
  static const contentTypeName = 'Content-Type';
  static const contentTypeValue = 'application/json';

  Future<Crew> fetchCrew() async {
    final jsonResponse = await _postRequestWithResponse(
      requestBody: null,
      urlSuffix: crewPath,
      method: EMethod.get,
    );

    final rawList = jsonDecode(jsonResponse.body);

    return Crew.fromJson({'crew': rawList});
  }

  @override
  Future<SimpleLaunches> fetchLaunches({required LaunchesQuery query}) async {
    final String requestBody = jsonEncode(query.toJson());
    final jsonResponse = await _postRequest(
      requestBody: requestBody,
      urlSuffix: '$launchesPath$queryPath',
      method: EMethod.post,
    );
    return SimpleLaunches.fromJson(jsonResponse);
  }

  @override
  Future<Launch> fetchLaunch({required String id}) async {
    final jsonResponse = await _postRequest(urlSuffix: '$launchesPath/$id');
    return Launch.fromJson(jsonResponse);
  }

  Future<Map<String, dynamic>> _postRequest({
    String? requestBody,
    String urlSuffix = '',
    EMethod method = EMethod.get,
  }) async {
    http.Response response = await _postRequestWithResponse(
      requestBody: requestBody,
      urlSuffix: urlSuffix,
      method: method,
    );
    final jsonResponse = jsonDecode(response.body);
    logger.d(jsonResponse);
    return jsonResponse;
  }

  Future<http.Response> _postRequestWithResponse({
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
        return response;
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
