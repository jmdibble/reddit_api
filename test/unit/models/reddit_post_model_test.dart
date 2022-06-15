import 'package:flutter_test/flutter_test.dart';
import 'package:reddit_api/models/reddit_post.dart';

import '../test_models.dart';

void main() {
  group("Reddit Post Model", () {
    test("fromJson", () {
      final RedditPost post = RedditPost.fromJson(TestModels.mockRedditJson);

      assert(post.title == "title");
    });

    test("listFromJson", () {
      final List<RedditPost> posts =
          RedditPost.listFromJson(TestModels.mockRedditList);

      assert(posts.isNotEmpty);
      assert(posts.first.title == "title");
    });
  });
}
