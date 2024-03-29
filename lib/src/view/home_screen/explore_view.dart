import 'package:flutter/material.dart';
import 'package:ignition_lab4/src/view/core/theme/colors.dart';
import 'package:ignition_lab4/src/widget/widget_circular_avatar.dart';
import 'package:ignition_lab4/src/widget/widget_custom_appbar.dart';
import '../core/constant/image_string.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        title: const Text(
          'Explore',
          style: appBarTextStyle,
        ),
        leading: const CircularAvatarView(),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ExploreTitle(),
            ExploreTitle(),
          ],
        ),
      ),
    );
  }
}

class ExploreTitle extends StatelessWidget {
  const ExploreTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18.0),
      decoration: BoxDecoration(
          color: Colors.white10,
          border: Border.all(),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  child: Image.asset(ImageString.circularAvatar),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'XYZ',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Lorem ipsum dolor sit amet, cu nonumy mandamus quo, cu cum consulatu persecuti, ignota timeam ex vix.',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
