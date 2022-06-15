import 'package:flutter/material.dart';
import 'package:reddit_api/models/reddit_post.dart';
import 'package:reddit_api/utils/colors.dart';

class PostCard extends StatelessWidget {
  const PostCard(this.post, {Key? key}) : super(key: key);

  final RedditPost post;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            SizedBox(height: 4),
            if (post.pinned)
              Align(
                alignment: Alignment.topRight,
                child: Transform.rotate(
                  angle: 0.5,
                  child: Icon(
                    Icons.push_pin,
                    size: 16,
                    color: AppColors.mainBlue,
                  ),
                ),
              ),
            Text(
              "Posted by ${post.author} ${DateTime.now().difference(post.created).inHours} hours ago",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 8),
            Text(
              post.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            if (post.imageUrl != "self" && post.imageUrl != "default") ...[
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
    );
  }
}
