import 'package:flutter/material.dart';

class MyImg extends StatefulWidget {
  final img;
  MyImg(this.img);
  @override
  _MyImgState createState() => _MyImgState();
}

class _MyImgState extends State<MyImg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Stack(fit: StackFit.expand, children: [
        Image(
          image: NetworkImage(widget.img),
          fit: BoxFit.cover,
        ),
        // other irrelevent children here
      ]),
    );
  }
}
