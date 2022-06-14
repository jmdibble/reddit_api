import 'package:get_it/get_it.dart';
import 'package:reddit_api/models/reddit_post.dart';
import 'package:reddit_api/services/reddit/reddit_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  RedditService get _redditService => GetIt.I.get<RedditService>();

  List<RedditPost> get posts => _redditService.posts;
  bool pageLoading = false;

  Future<void> getRedditData() async {
    pageLoading = true;
    notifyListeners();

    await _redditService.getRedditData();
    pageLoading = false;
    notifyListeners();
  }
}
