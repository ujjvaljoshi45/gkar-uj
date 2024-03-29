import 'package:flutter/material.dart';
import 'package:ignition_lab4/src/view/core/theme/colors.dart';
import 'package:ignition_lab4/src/view/home_screen/notification_view.dart';
import 'package:ignition_lab4/src/view/home_screen/post_tile.dart';

import '../../widget/widget_circular_avatar.dart';
import '../core/constant/image_string.dart';

class PostView extends StatefulWidget {
  const PostView({
    super.key,
  });

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  List<Widget> myListView = [
    const PostTile(),
    const PostTile(),
    const PostTile(),
    const PostTile(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          leading: const CircularAvatarView(),
          title: Center(
            child: Image.asset(
              ImageString.small_logo,
              width: 38,
              height: 38,
            ),
          ),
          bottom: const TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white54,
              tabs: [
                SizedBox(
                  width: double.infinity,
                  child: Tab(
                    child: Text('All'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Tab(
                    child: Text('Research'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Tab(
                    child: Text('Need'),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Tab(
                    child: Text('Insight'),
                  ),
                ),
              ]),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationView(),
                      ));
                },
                icon: const Icon(
                  Icons.notifications_none_rounded,
                  color: Colors.white,
                ))
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
        body: TabBarView(children: [
          ListView(
            children: myListView,
          ),
          ListView(
            children: myListView,
          ),
          ListView(
            children: myListView,
          ),
          ListView(
            children: myListView,
          ),
        ]),
      ),
    );
  }
}
