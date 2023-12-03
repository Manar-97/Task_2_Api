import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:task_2/movie_model.dart';

class ApiService {
  final String apiUrl;

  ApiService(this.apiUrl);

  Future<List<UserProfile>> fetchuserProfils() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => UserProfile.fromJson(json)).toList();
    } else {
      throw Exception("Fiald to load data");
    }
  }
}
