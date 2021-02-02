import 'package:facebook_ui_flutter/models/models.dart';
import 'package:flutter/cupertino.dart';

class Story {
  final User user;
  final String imageUrl;
  final bool isViewed;

  const Story({
    @required this.user,
    @required this.imageUrl,
    this.isViewed = false,
  });
}
