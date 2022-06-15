import 'package:reddit_api/models/reddit_post.dart';

class TestModels {
  static DateTime now = DateTime.now();

  static Map<String, dynamic> mockRedditJson = {
    "data": {
      "title": "title",
      "author": "author",
      "ups": 10,
      "downs": 10,
      "thumbnail": "thumbnail",
      "created": 1655220800,
      "stickied": true,
    }
  };

  static List<dynamic> mockRedditList = [
    mockRedditJson,
    mockRedditJson,
    mockRedditJson,
  ];

  static RedditPost mockRedditPost = RedditPost(
    title: "title",
    author: "author",
    up: 10,
    down: 10,
    imageUrl: "imageUrl",
    created: now,
    pinned: true,
  );

  static List<RedditPost> mockRedditPostList = [
    RedditPost(
      title: "title",
      author: "author",
      up: 10,
      down: 10,
      imageUrl: "imageUrl",
      created: now,
      pinned: true,
    ),
    RedditPost(
      title: "title1",
      author: "author1",
      up: 11,
      down: 11,
      imageUrl: "imageUrl1",
      created: now,
      pinned: false,
    ),
  ];
}
