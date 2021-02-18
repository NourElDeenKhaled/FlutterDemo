import 'package:demo/models/posts.dart';
import 'package:demo/services/posts.dart';
import 'package:demo/views/api/myCard.dart';
import 'package:flutter/material.dart';

class PostsAPI extends StatefulWidget {
  @override
  _PostsAPIState createState() => _PostsAPIState();
}

class _PostsAPIState extends State<PostsAPI> {
  List<Post> postList = new List();

  @override
  void initState() {
    super.initState();
    getPosts();
  }

  getPosts() async {
    postList = await PostsService().getPosts();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts (API)'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: postList.length,
          itemBuilder: (BuildContext context, int index) {
            return MyCard(post: postList[index]);
          }),
    );
  }
}
