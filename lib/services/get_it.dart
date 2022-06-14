import 'package:get_it/get_it.dart';
import 'package:reddit_api/services/reddit/reddit_service.dart';

final getIt = GetIt.instance;

class GetItService {
  static Future<void> setup() async {
    getIt.registerSingleton<RedditService>(RedditService());
  }
}
