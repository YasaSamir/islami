import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:islamii/features/home/data/model/suwar_model.dart';

class SuwerRemoteDataSource {
  Future<List<SuwarModel>> getSuwar() async {
    try {
      print("Fetching data..."); // Debug log
      final response = await http.get(
        Uri.parse('https://api.alquran.cloud/v1/surah'),
      );

      print("Response Status: ${response.statusCode}"); // Debug log

      if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> data = json['data'];
        print("Data received: ${data.length} suras"); // Debug log
        return data.map((e) => SuwarModel.fromJson(e)).toList();
      } else {
        throw Exception('Server Error: ${response.statusCode}');
      }
    } catch (e) {
      print(
          "Network Error: $e"); // This will show you if it's a timeout or permission issue
      rethrow;
    }
  }
}
