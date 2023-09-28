import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> fetchDataV1() async {
  final headers = {
    'X-RapidAPI-Key': '1deaf78d2dmsh00c610e4f534f9fp1f8961jsn3a6cd3593b78',
    'X-RapidAPI-Host': 'api-nba-v1.p.rapidapi.com',
  };

  final response = await http.get(
    Uri.parse('https://api-nba-v1.p.rapidapi.com/seasons'),
    headers: headers,
  );

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    print(data);
  } else {
    throw Exception('Échec de la récupération des données.');
  }
}
