import 'dart:convert';

import 'package:dio/dio.dart';

class Router {
  Dio dio = Dio();

  Future<dynamic> get({required String url}) async {
    try {
      print('Get: $url');

      final response = await dio.get(url);

      print('Get-Response: ${response.data}');

      return response.data.runtimeType == String
          ? json.decode(response.data)
          : response.data;
    } catch (e) {
      print('Get-Error: $e');
      rethrow;
    }
  }

  Future<dynamic> post({required String url, dynamic body}) async {
    try {
      print('Post: $url');
      print("Json Encode: ${jsonEncode(body)}");

      final response = await dio.post(
        url,
        data: body,
      );

      print('Post-Response: ${response.data}');

      return response;
    } catch (e) {
      print('Post-Error: ${e.runtimeType}');
      rethrow;
    }
  }
}

enum ApiServiceProvider {
  activeDirectory,
  stripe,
}
