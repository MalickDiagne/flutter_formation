import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(SocialMediaUiExempleGenerated());
}

class SocialMediaUiExempleGenerated extends StatelessWidget {
  const SocialMediaUiExempleGenerated({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Réseau Social',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Réseau Social',
          style: TextStyle(
            color: Colors.white, // Couleur de texte de l'appBar
          ),
        ),
        backgroundColor: Colors.black, // Couleur de fond de l'appBar
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey[900]!, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: PostList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
              color: Colors.red, // Couleur de l'icône
            ),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.search,
              color: Colors.red,
            ),
            label: 'Recherche',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.plusSquare,
              color: Colors.red,
            ),
            label: 'Ajouter',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.bell,
              color: Colors.red,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.user,
              color: Colors.red,
            ),
            label: 'Profil',
          ),
        ],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        onTap: (int index) {
          if (index == 4) {
            // Lorsque l'utilisateur clique sur le bouton 'Profil'
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          }
        },
      ),
    );
  }
}

class PostList extends StatelessWidget {
  const PostList({Key? key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Nombre de publications simulées
      itemBuilder: (context, index) {
        return PostCard(
          username: 'Utilisateur $index',
          postText: 'Ceci est une publication #$index',
          imageUrl:
              'https://via.placeholder.com/150', // URL de l'image de la publication
        );
      },
    );
  }
}

class PostCard extends StatelessWidget {
  final String username;
  final String postText;
  final String imageUrl;

  const PostCard({
    Key? key,
    required this.username,
    required this.postText,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      elevation: 2, // Ajoute une ombre légère à la carte
      color: Colors.grey[900], // Couleur de fond de la carte
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl), // Image de profil
            ),
            title: Text(
              username,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              postText,
              style: TextStyle(
                color: Colors.white, // Couleur du texte de la publication
              ),
            ),
          ),
          Container(
            height: 300, // Hauteur de l'image de la publication
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl), // Image de la publication
                fit: BoxFit.cover,
              ),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.heart,
                  color: Colors.red, // Couleur du bouton "J'aime"
                ),
                onPressed: () {
                  // Gérer le clic sur "J'aime"
                },
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.comment,
                  color: Colors.blue,
                ),
                onPressed: () {
                  // Gérer le clic sur "Commenter"
                },
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.paperPlane,
                  color: Colors.blue,
                ),
                onPressed: () {
                  // Gérer le clic sur "Partager"
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mon Profil',
          style: TextStyle(
            color: Colors.white, // Couleur de texte de l'appBar
          ),
        ),
        backgroundColor: Colors.black, // Couleur de fond de l'appBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150'), // Photo de profil
              radius: 50.0,
            ),
            SizedBox(height: 16.0),
            Text(
              'Nom d\'utilisateur',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Description de l\'utilisateur',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      '123',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Publications',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '456',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Abonnés',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '789',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Abonnements',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Action à effectuer lorsque l'utilisateur appuie sur le bouton "Modifier le profil"
              },
              child: Text('Modifier le profil'),
            ),
          ],
        ),
      ),
    );
  }
}
