
import 'dart:convert';

import 'package:flutter/cupertino.dart';


import '../modal/modal.dart';


class PostApiProvider extends ChangeNotifier{

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
  }
}
