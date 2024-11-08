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
bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    final user = widget.feed.user;
    final content = widget.feed.content;
  
      return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
         Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        isLiked ? Icons.favorite : Icons.favorite_border,
                        color: isLiked ? Colors.red : Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          isLiked = !isLiked; // Toggle the like state
                        });
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.comment),
                      onPressed: () {
                        // Comment button action
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.share),
                      onPressed: () {
                        // Share button action
                      },
                    ),
                  ],
                ),
                const Icon(Icons.bookmark_border),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.feed.content.likes,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      widget.feed.user.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        widget.feed.content.description,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
