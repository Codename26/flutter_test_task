import 'package:http/http.dart' as http;

class RandomUserApi {
  final String baseUrl = 'https://randomuser.me/api/?format=json&results=15';

  Future<http.Response> getRandomUsers() async {
    final Uri uri = Uri.parse('$baseUrl');
    return await http.get(uri);
  }
}
