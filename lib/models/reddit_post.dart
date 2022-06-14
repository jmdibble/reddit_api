class RedditPost {
  final String title;
  final String author;
  final int up;
  final int down;
  final String imageUrl;
  final DateTime created;
  final bool pinned;

  RedditPost({
    required this.title,
    required this.author,
    required this.up,
    required this.down,
    required this.imageUrl,
    required this.created,
    required this.pinned,
  });

  factory RedditPost.fromJson(Map<String, dynamic> json) {
    return RedditPost(
      title: json["data"]["title"],
      author: json["data"]["author"],
      up: json["data"]["ups"],
      down: json["data"]["downs"],
      imageUrl: json["data"]["thumbnail"],
      created: DateTime.fromMillisecondsSinceEpoch(
        int.parse((json["data"]["created"] * 1000).toStringAsFixed(0)),
      ),
      pinned: json["data"]["stickied"],
    );
  }

  static List<RedditPost> listFromJson(List<dynamic> jsonList) {
    return jsonList == []
        ? []
        : jsonList.map((json) => RedditPost.fromJson(json)).toList();
  }
}
