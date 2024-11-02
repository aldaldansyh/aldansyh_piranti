import 'package:flutter/material.dart';
import 'package:sesi4/model/feed.dart';

class FeedCard extends StatefulWidget {
  final Feed feed;

  const FeedCard({
    super.key,
    required this.feed,
  });

  @override
  State<FeedCard> createState() => _FeedCardState();
}

class _FeedCardState extends State<FeedCard> {
  @override
  Widget build(BuildContext context) {
    final user = widget.feed.user;
    final content = widget.feed.content;
  
      return Card(
      child: Column(
        children: [
          //header
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(user.avatar),
            ),
              title: Text(user.name),
              subtitle: Text(user.place),
              trailing: Icon(Icons.arrow_right),
          ),
          //content
          Image.network(content.image,
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
          title: Text(content.likes,style:TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(content.description,style:TextStyle(fontWeight: FontWeight.bold)), 
          
          )
        ],
      ),
    );
  }
}