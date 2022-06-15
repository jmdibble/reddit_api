import 'package:flutter/material.dart';
import 'package:reddit_api/view_models/home/home_view_model.dart';
import 'package:reddit_api/views/widgets/post_card.dart';
import 'package:stacked/stacked.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("r/FlutterDev Posts"),
      ),
      body: ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onModelReady: (m) async => await m.getRedditData(),
        builder: (context, m, child) {
          if (m.pageState == PageState.loading) {
            return _buildLoading();
          } else if (m.pageState == PageState.completed) {
            return _buildBody(context, m);
          } else {
            return _buildError(m);
          }
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context, HomeViewModel m) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...m.posts
              .map(
                (post) => PostCard(post),
              )
              .toList(),
        ],
      ),
    );
  }

  Widget _buildLoading() {
    return Center(child: CircularProgressIndicator());
  }

  Widget _buildError(HomeViewModel m) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Something went wrong.",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                await m.refresh();
              },
              child: Text("Try again"),
            ),
          ],
        ),
      ),
    );
  }
}
