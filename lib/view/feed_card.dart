import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Feed',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FeedScreen(),
    );
  }
}

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram Feed'),
      ),
      body: ListView.builder(
        itemCount: 10, // Jumlah post, sesuaikan dengan jumlah data
        itemBuilder: (context, index) {
          return const FeedCard();
        },
      ),
    );
  }
}

class FeedCard extends StatelessWidget {
  const FeedCard({super.key});

  @override
  Widget build(BuildContext context) {
    const profileImageUrl =
        'https://images.pexels.com/photos/8795876/pexels-photo-8795876.jpeg?auto=compress&cs=tinysrgb&w=600';
    const contentImageUrl =
        'https://images.pexels.com/photos/4082543/pexels-photo-4082543.jpeg?auto=compress&cs=tinysrgb&w=600';

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(profileImageUrl),
              ),
              title: Text('Mpiii Cancii'),
              subtitle: Text('Soreang, Bandung'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          // Content Image
          Image.network(
            contentImageUrl,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.8,
            fit: BoxFit.cover,
          ),
          // Footer (Likes, Comments, Share)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(Icons.favorite_border),
                    SizedBox(width: 8),
                    Icon(Icons.chat_bubble_outline),
                    SizedBox(width: 8),
                    Icon(Icons.send),
                  ],
                ),
                const Icon(Icons.bookmark_border),
              ],
            ),
          ),
          // Caption/Description
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'My boy friend lagi semngat cari uang di apk bp zeus',
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
