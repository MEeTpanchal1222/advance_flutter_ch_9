
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import '../api/api_calling.dart';
import '../modal/modal.dart';


class PostApiProvider extends ChangeNotifier{
  bool dataentry = false;
  late PostModel _posts;

  PostModel get posts => _posts;

  PostApiProvider(){
    getData();
  }

  Future<void> getData() async {
    String json = await ApiService().callApi('https://dummyjson.com/posts');
    Map data = await jsonDecode(json);

    // convert into object data
    _posts = PostModel.fromJson(data);
    bool dataentry = true;
  }
}
