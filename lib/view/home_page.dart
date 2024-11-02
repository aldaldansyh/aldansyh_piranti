import 'package:flutter/material.dart';
import 'package:sesi4/controller/feed_controller.dart';
import 'package:sesi4/view/feed_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var feedController = FeedController();
    return Scaffold(
     appBar: AppBar(title: Text('Instigrim',style: TextStyle(fontWeight: FontWeight.w500),),),
     body: ListView.builder(
      itemCount: feedController.feeds.length,
      itemBuilder: (context, index) => FeedCard(feed: feedController.feeds[index]
      ),
     ),
    );
  }
}

