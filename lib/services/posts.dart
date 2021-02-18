import 'package:demo/models/posts.dart';
import 'package:dio/dio.dart';

class PostsService {
  String url = "https://jsonplaceholder.typicode.com/posts";
  // String url = "http://10.0.2.2:3000/posts";

  Future<List<Post>> getPosts() async {
    List<Post> posts = new List();
    try {
      Response response = await Dio().get(url);
      var data = response.data;
      // print(data);
      data.forEach((value) {
        posts.add(Post.fromJson(value));
      });
      return posts;
    } catch (e) {
      print(e);
    }

    return posts;
  }
}
