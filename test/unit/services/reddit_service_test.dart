import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:reddit_api/models/reddit_post.dart';
import 'package:reddit_api/services/reddit/reddit_service.dart';

import '../mock_classes.dart';
import '../test_models.dart';

void main() {
  late MockRouter mockRouter;

  RedditService redditService = RedditService();

  setUpAll(() {
    mockRouter = MockRouter();
  });

  group("Reddit Service", () {
    test("Constructor posts empty", () {
      RedditService s = RedditService();

      assert(s.posts.isEmpty);
    });

    test("getRedditData success", () async {
      when(() =>
              mockRouter.get(url: "https://www.reddit.com/r/FlutterDev.json"))
          .thenAnswer(
              (_) async => await Future.value(TestModels.mockRedditJsonFull));

      final List<RedditPost> posts = await redditService.getRedditData();

      assert(posts.isNotEmpty);
      assert(posts.first.title == "title");
    });

    test("getRedditData error", () async {
      when(() =>
              mockRouter.get(url: "https://www.reddit.com/r/FlutterDev.json"))
          .thenAnswer((_) async => throw Exception("This is an error!"));

      expect(redditService.getRedditData(), throwsException);
    });
  });
}
