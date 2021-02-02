import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../models/models.dart';
import 'user_card.dart';

class ContactsList extends StatelessWidget {
  final List<User> onlineUsers;

  const ContactsList({Key key, this.onlineUsers}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Contacts',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey.shade600,
                ),
                onPressed: () => print('search'),
              ),
              const SizedBox(width: 8.0),
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.grey.shade600,
                ),
                onPressed: () => print('more'),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              itemCount: onlineUsers.length,
              itemExtent: 50,
              itemBuilder: (context, index) {
                final User user = onlineUsers[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: UserCard(user: user),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
