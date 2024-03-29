import 'package:flutter/material.dart';
import 'package:ignition_lab4/src/view/core/theme/colors.dart';
import 'package:ignition_lab4/src/view/home_screen/community_view.dart';
import 'package:ignition_lab4/src/view/home_screen/explore_view.dart';
import 'package:ignition_lab4/src/view/home_screen/post_view.dart';
import 'package:ignition_lab4/src/view/home_screen/profile_view.dart';

import '../chat_screen/chat_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> myListView = [
    const PostView(),
    const ExploreView(),
    const CommunityView(),
    const ProfileView(),
    const ChatView(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: backgroundColor,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            backgroundColor: Colors.white10,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.house_outlined,
                    color: Colors.white,
                  ),
                  icon: Icon(
                    Icons.house_outlined,
                    color: Colors.white54,
                  ),
                  label: ''),
              const BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.explore_outlined,
                    color: Colors.white,
                  ),
                  icon: Icon(
                    Icons.explore_outlined,
                    color: Colors.white54,
                  ),
                  label: ''),
              const BottomNavigationBarItem(
                  activeIcon: Icon(Icons.groups_rounded, color: Colors.white),
                  icon: Icon(
                    Icons.groups_rounded,
                    color: Colors.white54,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  activeIcon: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3)),
                    child: const Icon(Icons.person_2_outlined,
                        color: Colors.white),
                  ),
                  icon: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white54, width: 3)),
                    child: const Icon(Icons.person_2_outlined,
                        color: Colors.white54),
                  ),
                  label: ''),
              const BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.message_outlined,
                    color: Colors.white,
                  ),
                  icon: Icon(
                    Icons.message_outlined,
                    color: Colors.white54,
                  ),
                  label: ''),
            ],
          ),
          body: myListView[_selectedIndex]),
    );
  }
}
