import 'package:demo/views/api/postsAPI.dart';
import 'package:demo/views/local/posts.dart';
import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            btn(context, 'Posts(Local)', Posts()),
            btn(context, 'Posts(API)', PostsAPI())
          ],
        ),
      ),
    );
  }
}

Widget btn(context, txt, where) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: ButtonTheme(
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => where),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '$txt',
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
        ),
      ),
    ),
  );
}
