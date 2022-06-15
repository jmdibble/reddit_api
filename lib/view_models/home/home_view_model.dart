import 'package:reddit_api/models/reddit_post.dart';
import 'package:reddit_api/services/get_it.dart';
import 'package:reddit_api/services/reddit/reddit_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  RedditService get _redditService => getIt.get<RedditService>();

  List<RedditPost> get posts => _redditService.posts;
  PageState pageState = PageState.loading;

  Future<void> getRedditData() async {
    try {
      await _redditService.getRedditData();
      pageState = PageState.completed;
      notifyListeners();
    } catch (e) {
      pageState = PageState.error;
      notifyListeners();
    }
  }

  Future<void> refresh() async {
    await getRedditData();
  }
}

enum PageState {
  loading,
  completed,
  error,
}
