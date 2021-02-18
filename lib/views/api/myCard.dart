import 'package:demo/views/api/details.dart';
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  final post;
  MyCard({this.post});

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Details(post: widget.post),
                ),
              );
            },
            child: Image(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg'),
            ),
          ),
          Text(
            widget.post.title,
            style: TextStyle(fontSize: 22),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.thumb_up,
                  size: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Like',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.comment,
                  size: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Comment',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
