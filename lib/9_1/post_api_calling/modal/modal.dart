// DATA MODEL
class PostModel {
  int total, skip, limit;
  List<PostData> postList;

  PostModel({
    required this.total,
    required this.skip,
    required this.limit,
    required this.postList,
  });

  factory PostModel.fromJson(Map json) => PostModel(
    total: json['total'],
    skip: json['skip'],
    limit: json['limit'],
    postList: json['posts'].map<PostData>((e) => PostData.fromJson(e)).toList(),
  );
}


// POST DETAILS
class PostData {
  String title, body;
  int id, views, userId;
  List tags;
  Reactions reactions;

  PostData({
    required this.id,
    required this.title,
    required this.body,
    required this.tags,
    required this.reactions,
    required this.views,
    required this.userId,
  });

  factory PostData.fromJson(Map json) => PostData(
    id: json['id'],
    title: json['title'],
    body: json['body'],
    tags: json['tags'],
    reactions: Reactions.fromJson(json['reactions']),
    views: json['views'],
    userId: json['userId'],
  );
}

// REACTIONS DETAILS
class Reactions {
  int likes, dislikes;

  Reactions({
    required this.likes,
    required this.dislikes,
  });

  factory Reactions.fromJson(Map json) => Reactions(
    likes: json['likes'],
    dislikes: json['dislikes'],
  );
}