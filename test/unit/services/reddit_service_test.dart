import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:reddit_api/models/reddit_post.dart';

import '../mock_services.dart';
import '../test_models.dart';

void main() {
  late MockRedditService redditService;

  setUpAll(() async {
    redditService = MockRedditService();
  });

  group("Reddit Service", () {
    test("getRedditData", () async {
      when(() => redditService.getRedditData()).thenAnswer(
          (_) async => await Future.value(TestModels.mockRedditPostList));

      final List<RedditPost> posts = await redditService.getRedditData();

      assert(posts.isNotEmpty);
      assert(posts.first.title == "title");
    });
  });
}
