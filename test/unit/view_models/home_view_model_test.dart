import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:reddit_api/view_models/home/home_view_model.dart';

import '../mock_classes.dart';
import '../test_models.dart';

void main() {
  late MockRedditService redditService;

  HomeViewModel homeViewModel = HomeViewModel();

  setUpAll(() async {
    redditService = MockRedditService();
  });

  group("Home View Model", () {
    test("getRedditData success", () async {
      when(() => redditService.getRedditData()).thenAnswer(
          (_) async => await Future.value(TestModels.mockRedditPostList));
      when(() => redditService.posts).thenReturn(TestModels.mockRedditPostList);

      await homeViewModel.getRedditData();

      assert(homeViewModel.posts.isNotEmpty);
    });

    test("getRedditData error", () async {
      when(() => redditService.getRedditData())
          .thenAnswer((_) async => throw Exception("This is an error"));

      await homeViewModel.getRedditData();

      assert(homeViewModel.pageState == PageState.error);
    });
  });
}
