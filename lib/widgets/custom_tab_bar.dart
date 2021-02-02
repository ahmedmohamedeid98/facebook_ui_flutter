import 'package:facebook_ui_flutter/config/palette.dart';
import 'package:facebook_ui_flutter/widgets/responsive.dart';
import 'package:flutter/material.dart';

class CustomTapBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function onTap;

  const CustomTapBar({
    Key key,
    this.icons,
    this.selectedIndex,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: !Responsive.isDesktop(context)
            ? Border(
                top: BorderSide(
                  color: Palette.facebookBlue,
                  width: 3.0,
                ),
              )
            : Border(
                bottom: BorderSide(
                  color: Palette.facebookBlue,
                  width: 3.0,
                ),
              ),
      ),
      tabs: icons
          .asMap()
          .map((i, e) => MapEntry(
                i,
                Tab(
                  icon: Icon(
                    e,
                    color: i == selectedIndex
                        ? Palette.facebookBlue
                        : Colors.black45,
                    size: 30.0,
                  ),
                ),
              ))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
