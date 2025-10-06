import 'package:flutter/material.dart';
import 'package:sdu/core/extensions/widget_extensions.dart';

class LoginListTileWidget extends StatelessWidget {
  final String title;
  final IconData iconData;
  const LoginListTileWidget(
      {super.key, required this.title, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Colors.white,
      ),
      title: Text(
        title,
        maxLines: 3,
        style: TextStyle(color: Colors.white),
      ),
    ).paddingOnly(bottom: 16);
  }
}
