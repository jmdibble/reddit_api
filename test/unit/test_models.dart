import 'package:reddit_api/models/reddit_post.dart';

class TestModels {
  static DateTime now = DateTime.now();

  static Map<String, dynamic> mockRedditJson = {
    "data": {
      "title": "title",
      "author": "author",
      "ups": 10,
      "downs": 10,
      "thumbnail": "thumbnail",
      "created": 1655220800,
      "stickied": true,
    }
  };

  static Map<String, dynamic> mockRedditJsonFull = {
    "kind": "Listing",
    "data": {
      "after": "t3_vax2xm",
      "dist": 27,
      "modhash": "wdsys7a596682e59abc481993f32fdcb63ecebf29b3810ec20",
      "geo_filter": null,
      "children": [
        {
          "kind": "t3",
          "data": {
            "approved_at_utc": null,
            "subreddit": "FlutterDev",
            "selftext":
                "This thread is for getting feedback on your own apps.\n\n&amp;#x200B;\n\n\\## Developers:\n\n&amp;#x200B;\n\n\\* must \\*\\*provide feedback\\*\\* for others\n\n\\* must include \\*\\*Play Store\\*\\*, \\*\\*App Store\\*\\*, \\*\\*GitHub\\*\\*, \\*\\*GitLab\\*\\*, or \\*\\*BitBucket\\*\\* link\n\n\\* must make top level comment\n\n\\* must make effort to respond to questions and feedback from commenters\n\n\\* may be open or closed source\n\n&amp;#x200B;\n\n\\## Commenters:\n\n&amp;#x200B;\n\n\\* must give \\*\\*constructive feedback\\*\\* in replies to top level comments\n\n\\* must not include links to other apps\n\n&amp;#x200B;\n\nTo cut down on spam, accounts who are too young or do not have enough karma to post will be removed. Please make an effort to contribute to the community before asking for feedback.\n\n&amp;#x200B;\n\nAs always, the mod team is only a small group of people, and we rely on the readers to help us maintain this subreddit. Please report any rule breakers. Thank you.\n\n&amp;#x200B;\n\n\\\\- r/FlutterDev Mods",
            "author_fullname": "t2_6l4z3",
            "saved": false,
            "mod_reason_title": null,
            "gilded": 0,
            "clicked": false,
            "title": "title",
            "link_flair_richtext": [],
            "subreddit_name_prefixed": "r/FlutterDev",
            "hidden": false,
            "pwls": 6,
            "link_flair_css_class": "",
            "downs": 0,
            "thumbnail_height": null,
            "top_awarded_type": null,
            "hide_score": false,
            "name": "t3_vbjk45",
            "quarantine": false,
            "link_flair_text_color": "light",
            "upvote_ratio": 1,
            "author_flair_background_color": null,
            "subreddit_type": "public",
            "ups": 4,
            "total_awards_received": 0,
            "media_embed": {},
            "thumbnail_width": null,
            "author_flair_template_id": null,
            "is_original_content": false,
            "user_reports": [],
            "secure_media": null,
            "is_reddit_media_domain": false,
            "is_meta": false,
            "category": null,
            "secure_media_embed": {},
            "link_flair_text": "Community",
            "can_mod_post": false,
            "score": 4,
            "approved_by": null,
            "is_created_from_ads_ui": false,
            "author_premium": true,
            "thumbnail": "self",
            "edited": false,
            "author_flair_css_class": null,
            "author_flair_richtext": [],
            "gildings": {},
            "content_categories": null,
            "is_self": true,
            "mod_note": null,
            "created": 1655146815,
            "link_flair_type": "text",
            "wls": 6,
            "removed_by_category": null,
            "banned_by": null,
            "author_flair_type": "text",
            "domain": "self.FlutterDev",
            "allow_live_comments": false,
            "selftext_html":
                "&lt;!-- SC_OFF --&gt;&lt;div class=\"md\"&gt;&lt;p&gt;This thread is for getting feedback on your own apps.&lt;/p&gt;\n\n&lt;p&gt;&amp;#x200B;&lt;/p&gt;\n\n&lt;p&gt;## Developers:&lt;/p&gt;\n\n&lt;p&gt;&amp;#x200B;&lt;/p&gt;\n\n&lt;p&gt;* must **provide feedback** for others&lt;/p&gt;\n\n&lt;p&gt;* must include **Play Store**, **App Store**, **GitHub**, **GitLab**, or **BitBucket** link&lt;/p&gt;\n\n&lt;p&gt;* must make top level comment&lt;/p&gt;\n\n&lt;p&gt;* must make effort to respond to questions and feedback from commenters&lt;/p&gt;\n\n&lt;p&gt;* may be open or closed source&lt;/p&gt;\n\n&lt;p&gt;&amp;#x200B;&lt;/p&gt;\n\n&lt;p&gt;## Commenters:&lt;/p&gt;\n\n&lt;p&gt;&amp;#x200B;&lt;/p&gt;\n\n&lt;p&gt;* must give **constructive feedback** in replies to top level comments&lt;/p&gt;\n\n&lt;p&gt;* must not include links to other apps&lt;/p&gt;\n\n&lt;p&gt;&amp;#x200B;&lt;/p&gt;\n\n&lt;p&gt;To cut down on spam, accounts who are too young or do not have enough karma to post will be removed. Please make an effort to contribute to the community before asking for feedback.&lt;/p&gt;\n\n&lt;p&gt;&amp;#x200B;&lt;/p&gt;\n\n&lt;p&gt;As always, the mod team is only a small group of people, and we rely on the readers to help us maintain this subreddit. Please report any rule breakers. Thank you.&lt;/p&gt;\n\n&lt;p&gt;&amp;#x200B;&lt;/p&gt;\n\n&lt;p&gt;\\- &lt;a href=\"/r/FlutterDev\"&gt;r/FlutterDev&lt;/a&gt; Mods&lt;/p&gt;\n&lt;/div&gt;&lt;!-- SC_ON --&gt;",
            "likes": null,
            "suggested_sort": null,
            "banned_at_utc": null,
            "view_count": null,
            "archived": false,
            "no_follow": false,
            "is_crosspostable": true,
            "pinned": false,
            "over_18": false,
            "all_awardings": [],
            "awarders": [],
            "media_only": false,
            "link_flair_template_id": "cd7d42a6-5aeb-11e8-8369-0e12ff1a2840",
            "can_gild": true,
            "spoiler": false,
            "locked": false,
            "author_flair_text": null,
            "treatment_tags": [],
            "visited": false,
            "removed_by": null,
            "num_reports": null,
            "distinguished": null,
            "subreddit_id": "t5_2x3q8",
            "author_is_blocked": false,
            "mod_reason_by": null,
            "removal_reason": null,
            "link_flair_background_color": "#7b35f0",
            "id": "vbjk45",
            "is_robot_indexable": true,
            "report_reasons": null,
            "author": "AutoModerator",
            "discussion_type": null,
            "num_comments": 0,
            "send_replies": true,
            "whitelist_status": "all_ads",
            "contest_mode": true,
            "mod_reports": [],
            "author_patreon_flair": false,
            "author_flair_text_color": null,
            "permalink":
                "/r/FlutterDev/comments/vbjk45/app_feedback_thread_june_13_2022/",
            "parent_whitelist_status": "all_ads",
            "stickied": true,
            "url":
                "https://www.reddit.com/r/FlutterDev/comments/vbjk45/app_feedback_thread_june_13_2022/",
            "subreddit_subscribers": 92817,
            "created_utc": 1655146815,
            "num_crossposts": 0,
            "media": null,
            "is_video": false
          }
        },
      ]
    }
  };

  static List<dynamic> mockRedditList = [
    mockRedditJson,
    mockRedditJson,
    mockRedditJson,
  ];

  static RedditPost mockRedditPost = RedditPost(
    title: "title",
    author: "author",
    up: 10,
    down: 10,
    imageUrl: "imageUrl",
    created: now,
    pinned: true,
  );

  static List<RedditPost> mockRedditPostList = [
    RedditPost(
      title: "title",
      author: "author",
      up: 10,
      down: 10,
      imageUrl: "imageUrl",
      created: now,
      pinned: true,
    ),
    RedditPost(
      title: "title1",
      author: "author1",
      up: 11,
      down: 11,
      imageUrl: "imageUrl1",
      created: now,
      pinned: false,
    ),
  ];
}
