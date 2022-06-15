import 'package:reddit_api/models/reddit_post.dart';
import 'package:reddit_api/services/get_it.dart';
import 'package:reddit_api/services/router.dart';

class RedditService {
  Router get router => getIt.get<Router>();

  List<RedditPost> posts = [];

  Future<List<RedditPost>> getRedditData() async {
    try {
      final response =
          await router.get(url: "https://www.reddit.com/r/FlutterDev.json");

      posts = RedditPost.listFromJson(response["data"]["children"]);
      return posts;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
