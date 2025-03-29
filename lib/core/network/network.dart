import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class BaseNetwork {
  Future<dynamic> get({required String url, Map<String, String>? query});
}

class HttpNetwork implements BaseNetwork {
  @override
  Future<dynamic> get({required String url, Map<String, dynamic>? query}) async {
    final uri = Uri.parse(url).replace(queryParameters: query);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
