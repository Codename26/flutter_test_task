import 'package:http/http.dart' as http;

class RandomUserApi {
  final String baseUrl = 'https://randomuser.me/api/';

  Future<http.Response> getRandomUsers() async {
    final Uri uri = Uri.parse('$baseUrl');

    // Map<String, String> headers = {
    //   'Content-Type': 'application/json',
    // };

    return await http.get(uri);
  }
}
