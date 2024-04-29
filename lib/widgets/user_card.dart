import 'package:facebook_ui/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileAvatar(imageUrl: user.imageUrl),
          const SizedBox(
            width: 6.0,
          ),
          Flexible(
              child: Text(
            user.name,
            style: TextStyle(fontSize: 16),
            overflow: TextOverflow.ellipsis,
          )),
        ],
      ),
    );
  }
}
