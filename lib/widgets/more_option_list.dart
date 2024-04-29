import 'package:facebook_ui/pallete.dart';
import 'package:facebook_ui/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../models/user_model.dart';

class MoreOptionList extends StatelessWidget {
  final List<List> _moreOptionList = [
    [MdiIcons.shieldAccount, Colors.deepPurple, 'COVID 19 Info Center'],
    [MdiIcons.accountMultiple, Colors.cyan, 'Friends'],
    [MdiIcons.facebookMessenger, Palette.facebookBlue, 'Messenger'],
    [MdiIcons.flag, Colors.orange, 'Pages'],
    [MdiIcons.storefront, Colors.cyan, 'Marketplace'],
    [Icons.ondemand_video, Palette.facebookBlue, 'Watch'],
    [MdiIcons.calendarStar, Colors.red, 'Events'],
  ];
  final User currentUser;
  MoreOptionList({super.key, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280.0),
      child: ListView.builder(
          itemCount: 1 + _moreOptionList.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: UserCard(user: currentUser),
              );
            }
            final List option = _moreOptionList[index - 1];
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child:
                  _Option(icon: option[0], color: option[1], label: option[2]),
            );
          }),
    );
  }
}

class _Option extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;
  const _Option(
      {super.key,
      required this.icon,
      required this.color,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Icon(
            icon,
            size: 38.0,
            color: color,
          ),
          SizedBox(
            width: 8.0,
          ),
          Flexible(
              child: Text(
            label,
            style: TextStyle(fontSize: 16),
            overflow: TextOverflow.ellipsis,
          ))
        ],
      ),
    );
  }
}
