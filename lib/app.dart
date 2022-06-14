import 'package:flutter/material.dart';
import 'package:reddit_api/utils/theme.dart';
import 'package:reddit_api/views/home/home_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reddit API Demo',
      theme: theme,
      home: const Home(),
    );
  }
}
