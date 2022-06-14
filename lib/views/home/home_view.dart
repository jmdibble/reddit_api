import 'package:flutter/material.dart';
import 'package:reddit_api/view_models/home/home_view_model.dart';
import 'package:stacked/stacked.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onModelReady: (m) async => await m.getRedditData(),
        builder: (context, m, child) => Column(
          children: [
            Center(
              child: Text("Home"),
            )
          ],
        ),
      ),
    );
  }
}
