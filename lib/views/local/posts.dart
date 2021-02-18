import 'package:demo/views/local/myCard.dart';
import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  List<String> arr = [
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg',
    'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_960_720.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts (Local)'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: arr.length,
          itemBuilder: (BuildContext context, int index) {
            return MyCard(img: arr[index]);
          }),
    );
  }
}
