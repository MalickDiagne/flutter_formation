import 'package:flutter/material.dart';
import 'package:hotels/exemple/fetching_data_with_model/model/player_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyAppFetchingDataWithModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Liste des Joueurs NBA'),
        ),
        body: PlayerList(), // Utilisation du widget PlayerList
      ),
    );
  }
}

class PlayerList extends StatelessWidget {
  Future<List<Player>> fetchData() async {
    final response =
        await http.get(Uri.parse('https://www.balldontlie.io/api/v1/players'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final responseList = data['data'] as List<dynamic>;
      final players = responseList.map((playerData) {
        return Player.fromJson(playerData);
      }).toList();
      return players;
    } else {
      throw Exception('Échec de la récupération des données.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Player>>(
      future: fetchData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Erreur de chargement des données'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('Aucun joueur trouvé'));
        } else {
          final players = snapshot.data!;
          return ListView.builder(
            itemCount: players.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                    '${players[index].firstName} ${players[index].lastName}'),
                subtitle: Text(players[index].team.fullName),
              );
            },
          );
        }
      },
    );
  }
}

void main() {
  runApp(MyAppFetchingDataWithModel());
}
