class RedditPost {
  final String title;
  final int up;
  final int down;
  final String imageUrl;

  RedditPost({
    required this.title,
    required this.up,
    required this.down,
    required this.imageUrl,
  });

  factory RedditPost.fromJson(Map<String, dynamic> json) {
    return RedditPost(
      title: json["data"]["title"],
      up: json["data"]["ups"],
      down: json["data"]["downs"],
      imageUrl: json["data"]["thumbnail"],
    );
  }

  static List<RedditPost> listFromJson(List<dynamic> jsonList) {
    return jsonList == []
        ? []
        : jsonList.map((json) => RedditPost.fromJson(json)).toList();
  }
}
