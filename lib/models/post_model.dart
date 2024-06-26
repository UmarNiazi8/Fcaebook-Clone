import 'package:facebook_ui/models/user_model.dart';

class Post {
  final User user;
  final String caption;
  final String timeAgo;
  final String? imageUrl;
  final int likes;
  final int comments;
  final int shares;

  Post(
      {required this.user,
      required this.caption,
      required this.timeAgo,
      this.imageUrl,
      required this.likes,
      required this.comments,
      required this.shares});
}
