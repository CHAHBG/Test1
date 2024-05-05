import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<List<dynamic>?> makeApiRequest(String url, String token, {Map<String, String>? headers}) async {
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'token': token,
          ...?headers,
        },
      );

      if (kDebugMode) {
        print('Response received: ${response.statusCode}');
      }

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        if (kDebugMode) {
          print('Failed to load data: ${response.body}');
        }
        return null;
      }
    } catch (error) {
      if (kDebugMode) {
        print('Failed to load data: $error');
      }
      return null;
    }
  }
}
