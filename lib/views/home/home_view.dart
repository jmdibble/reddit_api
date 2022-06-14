import 'package:flutter/material.dart';
import 'package:reddit_api/utils/colors.dart';
import 'package:reddit_api/view_models/home/home_view_model.dart';
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
        builder: (context, m, child) =>
            m.pageLoading ? _buildLoading() : _buildBody(context, m),
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
                (post) => Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset(0, 1),
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post.title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        if (post.imageUrl != "self" &&
                            post.imageUrl != "default") ...[
                          SizedBox(height: 8),
                          Center(child: Image.network(post.imageUrl)),
                        ],
                        Divider(
                          height: 32,
                          thickness: 1,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.thumb_up_outlined,
                              size: 16,
                              color: AppColors.lightBlue,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "${post.up}",
                            ),
                            SizedBox(width: 16),
                            Icon(
                              Icons.thumb_down_outlined,
                              size: 16,
                              color: AppColors.lightBlue,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "${post.down}",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }

  Widget _buildLoading() {
    return Center(child: CircularProgressIndicator());
  }
}
