import 'package:flutter/material.dart';
import 'package:ignition_lab4/src/view/core/theme/colors.dart';
import 'package:ignition_lab4/src/widget/widget_circular_avatar.dart';
import 'package:ignition_lab4/src/widget/widget_custom_appbar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        leading: const CircularAvatarView(),
        title: const Text(
          'Profile',
          style: appBarTextStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Profile',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
