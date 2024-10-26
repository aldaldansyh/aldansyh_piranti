import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const url = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvfSAm8AIdeGpNIgXwYkdTofJ9LniCrKIYyQ&s';
    return Card(
      child: Column(
        children: [
          //header
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(url),
            ),
              title: Text('Michael'),
              subtitle: Text('Tasik Malaya'),
              trailing: Icon(Icons.arrow_right),
          ),
          //content
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSa2PWk1Hb_jJKR_YXFLq-2puf6SACR8XAyg&s',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.5,
          fit: BoxFit.cover,
          ),
          //footer
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
            Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            Icon(
              Icons.message,
              color: Color.fromARGB(255, 0, 0, 0),
              size: 24.0,
            ),
            Icon(
              Icons.share,
              color: Color.fromARGB(255, 6, 11, 16),
              size: 24.0,
            ),
  ],
),
          ListTile(
          title: Text('1.635 Likes',style:TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text('Michael: Sunday Funday',style:TextStyle(fontWeight: FontWeight.bold)), 
          
          )
        ],
      ),
    );
  }
}