import 'package:reddit_api/services/router.dart';

class RedditService {
  final Router router = Router();

  Future<void> getRedditData() async {
    final response =
        await router.get(url: "https://www.reddit.com/r/FlutterDev.json");
  }
}
