import 'package:flutter/material.dart';
import 'package:ignition_lab4/src/view/core/theme/colors.dart';
import 'package:ignition_lab4/src/view/home_screen/community_title.dart';
import 'package:ignition_lab4/src/widget/widget_circular_avatar.dart';
import 'package:ignition_lab4/src/widget/widget_custom_appbar.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        leading: const CircularAvatarView(),
        title: const Text(
          'Community',
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: [const CommunityTitle(), const CommunityTitle()],
      ),
    );
  }
}
