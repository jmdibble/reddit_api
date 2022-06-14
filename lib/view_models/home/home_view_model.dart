import 'package:get_it/get_it.dart';
import 'package:reddit_api/services/reddit/reddit_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  RedditService get _redditService => GetIt.I.get<RedditService>();

  Future<void> getRedditData() async {
    await _redditService.getRedditData();
  }
}
