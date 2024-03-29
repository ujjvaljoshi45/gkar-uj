import 'package:flutter/material.dart';
import 'package:ignition_lab4/src/view/core/theme/colors.dart';
import 'package:ignition_lab4/src/widget/widget_custom_appbar.dart';

import '../core/constant/image_string.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Notifications',
          style: appBarTextStyle,
        ),
      ),
      body: ListView(
        children: [
          NotificationTile(),
          NotificationTile(),
        ],
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  NotificationTile({super.key});
  String name = "jane posted:";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
                CircleAvatar(
                  child: Image.asset(ImageString.circularAvatar),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: name,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                          const TextSpan(
                              text:
                                  ' Lorem ipsum dolor sit amet, cu nonumy mandamus quo, cu cum consulatu persecuti, ignota timeam ex ViX…')
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
