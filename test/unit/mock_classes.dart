import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:reddit_api/services/reddit/reddit_service.dart';
import 'package:reddit_api/services/router.dart';
import 'package:reddit_api/view_models/home/home_view_model.dart';

class MockRedditService extends Mock implements RedditService {
  MockRedditService() {
    GetIt.I.registerSingleton<RedditService>(this);
  }
}

class MockRouter extends Mock implements Router {
  MockRouter() {
    GetIt.I.registerSingleton<Router>(this);
  }
}

class MockHomeViewModel extends Mock implements HomeViewModel {
  MockHomeViewModel() {
    GetIt.I.registerSingleton<HomeViewModel>(this);
  }
}
