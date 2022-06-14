import 'package:reddit_api/models/reddit_post.dart';
import 'package:reddit_api/services/router.dart';

class RedditService {
  final Router router = Router();

  List<RedditPost> posts = [];

  Future<void> getRedditData() async {
    try {
      final response =
          await router.get(url: "https://www.reddit.com/r/FlutterDev.json");

      posts = RedditPost.listFromJson(response["data"]["children"]);
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
