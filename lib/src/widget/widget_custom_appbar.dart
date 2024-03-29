import 'package:flutter/material.dart';

import '../view/core/constant/image_string.dart';
import '../view/core/theme/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  Widget leading;
  Widget title;
  List<Widget>? actions;
  Widget? bottom;
  CustomAppBar(
      {super.key,
      required this.leading,
      required this.title,
      this.actions,
      this.bottom});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      actions: actions,
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(4.0),
        child: Divider(
          color: Colors.white,
        ),
      ),
      leading: leading,
      title: title,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}

const TextStyle appBarTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w600,
  fontSize: 18,
);
