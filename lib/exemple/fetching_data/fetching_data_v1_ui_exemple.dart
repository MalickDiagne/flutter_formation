import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyAppFetchingDataV1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Liste des Années NBA'),
        ),
        body: PlayerList(), // Utilisation du widget PlayerList
      ),
    );
  }
}

class PlayerList extends StatefulWidget {
  @override
  _PlayerListState createState() => _PlayerListState();
}

class _PlayerListState extends State<PlayerList> {
  List<dynamic> players = []; // Liste pour stocker les années récupérées

  @override
  void initState() {
    super.initState();
    fetchData(); // Appeler la fonction fetchData au démarrage du widget
  }

  Future<void> fetchData() async {
    // final headers = {
    //   'X-RapidAPI-Key': '1deaf78d2dmsh00c610e4f534f9fp1f8961jsn3a6cd3593b78',
    //   'X-RapidAPI-Host': 'api-nba-v1.p.rapidapi.com',
    // };

    final response =
        await http.get(Uri.parse('https://www.balldontlie.io/api/v1/players')
            // headers: headers,
            );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final responseList = data['data'] as List<dynamic>;
      setState(() {
        players = responseList;
      });
      print('Récupération réussi');
    } else {
      print(response.statusCode);
      throw Exception('Échec de la récupération des données.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: players.isEmpty
          ? CircularProgressIndicator() // Afficher un indicateur de chargement en attendant les données
          : ListView.builder(
              itemCount: players.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(players[index]['first_name']),
                );
              },
            ),
    );
  }
}
