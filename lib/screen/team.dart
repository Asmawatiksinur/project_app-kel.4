import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Team'),
        backgroundColor: Color.fromRGBO(12, 135, 192, 1),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          teamMember(
            imageUrl: 'assets/images/aida.png',
            name: 'Nur Aida Azzuhra',
            role: 'Programmer',
            facebookUrl: 'https://facebook.com',
            twitterUrl: 'https://twitter.com',
            instagramUrl: 'https://instagram.com',
          ),
          SizedBox(height: 20.0),
          teamMember(
            imageUrl: 'assets/images/nur.png',
            name: 'Nurasmawati',
            role: 'Desainer',
            facebookUrl: 'https://facebook.com',
            twitterUrl: 'https://twitter.com',
            instagramUrl: 'https://instagram.com',
          ),
          SizedBox(height: 20.0),
          teamMember(
            imageUrl: 'assets/images/sani.png',
            name: 'Muhammad Sani',
            role: 'Programmer',
            facebookUrl: 'https://facebook.com',
            twitterUrl: 'https://twitter.com',
            instagramUrl: 'https://instagram.com',
          ),
          SizedBox(height: 20.0),
          teamMember(
            imageUrl: 'assets/images/renki.jpeg',
            name: 'Renki Gunawan',
            role: 'Desainer',
            facebookUrl: 'https://facebook.com',
            twitterUrl: 'https://twitter.com',
            instagramUrl: 'https://instagram.com',
          ),
          SizedBox(height: 20.0),
          teamMember(
            imageUrl: 'assets/images/azura.jpeg',
            name: 'Azura Ridanti Arasyid',
            role: 'Programmer',
            facebookUrl: 'https://facebook.com',
            twitterUrl: 'https://twitter.com',
            instagramUrl: 'https://instagram.com',
          ),
        ],
      ),
    );
  }

  Widget teamMember({
    required String imageUrl,
    required String name,
    required String role,
    required String facebookUrl,
    required String twitterUrl,
    required String instagramUrl,
  }) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imageUrl, height: 150, width: 150, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
          ),
          Text(role, style: TextStyle(fontSize: 14.0)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                socialMediaIcon(facebookUrl, Icons.facebook),
                SizedBox(width: 10.0),
                // socialMediaIcon(twitterUrl, FlutterIcons.twitter_ent),
                // SizedBox(width: 10.0),
                // socialMediaIcon(instagramUrl, FlutterIcons.instagram_ant),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget socialMediaIcon(String url, IconData icon) {
    return InkWell(
      onTap: () {
        // You can use url_launcher package to launch URL
        // launch(url);
      },
      child: Icon(icon, size: 30.0),
    );
  }
}

void main() => runApp(MaterialApp(
  home: TeamPage(),
));
