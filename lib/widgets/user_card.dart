import 'package:facebook_ui_flutter/models/models.dart';
import 'package:facebook_ui_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({Key key, @required this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ProfileAvatar(
          imageUrl: user.imageUrl,
        ),
        const SizedBox(
          width: 6.0,
        ),
        Flexible(
          child: Text(
            user.name,
            style: TextStyle(fontSize: 16.0),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
